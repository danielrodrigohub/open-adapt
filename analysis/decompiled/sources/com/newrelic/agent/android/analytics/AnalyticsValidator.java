package com.newrelic.agent.android.analytics;

import a0.b;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsValidator {
    private static final String ALLOWABLE_EVENT_TYPE_CHARS = "^[\\p{L}\\p{Nd} _:.]+$";
    private static final String NEW_RELIC_PREFIX = "newRelic";
    private static final String NR_PREFIX = "nr.";
    private static final String PUBLIC_PREFIX = "Public_";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    public static final Set<String> reservedAttributeNames = new HashSet<String>() { // from class: com.newrelic.agent.android.analytics.AnalyticsValidator.1
        {
            add(AnalyticsAttribute.EVENT_TYPE_ATTRIBUTE);
            add(AnalyticsAttribute.TYPE_ATTRIBUTE);
            add(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE);
            add(AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE);
            add(AnalyticsAttribute.ACCOUNT_ID_ATTRIBUTE);
            add(AnalyticsAttribute.APP_ID_ATTRIBUTE);
            add(AnalyticsAttribute.APP_NAME_ATTRIBUTE);
            add(AnalyticsAttribute.UUID_ATTRIBUTE);
            add("sessionId");
            add(AnalyticsAttribute.OS_NAME_ATTRIBUTE);
            add(AnalyticsAttribute.OS_VERSION_ATTRIBUTE);
            add(AnalyticsAttribute.OS_MAJOR_VERSION_ATTRIBUTE);
            add(AnalyticsAttribute.DEVICE_MANUFACTURER_ATTRIBUTE);
            add(AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE);
            add(AnalyticsAttribute.MEM_USAGE_MB_ATTRIBUTE);
            add(AnalyticsAttribute.CARRIER_ATTRIBUTE);
            add(AnalyticsAttribute.NEW_RELIC_VERSION_ATTRIBUTE);
            add(AnalyticsAttribute.INTERACTION_DURATION_ATTRIBUTE);
            add(AnalyticsAttribute.APP_INSTALL_ATTRIBUTE);
            add(AnalyticsAttribute.APP_UPGRADE_ATTRIBUTE);
            add(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE);
            add(AnalyticsAttribute.APPLICATION_PLATFORM_VERSION_ATTRIBUTE);
            add(AnalyticsAttribute.LAST_INTERACTION_ATTRIBUTE);
            add(AnalyticsAttribute.OS_BUILD_ATTRIBUTE);
            add(AnalyticsAttribute.RUNTIME_ATTRIBUTE);
            add(AnalyticsAttribute.ARCHITECTURE_ATTRIBUTE);
            add("appBuild");
        }
    };
    public static Set<String> excludedAttributeNames = new HashSet<String>() { // from class: com.newrelic.agent.android.analytics.AnalyticsValidator.2
        {
            add(AnalyticsAttribute.APP_INSTALL_ATTRIBUTE);
            add(AnalyticsAttribute.APP_UPGRADE_ATTRIBUTE);
            add(AnalyticsAttribute.SESSION_DURATION_ATTRIBUTE);
        }
    };
    public static final Set<String> reservedEventNames = new HashSet<String>() { // from class: com.newrelic.agent.android.analytics.AnalyticsValidator.3
    };
    public static final Set<String> reservedEventTypes = new HashSet<String>() { // from class: com.newrelic.agent.android.analytics.AnalyticsValidator.4
        {
            add("Mobile");
            add(AnalyticsEvent.EVENT_TYPE_MOBILE_REQUEST);
            add(AnalyticsEvent.EVENT_TYPE_MOBILE_REQUEST_ERROR);
            add(AnalyticsEvent.EVENT_TYPE_MOBILE_BREADCRUMB);
            add(AnalyticsEvent.EVENT_TYPE_MOBILE_CRASH);
            add(AnalyticsEvent.EVENT_TYPE_MOBILE_USER_ACTION);
        }
    };
    public static Set<String> excludedEventNames = new HashSet<String>() { // from class: com.newrelic.agent.android.analytics.AnalyticsValidator.5
    };

    public boolean isExcludedAttributeName(String str) {
        return excludedAttributeNames.contains(str);
    }

    public boolean isReservedAttributeName(String str) {
        if (reservedAttributeNames.contains(str)) {
            log.error("Attribute name [" + str + "] is in the reserved names list.");
            return true;
        }
        if (str.startsWith(NEW_RELIC_PREFIX)) {
            log.error(b.a("Attribute name [", str, "] starts with reserved prefix [", NEW_RELIC_PREFIX, "]"));
            return true;
        }
        if (str.startsWith(NR_PREFIX)) {
            log.error(b.a("Attribute name [", str, "] starts with reserved prefix [", NR_PREFIX, "]"));
            return true;
        }
        if (!str.startsWith(PUBLIC_PREFIX)) {
            return false;
        }
        log.error(b.a("Attribute name [", str, "] starts with reserved prefix [", PUBLIC_PREFIX, "]"));
        return true;
    }

    public boolean isReservedEventType(String str) {
        boolean z10 = isValidEventType(str) && reservedEventTypes.contains(str);
        if (z10) {
            log.error("Event type [" + str + "] is reserved and will be ignored.");
        }
        return z10;
    }

    public boolean isValidAttribute(AnalyticsAttribute analyticsAttribute) {
        return analyticsAttribute != null && isValidAttributeName(analyticsAttribute.getName()) && isValidAttributeValue(analyticsAttribute.getName(), analyticsAttribute.valueAsString());
    }

    public boolean isValidAttributeName(String str) {
        boolean zIsValidKeyName = isValidKeyName(str);
        if (zIsValidKeyName && !((zIsValidKeyName = !isReservedAttributeName(str)))) {
            log.error("Attribute name [" + str + "] is reserved for internal use and will be ignored.");
        }
        return zIsValidKeyName;
    }

    public boolean isValidAttributeValue(String str, String str2) {
        boolean z10 = (str2 == null || str2.isEmpty() || str2.getBytes().length >= 4096) ? false : true;
        if (!z10) {
            log.error("Attribute value for name " + str + " is null, empty, or exceeds the maximum length of " + AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH + " bytes.");
        }
        return z10;
    }

    public boolean isValidEventName(String str) {
        return (str == null || str.isEmpty() || str.length() >= 255) ? false : true;
    }

    public boolean isValidEventType(String str) {
        boolean zMatches = str != null;
        if (zMatches) {
            zMatches = str.matches(ALLOWABLE_EVENT_TYPE_CHARS);
        }
        if (!zMatches) {
            log.error("Event type [" + str + "] is invalid and will be ignored. Custom event types may only include alphanumeric, ' ', '.', ':' or '_' characters.");
        }
        return zMatches;
    }

    public boolean isValidKeyName(String str) {
        boolean z10 = (str == null || str.isEmpty() || str.length() >= 255) ? false : true;
        if (!z10) {
            log.error("Attribute name [" + str + "] is null, empty, or exceeds the maximum length of 255 characters.");
        }
        return z10;
    }

    public AnalyticsEventCategory toValidCategory(AnalyticsEventCategory analyticsEventCategory) {
        return analyticsEventCategory == null ? AnalyticsEventCategory.Custom : analyticsEventCategory;
    }

    public String toValidEventType(String str) {
        return (str == null || str.isEmpty()) ? "Mobile" : str;
    }

    public Set<AnalyticsAttribute> toValidatedAnalyticsAttributes(Map<String, Object> map) {
        try {
            HashSet hashSet = new HashSet();
            for (String str : map.keySet()) {
                AnalyticsAttribute analyticsAttributeCreateAttribute = AnalyticsAttribute.createAttribute(str, map.get(str));
                if (isValidAttribute(analyticsAttributeCreateAttribute)) {
                    hashSet.add(analyticsAttributeCreateAttribute);
                } else {
                    log.warning(String.format("Attribute " + str + "] ignored: value is null, empty or exceeds the maximum name length", new Object[0]));
                }
            }
            return hashSet;
        } catch (Exception e10) {
            log.error("Error occurred filtering attribute map: ", e10);
            return Collections.emptySet();
        }
    }

    public Set<AnalyticsAttribute> toValidatedAnalyticsAttributes(Set<AnalyticsAttribute> set) {
        try {
            HashSet hashSet = new HashSet();
            for (AnalyticsAttribute analyticsAttribute : set) {
                if (isValidAttribute(analyticsAttribute)) {
                    hashSet.add(new AnalyticsAttribute(analyticsAttribute));
                } else {
                    log.warning(String.format("Attribute " + analyticsAttribute.getName() + "] ignored: value is null, empty or exceeds the maximum name length", new Object[0]));
                }
            }
            return hashSet;
        } catch (Exception e10) {
            log.error("Error occurred filtering attribute set: ", e10);
            return Collections.emptySet();
        }
    }
}
