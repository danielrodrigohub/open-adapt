package com.newrelic.agent.android.measurement;

import com.newrelic.agent.android.instrumentation.MetricCategory;

/* JADX INFO: loaded from: classes.dex */
public class MethodMeasurement extends CategorizedMeasurement {
    public MethodMeasurement(String str, String str2, long j10, long j11, long j12, MetricCategory metricCategory) {
        super(MeasurementType.Method);
        setName(str);
        setScope(str2);
        setStartTime(j10);
        setEndTime(j11);
        setExclusiveTime(j12);
        setCategory(metricCategory);
    }
}
