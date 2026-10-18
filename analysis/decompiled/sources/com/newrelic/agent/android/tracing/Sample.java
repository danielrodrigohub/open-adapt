package com.newrelic.agent.android.tracing;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonArray;

/* JADX INFO: loaded from: classes.dex */
public class Sample extends HarvestableArray {
    private SampleValue sampleValue;
    private long timestamp;
    private SampleType type;

    public enum SampleType {
        MEMORY,
        CPU
    }

    public Sample(SampleType sampleType) {
        setSampleType(sampleType);
        setTimestamp(System.currentTimeMillis());
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(SafeJsonPrimitive.factory(Long.valueOf(this.timestamp)));
        jsonArray.add(SafeJsonPrimitive.factory(this.sampleValue.getValue()));
        return jsonArray;
    }

    public SampleType getSampleType() {
        return this.type;
    }

    public SampleValue getSampleValue() {
        return this.sampleValue;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public Number getValue() {
        return this.sampleValue.getValue();
    }

    public void setSampleType(SampleType sampleType) {
        this.type = sampleType;
    }

    public void setSampleValue(SampleValue sampleValue) {
        this.sampleValue = sampleValue;
    }

    public void setTimestamp(long j10) {
        this.timestamp = j10;
    }

    public void setSampleValue(double d10) {
        this.sampleValue = new SampleValue(d10);
    }

    public void setSampleValue(long j10) {
        this.sampleValue = new SampleValue(j10);
    }

    public Sample(long j10) {
        setTimestamp(j10);
    }

    public Sample(long j10, SampleValue sampleValue) {
        setTimestamp(j10);
        setSampleValue(sampleValue);
    }
}
