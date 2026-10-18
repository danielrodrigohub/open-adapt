package com.newrelic.agent.android.analytics;

import a0.b;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsAttribute {
    public static final String ACCOUNT_ID_ATTRIBUTE = "accountId";
    public static final String ACTION_TYPE_ATTRIBUTE = "actionType";
    public static final String ANR = "ANR";
    public static final String APPLICATION_PLATFORM_ATTRIBUTE = "platform";
    public static final String APPLICATION_PLATFORM_VERSION_ATTRIBUTE = "platformVersion";
    public static final String APP_BUILD_ATTRIBUTE = "appBuild";
    public static final String APP_DATA_ATTRIBUTE = "nr.X-NewRelic-App-Data";
    public static final String APP_ID_ATTRIBUTE = "appId";
    public static final String APP_INSTALL_ATTRIBUTE = "install";
    public static final String APP_NAME_ATTRIBUTE = "appName";
    public static final String APP_UPGRADE_ATTRIBUTE = "upgradeFrom";
    public static final String ARCHITECTURE_ATTRIBUTE = "architecture";
    public static final int ATTRIBUTE_NAME_MAX_LENGTH = 255;
    public static final int ATTRIBUTE_VALUE_MAX_LENGTH = 4096;
    public static final String BYTES_RECEIVED_ATTRIBUTE = "bytesReceived";
    public static final String BYTES_SENT_ATTRIBUTE = "bytesSent";
    public static final String CARRIER_ATTRIBUTE = "carrier";
    public static final String CONNECTION_TYPE_ATTRIBUTE = "connectionType";
    public static final String CONTENT_TYPE_ATTRIBUTE = "contentType";
    public static final String DEVICE_MANUFACTURER_ATTRIBUTE = "deviceManufacturer";
    public static final String DEVICE_MODEL_ATTRIBUTE = "deviceModel";
    public static final String EVENT_CATEGORY_ATTRIBUTE = "category";
    public static final String EVENT_NAME_ATTRIBUTE = "name";
    public static final String EVENT_TIMESTAMP_ATTRIBUTE = "timestamp";
    public static final String EVENT_TYPE_ATTRIBUTE = "eventType";
    public static final String INSTANT_APP_ATTRIBUTE = "instantApp";
    public static final String INTERACTION_DURATION_ATTRIBUTE = "interactionDuration";
    public static final String LAST_INTERACTION_ATTRIBUTE = "lastInteraction";
    public static final String MEM_USAGE_MB_ATTRIBUTE = "memUsageMb";
    public static final String MUTABLE = "mutable";
    public static final String NATIVE_CRASH = "nativeCrash";
    public static final String NETWORK_ERROR_CODE_ATTRIBUTE = "networkErrorCode";
    public static final String NEW_RELIC_VERSION_ATTRIBUTE = "newRelicVersion";
    public static final String OS_BUILD_ATTRIBUTE = "osBuild";
    public static final String OS_MAJOR_VERSION_ATTRIBUTE = "osMajorVersion";
    public static final String OS_NAME_ATTRIBUTE = "osName";
    public static final String OS_VERSION_ATTRIBUTE = "osVersion";
    public static final String REQUEST_DOMAIN_ATTRIBUTE = "requestDomain";
    public static final String REQUEST_METHOD_ATTRIBUTE = "requestMethod";
    public static final String REQUEST_PATH_ATTRIBUTE = "requestPath";
    public static final String REQUEST_URL_ATTRIBUTE = "requestUrl";
    public static final String RESPONSE_BODY_ATTRIBUTE = "nr.responseBody";
    public static final String RESPONSE_TIME_ATTRIBUTE = "responseTime";
    public static final String RUNTIME_ATTRIBUTE = "runTime";
    public static final String SESSION_DURATION_ATTRIBUTE = "sessionDuration";
    public static final String SESSION_ID_ATTRIBUTE = "sessionId";
    public static final String SESSION_TIME_SINCE_LOAD_ATTRIBUTE = "timeSinceLoad";
    public static final String STATUS_CODE_ATTRIBUTE = "statusCode";
    public static final String TYPE_ATTRIBUTE = "type";
    public static final String UNHANDLED_NATIVE_EXCEPTION = "unhandledNativeException";
    public static final String USER_ID_ATTRIBUTE = "userId";
    public static final String UUID_ATTRIBUTE = "uuid";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final AnalyticsValidator validator = new AnalyticsValidator();
    private AttributeDataType attributeDataType;
    private double doubleValue;
    private boolean isPersistent;
    private String name;
    private String stringValue;

    /* JADX INFO: renamed from: com.newrelic.agent.android.analytics.AnalyticsAttribute$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType;

        static {
            int[] iArr = new int[AttributeDataType.values().length];
            $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType = iArr;
            try {
                iArr[AttributeDataType.VOID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AttributeDataType.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AttributeDataType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AttributeDataType.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum AttributeDataType {
        VOID,
        STRING,
        DOUBLE,
        BOOLEAN
    }

    public AnalyticsAttribute() {
        this.stringValue = null;
        this.doubleValue = Double.NaN;
        this.isPersistent = false;
        this.attributeDataType = AttributeDataType.VOID;
    }

    public static AnalyticsAttribute createAttribute(String str, Object obj) {
        try {
            AnalyticsValidator analyticsValidator = validator;
            if (!analyticsValidator.isValidAttributeName(str)) {
                return null;
            }
            if (obj instanceof String) {
                if (analyticsValidator.isValidAttributeValue(str, (String) obj)) {
                    return new AnalyticsAttribute(str, String.valueOf(obj));
                }
                return null;
            }
            if (obj instanceof Float) {
                return new AnalyticsAttribute(str, ((Float) obj).floatValue());
            }
            if (obj instanceof Double) {
                return new AnalyticsAttribute(str, ((Double) obj).doubleValue());
            }
            if (obj instanceof Integer) {
                return new AnalyticsAttribute(str, Double.valueOf(((Integer) obj).intValue()).doubleValue());
            }
            if (obj instanceof Short) {
                return new AnalyticsAttribute(str, Double.valueOf(((Short) obj).shortValue()).doubleValue());
            }
            if (obj instanceof Long) {
                return new AnalyticsAttribute(str, Double.valueOf(((Long) obj).longValue()).doubleValue());
            }
            if (obj instanceof BigDecimal) {
                return new AnalyticsAttribute(str, ((BigDecimal) obj).doubleValue());
            }
            if (obj instanceof BigInteger) {
                return new AnalyticsAttribute(str, ((BigInteger) obj).doubleValue());
            }
            if (obj instanceof Boolean) {
                return new AnalyticsAttribute(str, ((Boolean) obj).booleanValue());
            }
            log.error("Unsupported event attribute type for key [" + str + "]: " + obj.getClass().getName());
            return null;
        } catch (ClassCastException e10) {
            log.error(String.format("Error casting attribute [%s] to String or Float: ", str), e10);
            return null;
        }
    }

    public static Set<AnalyticsAttribute> newFromJson(JsonObject jsonObject) {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            String key = entry.getKey();
            if (entry.getValue().isJsonPrimitive()) {
                JsonPrimitive asJsonPrimitive = entry.getValue().getAsJsonPrimitive();
                if (asJsonPrimitive.isString()) {
                    hashSet.add(new AnalyticsAttribute(key, asJsonPrimitive.getAsString(), false));
                } else if (asJsonPrimitive.isBoolean()) {
                    hashSet.add(new AnalyticsAttribute(key, asJsonPrimitive.getAsBoolean(), false));
                } else if (asJsonPrimitive.isNumber()) {
                    hashSet.add(new AnalyticsAttribute(key, asJsonPrimitive.getAsDouble(), false));
                }
            } else {
                hashSet.add(new AnalyticsAttribute(key, entry.getValue().getAsString(), false));
            }
        }
        return hashSet;
    }

    public JsonElement asJsonElement() {
        int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[this.attributeDataType.ordinal()];
        if (i10 == 2) {
            return SafeJsonPrimitive.factory(getStringValue());
        }
        if (i10 == 3) {
            return SafeJsonPrimitive.factory(Double.valueOf(getDoubleValue()));
        }
        if (i10 != 4) {
            return null;
        }
        return SafeJsonPrimitive.factory(Boolean.valueOf(getBooleanValue()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.name.equals(((AnalyticsAttribute) obj).name);
    }

    public AttributeDataType getAttributeDataType() {
        return this.attributeDataType;
    }

    public boolean getBooleanValue() {
        if (this.attributeDataType == AttributeDataType.BOOLEAN) {
            return Boolean.valueOf(this.stringValue).booleanValue();
        }
        return false;
    }

    public double getDoubleValue() {
        if (this.attributeDataType == AttributeDataType.DOUBLE) {
            return this.doubleValue;
        }
        return Double.NaN;
    }

    public String getName() {
        return this.name;
    }

    public String getStringValue() {
        if (this.attributeDataType == AttributeDataType.STRING) {
            return this.stringValue;
        }
        return null;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public boolean isBooleanAttribute() {
        return this.attributeDataType == AttributeDataType.BOOLEAN;
    }

    public boolean isDoubleAttribute() {
        return this.attributeDataType == AttributeDataType.DOUBLE;
    }

    public boolean isPersistent() {
        return this.isPersistent && !validator.isExcludedAttributeName(this.name);
    }

    public boolean isStringAttribute() {
        return this.attributeDataType == AttributeDataType.STRING;
    }

    public boolean isValid() {
        return validator.isValidAttribute(this);
    }

    public void setBooleanValue(boolean z10) {
        this.stringValue = Boolean.toString(z10);
        this.doubleValue = Double.NaN;
        this.attributeDataType = AttributeDataType.BOOLEAN;
    }

    public void setDoubleValue(double d10) {
        this.doubleValue = d10;
        this.stringValue = null;
        this.attributeDataType = AttributeDataType.DOUBLE;
    }

    public void setPersistent(boolean z10) {
        this.isPersistent = z10;
    }

    public void setStringValue(String str) {
        this.doubleValue = Double.NaN;
        this.stringValue = str;
        this.attributeDataType = AttributeDataType.STRING;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("AnalyticsAttribute{");
        StringBuilder sbC = b.c("name='");
        sbC.append(this.name);
        sbC.append("'");
        sb2.append(sbC.toString());
        int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[this.attributeDataType.ordinal()];
        if (i10 == 2) {
            StringBuilder sbC2 = b.c(",stringValue='");
            sbC2.append(this.stringValue);
            sbC2.append("'");
            sb2.append(sbC2.toString());
        } else if (i10 == 3) {
            StringBuilder sbC3 = b.c(",doubleValue='");
            sbC3.append(this.doubleValue);
            sbC3.append("'");
            sb2.append(sbC3.toString());
        } else if (i10 == 4) {
            StringBuilder sbC4 = b.c(",booleanValue=");
            sbC4.append(Boolean.valueOf(this.stringValue).toString());
            sb2.append(sbC4.toString());
        }
        StringBuilder sbC5 = b.c(",isPersistent=");
        sbC5.append(this.isPersistent);
        sb2.append(sbC5.toString());
        sb2.append("}");
        return sb2.toString();
    }

    public String valueAsString() {
        int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[this.attributeDataType.ordinal()];
        if (i10 == 2) {
            return this.stringValue;
        }
        if (i10 == 3) {
            return Double.toString(this.doubleValue);
        }
        if (i10 != 4) {
            return null;
        }
        return Boolean.valueOf(getBooleanValue()).toString();
    }

    public AnalyticsAttribute(String str, String str2) {
        this(str, str2, true);
    }

    public AnalyticsAttribute(String str, String str2, boolean z10) {
        this.name = str;
        setStringValue(str2);
        this.isPersistent = z10;
    }

    public AnalyticsAttribute(String str, double d10) {
        this(str, d10, true);
    }

    public AnalyticsAttribute(String str, double d10, boolean z10) {
        this.name = str;
        setDoubleValue(d10);
        this.isPersistent = z10;
    }

    public AnalyticsAttribute(String str, boolean z10) {
        this(str, z10, true);
    }

    public AnalyticsAttribute(String str, boolean z10, boolean z11) {
        this.name = str;
        setBooleanValue(z10);
        this.isPersistent = z11;
    }

    public AnalyticsAttribute(AnalyticsAttribute analyticsAttribute) {
        this.name = analyticsAttribute.name;
        this.doubleValue = analyticsAttribute.doubleValue;
        this.stringValue = analyticsAttribute.stringValue;
        this.isPersistent = analyticsAttribute.isPersistent;
        this.attributeDataType = analyticsAttribute.attributeDataType;
    }
}
