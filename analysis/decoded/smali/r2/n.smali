.class public final Lr2/n;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lr2/j$a;
.implements Lm3/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr2/n$c;,
        Lr2/n$d;,
        Lr2/n$e;,
        Lr2/n$b;,
        Lr2/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr2/j$a<",
        "TR;>;",
        "Lm3/a$d;"
    }
.end annotation


# static fields
.field public static final G:Lr2/n$c;


# instance fields
.field public A:Lr2/r;

.field public B:Z

.field public C:Lr2/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/q<",
            "*>;"
        }
    .end annotation
.end field

.field public D:Lr2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile E:Z

.field public F:Z

.field public final h:Lr2/n$e;

.field public final i:Lm3/d$a;

.field public final j:Lr2/q$a;

.field public final k:Li0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/e<",
            "Lr2/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final l:Lr2/n$c;

.field public final m:Lr2/o;

.field public final n:Lu2/a;

.field public final o:Lu2/a;

.field public final p:Lu2/a;

.field public final q:Lu2/a;

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public s:Lp2/f;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lr2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/w<",
            "*>;"
        }
    .end annotation
.end field

.field public y:Lp2/a;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr2/n$c;

    invoke-direct {v0}, Lr2/n$c;-><init>()V

    sput-object v0, Lr2/n;->G:Lr2/n$c;

    return-void
.end method

