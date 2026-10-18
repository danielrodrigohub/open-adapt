.class public final Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;
.super Landroidx/work/Worker;
.source "TelemetryWorker.kt"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/android/telemetry/internal/worker/TelemetryWorker$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/nike/android/telemetry/internal/worker/TelemetryWorker$a;


# instance fields
.field public final n:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker$a;

    invoke-direct {v0}, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker$a;-><init>()V

    sput-object v0, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->o:Lcom/nike/android/telemetry/internal/worker/TelemetryWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->n:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final h()Landroidx/work/ListenableWorker$a;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lgb/c;->a:Lgb/c;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 2
    sget-boolean v1, Lgb/c;->n:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    :cond_0
    sget-object v1, Lgb/c;->c:Lgb/b;

    if-eqz v1, :cond_4

    .line 5
    invoke-interface {v1}, Lgb/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lgb/c;->a()Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ly0/d0;->d()V

    .line 7
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->n:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 9
    invoke-virtual {p0}, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->j()V

    .line 10
    invoke-virtual {p0}, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->i()Ljava/util/List;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 12
    invoke-virtual {p0, v1}, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->k(Ljava/util/List;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->i()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Landroidx/work/ListenableWorker;->h:Landroid/content/Context;

    const-string v1, "applicationContext"

    .line 15
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lgb/c;->a:Lgb/c;

    invoke-virtual {v1}, Lgb/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v0}, Ll1/k;->a(Landroid/content/Context;)Ll1/k;

    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Lu1/b;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lu1/b;-><init>(Ll1/k;Ljava/lang/String;Z)V

    .line 20
    iget-object v0, v0, Ll1/k;->d:Lw1/a;

    check-cast v0, Lw1/b;

    invoke-virtual {v0, v2}, Lw1/b;->a(Ljava/lang/Runnable;)V

    .line 21
    :cond_3
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_1

    :cond_4
    const-string v0, "telemetryGatekeeper"

    .line 22
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :catchall_0
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    :goto_1
    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lkb/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lgb/c;->a:Lgb/c;

    invoke-virtual {v1}, Lgb/c;->a()Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->r()Lib/a;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lib/a;->c()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x64

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v6

    .line 5
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 7
    check-cast v7, Lkb/a;

    .line 8
    iget v8, v7, Lkb/a;->q:I

    add-int/2addr v8, v3

    const v9, 0x23fff

    .line 9
    invoke-static {v7, v3, v3, v8, v9}, Lkb/a;->a(Lkb/a;ZZII)Lkb/a;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-array v2, v6, [Lkb/a;

    .line 10
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v6}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast v2, [Lkb/a;

    array-length v6, v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkb/a;

    invoke-interface {v1, v2}, Lib/a;->f([Lkb/a;)V

    .line 12
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v1}, Lib/a;->b()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final j()V
    .locals 6

    .line 1
    sget-object v0, Lgb/c;->a:Lgb/c;

    invoke-virtual {v0}, Lgb/c;->a()Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->r()Lib/a;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lib/a;->d()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lkb/a;

    const v5, 0x33fff

    .line 6
    invoke-static {v3, v4, v4, v4, v5}, Lkb/a;->a(Lkb/a;ZZII)Lkb/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v1, v4, [Lkb/a;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    check-cast v1, [Lkb/a;

    .line 9
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkb/a;

    invoke-interface {v0, v1}, Lib/a;->f([Lkb/a;)V

    return-void
.end method

.method public final k(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkb/a;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lgb/c;->a:Lgb/c;

    invoke-virtual {v0}, Lgb/c;->a()Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->r()Lib/a;

    move-result-object v0

    .line 2
    sget-object v1, Llb/c;->a:Llb/c;

    const-string v1, "telemetryInfo"

    .line 3
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    sget-object v1, Llb/c;->b:Lfd/h;

    invoke-virtual {v1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/OkHttpClient;

    .line 6
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    const-string v5, "https://insights-collector.newrelic.com/v1/accounts/1015810/events"

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    .line 7
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "X-Insert-Key"

    .line 8
    sget-object v6, Lgb/c;->l:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 10
    sget-object v5, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 11
    invoke-static {p1}, Ljb/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 12
    sget-object v7, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v8, "application/json; charset=utf-8"

    invoke-virtual {v7, v8}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 13
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 14
    instance-of v5, v4, Lokhttp3/Request$Builder;

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->build(Lokhttp3/Request$Builder;)Lokhttp3/Request;

    move-result-object v4

    .line 15
    :goto_0
    instance-of v5, v1, Lokhttp3/OkHttpClient;

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {v1, v4}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->newCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 16
    :goto_1
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    goto :goto_2

    :cond_3
    const-string v1, "apiKey"

    .line 17
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move v1, v2

    :goto_2
    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    if-eqz v1, :cond_4

    new-array v1, v2, [Lkb/a;

    .line 18
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast p1, [Lkb/a;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkb/a;

    invoke-interface {v0, p1}, Lib/a;->a([Lkb/a;)V

    move v2, v3

    goto/16 :goto_8

    .line 20
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lkb/a;

    .line 22
    iget v8, v8, Lkb/a;->q:I

    if-le v8, v7, :cond_6

    move v7, v3

    goto :goto_4

    :cond_6
    move v7, v2

    :goto_4
    if-eqz v7, :cond_5

    .line 23
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lkb/a;

    .line 26
    iget v8, v8, Lkb/a;->q:I

    if-gt v8, v7, :cond_9

    move v8, v3

    goto :goto_6

    :cond_9
    move v8, v2

    :goto_6
    if-eqz v8, :cond_8

    .line 27
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 28
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v5, v3}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 30
    check-cast v5, Lkb/a;

    const v6, 0x33fff

    .line 31
    invoke-static {v5, v2, v2, v2, v6}, Lkb/a;->a(Lkb/a;ZZII)Lkb/a;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    new-array v3, v2, [Lkb/a;

    .line 32
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    check-cast p1, [Lkb/a;

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkb/a;

    invoke-interface {v0, p1}, Lib/a;->f([Lkb/a;)V

    new-array p1, v2, [Lkb/a;

    .line 34
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast p1, [Lkb/a;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkb/a;

    invoke-interface {v0, p1}, Lib/a;->a([Lkb/a;)V

    :goto_8
    return v2
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "o"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p2, p1, Lgb/c;

    if-eqz p2, :cond_0

    check-cast p1, Lgb/c;

    .line 2
    sget-boolean p1, Lgb/c;->n:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
