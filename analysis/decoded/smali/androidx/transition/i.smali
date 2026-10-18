.class public Landroidx/transition/i;
.super Landroidx/transition/f;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/i$b;
    }
.end annotation


# instance fields
.field public E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/f;",
            ">;"
        }
    .end annotation
.end field

.field public F:Z

.field public G:I

.field public H:Z

.field public I:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/transition/i;->F:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/transition/i;->H:Z

    .line 5
    iput v0, p0, Landroidx/transition/i;->I:I

    return-void
.end method


# virtual methods
.method public final A(Landroidx/transition/f$c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/transition/f;->z:Landroidx/transition/f$c;

    .line 2
    iget v0, p0, Landroidx/transition/i;->I:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/transition/i;->I:I

    .line 3
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    invoke-virtual {v2, p1}, Landroidx/transition/f;->A(Landroidx/transition/f$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final B(Landroid/animation/TimeInterpolator;)Landroidx/transition/f;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/transition/i;->I:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/i;->I:I

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    invoke-virtual {v2, p1}, Landroidx/transition/f;->B(Landroid/animation/TimeInterpolator;)Landroidx/transition/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Landroidx/transition/f;->k:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public final C(Lg1/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/f;->C(Lg1/c;)V

    .line 2
    iget v0, p0, Landroidx/transition/i;->I:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/transition/i;->I:I

    .line 3
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/f;

    invoke-virtual {v1, p1}, Landroidx/transition/f;->C(Lg1/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/transition/i;->I:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/transition/i;->I:I

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    invoke-virtual {v2}, Landroidx/transition/f;->D()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final E(J)Landroidx/transition/f;
    .locals 0

    iput-wide p1, p0, Landroidx/transition/f;->i:J

    return-object p0
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/f;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    .line 3
    invoke-static {v0, v2}, Landroidx/fragment/app/r0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/f;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final H(Landroidx/transition/f;)Landroidx/transition/i;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Landroidx/transition/f;->p:Landroidx/transition/i;

    .line 3
    iget-wide v0, p0, Landroidx/transition/f;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/transition/f;->z(J)Landroidx/transition/f;

    .line 5
    :cond_0
    iget v0, p0, Landroidx/transition/i;->I:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/transition/f;->k:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1, v0}, Landroidx/transition/f;->B(Landroid/animation/TimeInterpolator;)Landroidx/transition/f;

    .line 8
    :cond_1
    iget v0, p0, Landroidx/transition/i;->I:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroidx/transition/f;->D()V

    .line 10
    :cond_2
    iget v0, p0, Landroidx/transition/i;->I:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Landroidx/transition/f;->A:Lg1/c;

    .line 12
    invoke-virtual {p1, v0}, Landroidx/transition/f;->C(Lg1/c;)V

    .line 13
    :cond_3
    iget v0, p0, Landroidx/transition/i;->I:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Landroidx/transition/f;->z:Landroidx/transition/f$c;

    .line 15
    invoke-virtual {p1, v0}, Landroidx/transition/f;->A(Landroidx/transition/f$c;)V

    :cond_4
    return-object p0
.end method

.method public final I(I)Landroidx/transition/f;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/f;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroidx/transition/f$d;)Landroidx/transition/f;
    .locals 0

    invoke-super {p0, p1}, Landroidx/transition/f;->a(Landroidx/transition/f$d;)Landroidx/transition/f;

    return-object p0
.end method

.method public final b(Landroid/view/View;)Landroidx/transition/f;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/f;

    invoke-virtual {v1, p1}, Landroidx/transition/f;->b(Landroid/view/View;)Landroidx/transition/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/transition/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final cancel()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/transition/f;->cancel()V

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    invoke-virtual {v2}, Landroidx/transition/f;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/transition/i;->j()Landroidx/transition/f;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lg1/g;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lg1/g;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/f;

    .line 3
    iget-object v2, p1, Lg1/g;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/transition/f;->d(Lg1/g;)V

    .line 5
    iget-object v2, p1, Lg1/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Lg1/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    invoke-virtual {v2, p1}, Landroidx/transition/f;->f(Lg1/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lg1/g;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lg1/g;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/f;

    .line 3
    iget-object v2, p1, Lg1/g;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/transition/f;->g(Lg1/g;)V

    .line 5
    iget-object v2, p1, Lg1/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()Landroidx/transition/f;
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/transition/f;->j()Landroidx/transition/f;

    move-result-object v0

    check-cast v0, Landroidx/transition/i;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/f;

    invoke-virtual {v3}, Landroidx/transition/f;->j()Landroidx/transition/f;

    move-result-object v3

    .line 5
    iget-object v4, v0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, v3, Landroidx/transition/f;->p:Landroidx/transition/i;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final l(Landroid/view/ViewGroup;Lg1/h;Lg1/h;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lg1/h;",
            "Lg1/h;",
            "Ljava/util/ArrayList<",
            "Lg1/g;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lg1/g;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Landroidx/transition/f;->i:J

    .line 2
    iget-object v3, v0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/transition/f;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, Landroidx/transition/i;->F:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    iget-wide v9, v6, Landroidx/transition/f;->i:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Landroidx/transition/f;->E(J)Landroidx/transition/f;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/transition/f;->E(J)Landroidx/transition/f;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Landroidx/transition/f;->l(Landroid/view/ViewGroup;Lg1/h;Lg1/h;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final u(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/f;->u(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    invoke-virtual {v2, p1}, Landroidx/transition/f;->u(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(Landroidx/transition/f$d;)Landroidx/transition/f;
    .locals 0

    invoke-super {p0, p1}, Landroidx/transition/f;->v(Landroidx/transition/f$d;)Landroidx/transition/f;

    return-object p0
.end method

.method public final w(Landroid/view/View;)Landroidx/transition/f;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/f;

    invoke-virtual {v1, p1}, Landroidx/transition/f;->w(Landroid/view/View;)Landroidx/transition/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/transition/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final x(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/f;->x(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    invoke-virtual {v2, p1}, Landroidx/transition/f;->x(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/f;->F()V

    .line 3
    invoke-virtual {p0}, Landroidx/transition/f;->m()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroidx/transition/i$b;

    invoke-direct {v0, p0}, Landroidx/transition/i$b;-><init>(Landroidx/transition/i;)V

    .line 5
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    .line 6
    invoke-virtual {v2, v0}, Landroidx/transition/f;->a(Landroidx/transition/f$d;)Landroidx/transition/f;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/transition/i;->G:I

    .line 8
    iget-boolean v0, p0, Landroidx/transition/i;->F:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 9
    :goto_1
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/f;

    .line 11
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    .line 12
    new-instance v3, Landroidx/transition/i$a;

    invoke-direct {v3, v2}, Landroidx/transition/i$a;-><init>(Landroidx/transition/f;)V

    invoke-virtual {v1, v3}, Landroidx/transition/f;->a(Landroidx/transition/f$d;)Landroidx/transition/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/f;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroidx/transition/f;->y()V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/f;

    .line 16
    invoke-virtual {v1}, Landroidx/transition/f;->y()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final z(J)Landroidx/transition/f;
    .locals 3

    .line 1
    iput-wide p1, p0, Landroidx/transition/f;->j:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/i;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/f;

    invoke-virtual {v2, p1, p2}, Landroidx/transition/f;->z(J)Landroidx/transition/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
