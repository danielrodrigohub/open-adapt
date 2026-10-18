package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.metric.MetricStore;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class MetricMeasurementConsumer extends BaseMeasurementConsumer {
    public MetricStore metrics;
    public boolean recordUnscopedMetrics;

    public MetricMeasurementConsumer(MeasurementType measurementType) {
        super(measurementType);
        this.recordUnscopedMetrics = true;
        this.metrics = new MetricStore();
        Harvest.addHarvestListener(this);
    }

    public void addMetric(Metric metric) {
        Metric metric2 = metric.getScope() != null ? this.metrics.get(metric.getName(), metric.getScope()) : this.metrics.get(metric.getName());
        if (metric2 != null) {
            metric2.aggregate(metric);
        } else {
            this.metrics.add(metric);
        }
    }

    @Override // com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        String metricName = formatMetricName(measurement.getName());
        String scope = measurement.getScope();
        double endTimeInSeconds = measurement.getEndTimeInSeconds() - measurement.getStartTimeInSeconds();
        if (scope != null) {
            Metric metric = this.metrics.get(metricName, scope);
            if (metric == null) {
                metric = new Metric(metricName, scope);
                this.metrics.add(metric);
            }
            metric.sample(endTimeInSeconds);
            metric.addExclusive(measurement.getExclusiveTimeInSeconds());
        }
        if (this.recordUnscopedMetrics) {
            Metric metric2 = this.metrics.get(metricName);
            if (metric2 == null) {
                metric2 = new Metric(metricName);
                this.metrics.add(metric2);
            }
            metric2.sample(endTimeInSeconds);
            metric2.addExclusive(measurement.getExclusiveTimeInSeconds());
        }
    }

    public abstract String formatMetricName(String str);

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        Iterator<Metric> it = this.metrics.getAll().iterator();
        while (it.hasNext()) {
            Harvest.addMetric(it.next());
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
        this.metrics.clear();
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestError() {
        this.metrics.clear();
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestSendFailed() {
        this.metrics.clear();
    }
}
