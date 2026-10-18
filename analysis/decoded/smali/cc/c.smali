.class public final Lcc/c;
.super Lld/i;
.source "OIDCRepositoryImpl.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lob/c;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl$cachedAuthCredentialInternal$2$1"
    f = "OIDCRepositoryImpl.kt"
    l = {
        0x10f,
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lkotlinx/coroutines/sync/Mutex;

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcc/e;


# direct methods
.method public constructor <init>(Lcc/e;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/e;",
            "Ljd/d<",
            "-",
            "Lcc/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcc/c;->k:Lcc/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcc/c;

    iget-object v1, p0, Lcc/c;->k:Lcc/e;

    invoke-direct {v0, v1, p2}, Lcc/c;-><init>(Lcc/e;Ljd/d;)V

    iput-object p1, v0, Lcc/c;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcc/c;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcc/c;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcc/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcc/c;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcc/c;->j:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcc/c;->h:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, p0, Lcc/c;->j:Ljava/lang/Object;

    check-cast v3, Lcc/e;

    :try_start_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcc/c;->j:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object p1, p0, Lcc/c;->k:Lcc/e;

    .line 5
    :try_start_2
    iget-object v1, p1, Lcc/e;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    iput-object p1, p0, Lcc/c;->j:Ljava/lang/Object;

    iput-object v1, p0, Lcc/c;->h:Lkotlinx/coroutines/sync/Mutex;

    iput v3, p0, Lcc/c;->i:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    .line 7
    :goto_0
    :try_start_3
    iget-object p1, v3, Lcc/e;->b:Ldc/b;

    .line 8
    iput-object v1, p0, Lcc/c;->j:Ljava/lang/Object;

    iput-object v4, p0, Lcc/c;->h:Lkotlinx/coroutines/sync/Mutex;

    iput v2, p0, Lcc/c;->i:I

    .line 9
    invoke-interface {p1}, Ldc/b;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    .line 10
    :goto_1
    :try_start_4
    check-cast p1, Lob/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :try_start_5
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_4

    :goto_2
    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 12
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    :goto_4
    instance-of v0, p1, Lfd/f$a;

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move-object v4, p1

    :goto_5
    return-object v4
.end method
