.class public abstract Ly0/d0;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/d0$d;,
        Ly0/d0$b;,
        Ly0/d0$c;,
        Ly0/d0$a;
    }
.end annotation


# instance fields
.field public volatile a:Ld1/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ld1/d;

.field public final d:Landroidx/room/c;

.field public e:Z

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly0/d0$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lz0/a;",
            ">;",
            "Lz0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public i:Ly0/a;

.field public final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Ly0/d0;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ly0/d0;->j:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ly0/d0;->k:Ljava/util/Map;

    .line 6
    invoke-virtual {p0}, Ly0/d0;->e()Landroidx/room/c;

    move-result-object v0

    iput-object v0, p0, Ly0/d0;->d:Landroidx/room/c;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly0/d0;->l:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly0/d0;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly0/d0;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly0/d0;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ly0/d0;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ly0/d0;->a()V

    .line 2
    invoke-virtual {p0}, Ly0/d0;->k()V

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()Landroidx/room/c;
.end method

.method public abstract f(Ly0/n;)Ld1/d;
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lz0/a;",
            ">;",
            "Lz0/a;",
            ">;)",
            "Ljava/util/List<",
            "Lz0/b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lz0/a;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Ly0/d0;->c:Ld1/d;

    invoke-interface {v0}, Ld1/d;->X()Ld1/b;

    move-result-object v0

    invoke-interface {v0}, Ld1/b;->C()Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly0/d0;->a()V

    .line 2
    iget-object v0, p0, Ly0/d0;->c:Ld1/d;

    invoke-interface {v0}, Ld1/d;->X()Ld1/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ly0/d0;->d:Landroidx/room/c;

    invoke-virtual {v1, v0}, Landroidx/room/c;->f(Ld1/b;)V

    .line 4
    invoke-interface {v0}, Ld1/b;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ld1/b;->P()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ld1/b;->e()V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly0/d0;->c:Ld1/d;

    invoke-interface {v0}, Ld1/d;->X()Ld1/b;

    move-result-object v0

    invoke-interface {v0}, Ld1/b;->d()V

    .line 2
    invoke-virtual {p0}, Ly0/d0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ly0/d0;->d:Landroidx/room/c;

    .line 4
    iget-object v1, v0, Landroidx/room/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Landroidx/room/c;->d:Ly0/d0;

    .line 6
    iget-object v1, v1, Ly0/d0;->b:Ljava/util/concurrent/Executor;

    .line 7
    iget-object v0, v0, Landroidx/room/c;->k:Landroidx/room/c$a;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final m(Ld1/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly0/d0;->d:Landroidx/room/c;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Landroidx/room/c;->f:Z

    if-eqz v1, :cond_0

    const-string p1, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0

    goto :goto_0

    :cond_0
    const-string v1, "PRAGMA temp_store = MEMORY;"

    .line 6
    check-cast p1, Le1/a;

    invoke-virtual {p1, v1}, Le1/a;->k(Ljava/lang/String;)V

    const-string v1, "PRAGMA recursive_triggers=\'ON\';"

    .line 7
    invoke-interface {p1, v1}, Ld1/b;->k(Ljava/lang/String;)V

    const-string v1, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 8
    invoke-interface {p1, v1}, Ld1/b;->k(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Landroidx/room/c;->f(Ld1/b;)V

    const-string v1, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    .line 10
    invoke-interface {p1, v1}, Ld1/b;->q(Ljava/lang/String;)Ld1/g;

    move-result-object p1

    iput-object p1, v0, Landroidx/room/c;->g:Ld1/g;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, v0, Landroidx/room/c;->f:Z

    .line 12
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly0/d0;->i:Ly0/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Ly0/a;->a:Z

    xor-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ly0/d0;->a:Ld1/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ld1/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final o(Ld1/f;)Landroid/database/Cursor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly0/d0;->a()V

    .line 2
    invoke-virtual {p0}, Ly0/d0;->b()V

    .line 3
    iget-object v0, p0, Ly0/d0;->c:Ld1/d;

    invoke-interface {v0}, Ld1/d;->X()Ld1/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ld1/b;->M(Ld1/f;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final p()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ly0/d0;->c:Ld1/d;

    invoke-interface {v0}, Ld1/d;->X()Ld1/b;

    move-result-object v0

    invoke-interface {v0}, Ld1/b;->L()V

    return-void
.end method

.method public final q(Ljava/lang/Class;Ld1/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ld1/d;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    instance-of v0, p2, Ly0/o;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Ly0/o;

    invoke-interface {p2}, Ly0/o;->x()Ld1/d;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ly0/d0;->q(Ljava/lang/Class;Ld1/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
