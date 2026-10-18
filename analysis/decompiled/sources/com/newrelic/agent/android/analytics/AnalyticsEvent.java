package com.newrelic.agent.android.analytics;

import a0.b;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsEvent extends HarvestableObject {
    public static final int EVENT_NAME_MAX_LENGTH = 255;
    public static final int EVENT_TYPE_LIMIT = 250;
    public static final String EVENT_TYPE_MOBILE = "Mobile";
    public static final String EVENT_TYPE_MOBILE_BREADCRUMB = "MobileBreadcrumb";
    public static final String EVENT_TYPE_MOBILE_CRASH = "MobileCrash";
    public static final String EVENT_TYPE_MOBILE_REQUEST = "MobileRequest";
    public static final String EVENT_TYPE_MOBILE_REQUEST_ERROR = "MobileRequestError";
    public static final String EVENT_TYPE_MOBILE_USER_ACTION = "MobileUserAction";
    public Set<AnalyticsAttribute> attributeSet;
    public AnalyticsEventCategory category;
    public String eventType;
    public String name;
    public long timestamp;
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public static final String EVENT_NAME_IS_TYPE = null;
    public static final AnalyticsValidator validator = new AnalyticsValidator();

    public AnalyticsEvent(String str) {
        this(str, AnalyticsEventCategory.Custom, null, null);
    }

    public static AnalyticsEvent newFromJson(JsonObject jsonObject) {
        HashSet hashSet = new HashSet();
        String asString = null;
        long asLong = 0;
        String asString2 = null;
        AnalyticsEventCategory analyticsEventCategoryFromString = null;
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            String key = entry.getKey();
            if (key.equalsIgnoreCase("name")) {
                asString2 = entry.getValue().getAsString();
            } else if (key.equalsIgnoreCase(AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE)) {
                analyticsEventCategoryFromString = AnalyticsEventCategory.fromString(entry.getValue().getAsString());
            } else if (key.equalsIgnoreCase(AnalyticsAttribute.EVENT_TYPE_ATTRIBUTE)) {
                asString = entry.getValue().getAsString();
            } else if (key.equalsIgnoreCase(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE)) {
                asLong = entry.getValue().getAsLong();
            } else {
                JsonPrimitive asJsonPrimitive = entry.getValue().getAsJsonPrimitive();
                if (asJsonPrimitive.isString()) {
                    hashSet.add(new AnalyticsAttribute(key, asJsonPrimitive.getAsString(), false));
                } else if (asJsonPrimitive.isBoolean()) {
                    hashSet.add(new AnalyticsAttribute(key, asJsonPrimitive.getAsBoolean(), false));
                } else if (asJsonPrimitive.isNumber()) {
                    hashSet.add(new AnalyticsAttribute(key, asJsonPrimitive.getAsFloat(), false));
                }
            }
        }
        return new AnalyticsEvent(asString2, analyticsEventCategoryFromString, asString, asLong, hashSet);
    }

    public void addAttributes(Set<AnalyticsAttribute> set) {
        if (set != null) {
            for (AnalyticsAttribute analyticsAttribute : set) {
                if (!validator.isValidAttribute(analyticsAttribute) || !this.attributeSet.add(analyticsAttribute)) {
                    AgentLog agentLog = log;
                    StringBuilder sbC = b.c("Failed to add attribute ");
                    sbC.append(analyticsAttribute.getName());
                    sbC.append(" to event ");
                    sbC.append(getName());
                    sbC.append(": the attribute is invalid or the event already contains that attribute.");
                    agentLog.error(sbC.toString());
                }
            }
        }
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        synchronized (this) {
            for (AnalyticsAttribute analyticsAttribute : this.attributeSet) {
                jsonObject.add(analyticsAttribute.getName(), analyticsAttribute.asJsonElement());
            }
        }
        return jsonObject;
    }

    public Collection<AnalyticsAttribute> getAttributeSet() {
        return Collections.unmodifiableCollection(this.attributeSet);
    }

    public AnalyticsEventCategory getCategory() {
        return this.category;
    }

    public String getEventType() {
        return this.eventType;
    }

    public Collection<AnalyticsAttribute> getMutableAttributeSet() {
        Set setCheckedSet = Collections.checkedSet(this.attributeSet, AnalyticsAttribute.class);
        setCheckedSet.add(new AnalyticsAttribute(AnalyticsAttribute.MUTABLE, true));
        return setCheckedSet;
    }

    public String getName() {
        return this.name;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public boolean isValid() {
        return isValid(this.name, this.eventType);
    }

    public AnalyticsEvent(String str, AnalyticsEventCategory analyticsEventCategory) {
        this(str, analyticsEventCategory, null, null);
    }

    public static boolean isValid(String str, String str2) {
        AnalyticsValidator analyticsValidator = validator;
        return analyticsValidator.isValidEventName(str) && analyticsValidator.isValidEventType(str2) && !analyticsValidator.isReservedEventType(str2);
    }

    public AnalyticsEvent(String str, AnalyticsEventCategory analyticsEventCategory, String str2, Set<AnalyticsAttribute> set) {
        this(str, analyticsEventCategory, str2, System.currentTimeMillis(), set);
    }

    public AnalyticsEvent(AnalyticsEvent analyticsEvent) {
        this(analyticsEvent.name, analyticsEvent.category, analyticsEvent.eventType, analyticsEvent.timestamp, analyticsEvent.attributeSet);
    }

    public AnalyticsEvent(String str, AnalyticsEventCategory analyticsEventCategory, String str2, long j10, Set<AnalyticsAttribute> set) {
        this.attributeSet = Collections.synchronizedSet(new HashSet());
        this.name = str;
        this.timestamp = j10;
        AnalyticsValidator analyticsValidator = validator;
        this.category = analyticsValidator.toValidCategory(analyticsEventCategory);
        this.eventType = analyticsValidator.toValidEventType(str2);
        if (set != null) {
            for (AnalyticsAttribute analyticsAttribute : set) {
                if (validator.isValidKeyName(analyticsAttribute.getName())) {
                    this.attributeSet.add(new AnalyticsAttribute(analyticsAttribute));
                }
            }
        }
        if (validator.isValidEventName(str)) {
            this.attributeSet.add(new AnalyticsAttribute("name", this.name));
        }
        this.attributeSet.add(new AnalyticsAttribute(AnalyticsAttribute.EVENT_TIMESTAMP_ATTRIBUTE, String.valueOf(this.timestamp)));
        this.attributeSet.add(new AnalyticsAttribute(AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE, this.category.name()));
        this.attributeSet.add(new AnalyticsAttribute(AnalyticsAttribute.EVENT_TYPE_ATTRIBUTE, this.eventType));
    }

    public static Collection<AnalyticsEvent> newFromJson(JsonArray jsonArray) {
        ArrayList arrayList = new ArrayList();
        Iterator<JsonElement> it = jsonArray.iterator();
        while (it.hasNext()) {
            arrayList.add(newFromJson(it.next().getAsJsonObject()));
        }
        return arrayList;
    }
}
