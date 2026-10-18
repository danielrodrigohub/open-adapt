.class public abstract Lu1/c;
.super Ljava/lang/Object;
.source "CancelWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final h:Ll1/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ll1/c;

    invoke-direct {v0}, Ll1/c;-><init>()V

    iput-object v0, p0, Lu1/c;->h:Ll1/c;

    return-void
.end method


# virtual methods
.method public final a(Ll1/k;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p1, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Lt1/b;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    move-object v6, v1

    check-cast v6, Lt1/q;

    invoke-virtual {v6, v3}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v7

    .line 9
    sget-object v8, Lk1/p;->j:Lk1/p;

    if-eq v7, v8, :cond_0

    sget-object v8, Lk1/p;->k:Lk1/p;

    if-eq v7, v8, :cond_0

    .line 10
    sget-object v7, Lk1/p;->m:Lk1/p;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v4

    invoke-virtual {v6, v7, v5}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 11
    :cond_0
    move-object v4, v0

    check-cast v4, Lt1/c;

    invoke-virtual {v4, v3}, Lt1/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p1, Ll1/k;->f:Ll1/d;

    .line 13
    iget-object v1, v0, Ll1/d;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v2

    sget-object v3, Ll1/d;->s:Ljava/lang/String;

    const-string v6, "Processor cancelling %s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p2, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v6, v7}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    iget-object v2, v0, Ll1/d;->p:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, v0, Ll1/d;->m:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/n;

    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    if-nez v2, :cond_3

    .line 17
    iget-object v2, v0, Ll1/d;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/n;

    .line 18
    :cond_3
    invoke-static {p2, v2}, Ll1/d;->c(Ljava/lang/String;Ll1/n;)Z

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v0}, Ll1/d;->h()V

    .line 20
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p1, Ll1/k;->e:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/e;

    .line 23
    invoke-interface {v0, p2}, Ll1/e;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract b()V
.end method

.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lu1/c;->b()V

    .line 2
    iget-object v0, p0, Lu1/c;->h:Ll1/c;

    sget-object v1, Lk1/o;->a:Lk1/o$b$c;

    invoke-virtual {v0, v1}, Ll1/c;->a(Lk1/o$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lu1/c;->h:Ll1/c;

    new-instance v2, Lk1/o$b$a;

    invoke-direct {v2, v0}, Lk1/o$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ll1/c;->a(Lk1/o$b;)V

    :goto_0
    return-void
.end method
