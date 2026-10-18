package com.newrelic.agent.android.analytics;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class CrashEvent extends AnalyticsEvent {
    public CrashEvent(String str, Set<AnalyticsAttribute> set) {
        super(str, AnalyticsEventCategory.Crash, "Mobile", set);
    }
}
