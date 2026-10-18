.class public final Lx8/w;
.super Ljava/lang/Object;
.source "LacingController.kt"


# static fields
.field public static final C:Lfd/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "[F>;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lfd/h;

.field public final B:Lfd/h;

.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public final i:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lx8/d1;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:I

.field public l:I

.field public final m:Lfd/h;

.field public final n:Lfd/h;

.field public o:Landroid/view/View;

.field public p:I

.field public q:I

.field public r:I

.field public final s:I

.field public t:I

.field public u:[F

.field public v:Z

.field public w:Landroid/animation/ObjectAnimator;

.field public x:Z

.field public y:Z

.field public z:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lx8/w$a;->h:Lx8/w$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lx8/w;->C:Lfd/h;

    return-void
.end method

.method public constructor <init>(ILqd/l;)V
    .locals 1

    const-string v0, "shoeType"

    .line 1
    invoke-static {p1, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lx8/w;->a:F

    .line 3
    iput v0, p0, Lx8/w;->b:F

    .line 4
    iput v0, p0, Lx8/w;->c:F

    .line 5
    iput v0, p0, Lx8/w;->d:F

    const/16 v0, 0x32

    .line 6
    iput v0, p0, Lx8/w;->e:I

    .line 7
    iput v0, p0, Lx8/w;->f:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lx8/w;->g:Z

    .line 9
    iput p1, p0, Lx8/w;->h:I

    .line 10
    iput-object p2, p0, Lx8/w;->i:Lqd/l;

    .line 11
    new-instance p1, Lx8/z;

    invoke-direct {p1, p0}, Lx8/z;-><init>(Lx8/w;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lx8/w;->m:Lfd/h;

    .line 12
    new-instance p1, Lx8/x;

    invoke-direct {p1, p0}, Lx8/x;-><init>(Lx8/w;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lx8/w;->n:Lfd/h;

    .line 13
    iput v0, p0, Lx8/w;->q:I

    const/16 p1, 0x14

    .line 14
    iput p1, p0, Lx8/w;->s:I

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lx8/w;->t:I

    .line 16
    new-instance p1, Lx8/y;

    invoke-direct {p1, p0}, Lx8/y;-><init>(Lx8/w;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lx8/w;->A:Lfd/h;

    .line 17
    new-instance p1, Lx8/a0;

    invoke-direct {p1, p0}, Lx8/a0;-><init>(Lx8/w;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lx8/w;->B:Lfd/h;

    return-void
.end method

.method public static e(Lx8/w;IZI)V
    .locals 15

    move-object v0, p0

    move/from16 v9, p1

    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move/from16 v7, p2

    .line 1
    :goto_0
    iget-boolean v1, v0, Lx8/w;->v:Z

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    iget-object v1, v0, Lx8/w;->o:Landroid/view/View;

    const-string v10, "laceControllerView"

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Lx8/w;->b:F

    .line 3
    invoke-virtual {p0, v1, v2}, Lx8/w;->a(FZ)I

    move-result v1

    iput v1, v0, Lx8/w;->r:I

    .line 4
    iput v1, v0, Lx8/w;->q:I

    const/4 v1, -0x1

    if-le v9, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v2

    array-length v2, v2

    if-ge v9, v2, :cond_4

    .line 6
    iget v2, v0, Lx8/w;->q:I

    if-le v2, v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 8
    iget v2, v0, Lx8/w;->r:I

    if-le v2, v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v1

    array-length v1, v1

    if-ge v2, v1, :cond_4

    .line 10
    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v1

    aget v1, v1, v9

    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v2

    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v3

    invoke-static {v3}, Lgd/i;->r([F)I

    move-result v3

    aget v2, v2, v3

    div-float/2addr v1, v2

    .line 11
    invoke-virtual {p0}, Lx8/w;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lx8/w;->b()I

    move-result v3

    invoke-virtual {p0}, Lx8/w;->d()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v12, v2, v3

    .line 12
    iget-object v13, v0, Lx8/w;->i:Lqd/l;

    new-instance v14, Lx8/d1;

    iget-object v2, v0, Lx8/w;->o:Landroid/view/View;

    if-eqz v2, :cond_3

    iget v3, v0, Lx8/w;->r:I

    iget v4, v0, Lx8/w;->q:I

    new-instance v6, Lx8/h1;

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    invoke-direct {v6, v8, v9, v1, v11}, Lx8/h1;-><init>(JILrd/h;)V

    move-object v1, v14

    move/from16 v5, p1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;ZZ)V

    move/from16 v1, p1

    .line 13
    iput v1, v0, Lx8/w;->q:I

    .line 14
    invoke-interface {v13, v14}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, v0, Lx8/w;->o:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v11

    .line 16
    :cond_3
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v11

    :cond_4
    :goto_1
    return-void

    .line 17
    :cond_5
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v11
.end method


# virtual methods
.method public final a(FZ)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lx8/w;->d()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Lx8/w;->b()I

    move-result v0

    invoke-virtual {p0}, Lx8/w;->d()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    int-to-float v2, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    .line 3
    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object p1

    const-string v0, "<this>"

    .line 4
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 7
    aget p1, p1, v0

    mul-float/2addr v2, p1

    .line 8
    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object p1

    invoke-static {p1, v2}, Lp4/h;->q([FF)I

    move-result p1

    if-eqz p2, :cond_1

    return p1

    .line 9
    :cond_1
    iget p2, p0, Lx8/w;->q:I

    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object p2

    aget p2, p2, p1

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_2

    .line 10
    iget p1, p0, Lx8/w;->q:I

    return p1

    .line 11
    :cond_2
    iget p2, p0, Lx8/w;->q:I

    if-le p1, p2, :cond_3

    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object p2

    aget p2, p2, p1

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_3

    .line 12
    iget p1, p0, Lx8/w;->q:I

    :cond_3
    return p1

    .line 13
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Array is empty."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lx8/w;->n:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()[F
    .locals 2

    .line 1
    iget-object v0, p0, Lx8/w;->u:[F

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "LacingController tried to use an empty array of percents."

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lx8/w;->C:Lfd/h;

    .line 4
    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "significantPercents"

    .line 5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lx8/w;->m:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lx8/w;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lx8/w;

    iget v1, p0, Lx8/w;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lx8/w;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lx8/w;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lx8/w;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lx8/w;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lx8/w;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lx8/w;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lx8/w;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lx8/w;->e:I

    iget v3, p1, Lx8/w;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lx8/w;->f:I

    iget v3, p1, Lx8/w;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lx8/w;->g:Z

    iget-boolean v3, p1, Lx8/w;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lx8/w;->h:I

    iget v3, p1, Lx8/w;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lx8/w;->i:Lqd/l;

    iget-object p1, p1, Lx8/w;->i:Lqd/l;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f(Z)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lx8/w;->v:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lx8/w;->o:Landroid/view/View;

    const-string v1, "laceControllerView"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v3, Lx8/h0;->h:Lx8/h0;

    if-eq v0, v3, :cond_8

    invoke-virtual {p0}, Lx8/w;->i()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4
    iget v0, p0, Lx8/w;->q:I

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lx8/w;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lx8/w;->a(FZ)I

    move-result v0

    iput v0, p0, Lx8/w;->q:I

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_2
    :goto_0
    iget v7, p0, Lx8/w;->q:I

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v3

    if-ge v7, v0, :cond_3

    add-int/lit8 p1, v7, 0x1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_7

    .line 8
    iget p1, p0, Lx8/w;->q:I

    if-lez p1, :cond_7

    add-int/lit8 p1, v7, -0x1

    .line 9
    :goto_1
    iget-object v0, p0, Lx8/w;->i:Lqd/l;

    new-instance v4, Lx8/d1;

    iget-object v9, p0, Lx8/w;->o:Landroid/view/View;

    if-eqz v9, :cond_6

    iget v11, p0, Lx8/w;->q:I

    new-instance v13, Lx8/f1;

    const-wide/16 v5, 0x0

    invoke-direct {v13, v5, v6, v3, v2}, Lx8/f1;-><init>(JILrd/h;)V

    move-object v8, v4

    move v10, v11

    move v12, p1

    invoke-direct/range {v8 .. v13}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    invoke-interface {v0, v4}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput p1, p0, Lx8/w;->q:I

    .line 11
    invoke-virtual {p0}, Lx8/w;->g()F

    move-result v0

    .line 12
    iget-object v4, p0, Lx8/w;->o:Landroid/view/View;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 13
    iget-object v0, p0, Lx8/w;->i:Lqd/l;

    .line 14
    new-instance v10, Lx8/d1;

    iget-object v8, p0, Lx8/w;->o:Landroid/view/View;

    if-eqz v8, :cond_4

    new-instance v9, Lx8/u;

    invoke-direct {v9, v5, v6, v3, v2}, Lx8/u;-><init>(JILrd/h;)V

    move-object v4, v10

    move-object v5, v8

    move v6, v7

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lx8/d1;-><init>(Landroid/view/View;IIILx8/b0;)V

    .line 15
    iput p1, p0, Lx8/w;->q:I

    .line 16
    invoke-interface {v0, v10}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_7
    return-void

    .line 20
    :cond_8
    iget-object p1, p0, Lx8/w;->w:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_9

    .line 21
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 22
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_9
    :goto_2
    return-void

    .line 23
    :cond_a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final g()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v0

    iget v1, p0, Lx8/w;->q:I

    aget v0, v0, v1

    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v1

    invoke-virtual {p0}, Lx8/w;->c()[F

    move-result-object v2

    invoke-static {v2}, Lgd/i;->r([F)I

    move-result v2

    aget v1, v1, v2

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lx8/w;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lx8/w;->b()I

    move-result v2

    invoke-virtual {p0}, Lx8/w;->d()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    return v1
.end method

.method public final h(Landroid/view/View;[F)V
    .locals 2

    const-string v0, "percents"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lx8/w;->o:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lx8/w;->u:[F

    const/4 p2, 0x5

    new-array p2, p2, [F

    .line 3
    fill-array-data p2, :array_0

    const-string v0, "rotation"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 7
    new-instance v0, Lx8/j;

    invoke-direct {v0, p1}, Lx8/j;-><init>(Landroid/view/View;)V

    .line 8
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    new-instance v0, Lx8/i;

    invoke-direct {v0, p1}, Lx8/i;-><init>(Landroid/view/View;)V

    .line 10
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iput-object p2, p0, Lx8/w;->w:Landroid/animation/ObjectAnimator;

    .line 12
    new-instance p2, Ly0/u;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p1, v0}, Ly0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    new-instance p2, Lx8/v;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lx8/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3f800000    # -4.0f
        0x0
        0x40800000    # 4.0f
        0x0
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lx8/w;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lx8/w;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lx8/w;->c:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lx8/w;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lx8/w;->e:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lx8/w;->f:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lx8/w;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lx8/w;->h:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lx8/w;->i:Lqd/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget v0, p0, Lx8/w;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget v0, p0, Lx8/w;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lx8/w;->a:F

    iget v1, p0, Lx8/w;->b:F

    iget v2, p0, Lx8/w;->c:F

    iget v3, p0, Lx8/w;->d:F

    iget v4, p0, Lx8/w;->e:I

    iget v5, p0, Lx8/w;->f:I

    iget-boolean v6, p0, Lx8/w;->g:Z

    iget v7, p0, Lx8/w;->h:I

    iget-object v8, p0, Lx8/w;->i:Lqd/l;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LacingController(locationOfStartingPointerInRespectiveToView="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", startingY="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", cancelX1="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", cancelX2="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ratchetMargin="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", unlaceMargin="

    const-string v1, ", abort="

    .line 1
    invoke-static {v9, v4, v0, v5, v1}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shoeType="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroidx/appcompat/widget/o;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locationReporter="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
