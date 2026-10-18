package com.newrelic.agent.android.measurement;

/* JADX INFO: loaded from: classes.dex */
public class ActivityMeasurement extends BaseMeasurement {
    public ActivityMeasurement(String str, long j10, long j11) {
        super(MeasurementType.Activity);
        setName(str);
        setStartTime(j10);
        setEndTime(j11);
    }
}
