package com.newrelic.agent.android.activity.config;

import a0.b;

/* JADX INFO: loaded from: classes.dex */
public class ActivityTraceConfiguration {
    private int maxTotalTraceCount;

    public static ActivityTraceConfiguration defaultActivityTraceConfiguration() {
        ActivityTraceConfiguration activityTraceConfiguration = new ActivityTraceConfiguration();
        activityTraceConfiguration.setMaxTotalTraceCount(1);
        return activityTraceConfiguration;
    }

    public int getMaxTotalTraceCount() {
        return this.maxTotalTraceCount;
    }

    public void setMaxTotalTraceCount(int i10) {
        this.maxTotalTraceCount = i10;
    }

    public String toString() {
        return b.b(b.c("ActivityTraceConfiguration{maxTotalTraceCount="), this.maxTotalTraceCount, '}');
    }
}
