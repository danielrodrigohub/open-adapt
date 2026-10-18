.class public Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;
.super Ljava/lang/Object;
.source "AnalyticsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID_ATTRIBUTE:Ljava/lang/String; = "accountId"

.field public static final ACTION_TYPE_ATTRIBUTE:Ljava/lang/String; = "actionType"

.field public static final ANR:Ljava/lang/String; = "ANR"

.field public static final APPLICATION_PLATFORM_ATTRIBUTE:Ljava/lang/String; = "platform"

.field public static final APPLICATION_PLATFORM_VERSION_ATTRIBUTE:Ljava/lang/String; = "platformVersion"

.field public static final APP_BUILD_ATTRIBUTE:Ljava/lang/String; = "appBuild"

.field public static final APP_DATA_ATTRIBUTE:Ljava/lang/String; = "nr.X-NewRelic-App-Data"

.field public static final APP_ID_ATTRIBUTE:Ljava/lang/String; = "appId"

.field public static final APP_INSTALL_ATTRIBUTE:Ljava/lang/String; = "install"

.field public static final APP_NAME_ATTRIBUTE:Ljava/lang/String; = "appName"

.field public static final APP_UPGRADE_ATTRIBUTE:Ljava/lang/String; = "upgradeFrom"

.field public static final ARCHITECTURE_ATTRIBUTE:Ljava/lang/String; = "architecture"

.field public static final ATTRIBUTE_NAME_MAX_LENGTH:I = 0xff

.field public static final ATTRIBUTE_VALUE_MAX_LENGTH:I = 0x1000

.field public static final BYTES_RECEIVED_ATTRIBUTE:Ljava/lang/String; = "bytesReceived"

.field public static final BYTES_SENT_ATTRIBUTE:Ljava/lang/String; = "bytesSent"

.field public static final CARRIER_ATTRIBUTE:Ljava/lang/String; = "carrier"

.field public static final CONNECTION_TYPE_ATTRIBUTE:Ljava/lang/String; = "connectionType"

.field public static final CONTENT_TYPE_ATTRIBUTE:Ljava/lang/String; = "contentType"

.field public static final DEVICE_MANUFACTURER_ATTRIBUTE:Ljava/lang/String; = "deviceManufacturer"

.field public static final DEVICE_MODEL_ATTRIBUTE:Ljava/lang/String; = "deviceModel"

.field public static final EVENT_CATEGORY_ATTRIBUTE:Ljava/lang/String; = "category"

.field public static final EVENT_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field public static final EVENT_TIMESTAMP_ATTRIBUTE:Ljava/lang/String; = "timestamp"

.field public static final EVENT_TYPE_ATTRIBUTE:Ljava/lang/String; = "eventType"

.field public static final INSTANT_APP_ATTRIBUTE:Ljava/lang/String; = "instantApp"

.field public static final INTERACTION_DURATION_ATTRIBUTE:Ljava/lang/String; = "interactionDuration"

.field public static final LAST_INTERACTION_ATTRIBUTE:Ljava/lang/String; = "lastInteraction"

.field public static final MEM_USAGE_MB_ATTRIBUTE:Ljava/lang/String; = "memUsageMb"

.field public static final MUTABLE:Ljava/lang/String; = "mutable"

.field public static final NATIVE_CRASH:Ljava/lang/String; = "nativeCrash"

.field public static final NETWORK_ERROR_CODE_ATTRIBUTE:Ljava/lang/String; = "networkErrorCode"

.field public static final NEW_RELIC_VERSION_ATTRIBUTE:Ljava/lang/String; = "newRelicVersion"

.field public static final OS_BUILD_ATTRIBUTE:Ljava/lang/String; = "osBuild"

.field public static final OS_MAJOR_VERSION_ATTRIBUTE:Ljava/lang/String; = "osMajorVersion"

.field public static final OS_NAME_ATTRIBUTE:Ljava/lang/String; = "osName"

