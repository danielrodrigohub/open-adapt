.class public final Lcom/nike/adapt/ui/helper/NotificationToast;
.super Landroid/widget/FrameLayout;
.source "NotificationToast.kt"


# static fields
.field public static final synthetic k:I


# instance fields
.field public final h:Lq7/p1;

.field public final i:Ly0/x;

.field public final j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Ly0/x;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Ly0/x;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->i:Ly0/x;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00dc

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0a0338

    .line 5
    invoke-static {p0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/cardview/widget/CardView;

    if-eqz v5, :cond_1

    const v1, 0x7f0a0339

    .line 6
    invoke-static {p0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    const v1, 0x7f0a033a

    .line 7
    invoke-static {p0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_1

    const v1, 0x7f0a033b

    .line 8
    invoke-static {p0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_1

    const v1, 0x7f0a033c

    .line 9
    invoke-static {p0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    const v1, 0x7f0a033d

    .line 10
    invoke-static {p0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 11
    new-instance v1, Lq7/p1;

    move-object v3, v1

    move-object v4, p0

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v3 .. v9}, Lq7/p1;-><init>(Landroid/view/View;Landroidx/cardview/widget/CardView;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 12
    iput-object v1, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    const/16 v1, 0x8

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    sget-object v1, Lcom/nike/adapt/R$styleable;->NotificationToast:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v1, "context.obtainStyledAttr\u2026.NotificationToast, 0, 0)"

    invoke-static {p2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 16
    :try_start_0
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->j:Z

    const/4 v3, 0x3

    .line 17
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-direct {p0, v3}, Lcom/nike/adapt/ui/helper/NotificationToast;->setTitleText(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    .line 21
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f080184

    .line 22
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 23
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 24
    invoke-static {p1, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 25
    invoke-virtual {v11, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    new-instance p1, Lx8/j0;

    invoke-direct {p1, p0, v0}, Lx8/j0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final setTitleText(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object v0, v0, Lq7/p1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object p1, p1, Lq7/p1;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 4
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 5
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object v0, v0, Lq7/p1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->b(Z)V

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object v1, v1, Lq7/p1;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "binding.notificationToastTitle.text"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object v1, v1, Lq7/p1;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object v1, v1, Lq7/p1;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v3, "binding.notificationToastDescription.text"

    invoke-static {v1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object v0, v0, Lq7/p1;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 4
    :cond_3
    iget-boolean v0, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->j:Z

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->i:Ly0/x;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->i:Ly0/x;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public final b(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const v0, 0x3f666666

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_4

    const-wide/16 v3, 0xfa

    goto :goto_3

    :cond_4
    const-wide/16 v3, 0x7d

    .line 5
    :goto_3
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v0

    .line 6
    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_6

    move v0, v2

    .line 7
    :cond_6
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/nike/adapt/ui/helper/NotificationToast$a;

    invoke-direct {v1, p0, p1}, Lcom/nike/adapt/ui/helper/NotificationToast$a;-><init>(Lcom/nike/adapt/ui/helper/NotificationToast;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final c(I)Lcom/nike/adapt/ui/helper/NotificationToast;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object v0, v0, Lq7/p1;->b:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final d(Lqd/a;)Lcom/nike/adapt/ui/helper/NotificationToast;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;)",
            "Lcom/nike/adapt/ui/helper/NotificationToast;"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/ui/helper/NotificationToast;->h:Lq7/p1;

    iget-object v0, v0, Lq7/p1;->a:Landroidx/cardview/widget/CardView;

    new-instance v1, Lo8/e;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lo8/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final e(I)Lcom/nike/adapt/ui/helper/NotificationToast;
    .locals 0

    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nike/adapt/ui/helper/NotificationToast;->setTitleText(Ljava/lang/String;)V

    return-object p0
.end method
