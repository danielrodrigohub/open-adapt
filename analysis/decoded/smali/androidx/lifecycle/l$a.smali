.class public final Landroidx/lifecycle/l$a;
.super Lld/i;
.source "Lifecycle.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/l;->c(Lqd/p;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1"
    f = "Lifecycle.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Landroidx/lifecycle/l;

.field public final synthetic j:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l;Lqd/p;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/l;",
            "Lqd/p<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljd/d<",
            "-",
            "Landroidx/lifecycle/l$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/l$a;->i:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/lifecycle/l$a;->j:Lqd/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

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

    new-instance p1, Landroidx/lifecycle/l$a;

    iget-object v0, p0, Landroidx/lifecycle/l$a;->i:Landroidx/lifecycle/l;

    iget-object v1, p0, Landroidx/lifecycle/l$a;->j:Lqd/p;

    invoke-direct {p1, v0, v1, p2}, Landroidx/lifecycle/l$a;-><init>(Landroidx/lifecycle/l;Lqd/p;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/l$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/l$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/l$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Landroidx/lifecycle/l$a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/l$a;->i:Landroidx/lifecycle/l;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/i;

    move-result-object p1

    iget-object v1, p0, Landroidx/lifecycle/l$a;->j:Lqd/p;

    iput v2, p0, Landroidx/lifecycle/l$a;->h:I

    .line 5
    sget-object v2, Landroidx/lifecycle/i$c;->j:Landroidx/lifecycle/i$c;

    .line 6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    new-instance v4, Landroidx/lifecycle/z;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v2, v1, v5}, Landroidx/lifecycle/z;-><init>(Landroidx/lifecycle/i;Landroidx/lifecycle/i$c;Lqd/p;Ljd/d;)V

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
