.class public final Lbb/b;
.super Ljava/lang/Object;
.source "AdaptKitFirmwareRepository.kt"

# interfaces
.implements Lbb/a;


# instance fields
.field public final b:Lfb/l;

.field public final c:Lra/c;


# direct methods
.method public constructor <init>(Lfb/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb/b;->b:Lfb/l;

    .line 2
    sget-object p1, Lra/c;->c:Lra/c;

    .line 3
    iput-object p1, p0, Lbb/b;->c:Lra/c;

    return-void
.end method


# virtual methods
.method public final a(Lfb/c;Ljd/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfb/c;",
            "Ljd/d<",
            "-",
            "Lfa/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lbb/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lbb/b$a;-><init>(Lfb/c;Lbb/b;Ljd/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lfa/b$c;Ljd/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/b$c;",
            "Ljd/d<",
            "-",
            "Lfa/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lbb/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lbb/b$b;

    iget v1, v0, Lbb/b$b;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lbb/b$b;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lbb/b$b;

    invoke-direct {v0, p0, p2}, Lbb/b$b;-><init>(Lbb/b;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lbb/b$b;->h:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lbb/b$b;->j:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

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
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance v2, Lbb/b$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lbb/b$c;-><init>(Lbb/b;Lfa/b$c;Ljd/d;)V

    iput v3, v0, Lbb/b$b;->j:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lfa/g;

    if-nez p2, :cond_4

    .line 5
    new-instance p2, Lfa/g$a;

    const-string p1, "Timed out"

    invoke-direct {p2, p1}, Lfa/g$a;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 6
    :goto_2
    new-instance p2, Lfa/g$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lfa/g$a;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-object p2
.end method
