.class public final Lpa/f;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesApi.kt"

# interfaces
.implements Lpa/e;


# static fields
.field public static final b:Lpa/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpa/f;

    invoke-direct {v0}, Lpa/f;-><init>()V

    sput-object v0, Lpa/f;->b:Lpa/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e(Lta/a;Ljava/util/List;)V
    .locals 5

    sget-object v0, Lpa/f;->b:Lpa/f;

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    :try_start_0
    sget-object v2, Lpa/f;->b:Lpa/f;

    invoke-virtual {v2}, Lpa/f;->f()Lpa/a;

    move-result-object v2

    check-cast v2, Lpa/c;

    const-string v3, "pairId"

    .line 3
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v2}, Lna/b;->d()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 5
    new-instance v4, Lpa/b;

    invoke-direct {v4, v1}, Lpa/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lna/b;->c(Lqd/l;)Lokhttp3/Request;

    move-result-object v1

    .line 6
    invoke-static {v3, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->newCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    new-instance v2, Lqa/a;

    invoke-direct {v2, v1}, Lqa/a;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lpa/f;->f()Lpa/a;

    move-result-object p1

    check-cast p1, Lpa/c;

    invoke-virtual {p1}, Lpa/c;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lta/a;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lta/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Lta/a<",
            "Ljava/util/List<",
            "Lva/d;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lz9/a;->k:Lz9/a;

    new-instance v1, Lpa/f$a;

    invoke-direct {v1, p2, p1}, Lpa/f$a;-><init>(Lta/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final b(Lta/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lta/a<",
            "Ljava/util/List<",
            "Lva/d;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lz9/a;->k:Lz9/a;

    new-instance v1, Lpa/f$b;

    invoke-direct {v1, p1}, Lpa/f$b;-><init>(Lta/a;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final c(Ljava/util/List;Lta/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lta/a<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lpa/g;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lz9/a;->k:Lz9/a;

    new-instance v1, Lpa/f$c;

    invoke-direct {v1, p2, p2, p1}, Lpa/f$c;-><init>(Lta/a;Lta/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final d(Ljava/util/List;Lta/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Lta/a<",
            "Ljava/util/List<",
            "Lva/d;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lz9/a;->k:Lz9/a;

    new-instance v1, Lpa/f$d;

    invoke-direct {v1, p2, p1}, Lpa/f$d;-><init>(Lta/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final f()Lpa/a;
    .locals 3

    .line 1
    sget-object v0, Loa/a;->b:Loa/a;

    .line 2
    sget-object v0, Loa/a;->c:Lpa/c;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Loa/a;->e:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    const-string v1, "okHttpClient"

    .line 4
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lpa/c;->d:Lpa/c;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://api.nike.com"

    .line 7
    iput-object v2, v1, Lna/b;->b:Ljava/lang/String;

    .line 8
    iput-object v0, v1, Lna/b;->a:Lokhttp3/OkHttpClient;

    .line 9
    sput-object v1, Loa/a;->c:Lpa/c;

    move-object v0, v1

    :cond_0
    return-object v0
.end method
