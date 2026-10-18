.class public abstract Landroidx/work/CoroutineWorker;
.super Landroidx/work/ListenableWorker;
.source "CoroutineWorker.kt"


# instance fields
.field public final m:Lkotlinx/coroutines/CompletableJob;

.field public final n:Lv1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/c<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->m:Lkotlinx/coroutines/CompletableJob;

    .line 3
    new-instance p1, Lv1/c;

    invoke-direct {p1}, Lv1/c;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/work/CoroutineWorker;->n:Lv1/c;

    .line 5
    new-instance p2, Landroidx/work/CoroutineWorker$a;

    invoke-direct {p2, p0}, Landroidx/work/CoroutineWorker$a;-><init>(Landroidx/work/CoroutineWorker;)V

    .line 6
    iget-object v0, p0, Landroidx/work/ListenableWorker;->i:Landroidx/work/WorkerParameters;

    .line 7
    iget-object v0, v0, Landroidx/work/WorkerParameters;->d:Lw1/a;

    .line 8
    check-cast v0, Lw1/b;

    .line 9
    iget-object v0, v0, Lw1/b;->a:Lu1/i;

    .line 10
    invoke-virtual {p1, p2, v0}, Lv1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->o:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final a()Lx6/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx6/a<",
            "Lk1/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    .line 2
    iget-object v2, p0, Landroidx/work/CoroutineWorker;->o:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 3
    invoke-virtual {v2, v1}, Ljd/a;->plus(Ljd/f;)Ljd/f;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Ljd/f;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 4
    new-instance v2, Lk1/k;

    invoke-direct {v2, v1}, Lk1/k;-><init>(Lkotlinx/coroutines/Job;)V

    .line 5
    new-instance v6, Landroidx/work/CoroutineWorker$b;

    invoke-direct {v6, v2, p0, v0}, Landroidx/work/CoroutineWorker$b;-><init>(Lk1/k;Landroidx/work/CoroutineWorker;Ljd/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v2
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Landroidx/work/CoroutineWorker;->n:Lv1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv1/a;->cancel(Z)Z

    return-void
.end method

.method public final f()Lx6/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx6/a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->o:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    iget-object v1, p0, Landroidx/work/CoroutineWorker;->m:Lkotlinx/coroutines/CompletableJob;

    invoke-virtual {v0, v1}, Ljd/a;->plus(Ljd/f;)Ljd/f;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Ljd/f;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Landroidx/work/CoroutineWorker$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/work/CoroutineWorker$c;-><init>(Landroidx/work/CoroutineWorker;Ljd/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 4
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->n:Lv1/c;

    return-object v0
.end method

.method public abstract h()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