.method public constructor <init>(Lu2/a;Lu2/a;Lu2/a;Lu2/a;Lr2/o;Lr2/q$a;Li0/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/a;",
            "Lu2/a;",
            "Lu2/a;",
            "Lu2/a;",
            "Lr2/o;",
            "Lr2/q$a;",
            "Li0/e<",
            "Lr2/n<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lr2/n;->G:Lr2/n$c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lr2/n$e;

    invoke-direct {v1}, Lr2/n$e;-><init>()V

    iput-object v1, p0, Lr2/n;->h:Lr2/n$e;

    .line 4
    new-instance v1, Lm3/d$a;

    invoke-direct {v1}, Lm3/d$a;-><init>()V

    .line 5
    iput-object v1, p0, Lr2/n;->i:Lm3/d$a;

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lr2/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    iput-object p1, p0, Lr2/n;->n:Lu2/a;

    .line 8
    iput-object p2, p0, Lr2/n;->o:Lu2/a;

    .line 9
    iput-object p3, p0, Lr2/n;->p:Lu2/a;

    .line 10
    iput-object p4, p0, Lr2/n;->q:Lu2/a;

    .line 11
    iput-object p5, p0, Lr2/n;->m:Lr2/o;

    .line 12
    iput-object p6, p0, Lr2/n;->j:Lr2/q$a;

    .line 13
    iput-object p7, p0, Lr2/n;->k:Li0/e;

    .line 14
    iput-object v0, p0, Lr2/n;->l:Lr2/n$c;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lh3/h;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr2/n;->i:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    .line 2
    iget-object v0, p0, Lr2/n;->h:Lr2/n$e;

    .line 3
    iget-object v0, v0, Lr2/n$e;->h:Ljava/util/List;

    new-instance v1, Lr2/n$d;

    invoke-direct {v1, p1, p2}, Lr2/n$d;-><init>(Lh3/h;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean v0, p0, Lr2/n;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lr2/n;->d(I)V

    .line 6
    new-instance v0, Lr2/n$b;

    invoke-direct {v0, p0, p1}, Lr2/n$b;-><init>(Lr2/n;Lh3/h;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lr2/n;->B:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lr2/n;->d(I)V

    .line 9
    new-instance v0, Lr2/n$a;

    invoke-direct {v0, p0, p1}, Lr2/n$a;-><init>(Lr2/n;Lh3/h;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-boolean p1, p0, Lr2/n;->E:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Lc3/d;->e(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lr2/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lr2/n;->E:Z

    .line 3
    iget-object v1, p0, Lr2/n;->D:Lr2/j;

    .line 4
    iput-boolean v0, v1, Lr2/j;->L:Z

    .line 5
    iget-object v0, v1, Lr2/j;->J:Lr2/h;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lr2/h;->cancel()V

    .line 7
    :cond_1
    iget-object v0, p0, Lr2/n;->m:Lr2/o;

    iget-object v1, p0, Lr2/n;->s:Lp2/f;

    check-cast v0, Lr2/m;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, v0, Lr2/m;->a:Lr2/t;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v3, p0, Lr2/n;->w:Z

    .line 11
    invoke-virtual {v2, v3}, Lr2/t;->a(Z)Ljava/util/Map;

    move-result-object v2

    .line 12
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lr2/n;->i:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    .line 3
    invoke-virtual {p0}, Lr2/n;->e()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lc3/d;->e(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lr2/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 5
    invoke-static {v1, v2}, Lc3/d;->e(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lr2/n;->C:Lr2/q;

    .line 7
    invoke-virtual {p0}, Lr2/n;->f()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lr2/q;->e()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lr2/n;->e()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lc3/d;->e(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lr2/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lr2/n;->C:Lr2/q;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lr2/q;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lr2/n;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lr2/n;->z:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lr2/n;->E:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr2/n;->s:Lp2/f;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lr2/n;->h:Lr2/n$e;

    .line 3
    iget-object v0, v0, Lr2/n$e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lr2/n;->s:Lp2/f;

    .line 5
    iput-object v0, p0, Lr2/n;->C:Lr2/q;

    .line 6
    iput-object v0, p0, Lr2/n;->x:Lr2/w;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lr2/n;->B:Z

    .line 8
    iput-boolean v1, p0, Lr2/n;->E:Z

    .line 9
    iput-boolean v1, p0, Lr2/n;->z:Z

    .line 10
    iput-boolean v1, p0, Lr2/n;->F:Z

    .line 11
    iget-object v1, p0, Lr2/n;->D:Lr2/j;

    .line 12
    iget-object v2, v1, Lr2/j;->n:Lr2/j$e;

    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    .line 14
    :try_start_1
    iput-boolean v3, v2, Lr2/j$e;->a:Z

    .line 15
    invoke-virtual {v2}, Lr2/j$e;->a()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {v1}, Lr2/j;->t()V

    .line 17
    :cond_0
    iput-object v0, p0, Lr2/n;->D:Lr2/j;

    .line 18
    iput-object v0, p0, Lr2/n;->A:Lr2/r;

    .line 19
    iput-object v0, p0, Lr2/n;->y:Lp2/a;

    .line 20
    iget-object v0, p0, Lr2/n;->k:Li0/e;

    invoke-interface {v0, p0}, Li0/e;->a(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 22
    :try_start_3
    monitor-exit v2

    throw v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(Lh3/h;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr2/n;->i:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    .line 2
    iget-object v0, p0, Lr2/n;->h:Lr2/n$e;

    .line 3
    iget-object v0, v0, Lr2/n$e;->h:Ljava/util/List;

    .line 4
    new-instance v1, Lr2/n$d;

    sget-object v2, Ll3/e;->b:Ll3/e$b;

    invoke-direct {v1, p1, v2}, Lr2/n$d;-><init>(Lh3/h;Ljava/util/concurrent/Executor;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lr2/n;->h:Lr2/n$e;

    invoke-virtual {p1}, Lr2/n$e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lr2/n;->b()V

    .line 8
    iget-boolean p1, p0, Lr2/n;->z:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lr2/n;->B:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lr2/n;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {p0}, Lr2/n;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(Lr2/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lr2/n;->u:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lr2/n;->p:Lu2/a;

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lr2/n;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr2/n;->q:Lu2/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr2/n;->o:Lu2/a;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lu2/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()Lm3/d;
    .locals 1

    iget-object v0, p0, Lr2/n;->i:Lm3/d$a;

    return-object v0
.end method
