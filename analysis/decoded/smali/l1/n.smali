.class public final Ll1/n;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/n$a;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String;


# instance fields
.field public h:Landroid/content/Context;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll1/e;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroidx/work/WorkerParameters$a;

.field public l:Lt1/o;

.field public m:Landroidx/work/ListenableWorker;

.field public n:Lw1/a;

.field public o:Landroidx/work/ListenableWorker$a;

.field public p:Landroidx/work/a;

.field public q:Ls1/a;

.field public r:Landroidx/work/impl/WorkDatabase;

.field public s:Lt1/p;

.field public t:Lt1/b;

.field public u:Lt1/s;

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/lang/String;

.field public x:Lv1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lx6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ll1/n;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ll1/n$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 3
    iput-object v0, p0, Ll1/n;->o:Landroidx/work/ListenableWorker$a;

    .line 4
    new-instance v0, Lv1/c;

    invoke-direct {v0}, Lv1/c;-><init>()V

    .line 5
    iput-object v0, p0, Ll1/n;->x:Lv1/c;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ll1/n;->y:Lx6/a;

    .line 7
    iget-object v1, p1, Ll1/n$a;->a:Landroid/content/Context;

    iput-object v1, p0, Ll1/n;->h:Landroid/content/Context;

    .line 8
    iget-object v1, p1, Ll1/n$a;->c:Lw1/a;

    iput-object v1, p0, Ll1/n;->n:Lw1/a;

    .line 9
    iget-object v1, p1, Ll1/n$a;->b:Ls1/a;

    iput-object v1, p0, Ll1/n;->q:Ls1/a;

    .line 10
    iget-object v1, p1, Ll1/n$a;->f:Ljava/lang/String;

    iput-object v1, p0, Ll1/n;->i:Ljava/lang/String;

    .line 11
    iget-object v1, p1, Ll1/n$a;->g:Ljava/util/List;

    iput-object v1, p0, Ll1/n;->j:Ljava/util/List;

    .line 12
    iget-object v1, p1, Ll1/n$a;->h:Landroidx/work/WorkerParameters$a;

    iput-object v1, p0, Ll1/n;->k:Landroidx/work/WorkerParameters$a;

    .line 13
    iput-object v0, p0, Ll1/n;->m:Landroidx/work/ListenableWorker;

    .line 14
    iget-object v0, p1, Ll1/n$a;->d:Landroidx/work/a;

    iput-object v0, p0, Ll1/n;->p:Landroidx/work/a;

    .line 15
    iget-object p1, p1, Ll1/n$a;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object p1

    iput-object p1, p0, Ll1/n;->s:Lt1/p;

    .line 17
    iget-object p1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->r()Lt1/b;

    move-result-object p1

    iput-object p1, p0, Ll1/n;->t:Lt1/b;

    .line 18
    iget-object p1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->x()Lt1/s;

    move-result-object p1

    iput-object p1, p0, Ll1/n;->u:Lt1/s;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/ListenableWorker$a;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object p1

    sget-object v0, Ll1/n;->A:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Ll1/n;->w:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Worker result SUCCESS for %s"

    .line 3
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1, v0, v3, v4}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Ll1/n;->l:Lt1/o;

    invoke-virtual {p1}, Lt1/o;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Ll1/n;->e()V

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 8
    :try_start_0
    iget-object p1, p0, Ll1/n;->s:Lt1/p;

    sget-object v0, Lk1/p;->j:Lk1/p;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Ll1/n;->i:Ljava/lang/String;

    aput-object v4, v3, v2

    check-cast p1, Lt1/q;

    invoke-virtual {p1, v0, v3}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Ll1/n;->o:Landroidx/work/ListenableWorker$a;

    check-cast p1, Landroidx/work/ListenableWorker$a$c;

    .line 10
    iget-object p1, p1, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/b;

    .line 11
    iget-object v0, p0, Ll1/n;->s:Lt1/p;

    iget-object v3, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v3, p1}, Lt1/q;->m(Ljava/lang/String;Landroidx/work/b;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13
    iget-object p1, p0, Ll1/n;->t:Lt1/b;

    iget-object v0, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast p1, Lt1/c;

    invoke-virtual {p1, v0}, Lt1/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    iget-object v5, p0, Ll1/n;->s:Lt1/p;

    check-cast v5, Lt1/q;

    invoke-virtual {v5, v0}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v5

    sget-object v6, Lk1/p;->l:Lk1/p;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Ll1/n;->t:Lt1/b;

    .line 16
    check-cast v5, Lt1/c;

    invoke-virtual {v5, v0}, Lt1/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v5

    sget-object v6, Ll1/n;->A:Ljava/lang/String;

    const-string v7, "Setting status to enqueued for %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    .line 18
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Throwable;

    .line 19
    invoke-virtual {v5, v6, v7, v8}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 20
    iget-object v5, p0, Ll1/n;->s:Lt1/p;

    sget-object v6, Lk1/p;->h:Lk1/p;

    new-array v7, v1, [Ljava/lang/String;

    aput-object v0, v7, v2

    check-cast v5, Lt1/q;

    invoke-virtual {v5, v6, v7}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 21
    iget-object v5, p0, Ll1/n;->s:Lt1/p;

    check-cast v5, Lt1/q;

    invoke-virtual {v5, v0, v3, v4}, Lt1/q;->n(Ljava/lang/String;J)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 24
    invoke-virtual {p1}, Ly0/d0;->l()V

    .line 25
    invoke-virtual {p0, v2}, Ll1/n;->f(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 26
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 27
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 28
    invoke-virtual {p0, v2}, Ll1/n;->f(Z)V

    .line 29
    throw p1

    .line 30
    :cond_3
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_4

    .line 31
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object p1

    sget-object v0, Ll1/n;->A:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ll1/n;->w:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 32
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 34
    invoke-virtual {p0}, Ll1/n;->d()V

    goto :goto_1

    .line 35
    :cond_4
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object p1

    sget-object v0, Ll1/n;->A:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ll1/n;->w:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 36
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Lk1/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 38
    iget-object p1, p0, Ll1/n;->l:Lt1/o;

    invoke-virtual {p1}, Lt1/o;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 39
    invoke-virtual {p0}, Ll1/n;->e()V

    goto :goto_1

    .line 40
    :cond_5
    invoke-virtual {p0}, Ll1/n;->h()V

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    check-cast v1, Lt1/q;

    invoke-virtual {v1, p1}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v1

    sget-object v2, Lk1/p;->m:Lk1/p;

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    sget-object v2, Lk1/p;->k:Lk1/p;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v2, v3}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Ll1/n;->t:Lt1/b;

    check-cast v1, Lt1/c;

    invoke-virtual {v1, p1}, Lt1/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ll1/n;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Ll1/n;->s:Lt1/p;

    iget-object v1, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v1}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->v()Lt1/m;

    move-result-object v1

    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v1, Lt1/n;

    invoke-virtual {v1, v2}, Lt1/n;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ll1/n;->f(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lk1/p;->i:Lk1/p;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Ll1/n;->o:Landroidx/work/ListenableWorker$a;

    invoke-virtual {p0, v0}, Ll1/n;->a(Landroidx/work/ListenableWorker$a;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lk1/p;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Ll1/n;->d()V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 12
    invoke-virtual {v0}, Ly0/d0;->l()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 14
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 15
    throw v0

    .line 16
    :cond_3
    :goto_1
    iget-object v0, p0, Ll1/n;->j:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/e;

    .line 18
    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Ll1/e;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v0, p0, Ll1/n;->p:Landroidx/work/a;

    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Ll1/n;->j:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ll1/f;->a(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->c()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    sget-object v2, Lk1/p;->h:Lk1/p;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Ll1/n;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v2, v3}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v2, v3, v4}, Lt1/q;->n(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v2, v3, v4}, Lt1/q;->k(Ljava/lang/String;J)I

    .line 5
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 7
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 8
    invoke-virtual {p0, v0}, Ll1/n;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 10
    invoke-virtual {v2}, Ly0/d0;->l()V

    .line 11
    invoke-virtual {p0, v0}, Ll1/n;->f(Z)V

    .line 12
    throw v1
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v2, v3, v4}, Lt1/q;->n(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    sget-object v2, Lk1/p;->h:Lk1/p;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Ll1/n;->i:Ljava/lang/String;

    aput-object v4, v3, v0

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v2, v3}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v2}, Lt1/q;->l(Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v2, v3, v4}, Lt1/q;->k(Ljava/lang/String;J)I

    .line 6
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 8
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 9
    invoke-virtual {p0, v0}, Ll1/n;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    iget-object v2, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 11
    invoke-virtual {v2}, Ly0/d0;->l()V

    .line 12
    invoke-virtual {p0, v0}, Ll1/n;->f(Z)V

    .line 13
    throw v1
