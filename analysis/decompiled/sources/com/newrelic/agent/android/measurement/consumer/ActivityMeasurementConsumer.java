package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.measurement.MeasurementType;

/* JADX INFO: loaded from: classes.dex */
public class ActivityMeasurementConsumer extends MetricMeasurementConsumer {
    public ActivityMeasurementConsumer() {
        super(MeasurementType.Activity);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer
    public String formatMetricName(String str) {
        return str;
    }
}
