.class public final Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;
.super Lld/i;
.source "RepeatOnLifecycle.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1"
    f = "RepeatOnLifecycle.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lrd/w;

.field public i:Lrd/w;

.field public j:Landroidx/lifecycle/i$c;

.field public k:Landroidx/lifecycle/i;

.field public l:Lkotlinx/coroutines/CoroutineScope;

.field public m:Lqd/p;

.field public n:I

.field public final synthetic o:Landroidx/lifecycle/i;

.field public final synthetic p:Landroidx/lifecycle/i$c;

.field public final synthetic q:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic r:Lqd/p;
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
.method public constructor <init>(Landroidx/lifecycle/i;Landroidx/lifecycle/i$c;Lkotlinx/coroutines/CoroutineScope;Lqd/p;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i;",
            "Landroidx/lifecycle/i$c;",
            "Lkotlinx/coroutines/CoroutineScope;",
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
            "Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->o:Landroidx/lifecycle/i;

    iput-object p2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->p:Landroidx/lifecycle/i$c;

    iput-object p3, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->q:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->r:Lqd/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 6
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

    new-instance p1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;

    iget-object v1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->o:Landroidx/lifecycle/i;

    iget-object v2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->p:Landroidx/lifecycle/i$c;

    iget-object v3, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->q:Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->r:Lqd/p;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;-><init>(Landroidx/lifecycle/i;Landroidx/lifecycle/i$c;Lkotlinx/coroutines/CoroutineScope;Lqd/p;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->i:Lrd/w;

    iget-object v5, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->h:Lrd/w;

    :try_start_0
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->o:Landroidx/lifecycle/i;

    invoke-virtual {v2}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object v2

    sget-object v5, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    if-ne v2, v5, :cond_2

    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    .line 5
    :cond_2
    new-instance v2, Lrd/w;

    invoke-direct {v2}, Lrd/w;-><init>()V

    .line 6
    new-instance v13, Lrd/w;

    invoke-direct {v13}, Lrd/w;-><init>()V

    .line 7
    :try_start_1
    iget-object v5, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->p:Landroidx/lifecycle/i$c;

    iget-object v14, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->o:Landroidx/lifecycle/i;

    iget-object v8, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->q:Lkotlinx/coroutines/CoroutineScope;

    iget-object v12, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->r:Lqd/p;

    .line 8
    iput-object v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->h:Lrd/w;

    iput-object v13, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->i:Lrd/w;

    iput-object v5, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->j:Landroidx/lifecycle/i$c;

    iput-object v14, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->k:Landroidx/lifecycle/i;

    iput-object v8, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->l:Lkotlinx/coroutines/CoroutineScope;

    iput-object v12, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->m:Lqd/p;

    iput v4, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->n:I

    .line 9
    new-instance v15, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object v6

    invoke-direct {v15, v6, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Ljd/d;I)V

    .line 10
    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 11
    invoke-static {v5}, Landroidx/lifecycle/i$b;->j(Landroidx/lifecycle/i$c;)Landroidx/lifecycle/i$b;

    move-result-object v6

    .line 12
    invoke-static {v5}, Landroidx/lifecycle/i$b;->b(Landroidx/lifecycle/i$c;)Landroidx/lifecycle/i$b;

    move-result-object v9

    const/4 v5, 0x0

    .line 13
    invoke-static {v5, v4, v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v11

    .line 14
    new-instance v10, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;

    move-object v5, v10

    move-object v7, v2

    move-object v3, v10

    move-object v10, v15

    invoke-direct/range {v5 .. v12}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;-><init>(Landroidx/lifecycle/i$b;Lrd/w;Lkotlinx/coroutines/CoroutineScope;Landroidx/lifecycle/i$b;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/sync/Mutex;Lqd/p;)V

    iput-object v3, v13, Lrd/w;->h:Ljava/lang/Object;

    .line 15
    invoke-virtual {v14, v3}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/p;)V

    .line 16
    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v5, v2

    move-object v2, v13

    .line 17
    :goto_0
    iget-object v0, v5, Lrd/w;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    invoke-static {v0, v3, v4, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 18
    :cond_4
    iget-object v0, v2, Lrd/w;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/n;

    if-eqz v0, :cond_5

    iget-object v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->o:Landroidx/lifecycle/i;

    .line 19
    invoke-virtual {v2, v0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/p;)V

    .line 20
    :cond_5
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :catchall_1
    move-exception v0

    move-object v5, v2

    move-object v2, v13

    .line 21
    :goto_1
    iget-object v3, v5, Lrd/w;->h:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_6

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 22
    :cond_6
    iget-object v2, v2, Lrd/w;->h:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/n;

    if-eqz v2, :cond_7

    iget-object v3, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->o:Landroidx/lifecycle/i;

    .line 23
    invoke-virtual {v3, v2}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/p;)V

    .line 24
    :cond_7
    throw v0
.end method
