package com.newrelic.agent.android.measurement;

import a0.b;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.consumer.MeasurementConsumer;
import com.newrelic.agent.android.measurement.producer.BaseMeasurementProducer;
import com.newrelic.agent.android.measurement.producer.MeasurementProducer;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MeasurementPool extends BaseMeasurementProducer implements MeasurementConsumer {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final CopyOnWriteArrayList<MeasurementConsumer> consumers;
    private final CopyOnWriteArrayList<MeasurementProducer> producers;

    public MeasurementPool() {
        super(MeasurementType.Any);
        this.producers = new CopyOnWriteArrayList<>();
        this.consumers = new CopyOnWriteArrayList<>();
        addMeasurementProducer(this);
    }

    public void addMeasurementConsumer(MeasurementConsumer measurementConsumer) {
        if (measurementConsumer == null) {
            log.debug("Attempted to add null MeasurementConsumer.");
            return;
        }
        if (this.consumers.addIfAbsent(measurementConsumer)) {
            return;
        }
        log.debug("Attempted to add the same MeasurementConsumer " + measurementConsumer + " multiple times.");
    }

    public void addMeasurementProducer(MeasurementProducer measurementProducer) {
        if (measurementProducer == null) {
            log.debug("Attempted to add null MeasurementProducer.");
            return;
        }
        if (this.producers.addIfAbsent(measurementProducer)) {
            return;
        }
        log.debug("Attempted to add the same MeasurementProducer " + measurementProducer + "  multiple times.");
    }

    public void broadcastMeasurements() {
        ArrayList<Measurement> arrayList = new ArrayList();
        Iterator<MeasurementProducer> it = this.producers.iterator();
        while (it.hasNext()) {
            Collection<Measurement> collectionDrainMeasurements = it.next().drainMeasurements();
            if (collectionDrainMeasurements.size() > 0) {
                arrayList.addAll(collectionDrainMeasurements);
                while (arrayList.remove((Object) null)) {
                }
            }
        }
        if (arrayList.size() > 0) {
            for (MeasurementConsumer measurementConsumer : this.consumers) {
                for (Measurement measurement : arrayList) {
                    if (measurementConsumer.getMeasurementType() == measurement.getType() || measurementConsumer.getMeasurementType() == MeasurementType.Any) {
                        try {
                            measurementConsumer.consumeMeasurement(measurement);
                        } catch (Exception e10) {
                            ExceptionHelper.exceptionToErrorCode(e10);
                            AgentLog agentLog = log;
                            StringBuilder sbC = b.c("broadcastMeasurements exception[");
                            sbC.append(e10.getClass().getName());
                            sbC.append("]");
                            agentLog.error(sbC.toString());
                        }
                    }
                }
            }
        }
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        produceMeasurement(measurement);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurements(Collection<Measurement> collection) {
        produceMeasurements(collection);
    }

    public Collection<MeasurementConsumer> getMeasurementConsumers() {
        return this.consumers;
    }

    public Collection<MeasurementProducer> getMeasurementProducers() {
        return this.producers;
    }

    @Override // com.newrelic.agent.android.measurement.producer.BaseMeasurementProducer, com.newrelic.agent.android.measurement.producer.MeasurementProducer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public MeasurementType getMeasurementType() {
        return MeasurementType.Any;
    }

    public void removeMeasurementConsumer(MeasurementConsumer measurementConsumer) {
        if (this.consumers.remove(measurementConsumer)) {
            return;
        }
        log.debug("Attempted to remove MeasurementConsumer " + measurementConsumer + " which is not registered.");
    }

    public void removeMeasurementProducer(MeasurementProducer measurementProducer) {
        if (this.producers.remove(measurementProducer)) {
            return;
        }
        log.debug("Attempted to remove MeasurementProducer " + measurementProducer + " which is not registered.");
    }
}
