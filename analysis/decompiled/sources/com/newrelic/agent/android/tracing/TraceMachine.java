package com.newrelic.agent.android.tracing;

import a0.b;
import a4.g;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.api.v2.TraceMachineInterface;
import com.newrelic.agent.android.harvest.ActivityHistory;
import com.newrelic.agent.android.harvest.ActivitySighting;
import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: loaded from: classes.dex */
public class TraceMachine extends HarvestAdapter {
    public static final String ACTIVITY_BACKGROUND_METRIC_PREFIX = "Mobile/Activity/Background/Name/";
    public static final String ACTIVITY_METRIC_PREFIX = "Mobile/Activity/Name/";
    public static final String ACTIVTY_DISPLAY_NAME_PREFIX = "Display ";
    public static final String NR_TRACE_FIELD = "_nr_trace";
    public static final String NR_TRACE_TYPE = "Lcom/newrelic/agent/android/tracing/Trace;";
    private static TraceMachineInterface traceMachineInterface;
    private ActivityTrace activityTrace;
    public static final AtomicBoolean enabled = new AtomicBoolean(true);
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final Object TRACE_MACHINE_LOCK = new Object();
    private static final Collection<TraceLifecycleAware> traceListeners = new CopyOnWriteArrayList();
    private static final ThreadLocal<Trace> threadLocalTrace = new ThreadLocal<>();
    private static final ThreadLocal<TraceStack> threadLocalTraceStack = new ThreadLocal<>();
    private static final List<ActivitySighting> activityHistory = new CopyOnWriteArrayList();
    public static int HEALTHY_TRACE_TIMEOUT = HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR;
    public static int UNHEALTHY_TRACE_TIMEOUT = 60000;
    private static TraceMachine traceMachine = null;

    public static class TraceStack extends Stack<Trace> {
        private TraceStack() {
        }
    }

    public TraceMachine(Trace trace) {
        this.activityTrace = new ActivityTrace(trace);
        Harvest.addHarvestListener(this);
    }

    public static void addTraceListener(TraceLifecycleAware traceLifecycleAware) {
        traceListeners.add(traceLifecycleAware);
    }

    public static void clearActivityHistory() {
        activityHistory.clear();
    }

    public static void endLastActivitySighting() {
        ActivitySighting lastActivitySighting = getLastActivitySighting();
        if (lastActivitySighting != null) {
            lastActivitySighting.end(System.currentTimeMillis());
        }
    }

    public static void endTrace() {
        traceMachine.completeActivityTrace();
    }

    public static void enterMethod(String str) {
        enterMethod(null, str, null);
    }

    public static void enterNetworkSegment(String str) {
        try {
            if (isTracingInactive()) {
                return;
            }
            TraceType type = getCurrentTrace().getType();
            TraceType traceType = TraceType.NETWORK;
            if (type == traceType) {
                exitMethod();
            }
            enterMethod(null, str, null);
            getCurrentTrace().setType(traceType);
        } catch (TracingInactiveException unused) {
        } catch (Exception e10) {
            log.error("Caught error while calling enterNetworkSegment()", e10);
            AgentHealth.noticeException(e10);
        }
    }

