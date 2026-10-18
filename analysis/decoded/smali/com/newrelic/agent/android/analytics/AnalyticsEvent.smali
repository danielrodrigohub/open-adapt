.class public Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "AnalyticsEvent.java"


# static fields
.field public static final EVENT_NAME_IS_TYPE:Ljava/lang/String;

.field public static final EVENT_NAME_MAX_LENGTH:I = 0xff

.field public static final EVENT_TYPE_LIMIT:I = 0xfa

.field public static final EVENT_TYPE_MOBILE:Ljava/lang/String; = "Mobile"

.field public static final EVENT_TYPE_MOBILE_BREADCRUMB:Ljava/lang/String; = "MobileBreadcrumb"

.field public static final EVENT_TYPE_MOBILE_CRASH:Ljava/lang/String; = "MobileCrash"

.field public static final EVENT_TYPE_MOBILE_REQUEST:Ljava/lang/String; = "MobileRequest"

.field public static final EVENT_TYPE_MOBILE_REQUEST_ERROR:Ljava/lang/String; = "MobileRequestError"

.field public static final EVENT_TYPE_MOBILE_USER_ACTION:Ljava/lang/String; = "MobileUserAction"

.field public static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field public static final validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;


# instance fields
.field public attributeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

.field public eventType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->EVENT_NAME_IS_TYPE:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)V
    .locals 7

    .line 4
    iget-object v1, p1, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    iget-object v3, p1, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    iget-wide v4, p1, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->timestamp:J

    iget-object v6, p1, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;JLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;JLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    .line 7
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    .line 8
    iput-wide p4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->timestamp:J

    .line 9
    sget-object p4, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {p4, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->toValidCategory(Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;)Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    move-result-object p2

    iput-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    .line 10
    invoke-virtual {p4, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->toValidEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    if-eqz p6, :cond_1

    .line 11
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 12
    sget-object p4, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidKeyName(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 13
    iget-object p4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance p5, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-direct {p5, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)V

    invoke-interface {p4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    sget-object p2, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {p2, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidEventName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance p2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    iget-object p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    const-string p4, "name"

    invoke-direct {p2, p4, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance p2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    iget-wide p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->timestamp:J

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "timestamp"

    invoke-direct {p2, p4, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance p2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    iget-object p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string p4, "category"

    invoke-direct {p2, p4, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance p2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    iget-object p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    const-string p4, "eventType"

    invoke-direct {p2, p4, p3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;JLjava/util/Set;)V

    return-void
.end method

.method public static isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidEventName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidEventType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isReservedEventType(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v3, v0

    move-wide v4, v1

    move-object v1, v3

    move-object v2, v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "name"

    .line 6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v8, "category"

    .line 8
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->fromString(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v8, "eventType"

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v8, "timestamp"

    .line 12
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    goto :goto_0

    .line 14
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isString()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 16
    new-instance v8, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v7, v0, v9}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 18
    new-instance v8, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-direct {v8, v7, v0, v9}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_6
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 20
    new-instance v8, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsFloat()F

    move-result v0

    float-to-double v10, v0

    invoke-direct {v8, v7, v10, v11, v9}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 21
    :cond_7
    new-instance p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;JLjava/util/Set;)V

    return-object p0
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/JsonArray;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/com/google/gson/JsonElement;

    .line 26
    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addAttributes(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 2
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->validator:Lcom/newrelic/agent/android/analytics/AnalyticsValidator;

    invoke-virtual {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsValidator;->isValidAttribute(Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Failed to add attribute "

    .line 4
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to event "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": the attribute is invalid or the event already contains that attribute."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 4

    .line 1
    new-instance v0, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 4
    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->asJsonElement()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttributeSet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getMutableAttributeSet()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    const-class v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    const-string v2, "mutable"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->timestamp:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
