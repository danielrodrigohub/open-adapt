package com.newrelic.agent.android.analytics;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class AnalyticsEventFactory {

    /* JADX INFO: renamed from: com.newrelic.agent.android.analytics.AnalyticsEventFactory$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory;

        static {
            int[] iArr = new int[AnalyticsEventCategory.values().length];
            $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory = iArr;
            try {
                iArr[AnalyticsEventCategory.Session.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory[AnalyticsEventCategory.RequestError.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory[AnalyticsEventCategory.Interaction.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory[AnalyticsEventCategory.Crash.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory[AnalyticsEventCategory.Custom.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory[AnalyticsEventCategory.Breadcrumb.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory[AnalyticsEventCategory.NetworkRequest.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory[AnalyticsEventCategory.UserAction.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private AnalyticsEventFactory() {
    }

    public static AnalyticsEvent createEvent(String str, AnalyticsEventCategory analyticsEventCategory, String str2, Set<AnalyticsAttribute> set) {
        switch (AnonymousClass1.$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory[analyticsEventCategory.ordinal()]) {
            case 1:
                return new SessionEvent(set);
            case 2:
                return new NetworkRequestErrorEvent(set);
            case 3:
                return new InteractionEvent(str, set);
            case 4:
                return new CrashEvent(str, set);
            case 5:
                return new CustomEvent(str, str2, set);
            case 6:
                return new BreadcrumbEvent(str, set);
            case 7:
                return new NetworkRequestEvent(set);
            case 8:
                return new UserActionEvent(str, set);
            default:
                return null;
        }
    }
}
