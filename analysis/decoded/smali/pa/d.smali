.class public final Lpa/d;
.super Lrd/o;
.source "AdaptKitDeviceServiceApi.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lokhttp3/Request$Builder;",
        "Lokhttp3/Request$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lva/e;


# direct methods
.method public constructor <init>(Lva/e;)V
    .locals 0

    iput-object p1, p0, Lpa/d;->h:Lva/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lokhttp3/Request$Builder;

    const-string v1, "$this$generateOkHttpRequestBuilder"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lpa/c;->d:Lpa/c;

    .line 4
    iget-object v2, v1, Lna/b;->b:Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/nikeadapt/profile/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 6
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 7
    iget-object v1, v1, Lna/b;->c:Lokhttp3/MediaType;

    move-object/from16 v3, p0

    .line 8
    iget-object v4, v3, Lpa/d;->h:Lva/e;

    const-string v5, "<this>"

    .line 9
    invoke-static {v4, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 11
    iget-wide v7, v4, Lva/e;->h:J

    const-string v9, "clientUpdatedDateUTC"

    .line 12
    invoke-virtual {v6, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    iget-boolean v7, v4, Lva/e;->i:Z

    const-string v8, "isDefault"

    .line 14
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15
    iget-object v7, v4, Lva/e;->j:Ljava/lang/String;

    const-string v8, "lastSelectedPreset"

    .line 16
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v7, v4, Lva/e;->k:Ljava/lang/String;

    const-string v8, "leftDeviceIdentifier"

    .line 18
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v7, v4, Lva/e;->l:Ljava/lang/String;

    const-string v8, "leftEngineDiscoveryKey"

    .line 20
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object v7, v4, Lva/e;->m:Ljava/lang/String;

    const-string v8, "leftKey"

    .line 22
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget v7, v4, Lva/e;->n:I

    const-string v8, "leftMaxTightness"

    .line 24
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    iget-object v7, v4, Lva/e;->o:Ljava/lang/String;

    const-string v8, "pairId"

    .line 26
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v7, v4, Lva/e;->p:Ljava/lang/String;

    const-string v8, "pairName"

    .line 28
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v7, v4, Lva/e;->q:Ljava/util/List;

    .line 30
    invoke-static {v7, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 32
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_2

    .line 33
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    if-ltz v12, :cond_0

    check-cast v13, Lva/c;

    .line 34
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 35
    iget-object v9, v13, Lva/c;->h:Ljava/lang/String;

    const-string v3, "id"

    .line 36
    invoke-virtual {v15, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v3, v13, Lva/c;->i:Lva/b;

    .line 38
    invoke-static {v3}, Landroidx/lifecycle/o;->R(Lva/b;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "leftColor"

    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget v3, v13, Lva/c;->j:I

    const-string v9, "leftPercent"

    .line 40
    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    iget-object v3, v13, Lva/c;->k:Ljava/lang/String;

    const-string v9, "name"

    .line 42
    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-boolean v3, v13, Lva/c;->n:Z

    const-string v9, "autoGenerated"

    .line 44
    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45
    iget-object v3, v13, Lva/c;->l:Lva/b;

    .line 46
    invoke-static {v3}, Landroidx/lifecycle/o;->R(Lva/b;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "rightColor"

    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget v3, v13, Lva/c;->m:I

    const-string v9, "rightPercent"

    .line 48
    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    iget-object v3, v13, Lva/c;->o:Ljava/lang/Integer;

    const-string v9, "displayOrder"

    .line 50
    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v5, v12, v15}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v3, p0

    move v12, v14

    goto :goto_1

    .line 52
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p0

    goto :goto_0

    :cond_2
    const-string v3, "presets"

    .line 53
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v3, v4, Lva/e;->r:Ljava/lang/String;

    const-string v5, "rightDeviceIdentifier"

    .line 55
    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v3, v4, Lva/e;->s:Ljava/lang/String;

    const-string v5, "rightEngineDiscoveryKey"

    .line 57
    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object v3, v4, Lva/e;->t:Ljava/lang/String;

    const-string v5, "rightKey"

    .line 59
    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget v3, v4, Lva/e;->u:I

    const-string v5, "rightMaxTightness"

    .line 61
    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    iget-object v3, v4, Lva/e;->v:Ljava/lang/String;

    const-string v5, "colorway"

    .line 63
    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget v3, v4, Lva/e;->w:I

    const-string v4, "deviceType"

    .line 65
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    invoke-static {v6}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adaptShoesPut.toJson().toString()"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v1, v3}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method
