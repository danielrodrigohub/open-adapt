package com.newrelic.agent.android.measurement.consumer;

import a0.b;
import com.newrelic.agent.android.measurement.MeasurementType;

/* JADX INFO: loaded from: classes.dex */
public class MethodMeasurementConsumer extends MetricMeasurementConsumer {
    private static final String METRIC_PREFIX = "Method/";

    public MethodMeasurementConsumer() {
        super(MeasurementType.Method);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer
    public String formatMetricName(String str) {
        StringBuilder sbC = b.c(METRIC_PREFIX);
        sbC.append(str.replace("#", "/"));
        return sbC.toString();
    }
}