.field public static final OS_VERSION_ATTRIBUTE:Ljava/lang/String; = "osVersion"

.field public static final REQUEST_DOMAIN_ATTRIBUTE:Ljava/lang/String; = "requestDomain"

.field public static final REQUEST_METHOD_ATTRIBUTE:Ljava/lang/String; = "requestMethod"

.field public static final REQUEST_PATH_ATTRIBUTE:Ljava/lang/String; = "requestPath"

.field public static final REQUEST_URL_ATTRIBUTE:Ljava/lang/String; = "requestUrl"

.field public static final RESPONSE_BODY_ATTRIBUTE:Ljava/lang/String; = "nr.responseBody"

.field public static final RESPONSE_TIME_ATTRIBUTE:Ljava/lang/String; = "responseTime"

.field public static final RUNTIME_ATTRIBUTE:Ljava/lang/String; = "runTime"

.field public static final SESSION_DURATION_ATTRIBUTE:Ljava/lang/String; = "sessionDuration"

.field public static final SESSION_ID_ATTRIBUTE:Ljava/lang/String; = "sessionId"

.field public static final SESSION_TIME_SINCE_LOAD_ATTRIBUTE:Ljava/lang/String; = "timeSinceLoad"

.field public static final STATUS_CODE_ATTRIBUTE:Ljava/lang/String; = "statusCode"

.field public static final TYPE_ATTRIBUTE:Ljava/lang/String; = "type"

.field public static final UNHANDLED_NATIVE_EXCEPTION:Ljava/lang/String; = "unhandledNativeException"

.field public static final USER_ID_ATTRIBUTE:Ljava/lang/String; = "userId"

.field public static final UUID_ATTRIBUTE:Ljava/lang/String; = "uuid"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;


# instance fields
.field private attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

.field private doubleValue:D

.field private isPersistent:Z

.field private name:Ljava/lang/String;

.field private stringValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 3
    iput-wide v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    .line 5
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->VOID:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    .line 23
    iget-wide v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    iput-wide v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    .line 24
    iget-object v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    .line 25
    iget-boolean v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    iput-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    .line 26
    iget-object p1, p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;DZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setDoubleValue(D)V

    .line 15
    iput-boolean p4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setStringValue(Ljava/lang/String;)V

    .line 10
    iput-boolean p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setBooleanValue(Z)V

    .line 20
    iput-boolean p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    return-void
.end method

.method public static createAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttributeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttributeValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 7
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 9
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 11
    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 13
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 15
    :cond_5
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_6

    .line 16
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 17
    :cond_6
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_7

    .line 18
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 19
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 20
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 21
    :cond_8
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported event attribute type for key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Error casting attribute [%s] to String or Float: "

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/JsonObject;",
            ")",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/newrelic/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isString()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v1

    invoke-direct {v3, v2, v1, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v5

    invoke-direct {v3, v2, v5, v6, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public asJsonElement()Lcom/newrelic/com/google/gson/JsonElement;
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$1;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType:[I

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getBooleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Boolean;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Double;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 3
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getAttributeDataType()Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->DOUBLE:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBooleanAttribute()Z
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoubleAttribute()Z
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->DOUBLE:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistent()Z
    .locals 2

    iget-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isExcludedAttributeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStringAttribute()Z
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttribute(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result v0

    return v0
.end method

.method public setBooleanValue(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    .line 3
    sget-object p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    return-void
.end method

.method public setDoubleValue(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->DOUBLE:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1
    iput-wide v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsAttribute{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "name=\'"

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$1;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType:[I

    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ",booleanValue="

    .line 5
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ",doubleValue=\'"

    .line 7
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    iget-wide v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, ",stringValue=\'"

    .line 9
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ",isPersistent="

    .line 11
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    iget-boolean v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->isPersistent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAsString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$1;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType:[I

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticsAttribute$AttributeDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getBooleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-wide v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->doubleValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->stringValue:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
