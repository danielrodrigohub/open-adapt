.class public final Lpa/f$d;
.super Lrd/o;
.source "AdaptKitExecutor.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/f;->d(Ljava/util/List;Lta/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lta/a;

.field public final synthetic i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lta/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lpa/f$d;->h:Lta/a;

    iput-object p2, p0, Lpa/f$d;->i:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 34

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v2, v1, Lpa/f$d;->h:Lta/a;

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    sget-object v3, Loa/a;->b:Loa/a;

    .line 4
    sget-object v3, Loa/a;->c:Lpa/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "https://api.nike.com"

    const-string v5, "okHttpClient"

    if-nez v3, :cond_0

    .line 5
    :try_start_1
    sget-object v3, Loa/a;->e:Lfd/d;

    invoke-interface {v3}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/OkHttpClient;

    .line 6
    invoke-static {v3, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v6, Lpa/c;->d:Lpa/c;

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object v4, v6, Lna/b;->b:Ljava/lang/String;

    .line 10
    iput-object v3, v6, Lna/b;->a:Lokhttp3/OkHttpClient;

    .line 11
    sput-object v6, Loa/a;->c:Lpa/c;

    move-object v3, v6

    .line 12
    :cond_0
    invoke-virtual {v3}, Lpa/c;->e()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 13
    iget-object v6, v1, Lpa/f$d;->i:Ljava/util/List;

    .line 14
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lea/m;

    .line 15
    iget-boolean v9, v9, Lea/m;->j:Z

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_2
    move-object v7, v8

    .line 16
    :goto_0
    move-object v9, v7

    check-cast v9, Lea/m;

    .line 17
    move-object v6, v3

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v21, 0x1

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lva/d;

    .line 18
    iget-boolean v12, v11, Lva/d;->k:Z

    if-eqz v12, :cond_5

    if-eqz v9, :cond_4

    .line 19
    iget-object v12, v9, Lea/m;->h:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v12, v8

    .line 20
    :goto_1
    iget-object v11, v11, Lva/d;->q:Ljava/lang/String;

    .line 21
    invoke-static {v12, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    move/from16 v11, v21

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    goto :goto_3

    :cond_6
    move-object v10, v8

    :goto_3
    check-cast v10, Lva/d;

    if-eqz v9, :cond_a

    if-eqz v10, :cond_9

    .line 22
    iget-wide v11, v9, Lea/m;->s:J

    .line 23
    iget-wide v13, v10, Lva/d;->h:J

    cmp-long v7, v11, v13

    if-lez v7, :cond_9

    .line 24
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    iget-object v7, v1, Lpa/f$d;->i:Ljava/util/List;

    .line 26
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lea/m;

    .line 27
    iget-object v12, v10, Lva/d;->q:Ljava/lang/String;

    .line 28
    iget-object v11, v11, Lea/m;->h:Ljava/lang/String;

    .line 29
    invoke-static {v12, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_8
    move-object v9, v8

    :goto_4
    check-cast v9, Lea/m;

    if-nez v9, :cond_a

    .line 30
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 31
    invoke-static {v10}, Lva/d;->a(Lva/d;)Lva/d;

    move-result-object v9

    .line 32
    invoke-static {v9}, Landroidx/lifecycle/o;->A(Lva/d;)Lea/m;

    move-result-object v22

    .line 33
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    invoke-virtual {v3, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const/16 v32, 0x0

    const/16 v33, 0x17ff

    invoke-static/range {v22 .. v33}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    if-eqz v10, :cond_a

    .line 36
    iget-wide v11, v9, Lea/m;->s:J

    .line 37
    iget-wide v13, v10, Lva/d;->h:J

    cmp-long v3, v11, v13

    if-gez v3, :cond_a

    .line 38
    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    const/16 v20, 0x17fb

    invoke-static/range {v9 .. v20}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_a
    :goto_5
    iget-object v3, v1, Lpa/f$d;->i:Ljava/util/List;

    .line 41
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lea/m;

    .line 42
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lva/d;

    .line 43
    iget-object v12, v7, Lea/m;->h:Ljava/lang/String;

    .line 44
    iget-object v11, v11, Lva/d;->q:Ljava/lang/String;

    .line 45
    invoke-static {v12, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_7

    :cond_d
    move-object v10, v8

    :goto_7
    check-cast v10, Lva/d;

    if-eqz v10, :cond_e

    .line 46
    iget-object v9, v10, Lva/d;->q:Ljava/lang/String;

    goto :goto_8

    :cond_e
    move-object v9, v8

    .line 47
    :goto_8
    iget-object v11, v7, Lea/m;->h:Ljava/lang/String;

    .line 48
    invoke-static {v9, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 49
    iget-wide v11, v10, Lva/d;->h:J

    .line 50
    iget-wide v13, v7, Lea/m;->s:J

    cmp-long v9, v11, v13

    if-gez v9, :cond_f

    .line 51
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    if-nez v10, :cond_b

    .line 52
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 53
    :cond_10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_13

    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catchall_0
    :cond_11
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lea/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :try_start_2
    iget-boolean v6, v0, Lea/m;->t:Z

    if-nez v6, :cond_11

    .line 56
    sget-object v6, Loa/a;->b:Loa/a;

    .line 57
    sget-object v6, Loa/a;->c:Lpa/c;

    if-nez v6, :cond_12

    .line 58
    sget-object v6, Loa/a;->e:Lfd/d;

    invoke-interface {v6}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/OkHttpClient;

    .line 59
    invoke-static {v6, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v7, Lpa/c;->d:Lpa/c;

    .line 61
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object v4, v7, Lna/b;->b:Ljava/lang/String;

    .line 63
    iput-object v6, v7, Lna/b;->a:Lokhttp3/OkHttpClient;

    .line 64
    sput-object v7, Loa/a;->c:Lpa/c;

    move-object v6, v7

    .line 65
    :cond_12
    invoke-static {v0}, Landroidx/lifecycle/o;->B(Lea/m;)Lva/e;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :try_start_3
    invoke-virtual {v6}, Lna/b;->d()Lokhttp3/OkHttpClient;

    move-result-object v7

    .line 67
    new-instance v8, Lpa/d;

    invoke-direct {v8, v0}, Lpa/d;-><init>(Lva/e;)V

    invoke-virtual {v6, v8}, Lna/b;->c(Lqd/l;)Lokhttp3/Request;

    move-result-object v0

    .line 68
    invoke-static {v7, v0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3Instrumentation;->newCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 70
    :try_start_4
    new-instance v6, Lqa/a;

    invoke-direct {v6, v0}, Lqa/a;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :cond_13
    :try_start_5
    sget-object v0, Loa/a;->b:Loa/a;

    .line 72
    sget-object v0, Loa/a;->c:Lpa/c;

    if-nez v0, :cond_14

    .line 73
    sget-object v0, Loa/a;->e:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    .line 74
    invoke-static {v0, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v3, Lpa/c;->d:Lpa/c;

    .line 76
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object v4, v3, Lna/b;->b:Ljava/lang/String;

    .line 78
    iput-object v0, v3, Lna/b;->a:Lokhttp3/OkHttpClient;

    .line 79
    sput-object v3, Loa/a;->c:Lpa/c;

    move-object v0, v3

    .line 80
    :cond_14
    invoke-virtual {v0}, Lpa/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lta/a;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    .line 81
    iget-object v2, v1, Lpa/f$d;->h:Lta/a;

    invoke-interface {v2, v0}, Lta/a;->b(Ljava/lang/Throwable;)V

    .line 82
    :goto_a
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
