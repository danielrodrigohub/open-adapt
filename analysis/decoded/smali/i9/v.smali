.class public final Li9/v;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalibrateOrthoticsFragment.kt"


# instance fields
.field public final synthetic a:Li9/t;


# direct methods
.method public constructor <init>(Li9/t;)V
    .locals 0

    iput-object p1, p0, Li9/v;->a:Li9/t;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Li9/v;->a:Li9/t;

    .line 3
    iget-object p1, p1, Li9/t;->k0:Lq7/i1;

    const/4 v0, 0x0

    const-string v1, "itemMessagingHeadlineBinding"

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    const v2, 0x7f11006f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p1, p0, Li9/v;->a:Li9/t;

    .line 6
    iget-object p1, p1, Li9/t;->k0:Lq7/i1;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p1, Lq7/i1;->a:Landroid/widget/TextView;

    const v1, 0x7f110168

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Li9/v;->a:Li9/t;

    .line 9
    iget-object p1, p1, Li9/t;->j0:Lq7/l0;

    const-string v1, "contentMessagingHeadlineWithCtaBinding"

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p1, Lq7/l0;->b:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object p1, p0, Li9/v;->a:Li9/t;

    .line 12
    iget-object p1, p1, Li9/t;->l0:Lq7/g1;

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p1, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Li9/v;->a:Li9/t;

    .line 15
    iget-object p1, p1, Li9/t;->j0:Lq7/l0;

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p1, Lq7/l0;->c:Landroid/widget/LinearLayout;

    const-string v0, "contentMessagingHeadline\u2026.messagingCenterContainer"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lf1/b;->g(Landroid/view/View;ZI)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "itemMessagingCtaBinding"

    .line 17
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method