.end method

.method public final f(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v0

    check-cast v0, Lt1/q;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v3}, Ly0/d0;->b()V

    .line 5
    iget-object v0, v0, Lt1/q;->a:Ly0/d0;

    .line 6
    invoke-virtual {v0, v1}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    .line 9
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v1}, Ly0/f0;->g0()V

    if-nez v3, :cond_1

    .line 11
    iget-object v0, p0, Ll1/n;->h:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v1, v2}, Lu1/f;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p0, Ll1/n;->s:Lt1/p;

    sget-object v1, Lk1/p;->h:Lk1/p;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Ll1/n;->i:Ljava/lang/String;

    aput-object v4, v3, v2

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v1, v3}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Ll1/n;->s:Lt1/p;

    iget-object v1, p0, Ll1/n;->i:Ljava/lang/String;

    const-wide/16 v2, -0x1

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v1, v2, v3}, Lt1/q;->k(Ljava/lang/String;J)I

    .line 14
    :cond_2
    iget-object v0, p0, Ll1/n;->l:Lt1/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ll1/n;->m:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Ll1/n;->q:Ls1/a;

    iget-object v1, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v0, Ll1/d;

    .line 16
    iget-object v2, v0, Ll1/d;->r:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :try_start_3
    iget-object v3, v0, Ll1/d;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0}, Ll1/d;->h()V

    .line 19
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->p()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 22
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 23
    iget-object v0, p0, Ll1/n;->x:Lv1/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv1/c;->j(Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception p1

    .line 24
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 25
    invoke-virtual {v1}, Ly0/f0;->g0()V

    .line 26
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 27
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 28
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 29
    throw p1
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Ll1/n;->s:Lt1/p;

    iget-object v1, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v1}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v0

    .line 2
    sget-object v1, Lk1/p;->i:Lk1/p;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Ll1/n;->A:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Ll1/n;->i:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, v2}, Ll1/n;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v1

    sget-object v4, Ll1/n;->A:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Ll1/n;->i:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v3}, Ll1/n;->f(Z)V

    :goto_0
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ll1/n;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ll1/n;->b(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Ll1/n;->o:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4
    iget-object v1, v1, Landroidx/work/ListenableWorker$a$a;->a:Landroidx/work/b;

    .line 5
    iget-object v2, p0, Ll1/n;->s:Lt1/p;

    iget-object v3, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v2, Lt1/q;

    invoke-virtual {v2, v3, v1}, Lt1/q;->m(Ljava/lang/String;Landroidx/work/b;)V

    .line 6
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 8
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 9
    invoke-virtual {p0, v0}, Ll1/n;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    iget-object v2, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 11
    invoke-virtual {v2}, Ly0/d0;->l()V

    .line 12
    invoke-virtual {p0, v0}, Ll1/n;->f(Z)V

    .line 13
    throw v1
.end method

.method public final i()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Ll1/n;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v2, Ll1/n;->A:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Ll1/n;->w:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Ll1/n;->s:Lt1/p;

    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v2}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ll1/n;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lk1/p;->b()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ll1/n;->f(Z)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method

