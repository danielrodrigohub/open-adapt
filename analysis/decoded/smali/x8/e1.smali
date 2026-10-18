.class public abstract Lx8/e1;
.super Ljava/lang/Object;
.source "ShoeScaleControllerUiHelper.kt"


# instance fields
.field public final a:Landroid/widget/LinearLayout;

.field public final b:Landroid/content/Context;

.field public final c:I

.field public d:Landroid/animation/ValueAnimator;

.field public e:[F

.field public final f:I

.field public final g:Lfd/h;

.field public final h:Lfd/h;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx8/e1;->a:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lx8/e1;->b:Landroid/content/Context;

    const/16 p2, 0x13

    .line 3
    iput p2, p0, Lx8/e1;->c:I

    const/4 p2, 0x0

    new-array p2, p2, [F

    .line 4
    iput-object p2, p0, Lx8/e1;->e:[F

    .line 5
    sget-object p2, Ly/a;->a:Ljava/lang/Object;

    const p2, 0x7f060090

    .line 6
    invoke-static {p1, p2}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result p1

    .line 7
    iput p1, p0, Lx8/e1;->f:I

    .line 8
    new-instance p1, Lx8/e1$a;

    invoke-direct {p1, p0}, Lx8/e1$a;-><init>(Lx8/e1;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lx8/e1;->g:Lfd/h;

    .line 9
    new-instance p1, Lx8/e1$b;

    invoke-direct {p1, p0}, Lx8/e1$b;-><init>(Lx8/e1;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lx8/e1;->h:Lfd/h;

    return-void
.end method

.method public static f(Lx8/e1;ZILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lf1/b;->o(Landroid/view/View;ZI)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lx8/e1;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/e1;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2
    :cond_0
    iget-object v0, p0, Lx8/e1;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method public final c()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lx8/e1;->g:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final d(I)V
    .locals 10

    .line 1
    iget v0, p0, Lx8/e1;->c:I

    .line 2
    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    if-nez v3, :cond_0

    int-to-float v4, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_1

    int-to-float v4, p1

    goto :goto_1

    :cond_1
    int-to-double v4, p1

    int-to-double v6, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 3
    :goto_1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iput-object v1, p0, Lx8/e1;->e:[F

    .line 5
    invoke-virtual {p0}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx8/e1;->e(Landroid/widget/LinearLayout;)V

    .line 6
    invoke-virtual {p0}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lx8/e1;->e:[F

    array-length v0, v0

    const-string v1, "viewGroup"

    .line 7
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 8
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 9
    new-instance v2, Lx8/f;

    invoke-direct {v2, v1, v0, p1}, Lx8/f;-><init>(Landroid/animation/ValueAnimator;ILandroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, -0x1

    .line 10
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    mul-int/lit8 v0, v0, 0x64

    int-to-long v2, v0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    iput-object v1, p0, Lx8/e1;->d:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final e(Landroid/widget/LinearLayout;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-static {v2, v1}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v1

    .line 4
    new-instance v2, Landroid/widget/Space;

    new-instance v3, Lj/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120133

    invoke-direct {v3, v4, v5}, Lj/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iget-object v4, p0, Lx8/e1;->h:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v6, -0x1

    .line 6
    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v2, p0, Lx8/e1;->e:[F

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 8
    new-instance v7, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9
    iget v8, p0, Lx8/e1;->f:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v7, p0, Lx8/e1;->e:[F

    array-length v7, v7

    add-int/2addr v7, v6

    if-eq v4, v7, :cond_0

    .line 14
    new-instance v7, Landroid/widget/Space;

    new-instance v8, Lj/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lj/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v7, v8}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v6, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Landroid/widget/Space;

    new-instance v1, Lj/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lj/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    iget-object v2, p0, Lx8/e1;->h:Lfd/h;

    invoke-virtual {v2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 17
    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
