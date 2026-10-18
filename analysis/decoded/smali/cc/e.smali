.class public final Lcc/e;
.super Ljava/lang/Object;
.source "OIDCRepositoryImpl.kt"

# interfaces
.implements Lcc/a;


# instance fields
.field public final a:Lob/a;

.field public final b:Ldc/b;

.field public final c:Lpb/d;

.field public final d:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lkotlinx/coroutines/sync/Mutex;

.field public final g:Lkotlinx/coroutines/sync/Mutex;

.field public final h:Lkotlinx/coroutines/sync/Mutex;

.field public final i:Lfd/h;


# direct methods
.method public constructor <init>(Lob/a;)V
    .locals 4

    .line 1
    new-instance v0, Ldc/a;

    .line 2
    iget-object v1, p1, Lob/a;->a:Lob/a$a;

    .line 3
    invoke-interface {v1}, Lob/a$a;->c()Landroid/app/Application;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lob/a;->a:Lob/a$a;

    .line 5
    invoke-interface {v2}, Lob/a$a;->f()Led/e;

    move-result-object v2

    .line 6
    invoke-direct {v0, v1, v2}, Ldc/a;-><init>(Landroid/content/Context;Led/e;)V

    .line 7
    new-instance v1, Lyb/e;

    invoke-direct {v1, p1}, Lyb/e;-><init>(Lob/a;)V

    .line 8
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    const-string v3, "dispatcher"

    .line 9
    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcc/e;->a:Lob/a;

    .line 12
    iput-object v0, p0, Lcc/e;->b:Ldc/b;

    .line 13
    iput-object v1, p0, Lcc/e;->c:Lpb/d;

    .line 14
    iput-object v2, p0, Lcc/e;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 15
    iget-object p1, p1, Lob/a;->a:Lob/a$a;

    .line 16
    invoke-interface {p1}, Lob/a$a;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcc/e;->e:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    iput-object v2, p0, Lcc/e;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 18
    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    iput-object v2, p0, Lcc/e;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 19
    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcc/e;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 20
    new-instance p1, Lcc/d;

    invoke-direct {p1, p0}, Lcc/d;-><init>(Lcc/e;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lcc/e;->i:Lfd/h;

    .line 21
    new-instance p1, Lcc/b;

    invoke-direct {p1, p0}, Lcc/b;-><init>(Lcc/e;)V

    .line 22
    invoke-virtual {p0}, Lcc/e;->b()Lob/c;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0, p1}, Lcc/e;->h(Lob/c;Lqd/a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljd/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lob/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcc/e$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcc/e$b;

    iget v1, v0, Lcc/e$b;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcc/e$b;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcc/e$b;

    invoke-direct {v0, p0, p1}, Lcc/e$b;-><init>(Lcc/e;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lcc/e$b;->j:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lcc/e$b;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcc/e$b;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcc/e$b;->i:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lcc/e$b;->h:Ljava/lang/Object;

    check-cast v6, Lcc/e;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcc/e;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 5
    iput-object p0, v0, Lcc/e$b;->h:Ljava/lang/Object;

    iput-object v2, v0, Lcc/e$b;->i:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcc/e$b;->l:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    .line 6
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Lcc/e;->b()Lob/c;

    move-result-object p1

    if-nez p1, :cond_5

    .line 7
    iget-object p1, v6, Lcc/e;->c:Lpb/d;

    invoke-interface {p1}, Lpb/d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v5

    .line 9
    :cond_5
    :try_start_2
    sget v7, Lob/d;->b:I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 11
    invoke-interface {p1}, Lob/b;->getExpirationDate()J

    move-result-wide v9

    cmp-long v7, v7, v9

    const/4 v8, 0x0

    if-ltz v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v8

    :goto_2
    if-nez v7, :cond_9

    .line 12
    invoke-interface {p1}, Lob/b;->getExpirationDate()J

    move-result-wide v9

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-double v9, v9

    .line 14
    sget-wide v11, Lob/d;->a:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmpg-double v7, v9, v11

    if-gtz v7, :cond_7

    move v7, v4

    goto :goto_3

    :cond_7
    move v7, v8

    :goto_3
    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    move v4, v8

    :cond_9
    :goto_4
    if-eqz v4, :cond_b

    .line 15
    :try_start_3
    invoke-interface {p1}, Lob/b;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    iput-object v2, v0, Lcc/e$b;->h:Ljava/lang/Object;

    iput-object v5, v0, Lcc/e$b;->i:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcc/e$b;->l:I

    invoke-virtual {v6, p1, v0}, Lcc/e;->k(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object v0, v2

    :goto_5
    :try_start_4
    check-cast p1, Lob/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v0

    goto :goto_8

    :goto_6
    move-object v2, v0

    goto :goto_7

    :catchall_1
    move-exception p1

    .line 16
    :goto_7
    :try_start_5
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    :goto_8
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    check-cast p1, Lob/c;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception p1

    goto :goto_a

    .line 18
    :cond_b
    :goto_9
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_a
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b()Lob/c;
    .locals 1

    invoke-virtual {p0}, Lcc/e;->i()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lob/c;

    return-object v0
.end method

.method public final c(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/p;",
            "Ljd/d<",
            "-",
            "Lob/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcc/e$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcc/e$f;

    iget v1, v0, Lcc/e$f;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcc/e$f;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcc/e$f;

    invoke-direct {v0, p0, p2}, Lcc/e$f;-><init>(Lcc/e;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lcc/e$f;->l:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lcc/e$f;->n:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object p1, v0, Lcc/e$f;->j:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v1, v0, Lcc/e$f;->i:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcc/e$f;->h:Lcc/e;

    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_2
    iget-object p1, v0, Lcc/e$f;->k:Lob/c;

    iget-object v2, v0, Lcc/e$f;->j:Ljava/lang/Object;

    iget-object v4, v0, Lcc/e$f;->i:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lcc/e$f;->h:Lcc/e;

    :try_start_1
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    goto/16 :goto_9

    :cond_3
    iget-object p1, v0, Lcc/e$f;->j:Ljava/lang/Object;

    check-cast p1, Lcc/e;

    iget-object v2, v0, Lcc/e$f;->i:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lcc/e$f;->h:Lcc/e;

    :try_start_2
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcc/e$f;->j:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcc/e$f;->i:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/p;

    iget-object v8, v0, Lcc/e$f;->h:Lcc/e;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v8

    goto :goto_1

    :cond_5
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcc/e;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 5
    iput-object p0, v0, Lcc/e$f;->h:Lcc/e;

    iput-object p1, v0, Lcc/e$f;->i:Ljava/lang/Object;

    iput-object p2, v0, Lcc/e$f;->j:Ljava/lang/Object;

    iput v6, v0, Lcc/e$f;->n:I

    invoke-interface {p2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p1

    move-object p1, p0

    .line 6
    :goto_1
    :try_start_3
    iget-object v8, p1, Lcc/e;->c:Lpb/d;

    iput-object p1, v0, Lcc/e$f;->h:Lcc/e;

    iput-object p2, v0, Lcc/e$f;->i:Ljava/lang/Object;

    iput-object p1, v0, Lcc/e$f;->j:Ljava/lang/Object;

    iput v5, v0, Lcc/e$f;->n:I

    .line 7
    invoke-interface {v8, v2, v7, v0}, Lpb/d;->d(Landroidx/fragment/app/p;Lzd/a;Ljd/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, p1

    move-object v9, v2

    move-object v2, p2

    move-object p2, v9

    .line 8
    :goto_2
    :try_start_4
    check-cast p2, Lob/c;

    .line 9
    sget-object v8, Lcc/e$g;->h:Lcc/e$g;

    invoke-virtual {p1, p2, v8}, Lcc/e;->h(Lob/c;Lqd/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v9, v2

    move-object v2, p2

    move-object p2, v9

    goto :goto_5

    :goto_3
    move-object p2, v2

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v5, p1

    move-object p1, v2

    .line 10
    :goto_4
    :try_start_5
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    .line 11
    :goto_5
    nop

    instance-of p1, v2, Lfd/f$a;

    xor-int/2addr p1, v6

    if-eqz p1, :cond_9

    .line 12
    move-object p1, v2

    check-cast p1, Lob/c;

    .line 13
    iput-object v5, v0, Lcc/e$f;->h:Lcc/e;

    iput-object p2, v0, Lcc/e$f;->i:Ljava/lang/Object;

    iput-object v2, v0, Lcc/e$f;->j:Ljava/lang/Object;

    iput-object p1, v0, Lcc/e$f;->k:Lob/c;

    iput v4, v0, Lcc/e$f;->n:I

    invoke-virtual {v5, p1, v0}, Lcc/e;->m(Lob/c;Ljd/d;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-ne v4, v1, :cond_8

    return-object v1

    :cond_8
    move-object v4, p2

    .line 14
    :goto_6
    :try_start_6
    iget-object p2, v5, Lcc/e;->a:Lob/a;

    .line 15
    iget-object p2, p2, Lob/a;->a:Lob/a$a;

    .line 16
    invoke-interface {p2}, Lob/a$a;->d()Lu9/b;

    move-result-object p2

    invoke-virtual {v5}, Lcc/e;->j()Led/e;

    move-result-object v6

    invoke-static {p2, p1, v6}, Landroidx/activity/k;->v(Lu9/b;Lob/c;Led/e;)V

    .line 17
    invoke-virtual {v5}, Lcc/e;->j()Led/e;

    move-result-object p2

    invoke-static {p2, p1}, Lec/b;->f(Led/e;Lob/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object p2, v4

    .line 18
    :cond_9
    :try_start_7
    invoke-static {v2}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 19
    iput-object v5, v0, Lcc/e$f;->h:Lcc/e;

    iput-object p2, v0, Lcc/e$f;->i:Ljava/lang/Object;

    iput-object p1, v0, Lcc/e$f;->j:Ljava/lang/Object;

    iput-object v7, v0, Lcc/e$f;->k:Lob/c;

    iput v3, v0, Lcc/e$f;->n:I

    invoke-virtual {v5, v0}, Lcc/e;->l(Ljd/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-ne v0, v1, :cond_a

    return-object v1

    :cond_a
    move-object v1, p2

    move-object v0, v5

    .line 20
    :goto_7
    :try_start_8
    invoke-static {p1}, Landroidx/appcompat/widget/p;->k(Ljava/lang/Throwable;)Lob/e;

    move-result-object p1

    .line 21
    invoke-virtual {v0}, Lcc/e;->j()Led/e;

    move-result-object p2

    invoke-static {p2, p1}, Lec/b;->e(Led/e;Lob/e;)V

    .line 22
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_8
    move-object v4, v1

    goto :goto_9

    .line 23
    :cond_b
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 24
    invoke-static {v2}, Ld3/e;->p(Ljava/lang/Object;)V

    return-object v2

    :catchall_4
    move-exception p1

    move-object v4, p2

    .line 25
    :goto_9
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d()Lob/a;
    .locals 1

    iget-object v0, p0, Lcc/e;->a:Lob/a;

    return-object v0
.end method

.method public final e()Lob/h;
    .locals 1

    new-instance v0, Lvb/a;

    invoke-direct {v0, p0}, Lvb/a;-><init>(Lcc/a;)V

    return-object v0
.end method

.method public final f(Ljd/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcc/e$h;

    invoke-direct {v0, p0}, Lcc/e$h;-><init>(Lcc/e;)V

    invoke-virtual {p0, v0, p1}, Lcc/e;->n(Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lkd/a;->h:Lkd/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljd/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcc/e$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcc/e$a;

    iget v1, v0, Lcc/e$a;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcc/e$a;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcc/e$a;

    invoke-direct {v0, p0, p2}, Lcc/e$a;-><init>(Lcc/e;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lcc/e$a;->j:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lcc/e$a;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcc/e$a;->i:Lob/e$d;

    iget-object v0, v0, Lcc/e$a;->h:Lcc/e;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    instance-of p2, p1, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    iget p2, p2, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    if-ne p2, v3, :cond_3

    move p2, v4

    goto :goto_1

    :cond_3
    move p2, v5

    .line 5
    :goto_1
    instance-of v2, p1, Lretrofit2/HttpException;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lretrofit2/HttpException;

    invoke-virtual {v2}, Lretrofit2/HttpException;->code()I

    move-result v6

    const/16 v7, 0x190

    if-eq v6, v7, :cond_4

    invoke-virtual {v2}, Lretrofit2/HttpException;->code()I

    move-result v2

    const/16 v6, 0x191

    if-ne v2, v6, :cond_5

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    if-nez p2, :cond_7

    .line 6
    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_7

    instance-of p2, p1, Ljava/lang/NullPointerException;

    if-nez p2, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 7
    :cond_6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 8
    :cond_7
    :goto_3
    new-instance p2, Lob/e$d;

    const-string v2, "Failed to refresh"

    invoke-direct {p2, v2, p1}, Lob/e$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object p1, p0, Lcc/e;->a:Lob/a;

    .line 10
    iget-object p1, p1, Lob/a;->a:Lob/a$a;

    .line 11
    invoke-interface {p1}, Lob/a$a;->b()Lob/f$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lob/f$a;->a(Lob/e;)V

    .line 12
    iput-object p0, v0, Lcc/e$a;->h:Lcc/e;

    iput-object p2, v0, Lcc/e$a;->i:Lob/e$d;

    iput v4, v0, Lcc/e$a;->l:I

    invoke-virtual {p0, v0}, Lcc/e;->l(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v0, p0

    move-object p1, p2

    .line 13
    :goto_4
    invoke-virtual {v0}, Lcc/e;->j()Led/e;

    move-result-object p2

    const-string v0, "<this>"

    .line 14
    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Lob/e;->i:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_5

    .line 16
    :cond_9
    invoke-static {v0}, Lec/b;->c(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    :goto_5
    new-instance v2, Led/b;

    const/4 v7, 0x5

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Token refresh failed with status code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " and error: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 19
    iget-object v6, p1, Lob/e;->h:Ljava/lang/String;

    const/16 v8, 0x16

    .line 20
    invoke-static {v6, v1, v0, v5, v8}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v10

    .line 21
    sget-object v0, Lec/a;->a:Lec/a;

    const/4 v1, 0x3

    new-array v1, v1, [Led/d;

    .line 22
    sget-object v6, Lec/a;->e:Led/d;

    aput-object v6, v1, v5

    .line 23
    sget-object v5, Lec/a;->f:Led/d;

    aput-object v5, v1, v4

    .line 24
    sget-object v4, Lec/a;->j:Led/d;

    aput-object v4, v1, v3

    .line 25
    invoke-static {v1}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    const-string v8, "Token_Refresh_Unrecoverable"

    move-object v6, v2

    .line 26
    invoke-direct/range {v6 .. v11}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 27
    invoke-interface {p2, v2}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 28
    throw p1
.end method

.method public final h(Lob/c;Lqd/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lob/c;",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcc/e;->a:Lob/a;

    .line 2
    iget-object v0, v0, Lob/a;->b:Lob/a$b;

    .line 3
    invoke-interface {v0}, Lob/a$b;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcc/e;->j()Led/e;

    move-result-object v2

    sget v3, Lob/d;->b:I

    const-string v3, "telemetryProvider"

    .line 5
    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {p1, v2}, Lob/d;->a(Lob/c;Led/e;)Lxb/a;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lxb/a;->a:Lxb/b;

    invoke-virtual {p1}, Lxb/b;->b()Ljava/util/Map;

    move-result-object p1

    const-string v2, "iss"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v2, "https://accounts.nike.com.cn"

    .line 8
    invoke-static {p1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcc/e;->j()Led/e;

    move-result-object p1

    const-string v2, "<this>"

    .line 11
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "stack"

    invoke-static {v0, v2}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 12
    new-instance v2, Led/b;

    const/4 v4, 0x4

    const-string v3, "Current stack "

    .line 13
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 14
    invoke-static {v0}, Lfa/m;->h(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match credential"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0xf

    .line 15
    invoke-static {v1, v1, v1, v0, v3}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v7

    .line 16
    sget-object v0, Lec/a;->a:Lec/a;

    .line 17
    sget-object v1, Lec/a;->k:Led/d;

    .line 18
    invoke-static {v1}, Landroidx/lifecycle/o;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    const-string v5, "Stack_Not_Matching"

    move-object v3, v2

    .line 19
    invoke-direct/range {v3 .. v8}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 20
    invoke-interface {p1, v2}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 21
    invoke-interface {p2}, Lqd/a;->invoke()Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final i()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lob/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcc/e;->i:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public final j()Led/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/e;->a:Lob/a;

    .line 2
    iget-object v0, v0, Lob/a;->a:Lob/a$a;

    .line 3
    invoke-interface {v0}, Lob/a$a;->f()Led/e;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lob/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcc/e$c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcc/e$c;

    iget v3, v2, Lcc/e$c;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcc/e$c;->m:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcc/e$c;

    invoke-direct {v2, v1, v0}, Lcc/e$c;-><init>(Lcc/e;Ljd/d;)V

    :goto_0
    iget-object v0, v2, Lcc/e$c;->k:Ljava/lang/Object;

    sget-object v3, Lkd/a;->h:Lkd/a;

    .line 1
    iget v4, v2, Lcc/e$c;->m:I

    const-string v5, "<this>"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v2, v2, Lcc/e$c;->h:Ljava/lang/Object;

    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v4, v2, Lcc/e$c;->j:Lob/c;

    iget-object v11, v2, Lcc/e$c;->i:Ljava/lang/Object;

    iget-object v12, v2, Lcc/e$c;->h:Ljava/lang/Object;

    check-cast v12, Lcc/e;

    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    iget-object v4, v2, Lcc/e$c;->h:Ljava/lang/Object;

    check-cast v4, Lcc/e;

    :try_start_0
    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object v0, v1, Lcc/e;->c:Lpb/d;

    iput-object v1, v2, Lcc/e$c;->h:Ljava/lang/Object;

    iput v8, v2, Lcc/e$c;->m:I

    move-object/from16 v4, p1

    invoke-interface {v0, v4, v2}, Lpb/d;->c(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_5

    return-object v3

    :cond_5
    move-object v4, v1

    :goto_1
    :try_start_2
    check-cast v0, Lob/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v1

    :goto_2
    invoke-static {v0}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    move-object v11, v0

    move-object v12, v4

    .line 5
    instance-of v0, v11, Lfd/f$a;

    xor-int/2addr v0, v8

    if-eqz v0, :cond_7

    .line 6
    move-object v4, v11

    check-cast v4, Lob/c;

    .line 7
    iput-object v12, v2, Lcc/e$c;->h:Ljava/lang/Object;

    iput-object v11, v2, Lcc/e$c;->i:Ljava/lang/Object;

    iput-object v4, v2, Lcc/e$c;->j:Lob/c;

    iput v7, v2, Lcc/e$c;->m:I

    invoke-virtual {v12, v4, v2}, Lcc/e;->m(Lob/c;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    return-object v3

    .line 8
    :cond_6
    :goto_4
    invoke-virtual {v12}, Lcc/e;->j()Led/e;

    move-result-object v0

    .line 9
    invoke-static {v0, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "credential"

    invoke-static {v4, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v13, Led/b;

    const/4 v15, 0x3

    .line 11
    invoke-interface {v4}, Lob/b;->getExpirationDate()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v14, 0x1d

    invoke-static {v10, v4, v10, v9, v14}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v18

    .line 12
    sget-object v4, Lec/a;->a:Lec/a;

    new-array v14, v7, [Led/d;

    .line 13
    sget-object v16, Lec/a;->e:Led/d;

    aput-object v16, v14, v9

    .line 14
    sget-object v16, Lec/a;->j:Led/d;

    aput-object v16, v14, v8

    .line 15
    invoke-static {v14}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v4, v14}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    const-string v16, "Token_Refresh_Succeeded"

    const-string v17, "Token refresh succeeded"

    move-object v14, v13

    .line 16
    invoke-direct/range {v14 .. v19}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 17
    invoke-interface {v0, v13}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 18
    :cond_7
    invoke-static {v11}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {v12}, Lcc/e;->j()Led/e;

    move-result-object v4

    .line 20
    invoke-static {v4, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v5, Led/b;

    const-string v13, "Token refresh failed with error: "

    .line 22
    invoke-static {v13, v0}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 23
    invoke-static {v0}, Lec/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    .line 24
    invoke-static {v0}, Lec/b;->c(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v15

    const/16 v14, 0x16

    .line 25
    invoke-static {v13, v10, v15, v9, v14}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v17

    .line 26
    sget-object v13, Lec/a;->a:Lec/a;

    new-array v14, v6, [Led/d;

    .line 27
    sget-object v15, Lec/a;->e:Led/d;

    aput-object v15, v14, v9

    .line 28
    sget-object v9, Lec/a;->f:Led/d;

    aput-object v9, v14, v8

    .line 29
    sget-object v8, Lec/a;->j:Led/d;

    aput-object v8, v14, v7

    .line 30
    invoke-static {v14}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v13, v7}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    const-string v15, "Token_Refresh_Failed"

    move-object v13, v5

    const/4 v7, 0x4

    move v14, v7

    .line 31
    invoke-direct/range {v13 .. v18}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 32
    invoke-interface {v4, v5}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 33
    iput-object v11, v2, Lcc/e$c;->h:Ljava/lang/Object;

    iput-object v10, v2, Lcc/e$c;->i:Ljava/lang/Object;

    iput-object v10, v2, Lcc/e$c;->j:Lob/c;

    iput v6, v2, Lcc/e$c;->m:I

    invoke-virtual {v12, v0, v2}, Lcc/e;->g(Ljava/lang/Throwable;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    move-object v2, v11

    :goto_5
    move-object v11, v2

    .line 34
    :cond_9
    invoke-static {v11}, Ld3/e;->p(Ljava/lang/Object;)V

    return-object v11
.end method

.method public final l(Ljd/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcc/e$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcc/e$d;

    iget v1, v0, Lcc/e$d;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcc/e$d;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcc/e$d;

    invoke-direct {v0, p0, p1}, Lcc/e$d;-><init>(Lcc/e;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lcc/e$d;->j:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lcc/e$d;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcc/e$d;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcc/e$d;->i:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lcc/e$d;->h:Ljava/lang/Object;

    check-cast v4, Lcc/e;

    :try_start_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcc/e;->i()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    :try_start_2
    iget-object v2, p0, Lcc/e;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    iput-object p0, v0, Lcc/e$d;->h:Ljava/lang/Object;

    iput-object v2, v0, Lcc/e$d;->i:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcc/e$d;->l:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    .line 7
    :goto_1
    :try_start_3
    iget-object p1, v4, Lcc/e;->b:Ldc/b;

    iput-object v2, v0, Lcc/e$d;->h:Ljava/lang/Object;

    iput-object v5, v0, Lcc/e$d;->i:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcc/e$d;->l:I

    .line 8
    invoke-interface {p1}, Ldc/b;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object p1, Lfd/o;->a:Lfd/o;

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v2

    .line 9
    :goto_2
    :try_start_4
    sget-object p1, Lfd/o;->a:Lfd/o;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :try_start_5
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_5

    :goto_3
    move-object v2, v0

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_4
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 11
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    :goto_5
    invoke-static {p1}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    .line 13
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 14
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 15
    :cond_6
    new-instance p1, Lob/e$b;

    invoke-direct {p1, v0}, Lob/e$b;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final m(Lob/c;Ljd/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lob/c;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcc/e$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcc/e$e;

    iget v1, v0, Lcc/e$e;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcc/e$e;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcc/e$e;

    invoke-direct {v0, p0, p2}, Lcc/e$e;-><init>(Lcc/e;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lcc/e$e;->k:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lcc/e$e;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcc/e$e;->h:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcc/e$e;->j:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcc/e$e;->i:Lcc/e;

    iget-object v4, v0, Lcc/e$e;->h:Ljava/lang/Object;

    check-cast v4, Lob/c;

    :try_start_1
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcc/e;->i()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    :try_start_2
    iget-object p2, p0, Lcc/e;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    iput-object p1, v0, Lcc/e$e;->h:Ljava/lang/Object;

    iput-object p0, v0, Lcc/e$e;->i:Lcc/e;

    iput-object p2, v0, Lcc/e$e;->j:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lcc/e$e;->m:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-object v4, p1

    move-object p1, p2

    .line 7
    :goto_1
    :try_start_3
    iget-object p2, v2, Lcc/e;->b:Ldc/b;

    iput-object p1, v0, Lcc/e$e;->h:Ljava/lang/Object;

    iput-object v5, v0, Lcc/e$e;->i:Lcc/e;

    iput-object v5, v0, Lcc/e$e;->j:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lcc/e$e;->m:I

    .line 8
    sget-object v0, Ldc/d;->a:Ldc/d$a;

    invoke-interface {p2, v0, v4}, Ldc/b;->a(Ldc/c;Lob/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object p2, Lfd/o;->a:Lfd/o;

    if-ne p2, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    :try_start_4
    sget-object p2, Lfd/o;->a:Lfd/o;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :try_start_5
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    .line 12
    :goto_4
    invoke-static {p2}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    .line 13
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 14
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 15
    :cond_6
    new-instance p2, Lob/e$b;

    invoke-direct {p2, p1}, Lob/e$b;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final n(Lqd/l;Ljd/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Lob/c;",
            "Lfd/o;",
            ">;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcc/e$i;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcc/e$i;

    iget v1, v0, Lcc/e$i;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcc/e$i;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcc/e$i;

    invoke-direct {v0, p0, p2}, Lcc/e$i;-><init>(Lcc/e;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lcc/e$i;->l:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lcc/e$i;->n:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcc/e$i;->h:Ljava/lang/Object;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcc/e$i;->k:Lob/c;

    iget-object v2, v0, Lcc/e$i;->j:Ljava/lang/Object;

    iget-object v4, v0, Lcc/e$i;->i:Lqd/l;

    iget-object v7, v0, Lcc/e$i;->h:Ljava/lang/Object;

    check-cast v7, Lcc/e;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-object p1, v0, Lcc/e$i;->j:Ljava/lang/Object;

    check-cast p1, Lcc/e;

    iget-object v2, v0, Lcc/e$i;->i:Lqd/l;

    iget-object v7, v0, Lcc/e$i;->h:Ljava/lang/Object;

    check-cast v7, Lcc/e;

    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput-object p0, v0, Lcc/e$i;->h:Ljava/lang/Object;

    iput-object p1, v0, Lcc/e$i;->i:Lqd/l;

    iput-object p0, v0, Lcc/e$i;->j:Ljava/lang/Object;

    iput v5, v0, Lcc/e$i;->n:I

    invoke-virtual {p0, v0}, Lcc/e;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, p0

    move-object v2, p1

    move-object p1, v7

    :goto_1
    :try_start_2
    check-cast p2, Lob/c;

    if-nez p2, :cond_6

    move-object p2, v6

    goto :goto_2

    .line 5
    :cond_6
    iget-object p1, p1, Lcc/e;->c:Lpb/d;

    invoke-interface {p2}, Lob/b;->getRefreshToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lpb/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object p1, v2

    move-object v2, p2

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object v7, p0

    move-object v2, p1

    move-object p1, p2

    .line 6
    :goto_3
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, v2

    move-object v2, p1

    move-object p1, v9

    .line 7
    :goto_4
    instance-of p2, v2, Lfd/f$a;

    xor-int/2addr p2, v5

    if-eqz p2, :cond_9

    .line 8
    move-object p2, v2

    check-cast p2, Lob/c;

    .line 9
    iput-object v7, v0, Lcc/e$i;->h:Ljava/lang/Object;

    iput-object p1, v0, Lcc/e$i;->i:Lqd/l;

    iput-object v2, v0, Lcc/e$i;->j:Ljava/lang/Object;

    iput-object p2, v0, Lcc/e$i;->k:Lob/c;

    iput v4, v0, Lcc/e$i;->n:I

    invoke-virtual {v7, v0}, Lcc/e;->l(Ljd/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    return-object v1

    :cond_7
    move-object v4, p1

    move-object p1, p2

    :goto_5
    if-nez v4, :cond_8

    goto :goto_6

    .line 10
    :cond_8
    invoke-interface {v4, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_6
    iget-object p1, v7, Lcc/e;->c:Lpb/d;

    invoke-interface {p1}, Lpb/d;->b()V

    :cond_9
    move-object p1, v2

    .line 12
    invoke-static {p1}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 13
    iput-object p1, v0, Lcc/e$i;->h:Ljava/lang/Object;

    iput-object v6, v0, Lcc/e$i;->i:Lqd/l;

    iput-object v6, v0, Lcc/e$i;->j:Ljava/lang/Object;

    iput-object v6, v0, Lcc/e$i;->k:Lob/c;

    iput v3, v0, Lcc/e$i;->n:I

    invoke-virtual {v7, v0}, Lcc/e;->l(Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    .line 14
    :cond_a
    :goto_7
    invoke-static {p1}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_b

    .line 15
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 16
    :cond_b
    new-instance p2, Lob/e$d;

    invoke-direct {p2, v6, p1, v5}, Lob/e$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method
