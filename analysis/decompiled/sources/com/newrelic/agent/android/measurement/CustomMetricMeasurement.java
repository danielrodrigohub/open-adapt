package com.newrelic.agent.android.measurement;

import com.newrelic.agent.android.metric.Metric;

/* JADX INFO: loaded from: classes.dex */
public class CustomMetricMeasurement extends CategorizedMeasurement {
    private Metric customMetric;

    public CustomMetricMeasurement() {
        super(MeasurementType.Custom);
    }

    public Metric getCustomMetric() {
        return this.customMetric;
    }

    public CustomMetricMeasurement(String str, int i10, double d10, double d11) {
        this();
        setName(str);
        Metric metric = new Metric(str);
        this.customMetric = metric;
        metric.sample(d10);
        this.customMetric.setCount(i10);
        this.customMetric.setExclusive(Double.valueOf(d11));
    }
}
