.class Lcom/newrelic/agent/android/analytics/EventTransformAdapter$1;
.super Ljava/util/HashMap;
.source "EventTransformAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->withAttributeTransform(Ljava/lang/String;Ljava/util/Map;)Lcom/newrelic/agent/android/analytics/EventTransformAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/newrelic/agent/android/analytics/EventTransformAdapter;

.field public final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/analytics/EventTransformAdapter;Ljava/util/Map$Entry;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter$1;->this$0:Lcom/newrelic/agent/android/analytics/EventTransformAdapter;

    iput-object p2, p0, Lcom/newrelic/agent/android/analytics/EventTransformAdapter$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "transform"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
