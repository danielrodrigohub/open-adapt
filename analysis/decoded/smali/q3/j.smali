.class public abstract Lq3/j;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lq3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lq3/g;",
        "O:",
        "Lq3/h;",
        "E:",
        "Lq3/f;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/d<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lq3/j$a;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:[Lq3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final f:[Lq3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Lq3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public j:Lz4/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>([Lq3/g;[Lq3/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lq3/j;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lq3/j;->c:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lq3/j;->d:Ljava/util/ArrayDeque;

    .line 5
    iput-object p1, p0, Lq3/j;->e:[Lq3/g;

    .line 6
    array-length p1, p1

    iput p1, p0, Lq3/j;->g:I

    const/4 p1, 0x0

    move v0, p1

    .line 7
    :goto_0
    iget v1, p0, Lq3/j;->g:I

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lq3/j;->e:[Lq3/g;

    .line 9
    new-instance v2, Lz4/l;

    invoke-direct {v2}, Lz4/l;-><init>()V

    .line 10
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput-object p2, p0, Lq3/j;->f:[Lq3/h;

    .line 12
    array-length p2, p2

    iput p2, p0, Lq3/j;->h:I

    .line 13
    :goto_1
    iget p2, p0, Lq3/j;->h:I

    if-ge p1, p2, :cond_1

    .line 14
    iget-object p2, p0, Lq3/j;->f:[Lq3/h;

    move-object v0, p0

    check-cast v0, Lz4/f;

    .line 15
    new-instance v1, Lz4/e;

    invoke-direct {v1, v0}, Lz4/e;-><init>(Lz4/f;)V

    .line 16
    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Lq3/j$a;

    invoke-direct {p1, p0}, Lq3/j$a;-><init>(Lq3/j;)V

    iput-object p1, p0, Lq3/j;->a:Lq3/j$a;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lq3/j;->l:Z

    .line 3
    iget-object v1, p0, Lq3/j;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lq3/j;->a:Lq3/j$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    check-cast p1, Lq3/g;

    .line 2
    iget-object v0, p0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lq3/j;->i()V

    .line 4
    iget-object v1, p0, Lq3/j;->i:Lq3/g;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lm5/a;->a(Z)V

    .line 5
    iget-object v1, p0, Lq3/j;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lq3/j;->h()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lq3/j;->i:Lq3/g;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lq3/j;->i()V

    .line 3
    iget-object v1, p0, Lq3/j;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lq3/j;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/h;

    monitor-exit v0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lq3/j;->i()V

    .line 3
    iget-object v1, p0, Lq3/j;->i:Lq3/g;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lm5/a;->e(Z)V

    .line 4
    iget v1, p0, Lq3/j;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, p0, Lq3/j;->e:[Lq3/g;

    sub-int/2addr v1, v2

    iput v1, p0, Lq3/j;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lq3/j;->i:Lq3/g;

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract f(Lq3/g;Lq3/h;Z)Lq3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lq3/j;->k:Z

    .line 3
    iget-object v1, p0, Lq3/j;->i:Lq3/g;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lq3/j;->j(Lq3/g;)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lq3/j;->i:Lq3/g;

    .line 6
    :cond_0
    :goto_0
    iget-object v1, p0, Lq3/j;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lq3/j;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/g;

    invoke-virtual {p0, v1}, Lq3/j;->j(Lq3/g;)V

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget-object v1, p0, Lq3/j;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lq3/j;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/h;

    invoke-virtual {v1}, Lq3/h;->o()V

    goto :goto_1

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lq3/j;->l:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lq3/j;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lq3/j;->h:I

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lq3/j;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lq3/j;->l:Z

    if-eqz v1, :cond_2

    .line 6
    monitor-exit v0

    return v3

    .line 7
    :cond_2
    iget-object v1, p0, Lq3/j;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/g;

    .line 8
    iget-object v4, p0, Lq3/j;->f:[Lq3/h;

    iget v5, p0, Lq3/j;->h:I

    sub-int/2addr v5, v2

    iput v5, p0, Lq3/j;->h:I

    aget-object v4, v4, v5

    .line 9
    iget-boolean v5, p0, Lq3/j;->k:Z

    .line 10
    iput-boolean v3, p0, Lq3/j;->k:Z

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x4

    .line 12
    invoke-virtual {v1, v0}, Lq3/a;->l(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v4, v0}, Lq3/a;->k(I)V

    goto :goto_4

    .line 14
    :cond_3
    invoke-virtual {v1}, Lq3/a;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x80000000

    .line 15
    invoke-virtual {v4, v0}, Lq3/a;->k(I)V

    :cond_4
    const/high16 v0, 0x8000000

    .line 16
    invoke-virtual {v1, v0}, Lq3/a;->l(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 17
    invoke-virtual {v4, v0}, Lq3/a;->k(I)V

    .line 18
    :cond_5
    :try_start_1
    invoke-virtual {p0, v1, v4, v5}, Lq3/j;->f(Lq3/g;Lq3/h;Z)Lq3/f;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 19
    new-instance v5, Lz4/i;

    const-string v6, "Unexpected decode error"

    invoke-direct {v5, v6, v0}, Lz4/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 20
    new-instance v5, Lz4/i;

    const-string v6, "Unexpected decode error"

    invoke-direct {v5, v6, v0}, Lz4/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v5

    :goto_3
    if-eqz v0, :cond_6

    .line 21
    iget-object v5, p0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 22
    :try_start_2
    check-cast v0, Lz4/i;

    iput-object v0, p0, Lq3/j;->j:Lz4/i;

    .line 23
    monitor-exit v5

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 24
    :cond_6
    :goto_4
    iget-object v3, p0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 25
    :try_start_3
    iget-boolean v0, p0, Lq3/j;->k:Z

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {v4}, Lq3/h;->o()V

    goto :goto_5

    .line 27
    :cond_7
    invoke-virtual {v4}, Lq3/a;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {v4}, Lq3/h;->o()V

    goto :goto_5

    .line 29
    :cond_8
    iget-object v0, p0, Lq3/j;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 30
    :goto_5
    invoke-virtual {p0, v1}, Lq3/j;->j(Lq3/g;)V

    .line 31
    monitor-exit v3

    return v2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 32
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/j;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lq3/j;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lq3/j;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/j;->j:Lz4/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method

.method public final j(Lq3/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lq3/g;->o()V

    .line 2
    iget-object v0, p0, Lq3/j;->e:[Lq3/g;

    iget v1, p0, Lq3/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq3/j;->g:I

    aput-object p1, v0, v1

    return-void
.end method
