.class public final Lo3/r0;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Lo3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/r0$a;
    }
.end annotation


# instance fields
.field public final h:Lm5/c;

.field public final i:Ln3/b2$b;

.field public final j:Ln3/b2$d;

.field public final k:Lo3/r0$a;

.field public final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo3/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lm5/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/o<",
            "Lo3/b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ln3/o1;

.field public o:Lm5/l;

.field public p:Z


# direct methods
.method public constructor <init>(Lm5/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo3/r0;->h:Lm5/c;

    .line 4
    new-instance v0, Lm5/o;

    invoke-static {}, Lm5/g0;->t()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Ln3/n1;->c:Ln3/n1;

    .line 5
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {v0, v3, v1, p1, v2}, Lm5/o;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lm5/c;Lm5/o$b;)V

    .line 6
    iput-object v0, p0, Lo3/r0;->m:Lm5/o;

    .line 7
    new-instance p1, Ln3/b2$b;

    invoke-direct {p1}, Ln3/b2$b;-><init>()V

    iput-object p1, p0, Lo3/r0;->i:Ln3/b2$b;

    .line 8
    new-instance v0, Ln3/b2$d;

    invoke-direct {v0}, Ln3/b2$d;-><init>()V

    iput-object v0, p0, Lo3/r0;->j:Ln3/b2$d;

    .line 9
    new-instance v0, Lo3/r0$a;

    invoke-direct {v0, p1}, Lo3/r0$a;-><init>(Ln3/b2$b;)V

    iput-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    .line 10
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo3/r0;->l:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final A(IJJ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v7

    .line 2
    new-instance v8, Lo3/h;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lo3/h;-><init>(Lo3/b$a;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v7, p1, v8}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final B(IJ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->u0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/g;

    invoke-direct {v1, v0, p1, p2, p3}, Lo3/g;-><init>(Lo3/b$a;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final C(Lf4/a;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/j0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lo3/j0;-><init>(Lo3/b$a;Ljava/lang/Object;I)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final D(JI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->u0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/m;

    invoke-direct {v1, v0, p1, p2, p3}, Lo3/m;-><init>(Lo3/b$a;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final F(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/f0;

    invoke-direct {v1, v0, p1, p2}, Lo3/f0;-><init>(Lo3/b$a;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final G(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    iget-object v1, p0, Lo3/r0;->n:Ln3/o1;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lo3/r0$a;->b:Lu6/v;

    iget-object v3, v0, Lo3/r0$a;->e:Lp4/x$b;

    iget-object v4, v0, Lo3/r0$a;->a:Ln3/b2$b;

    .line 4
    invoke-static {v1, v2, v3, v4}, Lo3/r0$a;->b(Ln3/o1;Lu6/v;Lp4/x$b;Ln3/b2$b;)Lp4/x$b;

    move-result-object v2

    iput-object v2, v0, Lo3/r0$a;->d:Lp4/x$b;

    .line 5
    invoke-interface {v1}, Ln3/o1;->O()Ln3/b2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo3/r0$a;->d(Ln3/b2;)V

    .line 6
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 7
    new-instance v1, Lo3/o0;

    invoke-direct {v1, v0, p1}, Lo3/o0;-><init>(Lo3/b$a;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final H(ILp4/x$b;Lp4/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Ly0/k;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Ly0/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final I(Ln3/a1;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/n;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lo3/n;-><init>(Lo3/b$a;Ljava/lang/Object;I)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final J(ILp4/x$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Lm0/b;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Lm0/b;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final K(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/d;

    invoke-direct {v1, v0, p1}, Lo3/d;-><init>(Lo3/b$a;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final L(Ln3/o;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Ly0/k;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Ly0/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final M(ILp4/x$b;Lp4/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Lo3/k0;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lo3/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final N(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/b0;

    invoke-direct {v1, v0, p1}, Lo3/b0;-><init>(Lo3/b$a;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final O(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Lo3/v;

    invoke-direct {p2, p1, p3, p4}, Lo3/v;-><init>(Lo3/b$a;Lp4/r;Lp4/u;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final P(ILp4/x$b;Lp4/r;Lp4/u;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Lo3/x;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lo3/x;-><init>(Lo3/b$a;Lp4/r;Lp4/u;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final Q(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Lo3/l0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, p4, v0}, Lo3/l0;-><init>(Lo3/b$a;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final R(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/n0;

    invoke-direct {v1, v0, p1}, Lo3/n0;-><init>(Lo3/b$a;F)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final S(Ljava/util/List;Lp4/x$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp4/x$b;",
            ">;",
            "Lp4/x$b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    iget-object v1, p0, Lo3/r0;->n:Ln3/o1;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object v2

    iput-object v2, v0, Lo3/r0$a;->b:Lu6/v;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/x$b;

    iput-object p1, v0, Lo3/r0$a;->e:Lp4/x$b;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p2, v0, Lo3/r0$a;->f:Lp4/x$b;

    .line 9
    :cond_0
    iget-object p1, v0, Lo3/r0$a;->d:Lp4/x$b;

    if-nez p1, :cond_1

    .line 10
    iget-object p1, v0, Lo3/r0$a;->b:Lu6/v;

    iget-object p2, v0, Lo3/r0$a;->e:Lp4/x$b;

    iget-object v2, v0, Lo3/r0$a;->a:Ln3/b2$b;

    .line 11
    invoke-static {v1, p1, p2, v2}, Lo3/r0$a;->b(Ln3/o1;Lu6/v;Lp4/x$b;Ln3/b2$b;)Lp4/x$b;

    move-result-object p1

    iput-object p1, v0, Lo3/r0$a;->d:Lp4/x$b;

    .line 12
    :cond_1
    invoke-interface {v1}, Ln3/o1;->O()Ln3/b2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo3/r0$a;->d(Ln3/b2;)V

    return-void
.end method

.method public final T(ILp4/x$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Lo3/c;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lo3/c;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final U(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/p0;

    invoke-direct {v1, v0, p1}, Lo3/p0;-><init>(Lo3/b$a;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final V(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/g0;

    invoke-direct {v1, v0, p1, p2}, Lo3/g0;-><init>(Lo3/b$a;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final W(Ln3/o1;Landroid/os/Looper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/r0;->n:Ln3/o1;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    .line 2
    iget-object v0, v0, Lo3/r0$a;->b:Lu6/v;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lo3/r0;->n:Ln3/o1;

    .line 6
    iget-object v0, p0, Lo3/r0;->h:Lm5/c;

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2}, Lm5/c;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lm5/l;

    move-result-object v0

    iput-object v0, p0, Lo3/r0;->o:Lm5/l;

    .line 7
    iget-object v0, p0, Lo3/r0;->m:Lm5/o;

    new-instance v2, Lo3/k0;

    invoke-direct {v2, p0, p1, v1}, Lo3/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 8
    iget-object p1, v0, Lm5/o;->a:Lm5/c;

    .line 9
    new-instance v1, Lm5/o;

    iget-object v0, v0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1, v0, p2, p1, v2}, Lm5/o;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lm5/c;Lm5/o$b;)V

    .line 10
    iput-object v1, p0, Lo3/r0;->m:Lm5/o;

    return-void
.end method

.method public final X(IJJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    .line 2
    iget-object v1, v0, Lo3/r0$a;->b:Lu6/v;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lo3/r0$a;->b:Lu6/v;

    invoke-static {v0}, Lg0/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp4/x$b;

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lo3/r0;->s0(Lp4/x$b;)Lo3/b$a;

    move-result-object v0

    const/16 v8, 0x3ee

    .line 4
    new-instance v9, Lo3/i;

    move-object v1, v9

    move-object v2, v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lo3/i;-><init>(Lo3/b$a;IJJ)V

    invoke-virtual {p0, v0, v8, v9}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final Y(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Lo3/w;

    invoke-direct {p2, p1, p3, p4}, Lo3/w;-><init>(Lo3/b$a;Lp4/r;Lp4/u;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final Z(Ln3/y0;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/u;

    invoke-direct {v1, v0, p1, p2}, Lo3/u;-><init>(Lo3/b$a;Ln3/y0;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lo3/r0;->o:Lm5/l;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lm5/l;

    new-instance v1, Ly0/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ly0/s;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lm5/l;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a0(Ln3/m1;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/i0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lo3/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final b(Ln5/t;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/n;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lo3/n;-><init>(Lo3/b$a;Ljava/lang/Object;I)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final b0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo3/r0;->p:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lo3/r0;->p:Z

    const/4 v1, -0x1

    .line 4
    new-instance v2, Lo3/c;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lo3/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1, v2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    :cond_0
    return-void
.end method

.method public final c(Lq3/e;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->u0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/a0;

    invoke-direct {v1, v0, p1}, Lo3/a0;-><init>(Lo3/b$a;Lq3/e;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final c0(Lo3/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo3/r0;->m:Lm5/o;

    .line 2
    iget-boolean v1, v0, Lm5/o;->g:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lm5/o$c;

    invoke-direct {v1, p1}, Lm5/o$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/q;

    invoke-direct {v1, v0, p1}, Lo3/q;-><init>(Lo3/b$a;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final d0(ILp4/x$b;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Ly0/d;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Ly0/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final e0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/d0;

    invoke-direct {v1, v0, p1}, Lo3/d0;-><init>(Lo3/b$a;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/p;

    invoke-direct {v1, v0, p1, p2, p3}, Lo3/p;-><init>(Lo3/b$a;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final f0(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/f;

    invoke-direct {v1, v0, p1, p2}, Lo3/f;-><init>(Lo3/b$a;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final g(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v7

    .line 2
    new-instance v8, Lo3/s;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lo3/s;-><init>(Lo3/b$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v7, p1, v8}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final g0(Ln3/o1$d;Ln3/o1$d;I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lo3/r0;->p:Z

    .line 2
    :cond_0
    iget-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    iget-object v1, p0, Lo3/r0;->n:Ln3/o1;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Lo3/r0$a;->b:Lu6/v;

    iget-object v3, v0, Lo3/r0$a;->e:Lp4/x$b;

    iget-object v4, v0, Lo3/r0$a;->a:Ln3/b2$b;

    .line 5
    invoke-static {v1, v2, v3, v4}, Lo3/r0$a;->b(Ln3/o1;Lu6/v;Lp4/x$b;Ln3/b2$b;)Lp4/x$b;

    move-result-object v1

    iput-object v1, v0, Lo3/r0$a;->d:Lp4/x$b;

    .line 6
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    const/16 v1, 0xb

    .line 7
    new-instance v2, Lo3/j;

    invoke-direct {v2, v0, p3, p1, p2}, Lo3/j;-><init>(Lo3/b$a;ILn3/o1$d;Ln3/o1$d;)V

    invoke-virtual {p0, v0, v1, v2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final h(Ln3/s0;Lq3/i;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/l0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, p2, v2}, Lo3/l0;-><init>(Lo3/b$a;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final h0(Ln3/k1;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lo3/r0;->w0(Ln3/k1;)Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/y;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lo3/y;-><init>(Lo3/b$a;Ljava/lang/Object;I)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final i(Ln3/k1;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lo3/r0;->w0(Ln3/k1;)Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/h0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lo3/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final i0(ILp4/x$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Ly0/c;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Ly0/c;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final j0(Ln3/o1$a;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Ly0/d;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Ly0/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/m0;

    invoke-direct {v1, v0}, Lo3/m0;-><init>(Lo3/b$a;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final k0(ILp4/x$b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Lo3/e;

    invoke-direct {p2, p1, p3}, Lo3/e;-><init>(Lo3/b$a;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final l(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/e0;

    invoke-direct {v1, v0, p1}, Lo3/e0;-><init>(Lo3/b$a;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final l0(Ln3/c2;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/y;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lo3/y;-><init>(Lo3/b$a;Ljava/lang/Object;I)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final m(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/j0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lo3/j0;-><init>(Lo3/b$a;Ljava/lang/Object;I)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final m0(Ln3/o1$b;)V
    .locals 0

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/j0;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Lo3/j0;-><init>(Lo3/b$a;Ljava/lang/Object;I)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final n0(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/k;

    invoke-direct {v1, v0, p1, p2}, Lo3/k;-><init>(Lo3/b$a;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final o(Lz4/c;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/j0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lo3/j0;-><init>(Lo3/b$a;Ljava/lang/Object;I)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final o0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/c0;

    invoke-direct {v1, v0, p1}, Lo3/c0;-><init>(Lo3/b$a;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final p(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/l;

    invoke-direct {v1, v0, p1, p2}, Lo3/l;-><init>(Lo3/b$a;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final p0(ILp4/x$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lo3/r0;->t0(ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    .line 2
    new-instance p2, Ln3/z;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Ln3/z;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final q(Lq3/e;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/z;

    invoke-direct {v1, v0, p1}, Lo3/z;-><init>(Lo3/b$a;Lq3/e;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final q0()Lo3/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    .line 2
    iget-object v0, v0, Lo3/r0$a;->d:Lp4/x$b;

    .line 3
    invoke-virtual {p0, v0}, Lo3/r0;->s0(Lp4/x$b;)Lo3/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final r0(Ln3/b2;ILp4/x$b;)Lo3/b$a;
    .locals 17
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Ln3/b2;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    .line 2
    :goto_0
    iget-object v1, v0, Lo3/r0;->h:Lm5/c;

    invoke-interface {v1}, Lm5/c;->d()J

    move-result-wide v2

    .line 3
    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    .line 4
    invoke-interface {v1}, Ln3/o1;->O()Ln3/b2;

    move-result-object v1

    invoke-virtual {v4, v1}, Ln3/b2;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    .line 5
    invoke-interface {v1}, Ln3/o1;->C()I

    move-result v1

    if-ne v5, v1, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v6}, Lp4/w;->a()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    .line 8
    invoke-interface {v1}, Ln3/o1;->B()I

    move-result v1

    iget v11, v6, Lp4/w;->b:I

    if-ne v1, v11, :cond_2

    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    .line 9
    invoke-interface {v1}, Ln3/o1;->G()I

    move-result v1

    iget v11, v6, Lp4/w;->c:I

    if-ne v1, v11, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    if-eqz v7, :cond_6

    .line 10
    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    invoke-interface {v1}, Ln3/o1;->b0()J

    move-result-wide v9

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    invoke-interface {v1}, Ln3/o1;->l()J

    move-result-wide v7

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ln3/b2;->s()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lo3/r0;->j:Ln3/b2$d;

    invoke-virtual {v4, v5, v1}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v1

    invoke-virtual {v1}, Ln3/b2$d;->b()J

    move-result-wide v9

    :cond_6
    :goto_3
    move-wide v7, v9

    .line 13
    :goto_4
    iget-object v1, v0, Lo3/r0;->k:Lo3/r0$a;

    .line 14
    iget-object v11, v1, Lo3/r0$a;->d:Lp4/x$b;

    .line 15
    new-instance v16, Lo3/b$a;

    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    .line 16
    invoke-interface {v1}, Ln3/o1;->O()Ln3/b2;

    move-result-object v9

    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    .line 17
    invoke-interface {v1}, Ln3/o1;->C()I

    move-result v10

    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    .line 18
    invoke-interface {v1}, Ln3/o1;->b0()J

    move-result-wide v12

    iget-object v1, v0, Lo3/r0;->n:Ln3/o1;

    .line 19
    invoke-interface {v1}, Ln3/o1;->m()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Lo3/b$a;-><init>(JLn3/b2;ILp4/x$b;JLn3/b2;ILp4/x$b;JJ)V

    return-object v16
.end method

.method public final s(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/o;

    invoke-direct {v1, v0, p1}, Lo3/o;-><init>(Lo3/b$a;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final s0(Lp4/x$b;)Lo3/b$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/r0;->n:Ln3/o1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lo3/r0;->k:Lo3/r0$a;

    .line 4
    iget-object v1, v1, Lo3/r0$a;->c:Lu6/q0;

    invoke-virtual {v1, p1}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/b2;

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p1, Lp4/w;->a:Ljava/lang/Object;

    iget-object v2, p0, Lo3/r0;->i:Ln3/b2$b;

    invoke-virtual {v1, v0, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v0

    iget v0, v0, Ln3/b2$b;->j:I

    .line 6
    invoke-virtual {p0, v1, v0, p1}, Lo3/r0;->r0(Ln3/b2;ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lo3/r0;->n:Ln3/o1;

    invoke-interface {p1}, Ln3/o1;->C()I

    move-result p1

    .line 8
    iget-object v1, p0, Lo3/r0;->n:Ln3/o1;

    invoke-interface {v1}, Ln3/o1;->O()Ln3/b2;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ln3/b2;->r()I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    sget-object v1, Ln3/b2;->h:Ln3/b2$a;

    .line 11
    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Lo3/r0;->r0(Ln3/b2;ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/k0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lo3/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final t0(ILp4/x$b;)Lo3/b$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/r0;->n:Ln3/o1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-object v2, p0, Lo3/r0;->k:Lo3/r0$a;

    .line 4
    iget-object v2, v2, Lo3/r0$a;->c:Lu6/q0;

    invoke-virtual {v2, p2}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/b2;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lo3/r0;->s0(Lp4/x$b;)Lo3/b$a;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    sget-object v0, Ln3/b2;->h:Ln3/b2$a;

    invoke-virtual {p0, v0, p1, p2}, Lo3/r0;->r0(Ln3/b2;ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    :goto_1
    return-object p1

    .line 7
    :cond_2
    iget-object p2, p0, Lo3/r0;->n:Ln3/o1;

    invoke-interface {p2}, Ln3/o1;->O()Ln3/b2;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ln3/b2;->r()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    sget-object p2, Ln3/b2;->h:Ln3/b2$a;

    :goto_3
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lo3/r0;->r0(Ln3/b2;ILp4/x$b;)Lo3/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final u(Ln3/s0;Lq3/i;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/t;

    invoke-direct {v1, v0, p1, p2}, Lo3/t;-><init>(Lo3/b$a;Ln3/s0;Lq3/i;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final u0()Lo3/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    .line 2
    iget-object v0, v0, Lo3/r0$a;->e:Lp4/x$b;

    .line 3
    invoke-virtual {p0, v0}, Lo3/r0;->s0(Lp4/x$b;)Lo3/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/i0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lo3/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final v0()Lo3/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo3/r0;->k:Lo3/r0$a;

    .line 2
    iget-object v0, v0, Lo3/r0$a;->f:Lp4/x$b;

    .line 3
    invoke-virtual {p0, v0}, Lo3/r0;->s0(Lp4/x$b;)Lo3/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final w(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v7

    .line 2
    new-instance v8, Lo3/r;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lo3/r;-><init>(Lo3/b$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v7, p1, v8}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final w0(Ln3/k1;)Lo3/b$a;
    .locals 1

    .line 1
    instance-of v0, p1, Ln3/q;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ln3/q;

    .line 3
    iget-object p1, p1, Ln3/q;->o:Lp4/w;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lp4/x$b;

    invoke-direct {v0, p1}, Lp4/x$b;-><init>(Lp4/w;)V

    invoke-virtual {p0, v0}, Lo3/r0;->s0(Lp4/x$b;)Lo3/b$a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lq3/e;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->u0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/h0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lo3/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final x0(Lo3/b$a;ILm5/o$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/b$a;",
            "I",
            "Lm5/o$a<",
            "Lo3/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/r0;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lo3/r0;->m:Lm5/o;

    invoke-virtual {p1, p2, p3}, Lm5/o;->d(ILm5/o$a;)V

    return-void
.end method

.method public final y(Lq3/e;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo3/r0;->v0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/i0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lo3/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method

.method public final z(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo3/r0;->q0()Lo3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lo3/q0;

    invoke-direct {v1, v0, p1}, Lo3/q0;-><init>(Lo3/b$a;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Lo3/r0;->x0(Lo3/b$a;ILm5/o$a;)V

    return-void
.end method