.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Ll1/n;->u:Lt1/s;

    iget-object v1, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v0, Lt1/t;

    invoke-virtual {v0, v1}, Lt1/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Ll1/n;->v:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ll1/n;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tags={ "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    const-string v5, ", "

    .line 6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Ll1/n;->w:Ljava/lang/String;

    .line 11
    sget-object v0, Lk1/p;->h:Lk1/p;

    invoke-virtual {p0}, Ll1/n;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_b

    .line 12
    :cond_2
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ly0/d0;->c()V

    .line 13
    :try_start_0
    iget-object v1, p0, Ll1/n;->s:Lt1/p;

    iget-object v3, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v3}, Lt1/q;->h(Ljava/lang/String;)Lt1/o;

    move-result-object v1

    iput-object v1, p0, Ll1/n;->l:Lt1/o;

    if-nez v1, :cond_3

    .line 14
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Ll1/n;->A:Ljava/lang/String;

    const-string v3, "Didn\'t find WorkSpec for id %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ll1/n;->i:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 15
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lk1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p0, v5}, Ll1/n;->f(Z)V

    .line 18
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->p()V

    goto/16 :goto_4

    .line 19
    :cond_3
    iget-object v3, v1, Lt1/o;->b:Lk1/p;

    if-eq v3, v0, :cond_4

    .line 20
    invoke-virtual {p0}, Ll1/n;->g()V

    .line 21
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->p()V

    .line 22
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Ll1/n;->A:Ljava/lang/String;

    const-string v3, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ll1/n;->l:Lt1/o;

    iget-object v4, v4, Lt1/o;->c:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 23
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_4

    .line 25
    :cond_4
    invoke-virtual {v1}, Lt1/o;->c()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Ll1/n;->l:Lt1/o;

    .line 26
    iget-object v3, v1, Lt1/o;->b:Lk1/p;

    if-ne v3, v0, :cond_5

    iget v1, v1, Lt1/o;->k:I

    if-lez v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v5

    :goto_2
    if-eqz v1, :cond_8

    .line 27
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 28
    iget-object v1, p0, Ll1/n;->l:Lt1/o;

    iget-wide v6, v1, Lt1/o;->n:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    move v6, v2

    goto :goto_3

    :cond_7
    move v6, v5

    :goto_3
    if-nez v6, :cond_8

    .line 29
    invoke-virtual {v1}, Lt1/o;->a()J

    move-result-wide v6

    cmp-long v1, v3, v6

    if-gez v1, :cond_8

    .line 30
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Ll1/n;->A:Ljava/lang/String;

    const-string v3, "Delaying execution for %s because it is being executed before schedule."

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Ll1/n;->l:Lt1/o;

    iget-object v6, v6, Lt1/o;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 31
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 32
    invoke-virtual {v0, v1, v3, v4}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 33
    invoke-virtual {p0, v2}, Ll1/n;->f(Z)V

    .line 34
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    :goto_4
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 36
    invoke-virtual {v0}, Ly0/d0;->l()V

    goto/16 :goto_b

    .line 37
    :cond_8
    :try_start_1
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 38
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 39
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 40
    iget-object v1, p0, Ll1/n;->l:Lt1/o;

    invoke-virtual {v1}, Lt1/o;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    iget-object v1, p0, Ll1/n;->l:Lt1/o;

    iget-object v1, v1, Lt1/o;->e:Landroidx/work/b;

    :goto_5
    move-object v8, v1

    goto/16 :goto_9

    .line 42
    :cond_9
    iget-object v1, p0, Ll1/n;->p:Landroidx/work/a;

    .line 43
    iget-object v1, v1, Landroidx/work/a;->d:Lk1/i;

    .line 44
    iget-object v3, p0, Ll1/n;->l:Lt1/o;

    iget-object v3, v3, Lt1/o;->d:Ljava/lang/String;

    .line 45
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lk1/h;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    :try_start_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk1/h;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v4

    goto :goto_6

    :catch_0
    move-exception v4

    .line 49
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v6

    sget-object v7, Lk1/h;->a:Ljava/lang/String;

    const-string v8, "Trouble instantiating + "

    .line 50
    invoke-static {v8, v3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Throwable;

    aput-object v4, v8, v5

    .line 51
    invoke-virtual {v6, v7, v3, v8}, Lk1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_6
    if-nez v1, :cond_a

    .line 52
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Ll1/n;->A:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ll1/n;->l:Lt1/o;

    iget-object v3, v3, Lt1/o;->d:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Could not create Input Merger %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lk1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 53
    invoke-virtual {p0}, Ll1/n;->h()V

    goto/16 :goto_b

    .line 54
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v4, p0, Ll1/n;->l:Lt1/o;

    iget-object v4, v4, Lt1/o;->e:Landroidx/work/b;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v4, p0, Ll1/n;->s:Lt1/p;

    iget-object v6, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v4, Lt1/q;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 57
    invoke-static {v7, v2}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v7

    if-nez v6, :cond_b

    .line 58
    invoke-virtual {v7, v2}, Ly0/f0;->t(I)V

    goto :goto_7

    .line 59
    :cond_b
    invoke-virtual {v7, v2, v6}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 60
    :goto_7
    iget-object v6, v4, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v6}, Ly0/d0;->b()V

    .line 61
    iget-object v4, v4, Lt1/q;->a:Ly0/d0;

    .line 62
    invoke-virtual {v4, v7}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v4

    .line 63
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 65
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 66
    invoke-static {v8}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v8

    .line 67
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    .line 68
    :cond_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 69
    invoke-virtual {v7}, Ly0/f0;->g0()V

    .line 70
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {v1, v3}, Lk1/h;->a(Ljava/util/List;)Landroidx/work/b;

    move-result-object v1

    goto/16 :goto_5

    .line 72
    :goto_9
    new-instance v1, Landroidx/work/WorkerParameters;

    iget-object v3, p0, Ll1/n;->i:Ljava/lang/String;

    .line 73
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    iget-object v9, p0, Ll1/n;->v:Ljava/util/ArrayList;

    iget-object v3, p0, Ll1/n;->l:Lt1/o;

    iget v3, v3, Lt1/o;->k:I

    iget-object v3, p0, Ll1/n;->p:Landroidx/work/a;

    .line 74
    iget-object v10, v3, Landroidx/work/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 75
    iget-object v11, p0, Ll1/n;->n:Lw1/a;

    .line 76
    iget-object v12, v3, Landroidx/work/a;->c:Lk1/t;

    .line 77
    new-instance v3, Lu1/p;

    new-instance v13, Lu1/o;

    iget-object v3, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    iget-object v4, p0, Ll1/n;->q:Ls1/a;

    iget-object v6, p0, Ll1/n;->n:Lw1/a;

    invoke-direct {v13, v3, v4, v6}, Lu1/o;-><init>(Landroidx/work/impl/WorkDatabase;Ls1/a;Lw1/a;)V

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Ljava/util/concurrent/Executor;Lw1/a;Lk1/t;Lk1/g;)V

    .line 78
    iget-object v3, p0, Ll1/n;->m:Landroidx/work/ListenableWorker;

    if-nez v3, :cond_d

    .line 79
    iget-object v3, p0, Ll1/n;->p:Landroidx/work/a;

    .line 80
    iget-object v3, v3, Landroidx/work/a;->c:Lk1/t;

    .line 81
    iget-object v4, p0, Ll1/n;->h:Landroid/content/Context;

    iget-object v6, p0, Ll1/n;->l:Lt1/o;

    iget-object v6, v6, Lt1/o;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v1}, Lk1/t;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v3

    iput-object v3, p0, Ll1/n;->m:Landroidx/work/ListenableWorker;

    .line 82
    :cond_d
    iget-object v3, p0, Ll1/n;->m:Landroidx/work/ListenableWorker;

    if-nez v3, :cond_e

    .line 83
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Ll1/n;->A:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ll1/n;->l:Lt1/o;

    iget-object v3, v3, Lt1/o;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Could not create Worker %s"

    .line 84
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Lk1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {p0}, Ll1/n;->h()V

    goto/16 :goto_b

    .line 87
    :cond_e
    iget-boolean v4, v3, Landroidx/work/ListenableWorker;->k:Z

    if-eqz v4, :cond_f

    .line 88
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Ll1/n;->A:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ll1/n;->l:Lt1/o;

    iget-object v3, v3, Lt1/o;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 89
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 90
    invoke-virtual {v0, v1, v2, v3}, Lk1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 91
    invoke-virtual {p0}, Ll1/n;->h()V

    goto/16 :goto_b

    .line 92
    :cond_f
    iput-boolean v2, v3, Landroidx/work/ListenableWorker;->k:Z

    .line 93
    iget-object v3, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Ly0/d0;->c()V

    .line 94
    :try_start_4
    iget-object v3, p0, Ll1/n;->s:Lt1/p;

    iget-object v4, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v3, Lt1/q;

    invoke-virtual {v3, v4}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v3

    if-ne v3, v0, :cond_10

    .line 95
    iget-object v0, p0, Ll1/n;->s:Lt1/p;

    sget-object v3, Lk1/p;->i:Lk1/p;

    new-array v4, v2, [Ljava/lang/String;

    iget-object v6, p0, Ll1/n;->i:Ljava/lang/String;

    aput-object v6, v4, v5

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v3, v4}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Ll1/n;->s:Lt1/p;

    iget-object v3, p0, Ll1/n;->i:Ljava/lang/String;

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v3}, Lt1/q;->j(Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    move v2, v5

    .line 97
    :goto_a
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ly0/d0;->p()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    iget-object v0, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 99
    invoke-virtual {v0}, Ly0/d0;->l()V

    if-eqz v2, :cond_12

    .line 100
    invoke-virtual {p0}, Ll1/n;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    .line 101
    :cond_11
    new-instance v0, Lv1/c;

    invoke-direct {v0}, Lv1/c;-><init>()V

    .line 102
    new-instance v8, Lu1/m;

    iget-object v3, p0, Ll1/n;->h:Landroid/content/Context;

    iget-object v4, p0, Ll1/n;->l:Lt1/o;

    iget-object v5, p0, Ll1/n;->m:Landroidx/work/ListenableWorker;

    .line 103
    iget-object v6, v1, Landroidx/work/WorkerParameters;->f:Lk1/g;

    .line 104
    iget-object v7, p0, Ll1/n;->n:Lw1/a;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lu1/m;-><init>(Landroid/content/Context;Lt1/o;Landroidx/work/ListenableWorker;Lk1/g;Lw1/a;)V

    .line 105
    iget-object v1, p0, Ll1/n;->n:Lw1/a;

    check-cast v1, Lw1/b;

    .line 106
    iget-object v1, v1, Lw1/b;->c:Lw1/b$a;

    .line 107
    invoke-virtual {v1, v8}, Lw1/b$a;->execute(Ljava/lang/Runnable;)V

    .line 108
    iget-object v1, v8, Lu1/m;->h:Lv1/c;

    .line 109
    new-instance v2, Ll1/l;

    invoke-direct {v2, p0, v1, v0}, Ll1/l;-><init>(Ll1/n;Lx6/a;Lv1/c;)V

    iget-object v3, p0, Ll1/n;->n:Lw1/a;

    .line 110
    check-cast v3, Lw1/b;

    .line 111
    iget-object v3, v3, Lw1/b;->c:Lw1/b$a;

    .line 112
    invoke-virtual {v1, v2, v3}, Lv1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 113
    iget-object v1, p0, Ll1/n;->w:Ljava/lang/String;

    .line 114
    new-instance v2, Ll1/m;

    invoke-direct {v2, p0, v0, v1}, Ll1/m;-><init>(Ll1/n;Lv1/c;Ljava/lang/String;)V

    iget-object v1, p0, Ll1/n;->n:Lw1/a;

    .line 115
    check-cast v1, Lw1/b;

    .line 116
    iget-object v1, v1, Lw1/b;->a:Lu1/i;

    .line 117
    invoke-virtual {v0, v2, v1}, Lv1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_b

    .line 118
    :cond_12
    invoke-virtual {p0}, Ll1/n;->g()V

    :goto_b
    return-void

    :catchall_0
    move-exception v0

    .line 119
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 120
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 121
    throw v0

    :catchall_1
    move-exception v0

    .line 122
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 123
    invoke-virtual {v7}, Ly0/f0;->g0()V

    .line 124
    throw v0

    :catchall_2
    move-exception v0

    .line 125
    iget-object v1, p0, Ll1/n;->r:Landroidx/work/impl/WorkDatabase;

    .line 126
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 127
    throw v0
.end method
