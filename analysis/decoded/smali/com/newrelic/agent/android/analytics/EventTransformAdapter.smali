.class public Lcom/newrelic/agent/android/analytics/EventTransformAdapter;
.super Ljava/lang/Object;
.source "EventTransformAdapter.java"

# interfaces
.implements Lcom/newrelic/agent/android/analytics/EventListener;


# instance fields
.field public final REPLACEMENT:Ljava/lang/String;

.field public final attributeTransforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "*"

    .line 2
    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->REPLACEMENT:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->attributeTransforms:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    return-void
.end method


# virtual methods
.method public onAttributeTransform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->attributeTransforms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p2}, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->onPatternTransform(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public onEventAdded(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->onEventAdded(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onEventEvicted(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->onEventEvicted(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onEventFlush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->onEventFlush()V

    :cond_0
    return-void
.end method

.method public onEventOverflow(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->onEventOverflow(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onEventQueueSizeExceeded(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->onEventQueueSizeExceeded(I)V

    :cond_0
    return-void
.end method

.method public onEventQueueTimeExceeded(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->onEventQueueTimeExceeded(I)V

    :cond_0
    return-void
.end method

.method public onEventTransform(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getAttributeSet()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    .line 2
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->attributeTransforms:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->onAttributeTransform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;->setStringValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPatternTransform(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p3

    if-gt p2, p3, :cond_2

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->start(I)I

    move-result p3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    if-ge p3, v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    const-string v2, "*"

    .line 7
    invoke-virtual {v0, p3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p3
.end method

.method public onShutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->onShutdown()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    :cond_0
    return-void
.end method

.method public onStart(Lcom/newrelic/agent/android/analytics/EventManager;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->em:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->onStart(Lcom/newrelic/agent/android/analytics/EventManager;)V

    :cond_0
    return-void
.end method

.method public withAttributeTransform(Ljava/lang/String;Ljava/util/Map;)Lcom/newrelic/agent/android/analytics/EventTransformAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/newrelic/agent/android/analytics/EventTransformAdapter;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->attributeTransforms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    new-instance v3, Lcom/newrelic/agent/android/analytics/EventTransformAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/newrelic/agent/android/analytics/EventTransformAdapter$1;-><init>(Lcom/newrelic/agent/android/analytics/EventTransformAdapter;Ljava/util/Map$Entry;)V

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/agentdata/AgentDataController;->sendAgentData(Ljava/lang/Throwable;Ljava/util/Map;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->attributeTransforms:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method
