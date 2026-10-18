.class public final Lr3/a;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lr3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/a$d;,
        Lr3/a$c;,
        Lr3/a$e;,
        Lr3/a$b;,
        Lr3/a$a;,
        Lr3/a$f;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr3/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr3/s;

.field public final c:Lr3/a$a;

.field public final d:Lr3/a$b;

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lm5/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/g<",
            "Lr3/k$a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ll5/c0;

.field public final k:Lo3/v0;

.field public final l:Lr3/y;

.field public final m:Ljava/util/UUID;

.field public final n:Lr3/a$e;

.field public o:I

.field public p:I

.field public q:Landroid/os/HandlerThread;

.field public r:Lr3/a$c;

.field public s:Lq3/b;

.field public t:Lr3/e$a;

.field public u:[B

.field public v:[B

.field public w:Lr3/s$a;

.field public x:Lr3/s$d;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lr3/s;Lr3/a$a;Lr3/a$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lr3/y;Landroid/os/Looper;Ll5/c0;Lo3/v0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lr3/s;",
            "Lr3/a$a;",
            "Lr3/a$b;",
            "Ljava/util/List<",
            "Lr3/d$b;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lr3/y;",
            "Landroid/os/Looper;",
            "Ll5/c0;",
            "Lo3/v0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    iput-object p1, p0, Lr3/a;->m:Ljava/util/UUID;

    .line 4
    iput-object p3, p0, Lr3/a;->c:Lr3/a$a;

    .line 5
    iput-object p4, p0, Lr3/a;->d:Lr3/a$b;

    .line 6
    iput-object p2, p0, Lr3/a;->b:Lr3/s;

    .line 7
    iput p6, p0, Lr3/a;->e:I

    .line 8
    iput-boolean p7, p0, Lr3/a;->f:Z

    .line 9
    iput-boolean p8, p0, Lr3/a;->g:Z

    if-eqz p9, :cond_2

    .line 10
    iput-object p9, p0, Lr3/a;->v:[B

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lr3/a;->a:Ljava/util/List;

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr3/a;->a:Ljava/util/List;

    .line 14
    :goto_0
    iput-object p10, p0, Lr3/a;->h:Ljava/util/HashMap;

    .line 15
    iput-object p11, p0, Lr3/a;->l:Lr3/y;

    .line 16
    new-instance p1, Lm5/g;

    invoke-direct {p1}, Lm5/g;-><init>()V

    iput-object p1, p0, Lr3/a;->i:Lm5/g;

    .line 17
    iput-object p13, p0, Lr3/a;->j:Ll5/c0;

    .line 18
    iput-object p14, p0, Lr3/a;->k:Lo3/v0;

    const/4 p1, 0x2

    .line 19
    iput p1, p0, Lr3/a;->o:I

    .line 20
    new-instance p1, Lr3/a$e;

    invoke-direct {p1, p0, p12}, Lr3/a$e;-><init>(Lr3/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lr3/a;->n:Lr3/a$e;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lr3/a;->f:Z

    return v0
.end method

.method public final b()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lr3/a;->m:Ljava/util/UUID;

    return-object v0
.end method

.method public final c(Lr3/k$a;)V
    .locals 7

    .line 1
    iget v0, p0, Lr3/a;->p:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const-string v0, "DefaultDrmSession"

    const-string v2, "Session reference count less than zero: "

    .line 2
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3
    iget v3, p0, Lr3/a;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput v1, p0, Lr3/a;->p:I

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 5
    iget-object v2, p0, Lr3/a;->i:Lm5/g;

    .line 6
    iget-object v3, v2, Lm5/g;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 7
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lm5/g;->k:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lm5/g;->k:Ljava/util/List;

    .line 10
    iget-object v4, v2, Lm5/g;->i:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 11
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v2, Lm5/g;->j:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v2, Lm5/g;->j:Ljava/util/Set;

    .line 14
    :cond_1
    iget-object v2, v2, Lm5/g;->i:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 16
    :cond_3
    :goto_1
    iget v2, p0, Lr3/a;->p:I

    add-int/2addr v2, v0

    iput v2, p0, Lr3/a;->p:I

    if-ne v2, v0, :cond_5

    .line 17
    iget p1, p0, Lr3/a;->o:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    move v1, v0

    :cond_4
    invoke-static {v1}, Lm5/a;->e(Z)V

    .line 18
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lr3/a;->q:Landroid/os/HandlerThread;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 20
    new-instance p1, Lr3/a$c;

    iget-object v1, p0, Lr3/a;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lr3/a$c;-><init>(Lr3/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lr3/a;->r:Lr3/a$c;

    .line 21
    invoke-virtual {p0}, Lr3/a;->m()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p0, v0}, Lr3/a;->i(Z)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p0}, Lr3/a;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lr3/a;->i:Lm5/g;

    .line 24
    invoke-virtual {v1, p1}, Lm5/g;->h(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 25
    iget v0, p0, Lr3/a;->o:I

    invoke-virtual {p1, v0}, Lr3/k$a;->d(I)V

    .line 26
    :cond_6
    :goto_2
    iget-object p1, p0, Lr3/a;->d:Lr3/a$b;

    check-cast p1, Lr3/b$g;

    .line 27
    iget-object v0, p1, Lr3/b$g;->a:Lr3/b;

    .line 28
    iget-wide v1, v0, Lr3/b;->l:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 29
    iget-object v0, v0, Lr3/b;->o:Ljava/util/Set;

    .line 30
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p1, Lr3/b$g;->a:Lr3/b;

    .line 32
    iget-object p1, p1, Lr3/b;->u:Landroid/os/Handler;

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final d(Lr3/k$a;)V
    .locals 8

    .line 1
    iget v0, p0, Lr3/a;->p:I

    if-gtz v0, :cond_0

    const-string p1, "DefaultDrmSession"

    const-string v0, "release() called on a session that\'s already fully released."

    .line 2
    invoke-static {p1, v0}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3
    iput v0, p0, Lr3/a;->p:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lr3/a;->o:I

    .line 5
    iget-object v0, p0, Lr3/a;->n:Lr3/a$e;

    sget v3, Lm5/g0;->a:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lr3/a;->r:Lr3/a$c;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-boolean v1, v0, Lr3/a$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    iput-object v2, p0, Lr3/a;->r:Lr3/a$c;

    .line 12
    iget-object v0, p0, Lr3/a;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 13
    iput-object v2, p0, Lr3/a;->q:Landroid/os/HandlerThread;

    .line 14
    iput-object v2, p0, Lr3/a;->s:Lq3/b;

    .line 15
    iput-object v2, p0, Lr3/a;->t:Lr3/e$a;

    .line 16
    iput-object v2, p0, Lr3/a;->w:Lr3/s$a;

    .line 17
    iput-object v2, p0, Lr3/a;->x:Lr3/s$d;

    .line 18
    iget-object v0, p0, Lr3/a;->u:[B

    if-eqz v0, :cond_1

    .line 19
    iget-object v3, p0, Lr3/a;->b:Lr3/s;

    invoke-interface {v3, v0}, Lr3/s;->e([B)V

    .line 20
    iput-object v2, p0, Lr3/a;->u:[B

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 22
    iget-object v0, p0, Lr3/a;->i:Lm5/g;

    .line 23
    iget-object v3, v0, Lm5/g;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 24
    :try_start_1
    iget-object v4, v0, Lm5/g;->i:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_2

    .line 25
    monitor-exit v3

    goto :goto_2

    .line 26
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lm5/g;->k:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lm5/g;->k:Ljava/util/List;

    .line 29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 30
    iget-object v4, v0, Lm5/g;->i:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v0, Lm5/g;->j:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 33
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v0, Lm5/g;->j:Ljava/util/Set;

    goto :goto_1

    .line 34
    :cond_3
    iget-object v0, v0, Lm5/g;->i:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :goto_2
    iget-object v0, p0, Lr3/a;->i:Lm5/g;

    invoke-virtual {v0, p1}, Lm5/g;->h(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4

    .line 37
    invoke-virtual {p1}, Lr3/k$a;->f()V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 38
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 39
    :cond_4
    :goto_3
    iget-object p1, p0, Lr3/a;->d:Lr3/a$b;

    iget v0, p0, Lr3/a;->p:I

    check-cast p1, Lr3/b$g;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v0, v1, :cond_5

    .line 40
    iget-object v5, p1, Lr3/b$g;->a:Lr3/b;

    .line 41
    iget v6, v5, Lr3/b;->p:I

    if-lez v6, :cond_5

    .line 42
    iget-wide v6, v5, Lr3/b;->l:J

    cmp-long v6, v6, v3

    if-eqz v6, :cond_5

    .line 43
    iget-object v0, v5, Lr3/b;->o:Ljava/util/Set;

    .line 44
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p1, Lr3/b$g;->a:Lr3/b;

    .line 46
    iget-object v0, v0, Lr3/b;->u:Landroid/os/Handler;

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v2, Ly0/t;

    invoke-direct {v2, p0, v1}, Ly0/t;-><init>(Ljava/lang/Object;I)V

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v1, p1, Lr3/b$g;->a:Lr3/b;

    .line 50
    iget-wide v5, v1, Lr3/b;->l:J

    add-long/2addr v3, v5

    .line 51
    invoke-virtual {v0, v2, p0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_4

    :cond_5
    if-nez v0, :cond_9

    .line 52
    iget-object v0, p1, Lr3/b$g;->a:Lr3/b;

    .line 53
    iget-object v0, v0, Lr3/b;->m:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p1, Lr3/b$g;->a:Lr3/b;

    .line 56
    iget-object v1, v0, Lr3/b;->r:Lr3/a;

    if-ne v1, p0, :cond_6

    .line 57
    iput-object v2, v0, Lr3/b;->r:Lr3/a;

    .line 58
    :cond_6
    iget-object v1, v0, Lr3/b;->s:Lr3/a;

    if-ne v1, p0, :cond_7

    .line 59
    iput-object v2, v0, Lr3/b;->s:Lr3/a;

    .line 60
    :cond_7
    iget-object v0, v0, Lr3/b;->i:Lr3/b$f;

    .line 61
    iget-object v1, v0, Lr3/b$f;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, v0, Lr3/b$f;->b:Lr3/a;

    if-ne v1, p0, :cond_8

    .line 63
    iput-object v2, v0, Lr3/b$f;->b:Lr3/a;

    .line 64
    iget-object v1, v0, Lr3/b$f;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 65
    iget-object v1, v0, Lr3/b$f;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/a;

    iput-object v1, v0, Lr3/b$f;->b:Lr3/a;

    .line 66
    invoke-virtual {v1}, Lr3/a;->o()V

    .line 67
    :cond_8
    iget-object v0, p1, Lr3/b$g;->a:Lr3/b;

    .line 68
    iget-wide v1, v0, Lr3/b;->l:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 69
    iget-object v0, v0, Lr3/b;->u:Landroid/os/Handler;

    .line 70
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p1, Lr3/b$g;->a:Lr3/b;

    .line 73
    iget-object v0, v0, Lr3/b;->o:Ljava/util/Set;

    .line 74
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_9
    :goto_4
    iget-object p1, p1, Lr3/b$g;->a:Lr3/b;

    .line 76
    invoke-virtual {p1}, Lr3/b;->l()V

    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lr3/a;->b:Lr3/s;

    iget-object v1, p0, Lr3/a;->u:[B

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, [B

    invoke-interface {v0, v1, p1}, Lr3/s;->b([BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final f()Lr3/e$a;
    .locals 2

    iget v0, p0, Lr3/a;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr3/a;->t:Lr3/e$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final g()Lq3/b;
    .locals 1

    iget-object v0, p0, Lr3/a;->s:Lq3/b;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lr3/a;->o:I

    return v0
.end method

.method public final h(Lm5/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/f<",
            "Lr3/k$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/a;->i:Lm5/g;

    .line 2
    iget-object v1, v0, Lm5/g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lm5/g;->j:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/k$a;

    .line 5
    invoke-interface {p1, v1}, Lm5/f;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Z)V
    .locals 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lr3/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lr3/a;->u:[B

    sget v1, Lm5/g0;->a:I

    .line 3
    iget v1, p0, Lr3/a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_1
    iget-object v1, p0, Lr3/a;->v:[B

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lr3/a;->u:[B

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lr3/a;->v:[B

    invoke-virtual {p0, v1, v0, p1}, Lr3/a;->n([BIZ)V

    goto/16 :goto_4

    .line 9
    :cond_2
    iget-object v1, p0, Lr3/a;->v:[B

    if-eqz v1, :cond_3

    .line 10
    :try_start_0
    iget-object v5, p0, Lr3/a;->b:Lr3/s;

    invoke-interface {v5, v0, v1}, Lr3/s;->c([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {p0, v1, v4}, Lr3/a;->k(Ljava/lang/Exception;I)V

    :goto_0
    if-eqz v2, :cond_b

    .line 12
    :cond_3
    invoke-virtual {p0, v0, v3, p1}, Lr3/a;->n([BIZ)V

    goto/16 :goto_4

    .line 13
    :cond_4
    iget-object v1, p0, Lr3/a;->v:[B

    if-nez v1, :cond_5

    .line 14
    invoke-virtual {p0, v0, v4, p1}, Lr3/a;->n([BIZ)V

    goto/16 :goto_4

    .line 15
    :cond_5
    iget v5, p0, Lr3/a;->o:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    .line 16
    :try_start_1
    iget-object v5, p0, Lr3/a;->b:Lr3/s;

    invoke-interface {v5, v0, v1}, Lr3/s;->c([B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v4

    goto :goto_1

    :catch_1
    move-exception v1

    .line 17
    invoke-virtual {p0, v1, v4}, Lr3/a;->k(Ljava/lang/Exception;I)V

    :goto_1
    if-eqz v2, :cond_b

    .line 18
    :cond_6
    sget-object v1, Ln3/i;->d:Ljava/util/UUID;

    iget-object v2, p0, Lr3/a;->m:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {p0}, Lr3/a;->p()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_2

    .line 20
    :cond_8
    new-instance v2, Landroid/util/Pair;

    const-string v4, "LicenseDurationRemaining"

    .line 21
    invoke-static {v1, v4}, Lg7/c;->c(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "PlaybackDurationRemaining"

    .line 22
    invoke-static {v1, v5}, Lg7/c;->c(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 23
    :goto_2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 25
    :goto_3
    iget v4, p0, Lr3/a;->e:I

    if-nez v4, :cond_9

    const-wide/16 v4, 0x3c

    cmp-long v4, v1, v4

    if-gtz v4, :cond_9

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v1}, Lm5/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0, v3, p1}, Lr3/a;->n([BIZ)V

    goto :goto_4

    :cond_9
    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-gtz p1, :cond_a

    .line 28
    new-instance p1, Lr3/x;

    invoke-direct {p1}, Lr3/x;-><init>()V

    invoke-virtual {p0, p1, v3}, Lr3/a;->k(Ljava/lang/Exception;I)V

    goto :goto_4

    .line 29
    :cond_a
    iput v6, p0, Lr3/a;->o:I

    .line 30
    sget-object p1, Ly0/h;->f:Ly0/h;

    invoke-virtual {p0, p1}, Lr3/a;->h(Lm5/f;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final j()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    iget v0, p0, Lr3/a;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method public final k(Ljava/lang/Exception;I)V
    .locals 7

    .line 1
    new-instance v0, Lr3/e$a;

    .line 2
    sget v1, Lm5/g0;->a:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lr3/o;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p1}, Lr3/o;->b(Ljava/lang/Throwable;)I

    move-result p2

    goto :goto_2

    :cond_0
    const/16 v2, 0x17

    const/16 v4, 0x1776

    if-lt v1, v2, :cond_1

    .line 4
    invoke-static {p1}, Lr3/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move p2, v4

    goto :goto_2

    :cond_1
    const/16 v2, 0x1772

    const/16 v5, 0x12

    if-lt v1, v5, :cond_2

    .line 5
    invoke-static {p1}, Lr3/n;->b(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move p2, v2

    goto :goto_2

    :cond_2
    if-lt v1, v5, :cond_3

    .line 6
    invoke-static {p1}, Lr3/n;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p2, 0x1777

    goto :goto_2

    .line 7
    :cond_3
    instance-of v1, p1, Lr3/a0;

    if-eqz v1, :cond_4

    const/16 p2, 0x1771

    goto :goto_2

    .line 8
    :cond_4
    instance-of v1, p1, Lr3/b$d;

    if-eqz v1, :cond_5

    const/16 p2, 0x1773

    goto :goto_2

    .line 9
    :cond_5
    instance-of v1, p1, Lr3/x;

    if-eqz v1, :cond_6

    const/16 p2, 0x1778

    goto :goto_2

    :cond_6
    if-ne p2, v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    const/16 p2, 0x1774

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    if-ne p2, v1, :cond_b

    goto :goto_1

    .line 10
    :goto_2
    invoke-direct {v0, p1, p2}, Lr3/e$a;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lr3/a;->t:Lr3/e$a;

    const-string p2, "DefaultDrmSession"

    const-string v0, "DRM session error"

    .line 11
    invoke-static {p2, v0, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object p2, p0, Lr3/a;->i:Lm5/g;

    .line 13
    iget-object v0, p2, Lm5/g;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p2, p2, Lm5/g;->j:Ljava/util/Set;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/k$a;

    .line 16
    invoke-virtual {v0, p1}, Lr3/k$a;->e(Ljava/lang/Exception;)V

    goto :goto_3

    .line 17
    :cond_9
    iget p1, p0, Lr3/a;->o:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_a

    .line 18
    iput v3, p0, Lr3/a;->o:I

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 20
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final l(Ljava/lang/Exception;Z)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lr3/a;->c:Lr3/a$a;

    check-cast p1, Lr3/b$f;

    .line 3
    iget-object p2, p1, Lr3/b$f;->a:Ljava/util/HashSet;

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p1, Lr3/b$f;->b:Lr3/a;

    if-eqz p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iput-object p0, p1, Lr3/b$f;->b:Lr3/a;

    .line 6
    invoke-virtual {p0}, Lr3/a;->o()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2}, Lr3/a;->k(Ljava/lang/Exception;I)V

    :goto_1
    return-void
.end method

.method public final m()Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr3/a;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lr3/a;->b:Lr3/s;

    invoke-interface {v0}, Lr3/s;->n()[B

    move-result-object v0

    iput-object v0, p0, Lr3/a;->u:[B

    .line 3
    iget-object v2, p0, Lr3/a;->b:Lr3/s;

    iget-object v3, p0, Lr3/a;->k:Lo3/v0;

    invoke-interface {v2, v0, v3}, Lr3/s;->i([BLo3/v0;)V

    .line 4
    iget-object v0, p0, Lr3/a;->b:Lr3/s;

    iget-object v2, p0, Lr3/a;->u:[B

    invoke-interface {v0, v2}, Lr3/s;->m([B)Lq3/b;

    move-result-object v0

    iput-object v0, p0, Lr3/a;->s:Lq3/b;

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lr3/a;->o:I

    .line 6
    iget-object v2, p0, Lr3/a;->i:Lm5/g;

    .line 7
    iget-object v3, v2, Lm5/g;->h:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v2, v2, Lm5/g;->j:Ljava/util/Set;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/k$a;

    .line 10
    invoke-virtual {v3, v0}, Lr3/k$a;->d(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lr3/a;->u:[B

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lr3/a;->k(Ljava/lang/Exception;I)V

    goto :goto_1

    .line 15
    :catch_1
    iget-object v0, p0, Lr3/a;->c:Lr3/a$a;

    check-cast v0, Lr3/b$f;

    .line 16
    iget-object v1, v0, Lr3/b$f;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, v0, Lr3/b$f;->b:Lr3/a;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    iput-object p0, v0, Lr3/b$f;->b:Lr3/a;

    .line 19
    invoke-virtual {p0}, Lr3/a;->o()V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final n([BIZ)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lr3/a;->b:Lr3/s;

    iget-object v2, p0, Lr3/a;->a:Ljava/util/List;

    iget-object v3, p0, Lr3/a;->h:Ljava/util/HashMap;

    invoke-interface {v1, p1, v2, p2, v3}, Lr3/s;->j([BLjava/util/List;ILjava/util/HashMap;)Lr3/s$a;

    move-result-object p1

    iput-object p1, p0, Lr3/a;->w:Lr3/s$a;

    .line 2
    iget-object p2, p0, Lr3/a;->r:Lr3/a$c;

    sget v1, Lm5/g0;->a:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2, v0, p1, p3}, Lr3/a$c;->a(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p0, p1, v0}, Lr3/a;->l(Ljava/lang/Exception;Z)V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/a;->b:Lr3/s;

    invoke-interface {v0}, Lr3/s;->g()Lr3/s$d;

    move-result-object v0

    iput-object v0, p0, Lr3/a;->x:Lr3/s$d;

    .line 2
    iget-object v1, p0, Lr3/a;->r:Lr3/a$c;

    sget v2, Lm5/g0;->a:I

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v0, v3}, Lr3/a$c;->a(ILjava/lang/Object;Z)V

    return-void
.end method

.method public final p()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a;->u:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr3/a;->b:Lr3/s;

    invoke-interface {v1, v0}, Lr3/s;->d([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method
