.class public final Lpa/c;
.super Lna/b;
.source "AdaptKitDeviceServiceApi.kt"

# interfaces
.implements Lpa/a;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final d:Lpa/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpa/c;

    invoke-direct {v0}, Lpa/c;-><init>()V

    sput-object v0, Lpa/c;->d:Lpa/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lna/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lva/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lqa/a;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lna/b;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 2
    sget-object v1, Lpa/c$a;->h:Lpa/c$a;

    invoke-virtual {p0, v1}, Lna/b;->c(Lqd/l;)Lokhttp3/Request;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->newCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/o;->N(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    new-instance v1, Lqa/a;

    invoke-direct {v1, v0}, Lqa/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final f(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lpa/g;",
            ">;"
        }
    .end annotation

    const-string v0, "pairIds"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lna/b;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 2
    new-instance v1, Lpa/c$b;

    invoke-direct {v1, p1}, Lpa/c$b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lna/b;->c(Lqd/l;)Lokhttp3/Request;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->newCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->O(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    new-instance v0, Lqa/a;

    invoke-direct {v0, p1}, Lqa/a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
