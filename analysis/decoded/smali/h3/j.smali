.class public final Lh3/j;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lh3/e;
.implements Lh3/d;


# instance fields
.field public final a:Lh3/e;

.field public final b:Ljava/lang/Object;

.field public volatile c:Lh3/d;

.field public volatile d:Lh3/d;

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lh3/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lh3/j;->e:I

    .line 3
    iput v0, p0, Lh3/j;->f:I

    .line 4
    iput-object p1, p0, Lh3/j;->b:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lh3/j;->a:Lh3/e;

    return-void
.end method


# virtual methods
.method public final a(Lh3/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/j;->a:Lh3/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lh3/e;->a(Lh3/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lh3/j;->c:Lh3/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lh3/j;->d()Z

    move-result p1

    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    monitor-exit v0

    return v2

    .line 4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2
.end method

.method public final b()Lh3/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/j;->a:Lh3/e;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lh3/e;->b()Lh3/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lh3/j;->f:I

    .line 3
    invoke-static {v1}, Lg2/e;->a(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 4
    iput v2, p0, Lh3/j;->f:I

    .line 5
    iget-object v1, p0, Lh3/j;->d:Lh3/d;

    invoke-interface {v1}, Lh3/d;->c()V

    .line 6
    :cond_0
    iget v1, p0, Lh3/j;->e:I

    .line 7
    invoke-static {v1}, Lg2/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iput v2, p0, Lh3/j;->e:I

    .line 9
    iget-object v1, p0, Lh3/j;->c:Lh3/d;

    invoke-interface {v1}, Lh3/d;->c()V

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lh3/j;->g:Z

    const/4 v1, 0x3

    .line 3
    iput v1, p0, Lh3/j;->e:I

    .line 4
    iput v1, p0, Lh3/j;->f:I

    .line 5
    iget-object v1, p0, Lh3/j;->d:Lh3/d;

    invoke-interface {v1}, Lh3/d;->clear()V

    .line 6
    iget-object v1, p0, Lh3/j;->c:Lh3/d;

    invoke-interface {v1}, Lh3/d;->clear()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/j;->d:Lh3/d;

    invoke-interface {v1}, Lh3/d;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lh3/j;->c:Lh3/d;

    invoke-interface {v1}, Lh3/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lh3/j;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lh3/j;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 3
    :try_start_1
    iget v3, p0, Lh3/j;->e:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lh3/j;->f:I

    if-eq v3, v1, :cond_0

    .line 4
    iput v1, p0, Lh3/j;->f:I

    .line 5
    iget-object v3, p0, Lh3/j;->d:Lh3/d;

    invoke-interface {v3}, Lh3/d;->f()V

    .line 6
    :cond_0
    iget-boolean v3, p0, Lh3/j;->g:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lh3/j;->e:I

    if-eq v3, v1, :cond_1

    .line 7
    iput v1, p0, Lh3/j;->e:I

    .line 8
    iget-object v1, p0, Lh3/j;->c:Lh3/d;

    invoke-interface {v1}, Lh3/d;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    :try_start_2
    iput-boolean v2, p0, Lh3/j;->g:Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 11
    iput-boolean v2, p0, Lh3/j;->g:Z

    throw v1

    :catchall_1
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final g(Lh3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/j;->d:Lh3/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 3
    iput v1, p0, Lh3/j;->f:I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput v1, p0, Lh3/j;->e:I

    .line 6
    iget-object p1, p0, Lh3/j;->a:Lh3/e;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, p0}, Lh3/e;->g(Lh3/d;)V

    .line 8
    :cond_1
    iget p1, p0, Lh3/j;->f:I

    .line 9
    invoke-static {p1}, Lg2/e;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lh3/j;->d:Lh3/d;

    invoke-interface {p1}, Lh3/d;->clear()V

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h(Lh3/d;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lh3/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lh3/j;

    .line 3
    iget-object v0, p0, Lh3/j;->c:Lh3/d;

    if-nez v0, :cond_0

    iget-object v0, p1, Lh3/j;->c:Lh3/d;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh3/j;->c:Lh3/d;

    iget-object v2, p1, Lh3/j;->c:Lh3/d;

    invoke-interface {v0, v2}, Lh3/d;->h(Lh3/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lh3/j;->d:Lh3/d;

    if-nez v0, :cond_1

    iget-object p1, p1, Lh3/j;->d:Lh3/d;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lh3/j;->d:Lh3/d;

    iget-object p1, p1, Lh3/j;->d:Lh3/d;

    .line 4
    invoke-interface {v0, p1}, Lh3/d;->h(Lh3/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lh3/j;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lh3/j;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j(Lh3/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/j;->a:Lh3/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lh3/e;->j(Lh3/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Lh3/j;->c:Lh3/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lh3/j;->e:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(Lh3/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/j;->a:Lh3/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lh3/e;->k(Lh3/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lh3/j;->c:Lh3/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lh3/j;->e:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    move v2, v3

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l(Lh3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/j;->c:Lh3/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    if-nez p1, :cond_0

    .line 3
    iput v1, p0, Lh3/j;->f:I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput v1, p0, Lh3/j;->e:I

    .line 6
    iget-object p1, p0, Lh3/j;->a:Lh3/e;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, p0}, Lh3/e;->l(Lh3/d;)V

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
