.class public final Ln3/h1;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/h1$a;,
        Ln3/h1$b;,
        Ln3/h1$c;,
        Ln3/h1$d;
    }
.end annotation


# instance fields
.field public final a:Lo3/v0;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/h1$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lp4/v;",
            "Ln3/h1$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ln3/h1$c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln3/h1$d;

.field public final f:Lp4/e0$a;

.field public final g:Lr3/k$a;

.field public final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ln3/h1$c;",
            "Ln3/h1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/h1$c;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lp4/o0;

.field public k:Z

.field public l:Ll5/j0;


# direct methods
.method public constructor <init>(Ln3/h1$d;Lo3/a;Landroid/os/Handler;Lo3/v0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Ln3/h1;->a:Lo3/v0;

    .line 3
    iput-object p1, p0, Ln3/h1;->e:Ln3/h1$d;

    .line 4
    new-instance p1, Lp4/o0$a;

    .line 5
    new-instance p4, Ljava/util/Random;

    invoke-direct {p4}, Ljava/util/Random;-><init>()V

    invoke-direct {p1, p4}, Lp4/o0$a;-><init>(Ljava/util/Random;)V

    .line 6
    iput-object p1, p0, Ln3/h1;->j:Lp4/o0;

    .line 7
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Ln3/h1;->c:Ljava/util/IdentityHashMap;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln3/h1;->d:Ljava/util/HashMap;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Lp4/e0$a;

    invoke-direct {p1}, Lp4/e0$a;-><init>()V

    iput-object p1, p0, Ln3/h1;->f:Lp4/e0$a;

    .line 11
    new-instance p4, Lr3/k$a;

    invoke-direct {p4}, Lr3/k$a;-><init>()V

    iput-object p4, p0, Ln3/h1;->g:Lr3/k$a;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/h1;->h:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/h1;->i:Ljava/util/HashSet;

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lp4/e0$a$a;

    invoke-direct {v0, p3, p2}, Lp4/e0$a$a;-><init>(Landroid/os/Handler;Lp4/e0;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p4, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p4, Lr3/k$a$a;

    invoke-direct {p4, p3, p2}, Lr3/k$a$a;-><init>(Landroid/os/Handler;Lr3/k;)V

    invoke-virtual {p1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;Lp4/o0;)Ln3/b2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ln3/h1$c;",
            ">;",
            "Lp4/o0;",
            ")",
            "Ln3/b2;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iput-object p3, p0, Ln3/h1;->j:Lp4/o0;

    move p3, p1

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h1$c;

    const/4 v1, 0x0

    if-lez p3, :cond_0

    .line 5
    iget-object v2, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/h1$c;

    .line 6
    iget-object v3, v2, Ln3/h1$c;->a:Lp4/t;

    .line 7
    iget-object v3, v3, Lp4/t;->v:Lp4/t$a;

    .line 8
    iget v2, v2, Ln3/h1$c;->d:I

    .line 9
    invoke-virtual {v3}, Lp4/p;->r()I

    move-result v3

    add-int/2addr v3, v2

    .line 10
    iput v3, v0, Ln3/h1$c;->d:I

    .line 11
    iput-boolean v1, v0, Ln3/h1$c;->e:Z

    .line 12
    iget-object v1, v0, Ln3/h1$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 13
    :cond_0
    iput v1, v0, Ln3/h1$c;->d:I

    .line 14
    iput-boolean v1, v0, Ln3/h1$c;->e:Z

    .line 15
    iget-object v1, v0, Ln3/h1$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 16
    :goto_1
    iget-object v1, v0, Ln3/h1$c;->a:Lp4/t;

    .line 17
    iget-object v1, v1, Lp4/t;->v:Lp4/t$a;

    .line 18
    invoke-virtual {v1}, Lp4/p;->r()I

    move-result v1

    .line 19
    invoke-virtual {p0, p3, v1}, Ln3/h1;->b(II)V

    .line 20
    iget-object v1, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 21
    iget-object v1, p0, Ln3/h1;->d:Ljava/util/HashMap;

    iget-object v2, v0, Ln3/h1$c;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-boolean v1, p0, Ln3/h1;->k:Z

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p0, v0}, Ln3/h1;->g(Ln3/h1$c;)V

    .line 24
    iget-object v1, p0, Ln3/h1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Ln3/h1;->i:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_1
    iget-object v1, p0, Ln3/h1;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h1$b;

    if-eqz v0, :cond_2

    .line 27
    iget-object v1, v0, Ln3/h1$b;->a:Lp4/x;

    iget-object v0, v0, Ln3/h1$b;->b:Lp4/x$c;

    invoke-interface {v1, v0}, Lp4/x;->l(Lp4/x$c;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p0}, Ln3/h1;->c()Ln3/b2;

    move-result-object p1

    return-object p1
.end method

.method public final b(II)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h1$c;

    .line 3
    iget v1, v0, Ln3/h1$c;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Ln3/h1$c;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Ln3/b2;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ln3/b2;->h:Ln3/b2$a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/h1$c;

    .line 5
    iput v1, v2, Ln3/h1$c;->d:I

    .line 6
    iget-object v2, v2, Ln3/h1$c;->a:Lp4/t;

    .line 7
    iget-object v2, v2, Lp4/t;->v:Lp4/t$a;

    .line 8
    invoke-virtual {v2}, Lp4/p;->r()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ln3/q1;

    iget-object v1, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Ln3/h1;->j:Lp4/o0;

    invoke-direct {v0, v1, v2}, Ln3/q1;-><init>(Ljava/util/Collection;Lp4/o0;)V

    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/h1;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/h1$c;

    .line 4
    iget-object v2, v1, Ln3/h1$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Ln3/h1;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/h1$b;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v1, Ln3/h1$b;->a:Lp4/x;

    iget-object v1, v1, Ln3/h1$b;->b:Lp4/x$c;

    invoke-interface {v2, v1}, Lp4/x;->l(Lp4/x$c;)V

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final f(Ln3/h1$c;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Ln3/h1$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Ln3/h1$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/h1;->h:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h1$b;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Ln3/h1$b;->a:Lp4/x;

    iget-object v2, v0, Ln3/h1$b;->b:Lp4/x$c;

    invoke-interface {v1, v2}, Lp4/x;->g(Lp4/x$c;)V

    .line 6
    iget-object v1, v0, Ln3/h1$b;->a:Lp4/x;

    iget-object v2, v0, Ln3/h1$b;->c:Ln3/h1$a;

    invoke-interface {v1, v2}, Lp4/x;->j(Lp4/e0;)V

    .line 7
    iget-object v1, v0, Ln3/h1$b;->a:Lp4/x;

    iget-object v0, v0, Ln3/h1$b;->c:Ln3/h1$a;

    invoke-interface {v1, v0}, Lp4/x;->n(Lr3/k;)V

    .line 8
    iget-object v0, p0, Ln3/h1;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final g(Ln3/h1$c;)V
    .locals 5

    .line 1
    iget-object v0, p1, Ln3/h1$c;->a:Lp4/t;

    .line 2
    new-instance v1, Ln3/g1;

    invoke-direct {v1, p0}, Ln3/g1;-><init>(Ln3/h1;)V

    .line 3
    new-instance v2, Ln3/h1$a;

    invoke-direct {v2, p0, p1}, Ln3/h1$a;-><init>(Ln3/h1;Ln3/h1$c;)V

    .line 4
    iget-object v3, p0, Ln3/h1;->h:Ljava/util/HashMap;

    new-instance v4, Ln3/h1$b;

    invoke-direct {v4, v0, v1, v2}, Ln3/h1$b;-><init>(Lp4/x;Lp4/x$c;Ln3/h1$a;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lm5/g0;->t()Landroid/os/Looper;

    move-result-object p1

    .line 6
    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    invoke-virtual {v0, v3, v2}, Lp4/a;->f(Landroid/os/Handler;Lp4/e0;)V

    .line 8
    invoke-static {}, Lm5/g0;->t()Landroid/os/Looper;

    move-result-object p1

    .line 9
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 10
    invoke-virtual {v0, v3, v2}, Lp4/a;->p(Landroid/os/Handler;Lr3/k;)V

    .line 11
    iget-object p1, p0, Ln3/h1;->l:Ll5/j0;

    iget-object v2, p0, Ln3/h1;->a:Lo3/v0;

    invoke-virtual {v0, v1, p1, v2}, Lp4/a;->c(Lp4/x$c;Ll5/j0;Lo3/v0;)V

    return-void
.end method

.method public final h(Lp4/v;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h1;->c:Ljava/util/IdentityHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h1$c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Ln3/h1$c;->a:Lp4/t;

    invoke-virtual {v1, p1}, Lp4/t;->d(Lp4/v;)V

    .line 5
    iget-object v1, v0, Ln3/h1$c;->c:Ljava/util/ArrayList;

    check-cast p1, Lp4/s;

    iget-object p1, p1, Lp4/s;->h:Lp4/x$b;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Ln3/h1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Ln3/h1;->d()V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Ln3/h1;->f(Ln3/h1$c;)V

    return-void
.end method

.method public final i(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    .line 1
    iget-object v1, p0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/h1$c;

    .line 2
    iget-object v2, p0, Ln3/h1;->d:Ljava/util/HashMap;

    iget-object v3, v1, Ln3/h1$c;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Ln3/h1$c;->a:Lp4/t;

    .line 4
    iget-object v2, v2, Lp4/t;->v:Lp4/t$a;

    .line 5
    invoke-virtual {v2}, Lp4/p;->r()I

    move-result v2

    neg-int v2, v2

    .line 6
    invoke-virtual {p0, p2, v2}, Ln3/h1;->b(II)V

    .line 7
    iput-boolean v0, v1, Ln3/h1$c;->e:Z

    .line 8
    iget-boolean v2, p0, Ln3/h1;->k:Z

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Ln3/h1;->f(Ln3/h1$c;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
