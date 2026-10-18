.class public abstract Lq1/c;
.super Ljava/lang/Object;
.source "ConstraintController.java"

# interfaces
.implements Lp1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp1/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Lr1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lq1/c$a;


# direct methods
.method public constructor <init>(Lr1/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq1/c;->a:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lq1/c;->c:Lr1/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq1/c;->b:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lq1/c;->d:Lq1/c$a;

    invoke-virtual {p0, v0, p1}, Lq1/c;->e(Lq1/c$a;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b(Lt1/o;)Z
.end method

.method public abstract c(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public final d(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lt1/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq1/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/o;

    .line 3
    invoke-virtual {p0, v0}, Lq1/c;->b(Lt1/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lq1/c;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Lt1/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lq1/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lq1/c;->c:Lr1/d;

    invoke-virtual {p1, p0}, Lr1/d;->b(Lp1/a;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lq1/c;->c:Lr1/d;

    .line 8
    iget-object v0, p1, Lr1/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p1, Lr1/d;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p1, Lr1/d;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 11
    invoke-virtual {p1}, Lr1/d;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lr1/d;->e:Ljava/lang/Object;

    .line 12
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v1

    sget-object v3, Lr1/d;->f:Ljava/lang/String;

    const-string v4, "%s: initial state = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p1, Lr1/d;->e:Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 14
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v4}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {p1}, Lr1/d;->d()V

    .line 16
    :cond_3
    iget-object p1, p1, Lr1/d;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lq1/c;->a(Ljava/lang/Object;)V

    .line 17
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_1
    iget-object p1, p0, Lq1/c;->d:Lq1/c$a;

    iget-object v0, p0, Lq1/c;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lq1/c;->e(Lq1/c$a;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Lq1/c$a;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/c$a;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq1/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p0, p2}, Lq1/c;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p2, p0, Lq1/c;->a:Ljava/util/ArrayList;

    check-cast p1, Lp1/d;

    .line 4
    iget-object v0, p1, Lp1/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v2}, Lp1/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v3

    sget-object v4, Lp1/d;->d:Ljava/lang/String;

    const-string v5, "Constraints met for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p1, Lp1/d;->a:Lp1/c;

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {p1, v1}, Lp1/c;->e(Ljava/util/List;)V

    .line 12
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_5
    :goto_1
    iget-object p2, p0, Lq1/c;->a:Ljava/util/ArrayList;

    check-cast p1, Lp1/d;

    .line 14
    iget-object v0, p1, Lp1/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_1
    iget-object p1, p1, Lp1/d;->a:Lp1/c;

    if-eqz p1, :cond_6

    .line 16
    invoke-interface {p1, p2}, Lp1/c;->c(Ljava/util/List;)V

    .line 17
    :cond_6
    monitor-exit v0

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_7
    :goto_3
    return-void
.end method
