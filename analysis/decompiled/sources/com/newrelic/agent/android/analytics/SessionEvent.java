package com.newrelic.agent.android.analytics;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class SessionEvent extends AnalyticsEvent {
    public SessionEvent() {
        super(null, AnalyticsEventCategory.Session);
    }

    public SessionEvent(Set<AnalyticsAttribute> set) {
        super(null, AnalyticsEventCategory.Session, "Mobile", set);
    }
}
