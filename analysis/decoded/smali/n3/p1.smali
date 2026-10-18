.class public final Ln3/p1;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/p1$a;,
        Ln3/p1$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/p1$b;

.field public final b:Ln3/p1$a;

.field public final c:Lm5/c;

.field public final d:Ln3/b2;

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Landroid/os/Looper;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Ln3/p1$a;Ln3/p1$b;Ln3/b2;ILm5/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/p1;->b:Ln3/p1$a;

    .line 3
    iput-object p2, p0, Ln3/p1;->a:Ln3/p1$b;

    .line 4
    iput-object p3, p0, Ln3/p1;->d:Ln3/b2;

    .line 5
    iput-object p6, p0, Ln3/p1;->g:Landroid/os/Looper;

    .line 6
    iput-object p5, p0, Ln3/p1;->c:Lm5/c;

    .line 7
    iput p4, p0, Ln3/p1;->h:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ln3/p1;->i:Z

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Ln3/p1;->g:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 3
    iget-object v0, p0, Ln3/p1;->c:Lm5/c;

    invoke-interface {v0}, Lm5/c;->d()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 4
    :goto_1
    iget-boolean v2, p0, Ln3/p1;->k:Z

    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 5
    iget-object v2, p0, Ln3/p1;->c:Lm5/c;

    invoke-interface {v2}, Lm5/c;->c()V

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 7
    iget-object p1, p0, Ln3/p1;->c:Lm5/c;

    invoke-interface {p1}, Lm5/c;->d()J

    move-result-wide p1

    sub-long p1, v0, p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    iget-boolean p1, p0, Ln3/p1;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 9
    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ln3/p1;->j:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Ln3/p1;->j:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/p1;->k:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Ln3/p1;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/p1;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput-boolean v1, p0, Ln3/p1;->i:Z

    .line 3
    iget-object v0, p0, Ln3/p1;->b:Ln3/p1$a;

    check-cast v0, Ln3/o0;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, v0, Ln3/o0;->G:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Ln3/o0;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Ln3/o0;->o:Lm5/l;

    const/16 v2, 0xe

    invoke-interface {v1, v2, p0}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object v1

    check-cast v1, Lm5/b0$a;

    invoke-virtual {v1}, Lm5/b0$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Ignoring messages sent after release."

    .line 8
    invoke-static {v1, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Ln3/p1;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    :goto_1
    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d(Ljava/lang/Object;)Ln3/p1;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/p1;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput-object p1, p0, Ln3/p1;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final e(I)Ln3/p1;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/p1;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput p1, p0, Ln3/p1;->e:I

    return-object p0
.end method
