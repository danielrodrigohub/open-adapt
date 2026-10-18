.class public final Lfe/a;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final h:Lfe/j;

.field public final i:Lfe/c;


# direct methods
.method public constructor <init>(Lfe/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfe/a;->i:Lfe/c;

    .line 3
    new-instance p1, Lfe/j;

    invoke-direct {p1}, Lfe/j;-><init>()V

    iput-object p1, p0, Lfe/a;->h:Lfe/j;

    return-void
.end method


# virtual methods
.method public final a(Lfe/o;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lfe/i;->a(Lfe/o;Ljava/lang/Object;)Lfe/i;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lfe/a;->h:Lfe/j;

    invoke-virtual {p2, p1}, Lfe/j;->a(Lfe/i;)V

    .line 3
    iget-object p1, p0, Lfe/a;->i:Lfe/c;

    .line 4
    iget-object p1, p1, Lfe/c;->j:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfe/a;->h:Lfe/j;

    invoke-virtual {v0}, Lfe/j;->b()Lfe/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lfe/a;->i:Lfe/c;

    invoke-virtual {v1, v0}, Lfe/c;->b(Lfe/i;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
