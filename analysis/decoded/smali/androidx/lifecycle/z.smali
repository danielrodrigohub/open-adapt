.class public final Landroidx/lifecycle/z;
.super Lld/i;
.source "PausingDispatcher.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2"
    f = "PausingDispatcher.kt"
    l = {
        0xa2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Landroidx/lifecycle/i;

.field public final synthetic k:Landroidx/lifecycle/i$c;

.field public final synthetic l:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljd/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i;Landroidx/lifecycle/i$c;Lqd/p;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i;",
            "Landroidx/lifecycle/i$c;",
            "Lqd/p<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Ljd/d<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljd/d<",
            "-",
            "Landroidx/lifecycle/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/z;->j:Landroidx/lifecycle/i;

    iput-object p2, p0, Landroidx/lifecycle/z;->k:Landroidx/lifecycle/i$c;

    iput-object p3, p0, Landroidx/lifecycle/z;->l:Lqd/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 4
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

    new-instance v0, Landroidx/lifecycle/z;

    iget-object v1, p0, Landroidx/lifecycle/z;->j:Landroidx/lifecycle/i;

    iget-object v2, p0, Landroidx/lifecycle/z;->k:Landroidx/lifecycle/i$c;

    iget-object v3, p0, Landroidx/lifecycle/z;->l:Lqd/p;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/lifecycle/z;-><init>(Landroidx/lifecycle/i;Landroidx/lifecycle/i$c;Lqd/p;Ljd/d;)V

    iput-object p1, v0, Landroidx/lifecycle/z;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/z;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/z;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Landroidx/lifecycle/z;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/z;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/k;

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/z;->i:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Ljd/f;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p1, v1}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_3

    .line 5
    new-instance v1, Landroidx/lifecycle/y;

    invoke-direct {v1}, Landroidx/lifecycle/y;-><init>()V

    .line 6
    new-instance v3, Landroidx/lifecycle/k;

    iget-object v4, p0, Landroidx/lifecycle/z;->j:Landroidx/lifecycle/i;

    iget-object v5, p0, Landroidx/lifecycle/z;->k:Landroidx/lifecycle/i$c;

    iget-object v6, v1, Landroidx/lifecycle/y;->h:Landroidx/lifecycle/d;

    invoke-direct {v3, v4, v5, v6, p1}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/i;Landroidx/lifecycle/i$c;Landroidx/lifecycle/d;Lkotlinx/coroutines/Job;)V

    .line 7
    :try_start_1
    iget-object p1, p0, Landroidx/lifecycle/z;->l:Lqd/p;

    iput-object v3, p0, Landroidx/lifecycle/z;->i:Ljava/lang/Object;

    iput v2, p0, Landroidx/lifecycle/z;->h:I

    invoke-static {v1, p1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    .line 8
    :goto_0
    invoke-virtual {v0}, Landroidx/lifecycle/k;->a()V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Landroidx/lifecycle/k;->a()V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "when[State] methods should have a parent job"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
