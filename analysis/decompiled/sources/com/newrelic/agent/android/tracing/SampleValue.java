package com.newrelic.agent.android.tracing;

/* JADX INFO: loaded from: classes.dex */
public class SampleValue {
    private boolean isDouble;
    private Double value = Double.valueOf(0.0d);

    public SampleValue(double d10) {
        setValue(d10);
    }

    public Double asDouble() {
        return this.value;
    }

    public Long asLong() {
        return Long.valueOf(this.value.longValue());
    }

    public Number getValue() {
        return this.isDouble ? asDouble() : asLong();
    }

    public boolean isDouble() {
        return this.isDouble;
    }

    public void setDouble(boolean z10) {
        this.isDouble = z10;
    }

    public void setValue(double d10) {
        this.value = Double.valueOf(d10);
        this.isDouble = true;
    }

    public void setValue(long j10) {
        this.value = Double.valueOf(j10);
        this.isDouble = false;
    }

    public SampleValue(long j10) {
        setValue(j10);
    }
}
