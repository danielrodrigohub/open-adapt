.class public final Lcom/nike/adapt/ui/GoogleVoicePromptActivity;
.super Lp8/q;
.source "GoogleVoicePromptActivity.kt"


# static fields
.field public static final synthetic F:I


# instance fields
.field public E:Lq7/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp8/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0028

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0242

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    const v0, 0x7f0a0244

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 6
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0434

    .line 7
    invoke-static {p1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    const v3, 0x7f0a0477

    .line 8
    invoke-static {p1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v8, :cond_2

    const v3, 0x7f0a0478

    .line 9
    invoke-static {p1, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_2

    .line 10
    new-instance p1, Lq7/i;

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lq7/i;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/LinearLayout;)V

    .line 11
    iput-object p1, p0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->E:Lq7/i;

    .line 12
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f0a00e3

    .line 13
    invoke-virtual {p0, p1}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 14
    iget-object p1, p0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->E:Lq7/i;

    const-string v0, "binding"

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p1, Lq7/i;->a:Landroid/widget/LinearLayout;

    .line 16
    invoke-static {p1}, Lq7/g1;->a(Landroid/view/View;)Lq7/g1;

    move-result-object p1

    .line 17
    iget-object v3, p1, Lq7/g1;->a:Landroid/widget/Button;

    const v4, 0x7f11035c

    .line 18
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0602a1

    .line 19
    invoke-static {v4}, Landroidx/lifecycle/o;->o(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08006d

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v4, Lo8/e;

    invoke-direct {v4, p0, v2}, Lo8/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p1, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    const v3, 0x7f11035d

    .line 23
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f06029d

    .line 24
    invoke-static {v3}, Landroidx/lifecycle/o;->o(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    new-instance v3, Lo8/f;

    invoke-direct {v3, p0, v2}, Lo8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->E:Lq7/i;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/i;->b:Landroid/widget/LinearLayout;

    const-string v0, "binding.googleVoiceBottomAnimTray"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x19

    new-instance v1, Lcom/nike/adapt/ui/GoogleVoicePromptActivity$a;

    invoke-direct {v1, p0}, Lcom/nike/adapt/ui/GoogleVoicePromptActivity$a;-><init>(Lcom/nike/adapt/ui/GoogleVoicePromptActivity;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 31
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-static {v0}, Lg7/b;->c(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    .line 34
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 35
    new-instance v0, Lx8/h;

    invoke-direct {v0, v1}, Lx8/h;-><init>(Lqd/a;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string v0, "completed: () -> Unit) {\u2026        }\n\n            })"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 37
    sget-object p1, Lh8/c;->b:Lh8/c;

    const/16 v0, -0xa

    .line 38
    invoke-virtual {p1, v0}, Lh8/c;->d(I)V

    return-void

    .line 39
    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v3

    .line 41
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