    public static void exitMethod() {
        TraceMachineInterface traceMachineInterface2;
        try {
            if (isTracingInactive()) {
                return;
            }
            Trace trace = threadLocalTrace.get();
            if (trace == null) {
                log.debug("threadLocalTrace is null");
                return;
            }
            trace.exitTimestamp = System.currentTimeMillis();
            if (trace.threadId == 0 && (traceMachineInterface2 = traceMachineInterface) != null) {
                trace.threadId = traceMachineInterface2.getCurrentThreadId();
                trace.threadName = traceMachineInterface.getCurrentThreadName();
            }
            Iterator<TraceLifecycleAware> it = traceListeners.iterator();
            while (it.hasNext()) {
                it.next().onExitMethod();
            }
            try {
                trace.complete();
                ThreadLocal<TraceStack> threadLocal = threadLocalTraceStack;
                threadLocal.get().pop();
                if (threadLocal.get().empty()) {
                    threadLocalTrace.set(null);
                } else {
                    Trace tracePeek = threadLocal.get().peek();
                    threadLocalTrace.set(tracePeek);
                    tracePeek.childExclusiveTime += trace.getDurationAsMilliseconds();
                }
                if (trace.getType() == TraceType.TRACE) {
                    TaskQueue.queue(trace);
                }
            } catch (TracingInactiveException unused) {
                threadLocalTrace.remove();
                threadLocalTraceStack.remove();
                if (trace.getType() == TraceType.TRACE) {
                    TaskQueue.queue(trace);
                }
            }
        } catch (Exception e10) {
            log.error("Caught error while calling exitMethod()", e10);
            AgentHealth.noticeException(e10);
        }
    }

    public static String formatActivityBackgroundMetricName(String str) {
        return d.c(ACTIVITY_BACKGROUND_METRIC_PREFIX, str);
    }

    public static String formatActivityDisplayName(String str) {
        return d.c(ACTIVTY_DISPLAY_NAME_PREFIX, str);
    }

    public static String formatActivityMetricName(String str) {
        return d.c(ACTIVITY_METRIC_PREFIX, str);
    }

    public static ActivityHistory getActivityHistory() {
        return new ActivityHistory(activityHistory);
    }

    public static ActivityTrace getActivityTrace() throws TracingInactiveException {
        try {
            return traceMachine.activityTrace;
        } catch (NullPointerException unused) {
            throw new TracingInactiveException();
        }
    }

    public static String getCurrentScope() {
        try {
            if (isTracingInactive()) {
                return null;
            }
            TraceMachineInterface traceMachineInterface2 = traceMachineInterface;
            if (traceMachineInterface2 != null && !traceMachineInterface2.isUIThread()) {
                return traceMachine.activityTrace.rootTrace.metricBackgroundName;
            }
            return traceMachine.activityTrace.rootTrace.metricName;
        } catch (Exception e10) {
            log.error("Caught error while calling getCurrentScope()", e10);
            AgentHealth.noticeException(e10);
            return null;
        }
    }

    public static Trace getCurrentTrace() throws TracingInactiveException {
        if (isTracingInactive()) {
            throw new TracingInactiveException();
        }
        Trace trace = threadLocalTrace.get();
        return trace != null ? trace : getRootTrace();
    }

    public static Map<String, Object> getCurrentTraceParams() throws TracingInactiveException {
        return getCurrentTrace().getParams();
    }

