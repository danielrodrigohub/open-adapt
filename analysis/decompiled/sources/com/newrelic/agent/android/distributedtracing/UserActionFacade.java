package com.newrelic.agent.android.distributedtracing;

import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.analytics.AnalyticsEvent;
import com.newrelic.agent.android.analytics.AnalyticsEventCategory;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class UserActionFacade {
    private static TraceFacade traceFacade = DistributedTracing.getInstance();
    private static final AtomicReference<UserActionFacade> instance = new AtomicReference<>(null);

    public static UserActionFacade getInstance() {
        AtomicReference<UserActionFacade> atomicReference = instance;
        atomicReference.compareAndSet(null, new UserActionFacade());
        return atomicReference.get();
    }

    public static void setTraceFacade(TraceFacade traceFacade2) {
        traceFacade = traceFacade2;
    }

    public void recordUserAction(UserActionType userActionType) {
        recordUserAction(userActionType, null);
    }

    public void recordUserAction(UserActionType userActionType, Map<String, Object> map) {
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            TreeMap treeMap = new TreeMap();
            treeMap.put("actionType", userActionType.toString());
            if (map != null) {
                treeMap.putAll(map);
            }
            AnalyticsControllerImpl.getInstance().internalRecordEvent(AnalyticsEvent.EVENT_NAME_IS_TYPE, AnalyticsEventCategory.UserAction, AnalyticsEvent.EVENT_TYPE_MOBILE_USER_ACTION, treeMap);
        }
    }
}
