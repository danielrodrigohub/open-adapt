package com.newrelic.agent.android;

import a0.d;
import com.newrelic.agent.android.activity.MeasuredActivity;
import com.newrelic.agent.android.activity.NamedActivity;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.MeasurementException;
import com.newrelic.agent.android.measurement.MeasurementPool;
import com.newrelic.agent.android.measurement.consumer.MeasurementConsumer;
import com.newrelic.agent.android.measurement.producer.MeasurementProducer;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class MeasurementEngine {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    public final Map<String, MeasuredActivity> activities = new ConcurrentHashMap();
    public final MeasurementPool rootMeasurementPool = new MeasurementPool();
    private final ExecutorService worker = Executors.newCachedThreadPool(new NamedThreadFactory("MeasurementEngine"));

    public void addMeasurementConsumer(MeasurementConsumer measurementConsumer) {
        this.rootMeasurementPool.addMeasurementConsumer(measurementConsumer);
    }

    public void addMeasurementProducer(MeasurementProducer measurementProducer) {
        this.rootMeasurementPool.addMeasurementProducer(measurementProducer);
    }

    public Future<?> bg(Runnable runnable) {
        try {
            return this.worker.submit(runnable);
        } catch (Exception e10) {
            log.warning("MeasurementEngine background worker: " + e10);
            return null;
        }
    }

    public void broadcastMeasurements() {
        this.rootMeasurementPool.broadcastMeasurements();
    }

    public void clear() {
        this.activities.clear();
    }

    public MeasuredActivity endActivity(String str) {
        MeasuredActivity measuredActivity = this.activities.get(str);
        if (measuredActivity == null) {
            throw new MeasurementException(d.c("Activity '", str, "' has not been started."));
        }
        endActivity(measuredActivity);
        return measuredActivity;
    }

    public void removeMeasurementConsumer(MeasurementConsumer measurementConsumer) {
        this.rootMeasurementPool.removeMeasurementConsumer(measurementConsumer);
    }

    public void removeMeasurementProducer(MeasurementProducer measurementProducer) {
        this.rootMeasurementPool.removeMeasurementProducer(measurementProducer);
    }

    public void renameActivity(String str, String str2) {
        MeasuredActivity measuredActivityRemove = this.activities.remove(str);
        if (measuredActivityRemove == null || !(measuredActivityRemove instanceof NamedActivity)) {
            return;
        }
        this.activities.put(str2, measuredActivityRemove);
        ((NamedActivity) measuredActivityRemove).rename(str2);
    }

    public MeasuredActivity startActivity(String str) {
        if (this.activities.containsKey(str)) {
            throw new MeasurementException(d.c("An activity with the name '", str, "' has already started."));
        }
        final MeasurementPool measurementPool = new MeasurementPool();
        final NamedActivity namedActivity = new NamedActivity(str);
        bg(new Runnable() { // from class: com.newrelic.agent.android.MeasurementEngine.1
            @Override // java.lang.Runnable
            public void run() {
                namedActivity.setMeasurementPool(measurementPool);
                MeasurementEngine.this.rootMeasurementPool.addMeasurementConsumer(measurementPool);
            }
        });
        this.activities.put(str, namedActivity);
        return namedActivity;
    }

    public void endActivity(MeasuredActivity measuredActivity) {
        this.rootMeasurementPool.removeMeasurementConsumer(measuredActivity.getMeasurementPool());
        this.activities.remove(measuredActivity.getName());
        measuredActivity.finish();
    }
}