    public static ActivitySighting getLastActivitySighting() {
        List<ActivitySighting> list = activityHistory;
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static Trace getRootTrace() throws TracingInactiveException {
        try {
            return traceMachine.activityTrace.rootTrace;
        } catch (NullPointerException unused) {
            throw new TracingInactiveException();
        }
    }

    public static TraceMachine getTraceMachine() {
        return traceMachine;
    }

    public static void haltTracing() {
        synchronized (TRACE_MACHINE_LOCK) {
            if (isTracingInactive()) {
                return;
            }
            TraceMachine traceMachine2 = traceMachine;
            traceMachine = null;
            traceMachine2.activityTrace.discard();
            endLastActivitySighting();
            Harvest.removeHarvestListener(traceMachine2);
            threadLocalTrace.remove();
            threadLocalTraceStack.remove();
        }
    }

    public static boolean isEnabled() {
        return enabled.get() && FeatureFlag.featureEnabled(FeatureFlag.InteractionTracing);
    }

    public static boolean isTracingActive() {
        return traceMachine != null;
    }

    public static boolean isTracingInactive() {
        return !isTracingActive();
    }

    private static void loadTraceContext(Trace trace) {
        if (isTracingInactive()) {
            return;
        }
        ThreadLocal<Trace> threadLocal = threadLocalTrace;
        if (threadLocal.get() == null) {
            threadLocal.set(trace);
            ThreadLocal<TraceStack> threadLocal2 = threadLocalTraceStack;
            threadLocal2.set(new TraceStack());
            if (trace == null) {
                return;
            } else {
                threadLocal2.get().push(trace);
            }
        } else if (trace == null) {
            ThreadLocal<TraceStack> threadLocal3 = threadLocalTraceStack;
            if (threadLocal3.get().isEmpty()) {
                log.debug("No context to load!");
                threadLocal.set(null);
                return;
            } else {
                trace = threadLocal3.get().peek();
                threadLocal.set(trace);
            }
        }
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("Trace ");
        sbC.append(trace.myUUID.toString());
        sbC.append(" is now active");
        agentLog.verbose(sbC.toString());
    }

    private static void pushTraceContext(Trace trace) {
        if (isTracingInactive() || trace == null) {
            return;
        }
        TraceStack traceStack = threadLocalTraceStack.get();
        if (traceStack.empty() || traceStack.peek() != trace) {
            traceStack.push(trace);
        }
        threadLocalTrace.set(trace);
    }

    private static Trace registerNewTrace(String str) throws TracingInactiveException {
        if (isTracingInactive()) {
            log.debug("Tried to register a new trace but tracing is inactive!");
            throw new TracingInactiveException();
        }
        Trace currentTrace = getCurrentTrace();
        Trace trace = new Trace(str, currentTrace.myUUID, traceMachine);
        try {
            traceMachine.activityTrace.addTrace(trace);
            AgentLog agentLog = log;
            StringBuilder sbE = g.e("Registering trace of ", str, " with parent ");
            sbE.append(currentTrace.displayName);
            agentLog.verbose(sbE.toString());
            currentTrace.addChild(trace);
            return trace;
        } catch (Exception unused) {
            throw new TracingInactiveException();
        }
    }

    public static void removeTraceListener(TraceLifecycleAware traceLifecycleAware) {
        traceListeners.remove(traceLifecycleAware);
    }

    private static void renameActivityHistory(String str, String str2) {
        for (ActivitySighting activitySighting : activityHistory) {
            if (activitySighting.getName().equals(str)) {
                activitySighting.setName(str2);
            }
        }
    }

    public static void setCurrentDisplayName(String str) {
        synchronized (TRACE_MACHINE_LOCK) {
            try {
                TraceMachine traceMachine2 = getTraceMachine();
                traceMachine = traceMachine2;
                if (traceMachine2 != null) {
                    try {
                        Trace currentTrace = getCurrentTrace();
                        if (currentTrace != null) {
                            currentTrace.displayName = str;
                            Iterator<TraceLifecycleAware> it = traceListeners.iterator();
                            while (it.hasNext()) {
                                try {
                                    it.next().onTraceRename(traceMachine.activityTrace);
                                } catch (Exception e10) {
                                    log.error("Cannot name trace. Tracing is not available: " + e10.toString());
                                }
                            }
                        }
                    } catch (TracingInactiveException unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setCurrentTraceParam(String str, Object obj) {
        if (isTracingInactive()) {
            return;
        }
        try {
            Trace currentTrace = getCurrentTrace();
            if (currentTrace == null) {
                throw new TracingInactiveException();
            }
            if (str == null) {
                log.error("Cannot set current trace param: key is null");
            } else if (obj == null) {
                log.error("Cannot set current trace param: value is null");
            } else {
                currentTrace.getParams().put(str, obj);
            }
        } catch (TracingInactiveException unused) {
        }
    }

    public static void setRootDisplayName(String str) {
        if (isTracingInactive()) {
            return;
        }
        try {
            Trace rootTrace = getRootTrace();
            Measurements.renameActivity(rootTrace.displayName, str);
            renameActivityHistory(rootTrace.displayName, str);
            rootTrace.metricName = formatActivityMetricName(str);
            rootTrace.metricBackgroundName = formatActivityBackgroundMetricName(str);
            rootTrace.displayName = str;
            getCurrentTrace().scope = getCurrentScope();
        } catch (TracingInactiveException unused) {
        }
    }

    public static void setTraceMachineInterface(TraceMachineInterface traceMachineInterface2) {
        traceMachineInterface = traceMachineInterface2;
    }

    public static void startTracing(String str) {
        startTracing(str, false);
    }

    public static void unloadTraceContext(Object obj) {
        try {
            if (isTracingInactive()) {
                return;
            }
            TraceMachineInterface traceMachineInterface2 = traceMachineInterface;
            if (traceMachineInterface2 == null || !traceMachineInterface2.isUIThread()) {
                ThreadLocal<Trace> threadLocal = threadLocalTrace;
                if (threadLocal.get() != null) {
                    log.verbose("Trace " + threadLocal.get().myUUID.toString() + " is now inactive");
                }
                threadLocal.remove();
                threadLocalTraceStack.remove();
                try {
                    ((TraceFieldInterface) obj)._nr_setTrace(null);
                } catch (ClassCastException e10) {
                    ExceptionHelper.recordSupportabilityMetric(e10, "TraceFieldInterface");
                    log.error("Not a TraceFieldInterface: " + e10.getMessage());
                }
            }
        } catch (Exception e11) {
            log.error("Caught error while calling unloadTraceContext()", e11);
            AgentHealth.noticeException(e11);
        }
    }

    public void completeActivityTrace() {
        synchronized (TRACE_MACHINE_LOCK) {
            if (isTracingInactive()) {
                return;
            }
            TraceMachine traceMachine2 = traceMachine;
            traceMachine = null;
            traceMachine2.activityTrace.complete();
            endLastActivitySighting();
            Iterator<TraceLifecycleAware> it = traceListeners.iterator();
            while (it.hasNext()) {
                it.next().onTraceComplete(traceMachine2.activityTrace);
            }
            Harvest.removeHarvestListener(traceMachine2);
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestBefore() {
        if (!isTracingActive()) {
            log.debug("TraceMachine is inactive");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ActivityTrace activityTrace = traceMachine.activityTrace;
        long j10 = activityTrace.lastUpdatedAt;
        long j11 = activityTrace.startedAt;
        if (j10 + ((long) HEALTHY_TRACE_TIMEOUT) < jCurrentTimeMillis && !activityTrace.hasMissingChildren()) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Completing activity trace after hitting healthy timeout (");
            sbC.append(HEALTHY_TRACE_TIMEOUT);
            sbC.append("ms)");
            agentLog.debug(sbC.toString());
            completeActivityTrace();
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_TRACES_HEALTHY);
            return;
        }
        if (j11 + ((long) UNHEALTHY_TRACE_TIMEOUT) < jCurrentTimeMillis) {
            AgentLog agentLog2 = log;
            StringBuilder sbC2 = b.c("Completing activity trace after hitting unhealthy timeout (");
            sbC2.append(UNHEALTHY_TRACE_TIMEOUT);
            sbC2.append("ms)");
            agentLog2.debug(sbC2.toString());
            completeActivityTrace();
            StatsEngine.get().inc(MetricNames.SUPPORTABILITY_TRACES_UNHEALTHY);
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestSendFailed() {
        try {
            traceMachine.activityTrace.incrementReportAttemptCount();
        } catch (NullPointerException unused) {
        }
    }

    public void storeCompletedTrace(Trace trace) {
        try {
            if (isTracingInactive()) {
                log.debug("Attempted to store a completed trace with no trace machine!");
            } else {
                this.activityTrace.addCompletedTrace(trace);
            }
        } catch (Exception e10) {
            log.error("Caught error while calling storeCompletedTrace()", e10);
            AgentHealth.noticeException(e10);
        }
    }

    public static void endTrace(String str) {
        try {
            if (getActivityTrace().rootTrace.myUUID.toString().equals(str)) {
                traceMachine.completeActivityTrace();
            }
        } catch (TracingInactiveException unused) {
        }
    }

    public static void enterMethod(String str, ArrayList<String> arrayList) {
        enterMethod(null, str, arrayList);
    }

    public static void startTracing(String str, boolean z10) {
        startTracing(str, z10, false);
    }

    public static void enterMethod(Trace trace, String str, ArrayList<String> arrayList) {
        try {
            if (isTracingInactive()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ActivityTrace activityTrace = traceMachine.activityTrace;
            long j10 = activityTrace.lastUpdatedAt;
            long j11 = activityTrace.startedAt;
            if (((long) HEALTHY_TRACE_TIMEOUT) + j10 < jCurrentTimeMillis && !activityTrace.hasMissingChildren()) {
                AgentLog agentLog = log;
                agentLog.debug(String.format("LastUpdated[%d] CurrentTime[%d] Trigger[%d]", Long.valueOf(j10), Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis - j10)));
                agentLog.debug("Completing activity trace after hitting healthy timeout (" + HEALTHY_TRACE_TIMEOUT + "ms)");
                if (isTracingActive()) {
                    traceMachine.completeActivityTrace();
                    return;
                }
                return;
            }
            if (j11 + ((long) UNHEALTHY_TRACE_TIMEOUT) < jCurrentTimeMillis) {
                log.debug("Completing activity trace after hitting unhealthy timeout (" + UNHEALTHY_TRACE_TIMEOUT + "ms)");
                if (isTracingActive()) {
                    traceMachine.completeActivityTrace();
                    return;
                }
                return;
            }
            loadTraceContext(trace);
            Trace traceRegisterNewTrace = registerNewTrace(str);
            pushTraceContext(traceRegisterNewTrace);
            traceRegisterNewTrace.scope = getCurrentScope();
            traceRegisterNewTrace.setAnnotationParams(arrayList);
            Iterator<TraceLifecycleAware> it = traceListeners.iterator();
            while (it.hasNext()) {
                it.next().onEnterMethod();
            }
            traceRegisterNewTrace.entryTimestamp = System.currentTimeMillis();
        } catch (TracingInactiveException unused) {
        } catch (Exception e10) {
            log.error("Caught error while calling enterMethod()", e10);
            AgentHealth.noticeException(e10);
        }
    }

    public static void startTracing(String str, boolean z10, boolean z11) {
        try {
            if (isEnabled()) {
                if ((z11 || FeatureFlag.featureEnabled(FeatureFlag.DefaultInteractions)) && Harvest.shouldCollectActivityTraces()) {
                    synchronized (TRACE_MACHINE_LOCK) {
                        try {
                            if (isTracingActive()) {
                                traceMachine.completeActivityTrace();
                            }
                            threadLocalTrace.remove();
                            threadLocalTraceStack.set(new TraceStack());
                            Trace trace = new Trace();
                            if (z10) {
                                trace.displayName = str;
                            } else {
                                trace.displayName = formatActivityDisplayName(str);
                            }
                            trace.metricName = formatActivityMetricName(trace.displayName);
                            trace.metricBackgroundName = formatActivityBackgroundMetricName(trace.displayName);
                            trace.entryTimestamp = System.currentTimeMillis();
                            log.debug("Started trace of " + str + ":" + trace.myUUID.toString());
                            TraceMachine traceMachine2 = new TraceMachine(trace);
                            traceMachine = traceMachine2;
                            trace.traceMachine = traceMachine2;
                            pushTraceContext(trace);
                            traceMachine.activityTrace.previousActivity = getLastActivitySighting();
                            activityHistory.add(new ActivitySighting(trace.entryTimestamp, trace.displayName));
                            Iterator<TraceLifecycleAware> it = traceListeners.iterator();
                            while (it.hasNext()) {
                                it.next().onTraceStart(traceMachine.activityTrace);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        } catch (Exception e10) {
            log.error("Caught error while initializing TraceMachine, shutting it down", e10);
            AgentHealth.noticeException(e10);
            traceMachine = null;
            threadLocalTrace.remove();
            threadLocalTraceStack.remove();
        }
    }
}
