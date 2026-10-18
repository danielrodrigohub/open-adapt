package com.newrelic.agent.android.analytics;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class InteractionEvent extends AnalyticsEvent {
    public InteractionEvent(String str, Set<AnalyticsAttribute> set) {
        super(str, AnalyticsEventCategory.Interaction, "Mobile", set);
    }
}
