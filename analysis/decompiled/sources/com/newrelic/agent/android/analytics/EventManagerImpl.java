package com.newrelic.agent.android.analytics;

import a0.b;
import androidx.appcompat.widget.y0;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class EventManagerImpl implements EventManager, EventListener {
    public static final int DEFAULT_MAX_EVENT_BUFFER_SIZE = 4000;
    public static final int DEFAULT_MAX_EVENT_BUFFER_TIME = 600;
    public static final int DEFAULT_MIN_EVENT_BUFFER_SIZE = 64;
    public static final int DEFAULT_MIN_EVENT_BUFFER_TIME = 60;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private AtomicReference<List<AnalyticsEvent>> events;
    private final AtomicInteger eventsDropped;
    private final AtomicInteger eventsEvicted;
    private final AtomicInteger eventsRecorded;
    private long firstEventTimestamp;
    private final AtomicBoolean initialized;
    public AtomicReference<EventManager> instance;
    private final AtomicReference<EventListener> listener;
    public int maxBufferTimeInSec;
    public int maxEventPoolSize;
    private final AtomicBoolean transmitRequired;

    public EventManagerImpl() {
        this(DEFAULT_MAX_EVENT_BUFFER_SIZE, DEFAULT_MAX_EVENT_BUFFER_TIME);
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public boolean addEvent(AnalyticsEvent analyticsEvent) {
        if (!this.initialized.get()) {
            this.eventsDropped.incrementAndGet();
            return false;
        }
        if (!this.listener.get().onEventAdded(analyticsEvent)) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Listener dropped new event[");
            sbC.append(analyticsEvent.getName());
            sbC.append("]");
            agentLog.warning(sbC.toString());
            this.eventsDropped.incrementAndGet();
            return false;
        }
        if (isMaxEventBufferTimeExceeded()) {
            this.listener.get().onEventQueueTimeExceeded(this.maxBufferTimeInSec);
        }
        synchronized (this.events.get()) {
            int size = this.events.get().size();
            if (size == 0) {
                this.firstEventTimestamp = System.currentTimeMillis();
                log.debug("EventManager.addEvent(): Queue is empty, setting first event timestamp to " + this.firstEventTimestamp);
            }
            if (size >= this.maxEventPoolSize) {
                try {
                    if (this.listener.get().onEventOverflow(analyticsEvent)) {
                        AgentLog agentLog2 = log;
                        agentLog2.warning("Listener dropped overflow event[" + analyticsEvent.getName() + "]");
                        this.eventsDropped.incrementAndGet();
                        agentLog2.debug("Event queue is full, scheduling harvest");
                        return false;
                    }
                    int iRandom = (int) (Math.random() * ((double) this.eventsRecorded.get()));
                    if (iRandom < this.maxEventPoolSize) {
                        if (this.listener.get().onEventEvicted(this.events.get().get(iRandom))) {
                            this.events.get().remove(iRandom);
                            this.eventsEvicted.incrementAndGet();
                        }
                    } else if (this.listener.get().onEventEvicted(analyticsEvent)) {
                        this.eventsDropped.incrementAndGet();
                        log.debug("Event queue is full, scheduling harvest");
                        return false;
                    }
                    this.listener.get().onEventQueueSizeExceeded(size);
                    log.debug("Event queue is full, scheduling harvest");
                } catch (Throwable th) {
                    log.debug("Event queue is full, scheduling harvest");
                    throw th;
                }
            }
            if (!this.events.get().add(analyticsEvent)) {
                return false;
            }
            this.eventsRecorded.incrementAndGet();
            return true;
        }
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void empty() {
        Collection<AnalyticsEvent> queuedEventsSnapshot = getQueuedEventsSnapshot();
        if (queuedEventsSnapshot.size() > 0) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("EventManager.empty(): dropped [");
            sbC.append(queuedEventsSnapshot.size());
            sbC.append("] events");
            agentLog.warning(sbC.toString());
        }
        queuedEventsSnapshot.clear();
        this.firstEventTimestamp = 0L;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getEventsDropped() {
        return this.eventsDropped.get();
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getEventsEjected() {
        return this.eventsEvicted.get();
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getEventsRecorded() {
        return this.eventsRecorded.get();
    }

    public EventListener getListener() {
        return this.listener.get();
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getMaxEventBufferTime() {
        return this.maxBufferTimeInSec;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getMaxEventPoolSize() {
        return this.maxEventPoolSize;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public Collection<AnalyticsEvent> getQueuedEvents() {
        Collection<AnalyticsEvent> collectionUnmodifiableCollection;
        synchronized (this.events.get()) {
            collectionUnmodifiableCollection = Collections.unmodifiableCollection(this.events.get());
        }
        return collectionUnmodifiableCollection;
    }

    public Collection<AnalyticsEvent> getQueuedEventsSnapshot() {
        List<AnalyticsEvent> andSet;
        synchronized (this.events.get()) {
            this.listener.get().onEventFlush();
            this.transmitRequired.set(false);
            andSet = this.events.getAndSet(Collections.synchronizedList(new ArrayList(this.maxEventPoolSize)));
        }
        return andSet;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void initialize(AgentConfiguration agentConfiguration) {
        if (!this.initialized.compareAndSet(false, true)) {
            log.verbose("EventManagerImpl.initialize(): Has already been initialized. Bypassing...");
            return;
        }
        this.firstEventTimestamp = 0L;
        this.eventsRecorded.set(0);
        this.eventsEvicted.set(0);
        empty();
        this.listener.get().onStart(this);
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public boolean isMaxEventBufferTimeExceeded() {
        return this.firstEventTimestamp > 0 && System.currentTimeMillis() - this.firstEventTimestamp > ((long) (this.maxBufferTimeInSec * 1000));
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public boolean isMaxEventPoolSizeExceeded() {
        return this.events.get().size() > this.maxEventPoolSize;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public boolean isTransmitRequired() {
        return (!this.initialized.get() && this.events.get().size() > 0) || this.transmitRequired.compareAndSet(true, false) || isMaxEventPoolSizeExceeded() || isMaxEventBufferTimeExceeded();
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public boolean onEventAdded(AnalyticsEvent analyticsEvent) {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Event [");
        sbC.append(analyticsEvent.getCategory());
        sbC.append("] added to queue");
        agentLog.debug(sbC.toString());
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_EVENT_ADDED);
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public boolean onEventEvicted(AnalyticsEvent analyticsEvent) {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Event [");
        sbC.append(analyticsEvent.getName());
        sbC.append("] evicted from queue");
        agentLog.warning(sbC.toString());
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_EVENT_EVICTED);
        this.transmitRequired.set(true);
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onEventFlush() {
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public boolean onEventOverflow(AnalyticsEvent analyticsEvent) {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Event queue overflow adding event [");
        sbC.append(analyticsEvent.getName());
        sbC.append("]");
        agentLog.warning(sbC.toString());
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_EVENT_OVERFLOW);
        this.transmitRequired.set(true);
        return false;
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onEventQueueSizeExceeded(int i10) {
        AgentLog agentLog = log;
        StringBuilder sbC = y0.c("Event queue size [", i10, "] exceeded max[");
        sbC.append(this.maxEventPoolSize);
        sbC.append("]");
        agentLog.warning(sbC.toString());
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_EVENT_QUEUE_SIZE_EXCEEDED);
        this.transmitRequired.set(true);
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onEventQueueTimeExceeded(int i10) {
        log.warning("Event queue time [" + i10 + "] exceeded");
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_EVENT_QUEUE_TIME_EXCEEDED);
        this.transmitRequired.set(true);
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onShutdown() {
        if (!this.events.get().isEmpty()) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Event manager is shutting down with [");
            sbC.append(this.events.get().size());
            sbC.append("] events remaining in the queue");
            agentLog.warning(sbC.toString());
        }
        this.transmitRequired.set(true);
    }

    @Override // com.newrelic.agent.android.analytics.EventListener
    public void onStart(EventManager eventManager) {
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void setEventListener(EventListener eventListener) {
        if (eventListener != null) {
            this.listener.compareAndSet(this, eventListener);
        } else {
            this.listener.set(this);
        }
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    @Deprecated
    public void setMaxEventBufferTime(int i10) {
        if (i10 < 60) {
            log.error("Event buffer time cannot be shorter than 60 seconds");
            i10 = 60;
        }
        if (i10 > 600) {
            log.warning("Event buffer time should not be longer than 600 seconds");
            i10 = 600;
        }
        this.maxBufferTimeInSec = i10;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void setMaxEventPoolSize(int i10) {
        if (i10 < 64) {
            log.error("Event queue cannot be smaller than 64");
            i10 = 64;
        }
        if (i10 > 4000) {
            log.warning("Event queue should not be larger than 4000");
        }
        this.maxEventPoolSize = i10;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void setTransmitRequired() {
        this.transmitRequired.set(true);
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void shutdown() {
        this.listener.get().onShutdown();
        this.listener.set(this);
        this.initialized.set(false);
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int size() {
        return this.events.get().size();
    }

    public EventManagerImpl(int i10, int i11) {
        this.initialized = new AtomicBoolean(false);
        AtomicInteger atomicInteger = new AtomicInteger(0);
        this.eventsRecorded = atomicInteger;
        AtomicInteger atomicInteger2 = new AtomicInteger(0);
        this.eventsEvicted = atomicInteger2;
        AtomicInteger atomicInteger3 = new AtomicInteger(0);
        this.eventsDropped = atomicInteger3;
        this.transmitRequired = new AtomicBoolean(true);
        this.listener = new AtomicReference<>(this);
        this.instance = new AtomicReference<>(null);
        this.events = new AtomicReference<>(Collections.synchronizedList(new ArrayList(i10)));
        this.maxBufferTimeInSec = i11;
        this.maxEventPoolSize = i10;
        this.firstEventTimestamp = 0L;
        atomicInteger.set(0);
        atomicInteger2.set(0);
        atomicInteger3.set(0);
        this.instance.compareAndSet(null, this);
    }

    public void empty(Collection<AnalyticsEvent> collection) {
        this.events.get().removeAll(collection);
    }
}
