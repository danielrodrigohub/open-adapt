.class public final Lk1/k;
.super Ljava/lang/Object;
.source "ListenableFuture.kt"

# interfaces
.implements Lx6/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx6/a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final h:Lkotlinx/coroutines/Job;

.field public final i:Lv1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/c<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 2

    .line 1
    new-instance v0, Lv1/c;

    invoke-direct {v0}, Lv1/c;-><init>()V

    const-string v1, "job"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lk1/k;->h:Lkotlinx/coroutines/Job;

    .line 5
    iput-object v0, p0, Lk1/k;->i:Lv1/c;

    .line 6
    new-instance v0, Lk1/j;

    invoke-direct {v0, p0}, Lk1/j;-><init>(Lk1/k;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lqd/l;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lk1/k;->i:Lv1/c;

    invoke-virtual {v0, p1, p2}, Lv1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lk1/k;->i:Lv1/c;

    invoke-virtual {v0, p1}, Lv1/a;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lk1/k;->i:Lv1/c;

    invoke-virtual {v0}, Lv1/a;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lk1/k;->i:Lv1/c;

    invoke-virtual {v0, p1, p2, p3}, Lv1/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lk1/k;->i:Lv1/c;

    .line 1
    iget-object v0, v0, Lv1/a;->h:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lv1/a$b;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lk1/k;->i:Lv1/c;

    invoke-virtual {v0}, Lv1/a;->isDone()Z

    move-result v0

    return v0
.end method
