.class public abstract Lx8/q0;
.super Ljava/lang/Object;
.source "ShoeControllerUiHelper.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/q0$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Ljava/lang/Runnable;

.field public final a:Lcom/nike/adapt/adk/IDeviceController;

.field public final b:Lcom/nike/adapt/adk/Shoe;

.field public final c:Lq7/m1;

.field public d:Lx8/q0$a;

.field public e:I

.field public final f:Z

.field public final g:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Lx8/d0;",
            "Lx8/k0;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/content/Context;

.field public i:F

.field public j:J

.field public final k:Z

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Lfd/h;

.field public final p:Lfd/h;

.field public final q:Lfd/h;

.field public final r:Lfd/h;

.field public final s:Lfd/h;

.field public final t:Lfd/h;

.field public final u:Lfd/h;

.field public final v:Landroid/animation/AnimatorSet;

.field public final w:I

.field public final x:I

.field public y:Ljava/lang/Integer;

.field public z:[F


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/IDeviceController;Lcom/nike/adapt/adk/Shoe;Lq7/m1;Lx8/q0$a;IZILqd/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/adk/IDeviceController;",
            "Lcom/nike/adapt/adk/Shoe;",
            "Lq7/m1;",
            "Lx8/q0$a;",
            "Ljava/lang/Object;",
            "ZI",
            "Lqd/p<",
            "-",
            "Lx8/d0;",
            "-",
            "Lx8/k0;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shoe"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiState"

    invoke-static {p5, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx8/q0;->a:Lcom/nike/adapt/adk/IDeviceController;

    iput-object p2, p0, Lx8/q0;->b:Lcom/nike/adapt/adk/Shoe;

    iput-object p3, p0, Lx8/q0;->c:Lq7/m1;

    iput-object p4, p0, Lx8/q0;->d:Lx8/q0$a;

    .line 3
    iput p5, p0, Lx8/q0;->e:I

    iput-boolean p6, p0, Lx8/q0;->f:Z

    iput-object p8, p0, Lx8/q0;->g:Lqd/p;

    .line 4
    iget-object p1, p3, Lq7/m1;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lx8/q0;->h:Landroid/content/Context;

    const-wide/16 p3, 0xc8

    .line 5
    iput-wide p3, p0, Lx8/q0;->j:J

    .line 6
    invoke-virtual {p2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p2

    iput-boolean p2, p0, Lx8/q0;->k:Z

    .line 7
    sget-object p2, Ly/a;->a:Ljava/lang/Object;

    const p2, 0x7f06008f

    .line 8
    invoke-static {p1, p2}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result p2

    .line 9
    iput p2, p0, Lx8/q0;->l:I

    const p2, 0x7f060090

    .line 10
    invoke-static {p1, p2}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result p2

    .line 11
    iput p2, p0, Lx8/q0;->m:I

    const p2, 0x7f060092

    .line 12
    invoke-static {p1, p2}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result p2

    .line 13
    iput p2, p0, Lx8/q0;->n:I

    .line 14
    new-instance p2, Lx8/s0;

    invoke-direct {p2, p0}, Lx8/s0;-><init>(Lx8/q0;)V

    invoke-static {p2}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p2

    check-cast p2, Lfd/h;

    iput-object p2, p0, Lx8/q0;->o:Lfd/h;

    .line 15
    new-instance p2, Lx8/z0;

    invoke-direct {p2, p0}, Lx8/z0;-><init>(Lx8/q0;)V

    invoke-static {p2}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p2

    check-cast p2, Lfd/h;

    iput-object p2, p0, Lx8/q0;->p:Lfd/h;

    .line 16
    new-instance p2, Lx8/t0;

    invoke-direct {p2, p0}, Lx8/t0;-><init>(Lx8/q0;)V

    invoke-static {p2}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p2

    check-cast p2, Lfd/h;

    iput-object p2, p0, Lx8/q0;->q:Lfd/h;

    .line 17
    new-instance p2, Lx8/b1;

    invoke-direct {p2, p0}, Lx8/b1;-><init>(Lx8/q0;)V

    invoke-static {p2}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p2

    check-cast p2, Lfd/h;

    iput-object p2, p0, Lx8/q0;->r:Lfd/h;

    .line 18
    new-instance p2, Lx8/v0;

    invoke-direct {p2, p0}, Lx8/v0;-><init>(Lx8/q0;)V

    invoke-static {p2}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p2

    check-cast p2, Lfd/h;

    iput-object p2, p0, Lx8/q0;->s:Lfd/h;

    .line 19
    new-instance p2, Lx8/c1;

    invoke-direct {p2, p0}, Lx8/c1;-><init>(Lx8/q0;)V

    invoke-static {p2}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p2

    check-cast p2, Lfd/h;

    iput-object p2, p0, Lx8/q0;->t:Lfd/h;

    .line 20
    new-instance p2, Lx8/x0;

    invoke-direct {p2, p0}, Lx8/x0;-><init>(Lx8/q0;)V

    invoke-static {p2}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p2

    check-cast p2, Lfd/h;

    iput-object p2, p0, Lx8/q0;->u:Lfd/h;

    .line 21
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lx8/q0;->v:Landroid/animation/AnimatorSet;

    const-string p2, "context"

    .line 22
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lx8/q0;->w:I

    const/16 p3, 0x10

    .line 23
    invoke-static {p1, p3}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lx8/q0;->x:I

    const/4 p1, 0x0

    const/16 p3, 0x15

    new-array p4, p3, [F

    :goto_0
    if-ge p1, p3, :cond_0

    const/high16 p5, 0x40a00000    # 5.0f

    int-to-float p6, p1

    mul-float/2addr p6, p5

    .line 24
    aput p6, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lx8/q0;->z:[F

    .line 25
    iget-object p1, p0, Lx8/q0;->h:Landroid/content/Context;

    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x50

    invoke-static {p1, p3}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result p1

    .line 26
    iget-object p3, p0, Lx8/q0;->h:Landroid/content/Context;

    invoke-static {p3, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8c

    invoke-static {p3, p2}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result p2

    .line 27
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    invoke-virtual {p0}, Lx8/q0;->g()Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance p4, Lx8/p0;

    invoke-direct {p4, p0, p1, p2}, Lx8/p0;-><init>(Lx8/q0;II)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final a(Lx8/q0;Lx8/d1;ILandroid/view/View;JJ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget v3, v1, Lx8/d1;->d:I

    if-ne v3, v2, :cond_0

    .line 2
    iget v5, v0, Lx8/q0;->m:I

    iget v6, v0, Lx8/q0;->l:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x10

    move-object/from16 v4, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-static/range {v4 .. v13}, Lf1/b;->a(Landroid/view/View;IIJJZZI)V

    goto :goto_1

    .line 3
    :cond_0
    iget v15, v0, Lx8/q0;->m:I

    iget v0, v0, Lx8/q0;->l:I

    .line 4
    iget v1, v1, Lx8/d1;->b:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move/from16 v21, v1

    const/16 v22, 0x0

    const/16 v23, 0x20

    move-object/from16 v14, p3

    move/from16 v16, v0

    move-wide/from16 v17, p4

    move-wide/from16 v19, p6

    .line 5
    invoke-static/range {v14 .. v23}, Lf1/b;->a(Landroid/view/View;IIJJZZI)V

    :goto_1
    return-void
.end method

.method public static final b(Lx8/q0;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "shoeController"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget v3, p0, Lx8/q0;->e:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lx8/q0;->n:I

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eq v0, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v4, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v5, p0, Lx8/q0;->j:J

    .line 5
    invoke-static {v2, v0, v3}, Lf1/b;->h(ZII)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 6
    new-instance v0, Lx8/e;

    invoke-direct {v0, v4}, Lx8/e;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public static final c(Lx8/q0;)Lq7/l1;
    .locals 0

    iget-object p0, p0, Lx8/q0;->o:Lfd/h;

    invoke-virtual {p0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq7/l1;

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "shoeController"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lx8/q0;->i:F

    invoke-static {v0, v1}, Lf1/b;->d(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    .line 2
    new-instance v1, Lx8/q0$b;

    invoke-direct {v1, p0}, Lx8/q0$b;-><init>(Lx8/q0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lx8/q0;->A:Z

    .line 2
    iget-object v0, p0, Lx8/q0;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lx8/q0;->B:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 2

    invoke-virtual {p0}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "indicators"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lf1/b;->o(Landroid/view/View;ZI)V

    return-void
.end method

.method public final g()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lx8/q0;->q:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final h()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lx8/q0;->s:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final i()Lx8/w;
    .locals 1

    iget-object v0, p0, Lx8/q0;->u:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx8/w;

    return-object v0
.end method

.method public final j()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lx8/q0;->r:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final k(IZ)V
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lx8/q0$c;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lx8/q0$c;-><init>(Lx8/q0;ILjd/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lx8/q0;->y:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lx8/q0;->o()V

    :cond_0
    if-eqz p2, :cond_2

    .line 4
    iget-boolean p1, p0, Lx8/q0;->k:Z

    if-eqz p1, :cond_1

    const p1, 0x7f11003a

    goto :goto_0

    :cond_1
    const p1, 0x7f110030

    :goto_0
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/util/Pair;

    const/4 v0, 0x0

    .line 5
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lx8/q0;->y:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "percentage"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget v0, p0, Lx8/q0;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lx8/h0;->h:Lx8/h0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lx8/q0;->g:Lqd/p;

    sget-object v1, Lx8/d0;->l:Lx8/d0;

    sget-object v2, Lx8/k0;->h:Lx8/k0;

    invoke-interface {v0, v1, v2}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final m(Lx8/d0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v2}, Lx8/q0;->u(I)V

    .line 3
    invoke-virtual {p0}, Lx8/q0;->i()Lx8/w;

    move-result-object p1

    invoke-static {p1, v2, v1, v0}, Lx8/w;->e(Lx8/w;IZI)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Lx8/q0;->u(I)V

    .line 5
    invoke-virtual {p0}, Lx8/q0;->i()Lx8/w;

    move-result-object p1

    invoke-static {p1, v1, v1, v0}, Lx8/w;->e(Lx8/w;IZI)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lx8/q0;->z:[F

    array-length p1, p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lx8/q0;->u(I)V

    .line 7
    invoke-virtual {p0}, Lx8/q0;->i()Lx8/w;

    move-result-object p1

    iget-object v2, p0, Lx8/q0;->z:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2, v1, v0}, Lx8/w;->e(Lx8/w;IZI)V

    :goto_0
    return-void
.end method

.method public final n(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx8/q0;->i()Lx8/w;

    move-result-object v0

    .line 2
    iput-object p1, v0, Lx8/w;->z:Landroid/content/Context;

    return-void
.end method

.method public final o()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-boolean v1, p0, Lx8/q0;->k:Z

    const-string v2, ". "

    if-eqz v1, :cond_0

    const v1, 0x7f110039

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    const v1, 0x7f11002f

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lx8/q0;->y:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    const v1, 0x7f11003b

    .line 4
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const/4 v3, 0x0

    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Lx8/q0;->y:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "percentage"

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const v1, 0x7f11002e

    .line 6
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 8

    .line 1
    instance-of v0, p0, Lx8/n0;

    .line 2
    invoke-virtual {p0}, Lx8/q0;->v()V

    .line 3
    invoke-virtual {p0}, Lx8/q0;->g()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe5555555555555L    # 0.6666666666666666

    mul-double/2addr v1, v3

    const-wide v3, 0x3ff5a8aadc994eb2L    # 1.353678571428571

    mul-double/2addr v3, v1

    double-to-int v3, v3

    .line 4
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    double-to-int v6, v1

    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x3e2e147b

    float-to-double v4, v4

    mul-double/2addr v4, v1

    if-eqz v0, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 5
    iput v4, p0, Lx8/q0;->i:F

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    neg-double v1, v1

    :goto_1
    double-to-float v0, v1

    .line 6
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lx8/q0;->i:F

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 8
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 9
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {v2, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 10
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v2

    add-float/2addr p1, v0

    div-int/2addr v3, v1

    int-to-float v0, v3

    add-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public final q()V
    .locals 3

    invoke-virtual {p0}, Lx8/q0;->i()Lx8/w;

    move-result-object v0

    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "shoeController"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lx8/q0;->z:[F

    invoke-virtual {v0, v1, v2}, Lx8/w;->h(Landroid/view/View;[F)V

    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget v0, p0, Lx8/q0;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lx8/h0;->i:Lx8/h0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lx8/q0;->i()Lx8/w;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lx8/w;->x:Z

    .line 5
    iget-object v0, p0, Lx8/q0;->g:Lqd/p;

    sget-object v1, Lx8/d0;->l:Lx8/d0;

    sget-object v2, Lx8/k0;->i:Lx8/k0;

    invoke-interface {v0, v1, v2}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final s(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lx8/q0;->o()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final t(Lcom/nike/adapt/adk/IDeviceCacheADK;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "deviceCache"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownAbsoluteTightness()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    if-gt v2, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownAbsoluteTightness()I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 3
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->r()V

    goto :goto_2

    .line 5
    :cond_2
    sget-object v7, Lo7/x;->a:Lo7/x;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "At Impossible Maximum, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7c

    const/16 v16, 0x0

    const-string v8, "ShoeControllerUiHelper"

    invoke-static/range {v7 .. v16}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->r()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/high16 v5, 0x41a80000    # 21.0f

    .line 9
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 10
    new-instance v5, Landroid/widget/Space;

    new-instance v6, Lj/c;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f120133

    invoke-direct {v6, v7, v8}, Lj/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    iget-object v7, v0, Lx8/q0;->p:Lfd/h;

    invoke-virtual {v7}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v9, -0x1

    .line 12
    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v5, v0, Lx8/q0;->z:[F

    array-length v5, v5

    move v6, v3

    :goto_3
    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-ge v6, v5, :cond_4

    .line 14
    iget-boolean v11, v0, Lx8/q0;->k:Z

    if-eqz v11, :cond_3

    const v11, 0x7f0d00f2

    goto :goto_4

    :cond_3
    const v11, 0x7f0d009a

    .line 15
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v11, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v11, 0x7f0a0482

    .line 16
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 17
    iget v12, v0, Lx8/q0;->m:I

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    const v11, 0x7f0a0483

    .line 19
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    mul-int/lit8 v12, v6, 0x5

    rsub-int/lit8 v12, v12, 0x64

    .line 20
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v12, 0x8

    .line 21
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 22
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 23
    :cond_4
    new-instance v4, Landroid/widget/Space;

    new-instance v5, Lj/c;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lj/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    iget-object v6, v0, Lx8/q0;->p:Lfd/h;

    invoke-virtual {v6}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 25
    invoke-direct {v5, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget v1, v0, Lx8/q0;->e:I

    const-string v4, "shoeController"

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    .line 27
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v5, Lx8/h0;->h:Lx8/h0;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->l()V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f060091

    invoke-static {v1, v5}, Lx8/i1;->d(Landroid/widget/ImageView;I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    const v5, 0x3e051eb8

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    .line 31
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->r()V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f060092

    invoke-static {v1, v5}, Lx8/i1;->d(Landroid/widget/ImageView;I)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 34
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->v()V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lx8/q0;->i()Lx8/w;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v5, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lx8/q0;->z:[F

    invoke-virtual {v1, v5, v4}, Lx8/w;->h(Landroid/view/View;[F)V

    .line 36
    invoke-virtual {v0, v2, v3}, Lx8/q0;->k(IZ)V

    return-void
.end method

.method public final u(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx8/q0;->g:Lqd/p;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lx8/d0;->i:Lx8/d0;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lx8/q0;->z:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    sget-object p1, Lx8/d0;->h:Lx8/d0;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lx8/d0;->k:Lx8/d0;

    .line 5
    :goto_0
    sget-object v1, Lx8/k0;->i:Lx8/k0;

    .line 6
    invoke-interface {v0, p1, v1}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    instance-of v0, p0, Lx8/n0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lx8/q0;->g()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lx8/q0;->g()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lx8/q0;->t:Lfd/h;

    invoke-virtual {v1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lx8/q0;->g()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lx8/q0;->t:Lfd/h;

    invoke-virtual {v1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lx8/q0;->g()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public final w()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx8/q0;->i()Lx8/w;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lx8/w;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
