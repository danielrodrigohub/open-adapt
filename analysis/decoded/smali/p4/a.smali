.class public abstract Lp4/a;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lp4/x;


# instance fields
.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp4/x$c;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lp4/x$c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lp4/e0$a;

.field public final k:Lr3/k$a;

.field public l:Landroid/os/Looper;

.field public m:Ln3/b2;

.field public n:Lo3/v0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lp4/a;->h:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lp4/a;->i:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lp4/e0$a;

    invoke-direct {v0}, Lp4/e0$a;-><init>()V

    iput-object v0, p0, Lp4/a;->j:Lp4/e0$a;

    .line 5
    new-instance v0, Lr3/k$a;

    invoke-direct {v0}, Lr3/k$a;-><init>()V

    iput-object v0, p0, Lp4/a;->k:Lr3/k$a;

    return-void
.end method


# virtual methods
.method public final c(Lp4/x$c;Ll5/j0;Lo3/v0;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lp4/a;->l:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lm5/a;->a(Z)V

    .line 3
    iput-object p3, p0, Lp4/a;->n:Lo3/v0;

    .line 4
    iget-object p3, p0, Lp4/a;->m:Ln3/b2;

    .line 5
    iget-object v1, p0, Lp4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lp4/a;->l:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 7
    iput-object v0, p0, Lp4/a;->l:Landroid/os/Looper;

    .line 8
    iget-object p3, p0, Lp4/a;->i:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p2}, Lp4/a;->v(Ll5/j0;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Lp4/a;->o(Lp4/x$c;)V

    .line 11
    invoke-interface {p1, p0, p3}, Lp4/x$c;->a(Lp4/x;Ln3/b2;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final f(Landroid/os/Handler;Lp4/e0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/a;->j:Lp4/e0$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lp4/e0$a$a;

    invoke-direct {v1, p1, p2}, Lp4/e0$a$a;-><init>(Landroid/os/Handler;Lp4/e0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Lp4/x$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lp4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lp4/a;->l:Landroid/os/Looper;

    .line 4
    iput-object p1, p0, Lp4/a;->m:Ln3/b2;

    .line 5
    iput-object p1, p0, Lp4/a;->n:Lo3/v0;

    .line 6
    iget-object p1, p0, Lp4/a;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 7
    invoke-virtual {p0}, Lp4/a;->x()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lp4/a;->l(Lp4/x$c;)V

    :goto_0
    return-void
.end method

.method public final j(Lp4/e0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/a;->j:Lp4/e0$a;

    .line 2
    iget-object v1, v0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp4/e0$a$a;

    .line 3
    iget-object v3, v2, Lp4/e0$a$a;->b:Lp4/e0;

    if-ne v3, p1, :cond_0

    .line 4
    iget-object v3, v0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l(Lp4/x$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/a;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lp4/a;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lp4/a;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lp4/a;->t()V

    :cond_0
    return-void
.end method

.method public final n(Lr3/k;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/a;->k:Lr3/k$a;

    .line 2
    iget-object v1, v0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/k$a$a;

    .line 3
    iget-object v3, v2, Lr3/k$a$a;->b:Lr3/k;

    if-ne v3, p1, :cond_0

    .line 4
    iget-object v3, v0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(Lp4/x$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/a;->l:Landroid/os/Looper;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp4/a;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lp4/a;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lp4/a;->u()V

    :cond_0
    return-void
.end method

.method public final p(Landroid/os/Handler;Lr3/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/a;->k:Lr3/k$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lr3/k$a$a;

    invoke-direct {v1, p1, p2}, Lr3/k$a$a;-><init>(Landroid/os/Handler;Lr3/k;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Lp4/x$b;)Lr3/k$a;
    .locals 2

    iget-object v0, p0, Lp4/a;->k:Lr3/k$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lr3/k$a;->g(ILp4/x$b;)Lr3/k$a;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lp4/x$b;)Lp4/e0$a;
    .locals 4

    iget-object v0, p0, Lp4/a;->j:Lp4/e0$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lp4/e0$a;->r(ILp4/x$b;J)Lp4/e0$a;

    move-result-object p1

    return-object p1
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public abstract v(Ll5/j0;)V
.end method

.method public final w(Ln3/b2;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lp4/a;->m:Ln3/b2;

    .line 2
    iget-object v0, p0, Lp4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/x$c;

    .line 3
    invoke-interface {v1, p0, p1}, Lp4/x$c;->a(Lp4/x;Ln3/b2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract x()V
.end method
