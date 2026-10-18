.class public Lcom/newrelic/agent/android/analytics/NetworkEventTransformer;
.super Lcom/newrelic/agent/android/analytics/EventTransformAdapter;
.source "NetworkEventTransformer.java"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;-><init>()V

    const-string v0, "requestUrl"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->withAttributeTransform(Ljava/lang/String;Ljava/util/Map;)Lcom/newrelic/agent/android/analytics/EventTransformAdapter;

    return-void
.end method


# virtual methods
.method public onEventAdded(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MobileRequestError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MobileRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->onEventTransform(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)V

    .line 3
    :goto_0
    invoke-super {p0, p1}, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->onEventAdded(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result p1

    return p1
.end method
