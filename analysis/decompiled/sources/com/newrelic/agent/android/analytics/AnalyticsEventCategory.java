package com.newrelic.agent.android.analytics;

/* JADX INFO: loaded from: classes.dex */
public enum AnalyticsEventCategory {
    Session,
    Interaction,
    Crash,
    Custom,
    NetworkRequest,
    RequestError,
    Breadcrumb,
    UserAction;

    public static AnalyticsEventCategory fromString(String str) {
        AnalyticsEventCategory analyticsEventCategory = Custom;
        if (str == null) {
            return analyticsEventCategory;
        }
        if (str.equalsIgnoreCase("session")) {
            return Session;
        }
        if (str.equalsIgnoreCase("interaction")) {
            return Interaction;
        }
        if (str.equalsIgnoreCase("crash")) {
            return Crash;
        }
        if (str.equalsIgnoreCase("requesterror")) {
            return RequestError;
        }
        if (str.equalsIgnoreCase("breadcrumb")) {
            return Breadcrumb;
        }
        if (str.equalsIgnoreCase("networkrequest")) {
            return NetworkRequest;
        }
        return str.equalsIgnoreCase("useraction") ? UserAction : analyticsEventCategory;
    }
}
