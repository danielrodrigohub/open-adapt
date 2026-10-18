.class public final Li9/g;
.super Lp8/b;
.source "AdaptShoesOnboardingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/g$a;,
        Li9/g$b;
    }
.end annotation


# static fields
.field public static final K0:Li9/g$a;

.field public static final L0:Ljava/lang/String;


# instance fields
.field public A0:I

.field public B0:Z

.field public C0:Z

.field public D0:I

.field public final E0:Landroid/os/Handler;

.field public F0:Li9/a;

.field public G0:Li9/a;

.field public H0:Z

.field public final I0:Lfd/d;

.field public final J0:Lfd/d;

.field public final h0:Ljava/lang/String;

.field public i0:Lq7/o0;

.field public j0:Lq7/i1;

.field public k0:Lq7/g1;

.field public l0:Z

.field public m0:Lcom/nike/adapt/adk/IDeviceController;

.field public n0:Lcom/nike/adapt/adk/IAdaptRequester;

.field public o0:Lj9/b;

.field public p0:Lx8/g0;

.field public q0:Lx8/o0;

.field public r0:Lx8/n0;

.field public s0:Lx8/f0;

.field public t0:Lea/m;

.field public u0:Lo8/d;

.field public v0:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w0:I

.field public x0:Landroidx/appcompat/app/d;

.field public y0:Landroid/animation/ObjectAnimator;

.field public z0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li9/g$a;

    invoke-direct {v0}, Li9/g$a;-><init>()V

    sput-object v0, Li9/g;->K0:Li9/g$a;

    const-class v0, Li9/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li9/g;->L0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lp8/b;-><init>()V

    const-string v0, "AdaptShoesOnboardingFragment"

    .line 2
    iput-object v0, p0, Li9/g;->h0:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Li9/g;->w0:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Li9/g;->z0:I

    .line 5
    iput v0, p0, Li9/g;->A0:I

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Li9/g;->E0:Landroid/os/Handler;

    .line 7
    new-instance v0, Li9/a;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v0, p0, Li9/g;->F0:Li9/a;

    .line 8
    new-instance v0, Li9/a;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1, v2}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v0, p0, Li9/g;->G0:Li9/a;

    .line 9
    sget-object v0, Li9/g$c;->h:Li9/g$c;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Li9/g;->I0:Lfd/d;

    .line 10
    sget-object v0, Li9/g$f;->h:Li9/g$f;

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Li9/g;->J0:Lfd/d;

    return-void
.end method


# virtual methods
.method public final G(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lo8/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo8/d;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lo8/d;

    iput-object p1, p0, Li9/g;->u0:Lo8/d;

    sget-object v1, Lfd/o;->a:Lfd/o;

    :cond_1
    if-eqz v1, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-class v0, Lo8/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final H(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lp8/r;->H(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 4
    sget-object v1, Li9/m;->h:Li9/m;

    .line 5
    new-instance v2, Li9/k;

    invoke-direct {v2, p0}, Li9/k;-><init>(Li9/g;)V

    .line 6
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0, v1, v2}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Li9/g;->n0:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 7
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 9
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "inflater"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/m;->o()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0072

    const/4 v3, 0x0

    move-object/from16 v4, p2

    .line 2
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout;

    const v4, 0x7f0a0284

    .line 4
    invoke-static {v1, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    const-string v6, "Missing required view with ID: "

    if-eqz v5, :cond_1d

    .line 5
    move-object v8, v5

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a0369

    .line 6
    invoke-static {v5, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v9, :cond_1c

    const v4, 0x7f0a036d

    .line 7
    invoke-static {v5, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_1c

    const v4, 0x7f0a036e

    .line 8
    invoke-static {v5, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_1c

    const v4, 0x7f0a036f

    .line 9
    invoke-static {v5, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_1c

    .line 10
    new-instance v13, Lq7/k1;

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lq7/k1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const v4, 0x7f0a036a

    .line 11
    invoke-static {v1, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v8, :cond_1d

    const v4, 0x7f0a036b

    .line 12
    invoke-static {v1, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1d

    const v4, 0x7f0a036c

    .line 13
    invoke-static {v1, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_1d

    const v4, 0x7f0a03c7

    .line 14
    invoke-static {v1, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 15
    invoke-static {v5}, Lq7/m1;->a(Landroid/view/View;)Lq7/m1;

    move-result-object v11

    const v4, 0x7f0a03ca

    .line 16
    invoke-static {v1, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_1d

    const v4, 0x7f0a03ce

    .line 17
    invoke-static {v1, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_1d

    const v4, 0x7f0a03dd

    .line 18
    invoke-static {v1, v4}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1d

    const v1, 0x7f0a0295

    .line 19
    invoke-static {v5, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1b

    const v1, 0x7f0a0394

    .line 20
    invoke-static {v5, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1b

    .line 21
    check-cast v5, Landroid/widget/LinearLayout;

    .line 22
    new-instance v1, Lq7/n1;

    invoke-direct {v1, v4, v7, v5}, Lq7/n1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 23
    new-instance v15, Lq7/o0;

    move-object v4, v15

    move-object v5, v2

    move-object v6, v2

    move-object v7, v13

    move-object v13, v14

    move-object v14, v1

    invoke-direct/range {v4 .. v14}, Lq7/o0;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lq7/k1;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lq7/m1;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lq7/n1;)V

    .line 24
    iput-object v15, v0, Li9/g;->i0:Lq7/o0;

    .line 25
    invoke-static {v2}, Lq7/g1;->a(Landroid/view/View;)Lq7/g1;

    move-result-object v1

    iput-object v1, v0, Li9/g;->k0:Lq7/g1;

    .line 26
    iget-object v1, v0, Li9/g;->i0:Lq7/o0;

    const-string v2, "binding"

    const/4 v4, 0x0

    if-eqz v1, :cond_1a

    .line 27
    iget-object v1, v1, Lq7/o0;->a:Landroid/widget/FrameLayout;

    .line 28
    invoke-static {v1}, Lq7/i1;->a(Landroid/view/View;)Lq7/i1;

    move-result-object v1

    iput-object v1, v0, Li9/g;->j0:Lq7/i1;

    .line 29
    iget-object v1, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v1, :cond_19

    .line 30
    iget-object v1, v1, Lq7/o0;->a:Landroid/widget/FrameLayout;

    .line 31
    new-instance v5, Lj9/b;

    iget-object v6, v0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    const-string v7, "deviceController"

    if-eqz v6, :cond_18

    invoke-virtual/range {p0 .. p0}, Li9/g;->x0()Lh8/d;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lj9/b;-><init>(Lcom/nike/adapt/adk/IDeviceController;Lh8/d;)V

    iput-object v5, v0, Li9/g;->o0:Lj9/b;

    const-string v5, "this"

    .line 32
    invoke-static {v1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Li9/g;->x0()Lh8/d;

    move-result-object v5

    invoke-interface {v5}, Lh8/d;->c()Lv7/h;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v6, Lv7/h;->k:Lv7/h;

    const/4 v8, 0x1

    if-eq v5, v6, :cond_0

    sget-object v6, Lv7/h;->l:Lv7/h;

    if-ne v5, v6, :cond_1

    :cond_0
    move v3, v8

    :cond_1
    const/4 v5, 0x2

    const-string v6, "binding.adaptShoeControllerContainer"

    if-eqz v3, :cond_3

    .line 35
    sget-object v3, Lp7/b;->a:Lp7/b;

    iget-object v9, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v9, :cond_2

    iget-object v9, v9, Lq7/o0;->b:Landroid/widget/FrameLayout;

    invoke-static {v9, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lz8/a;->m:Lz8/a;

    invoke-virtual {v3, v9, v6}, Lp7/b;->e(Landroid/view/View;Lz8/a;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_3
    sget-object v3, Lp7/b;->a:Lp7/b;

    iget-object v3, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_17

    iget-object v3, v3, Lq7/o0;->b:Landroid/widget/FrameLayout;

    invoke-static {v3, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lp7/b;->f(Landroid/view/View;)V

    .line 37
    :goto_0
    iget-object v3, v0, Li9/g;->j0:Lq7/i1;

    const-string v6, "messagingHeadlineBinding"

    if-eqz v3, :cond_16

    iget-object v3, v3, Lq7/i1;->c:Landroid/widget/TextView;

    const v9, 0x7f11003d

    invoke-static {v9}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v3, v0, Li9/g;->j0:Lq7/i1;

    if-eqz v3, :cond_15

    iget-object v3, v3, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {v3, v8}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 39
    new-instance v3, Landroid/util/Pair;

    sget-object v8, Ls9/p;->a:Ls9/p;

    invoke-virtual/range {p0 .. p0}, Li9/g;->x0()Lh8/d;

    move-result-object v9

    invoke-interface {v9}, Lh8/d;->d()Ls9/r;

    move-result-object v9

    invoke-virtual {v8, v9}, Ls9/p;->f(Ls9/r;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mode"

    invoke-direct {v3, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Li9/g;->v0:Landroid/util/Pair;

    .line 40
    iget-object v3, v0, Li9/g;->k0:Lq7/g1;

    const-string v8, "itemMessagingCtaBinding"

    if-eqz v3, :cond_14

    iget-object v3, v3, Lq7/g1;->a:Landroid/widget/Button;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v3, v0, Li9/g;->k0:Lq7/g1;

    if-eqz v3, :cond_13

    iget-object v3, v3, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v3, v0, Li9/g;->k0:Lq7/g1;

    if-eqz v3, :cond_12

    iget-object v3, v3, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 43
    iget-object v3, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_11

    iget-object v3, v3, Lq7/o0;->g:Lq7/m1;

    iget-object v3, v3, Lq7/m1;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 44
    iget-object v3, v0, Li9/g;->o0:Lj9/b;

    if-eqz v3, :cond_10

    iget-object v3, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_f

    iget-object v3, v3, Lq7/o0;->g:Lq7/m1;

    iget-object v3, v3, Lq7/m1;->d:Landroid/widget/ImageView;

    const-string v8, "binding.shoeControllerCombined.slit"

    invoke-static {v3, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x0

    new-array v5, v5, [F

    .line 45
    fill-array-data v5, :array_0

    const-string v12, "alpha"

    .line 46
    invoke-static {v3, v12, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 47
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v8, 0x3e8

    .line 50
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v5, "ofFloat(view, \"alpha\", s\u2026(FADE_ANIMATION_DURATION)"

    invoke-static {v3, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object v3, v0, Li9/g;->y0:Landroid/animation/ObjectAnimator;

    .line 52
    new-instance v5, Li9/n;

    invoke-direct {v5, v0}, Li9/n;-><init>(Li9/g;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    new-instance v3, Lx8/g0;

    iget-object v5, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lq7/o0;->j:Lq7/n1;

    iget-object v5, v5, Lq7/n1;->c:Landroid/widget/LinearLayout;

    const-string v8, "binding.shoeScaleControl\u2026hoeScaleCombinedContainer"

    invoke-static {v5, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v9, :cond_d

    iget-object v9, v9, Lq7/o0;->j:Lq7/n1;

    iget-object v9, v9, Lq7/n1;->a:Landroid/widget/LinearLayout;

    const-string v10, "binding.shoeScaleControl\u2026ScaleControllerIndicators"

    invoke-static {v9, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5, v9}, Lx8/g0;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    iput-object v3, v0, Li9/g;->p0:Lx8/g0;

    .line 54
    new-instance v3, Lx8/o0;

    iget-object v5, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v5, :cond_c

    iget-object v5, v5, Lq7/o0;->j:Lq7/n1;

    iget-object v5, v5, Lq7/n1;->c:Landroid/widget/LinearLayout;

    invoke-static {v5, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v8, :cond_b

    iget-object v8, v8, Lq7/o0;->j:Lq7/n1;

    iget-object v8, v8, Lq7/n1;->b:Landroid/widget/LinearLayout;

    const-string v9, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v8, v9}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5, v8}, Lx8/o0;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    iput-object v3, v0, Li9/g;->q0:Lx8/o0;

    .line 55
    new-instance v3, Lx8/f0;

    iget-object v11, v0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v11, :cond_a

    iget-object v5, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v5, :cond_9

    iget-object v12, v5, Lq7/o0;->g:Lq7/m1;

    const-string v5, "binding.shoeControllerCombined"

    invoke-static {v12, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-instance v15, Li9/o;

    invoke-direct {v15, v0}, Li9/o;-><init>(Li9/g;)V

    const/16 v16, 0xc

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lx8/f0;-><init>(Lcom/nike/adapt/adk/IDeviceController;Lq7/m1;Lx8/q0$a;ZLqd/p;I)V

    iput-object v3, v0, Li9/g;->s0:Lx8/f0;

    .line 56
    new-instance v3, Lx8/n0;

    iget-object v8, v0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v8, :cond_8

    iget-object v7, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v7, :cond_7

    iget-object v7, v7, Lq7/o0;->g:Lq7/m1;

    invoke-static {v7, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x1

    new-instance v5, Li9/p;

    invoke-direct {v5, v0}, Li9/p;-><init>(Li9/g;)V

    const/16 v23, 0xc

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    move-object/from16 v19, v7

    move-object/from16 v22, v5

    invoke-direct/range {v17 .. v23}, Lx8/n0;-><init>(Lcom/nike/adapt/adk/IDeviceController;Lq7/m1;Lx8/q0$a;ZLqd/p;I)V

    iput-object v3, v0, Li9/g;->r0:Lx8/n0;

    .line 57
    new-instance v3, Li9/q;

    invoke-direct {v3, v0}, Li9/q;-><init>(Li9/g;)V

    invoke-static {v3}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v3

    .line 58
    new-instance v5, Li9/r;

    invoke-direct {v5, v0}, Li9/r;-><init>(Li9/g;)V

    invoke-static {v5}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v5

    .line 59
    check-cast v3, Lfd/h;

    invoke-virtual {v3}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 60
    new-instance v7, Ly0/s;

    const/4 v8, 0x5

    invoke-direct {v7, v0, v8}, Ly0/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    move-object v3, v5

    check-cast v3, Lfd/h;

    invoke-virtual {v3}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 62
    new-instance v7, Landroidx/lifecycle/c;

    invoke-direct {v7, v0, v5, v8}, Landroidx/lifecycle/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 63
    iget-object v3, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lq7/o0;->g:Lq7/m1;

    iget-object v3, v3, Lq7/m1;->a:Lq7/l1;

    iget-object v3, v3, Lq7/l1;->a:Landroid/widget/ImageView;

    const-string v5, "binding.shoeControllerCo\u2026rContainer.shoeController"

    invoke-static {v3, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v7, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v7, :cond_5

    iget-object v2, v7, Lq7/o0;->g:Lq7/m1;

    iget-object v2, v2, Lq7/m1;->b:Lq7/l1;

    iget-object v2, v2, Lq7/l1;->a:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v5, v0, Li9/g;->j0:Lq7/i1;

    if-eqz v5, :cond_4

    iget-object v4, v5, Lq7/i1;->a:Landroid/widget/TextView;

    const-string v5, "messagingHeadlineBinding.messagingHeadlineMessage1"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v5, Lx8/b;

    invoke-direct {v5, v4}, Lx8/b;-><init>(Landroid/view/View;)V

    invoke-static {v3, v5}, Lj0/a0;->p(Landroid/view/View;Lj0/a;)V

    .line 67
    new-instance v4, Lx8/b;

    invoke-direct {v4, v3}, Lx8/b;-><init>(Landroid/view/View;)V

    invoke-static {v2, v4}, Lj0/a0;->p(Landroid/view/View;Lj0/a;)V

    return-object v1

    .line 68
    :cond_4
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_8
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_9
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_b
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 74
    :cond_d
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_f
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_10
    const-string v1, "adaptShoeUtils"

    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_11
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_12
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_13
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_14
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_15
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_16
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_17
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_18
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_19
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_1a
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_1b
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_1d
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final Q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/r;->Q()V

    .line 2
    iget-boolean v0, p0, Li9/g;->l0:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Li9/g;->w0()V

    :cond_0
    return-void
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 4
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp8/b;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    iget-object v0, p0, Lp8/b;->e0:Lt9/a;

    .line 5
    invoke-virtual {v0, p1}, Lt9/a;->b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 6
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v2, 0x0

    const-string v3, "deviceController"

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 9
    iput-object v0, p0, Li9/g;->t0:Lea/m;

    .line 10
    iget-object v0, p0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    sget-object v2, Lp8/n;->a:Lp8/n;

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Li9/g;->y0(Lcom/nike/adapt/adk/Shoe;Z)V

    goto :goto_1

    .line 13
    :cond_4
    instance-of v0, p1, Lcom/nike/adapt/adk/Disconnected;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Li9/g;->w0()V

    .line 15
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Li9/g;->y0(Lcom/nike/adapt/adk/Shoe;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 20
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "result"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lp8/r;->d0:Li8/d;

    .line 2
    invoke-static {v1, v2}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v2, v1, Lcom/nike/adapt/adk/GetLacingPercentResult;

    const-string v3, "deviceController"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 4
    iget-object v1, v0, Lp8/b;->e0:Lt9/a;

    .line 5
    invoke-virtual {v1}, Lt9/a;->a()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-boolean v1, v0, Li9/g;->C0:Z

    if-nez v1, :cond_35

    .line 6
    iput-boolean v4, v0, Li9/g;->C0:Z

    .line 7
    iget-object v1, v0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_1

    sget-object v2, Lp8/u;->a:Lp8/u;

    invoke-interface {v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestFitCalibrate(Lp8/v;)V

    goto/16 :goto_7

    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 8
    :cond_2
    instance-of v2, v1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    const-string v6, "rightShoeControllerUiHelper"

    const-string v7, "leftShoeControllerUiHelper"

    const-string v8, "rightShoeScaleControllerUiHelper"

    const-string v9, "leftShoeScaleControllerUiHelper"

    const-string v10, "adaptShoeUtils"

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eqz v2, :cond_10

    .line 9
    check-cast v1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v3, v0, Li9/g;->r0:Lx8/n0;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_4
    iget-object v3, v0, Li9/g;->s0:Lx8/f0;

    if-eqz v3, :cond_f

    :goto_0
    invoke-virtual {v1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result v14

    .line 11
    invoke-virtual {v3, v14, v11}, Lx8/q0;->k(IZ)V

    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {v1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result v2

    iput v2, v0, Li9/g;->z0:I

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result v2

    iput v2, v0, Li9/g;->A0:I

    .line 13
    :goto_1
    iget v2, v0, Li9/g;->w0:I

    if-ne v2, v13, :cond_e

    .line 14
    invoke-virtual {v1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Li9/g;->r0:Lx8/n0;

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_7
    iget-object v2, v0, Li9/g;->s0:Lx8/f0;

    if-eqz v2, :cond_d

    :goto_2
    invoke-virtual {v1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result v1

    invoke-virtual {v2, v1, v4}, Lx8/q0;->k(IZ)V

    .line 15
    iget v1, v0, Li9/g;->D0:I

    add-int/2addr v1, v4

    iput v1, v0, Li9/g;->D0:I

    if-ne v1, v12, :cond_35

    .line 16
    sget-object v14, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v1, v0, Li9/g;->o0:Lj9/b;

    if-eqz v1, :cond_c

    .line 17
    iget v15, v1, Lj9/b;->d:I

    .line 18
    iget v1, v1, Lj9/b;->c:I

    .line 19
    iget v2, v0, Li9/g;->A0:I

    iget v3, v0, Li9/g;->z0:I

    sget-object v4, Ls9/p;->a:Ls9/p;

    invoke-virtual/range {p0 .. p0}, Li9/g;->x0()Lh8/d;

    move-result-object v6

    invoke-interface {v6}, Lh8/d;->d()Ls9/r;

    move-result-object v6

    invoke-virtual {v4, v6}, Ls9/p;->f(Ls9/r;)Ljava/lang/String;

    move-result-object v19

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v14 .. v19}, Lcom/nike/adapt/analytics/TrackManager;->isUserScaleCompleted(IIIILjava/lang/String;)V

    .line 20
    iget-object v1, v0, Li9/g;->p0:Lx8/g0;

    if-eqz v1, :cond_b

    .line 21
    iget-object v2, v1, Lx8/e1;->d:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 22
    :cond_8
    invoke-virtual {v1}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx8/e1;->e(Landroid/widget/LinearLayout;)V

    .line 23
    invoke-virtual {v1}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    .line 24
    iget-object v3, v1, Lx8/e1;->b:Landroid/content/Context;

    const-string v4, "context"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x14

    invoke-static {v3, v6}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v3

    div-int/2addr v3, v12

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 25
    invoke-virtual {v1}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object v1

    neg-float v2, v2

    invoke-static {v1, v2}, Lf1/b;->d(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 26
    iget-object v1, v0, Li9/g;->q0:Lx8/o0;

    if-eqz v1, :cond_a

    .line 27
    iget-object v2, v1, Lx8/e1;->d:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    :cond_9
    invoke-virtual {v1}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx8/e1;->e(Landroid/widget/LinearLayout;)V

    .line 29
    invoke-virtual {v1}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    int-to-float v3, v12

    mul-float/2addr v2, v3

    int-to-float v3, v13

    div-float/2addr v2, v3

    .line 30
    iget-object v3, v1, Lx8/e1;->b:Landroid/content/Context;

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v3

    div-int/2addr v3, v12

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 31
    invoke-virtual {v1}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1, v2}, Lf1/b;->d(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 32
    iget-object v6, v0, Lp8/r;->b0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 33
    new-instance v9, Li9/h;

    invoke-direct {v9, v0, v5}, Li9/h;-><init>(Li9/g;Ljd/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->start()Z

    .line 35
    iget-object v1, v0, Li9/g;->y0:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto/16 :goto_7

    .line 36
    :cond_a
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 37
    :cond_b
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 38
    :cond_c
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_d
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_e
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Already Handled"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 41
    :cond_f
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_10
    instance-of v2, v1, Lcom/nike/adapt/adk/FitCalibrateResult;

    if-eqz v2, :cond_33

    .line 43
    check-cast v1, Lcom/nike/adapt/adk/FitCalibrateResult;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    .line 44
    iget-object v14, v0, Li9/g;->x0:Landroidx/appcompat/app/d;

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Lf/n;->dismiss()V

    .line 45
    :cond_11
    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getResult()Lcom/nike/adapt/adk/CalibrateResult;

    move-result-object v14

    .line 46
    sget-object v15, Li9/g$b;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v15, v14

    const/4 v15, 0x5

    if-eq v14, v4, :cond_2f

    if-eq v14, v12, :cond_23

    if-eq v14, v13, :cond_19

    const/4 v3, 0x4

    if-eq v14, v3, :cond_13

    if-eq v14, v15, :cond_12

    goto/16 :goto_7

    .line 47
    :cond_12
    invoke-virtual/range {p0 .. p0}, Li9/g;->w0()V

    goto/16 :goto_7

    .line 48
    :cond_13
    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getMaxPercent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v2, :cond_15

    .line 50
    sget-object v3, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 51
    iget-object v4, v0, Li9/g;->r0:Lx8/n0;

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v3

    invoke-virtual {v4, v3}, Lx8/q0;->t(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    goto :goto_3

    :cond_14
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 52
    :cond_15
    sget-object v3, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 53
    iget-object v4, v0, Li9/g;->s0:Lx8/f0;

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v3

    invoke-virtual {v4, v3}, Lx8/q0;->t(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    .line 54
    :goto_3
    iget-object v3, v0, Li9/g;->o0:Lj9/b;

    if-eqz v3, :cond_17

    if-eqz v2, :cond_16

    .line 55
    iput v1, v3, Lj9/b;->c:I

    goto/16 :goto_7

    .line 56
    :cond_16
    iput v1, v3, Lj9/b;->d:I

    goto/16 :goto_7

    .line 57
    :cond_17
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 58
    :cond_18
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 59
    :cond_19
    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 60
    new-instance v3, Li9/a;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v4

    invoke-direct {v3, v4, v15}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v3, v0, Li9/g;->F0:Li9/a;

    .line 61
    :cond_1a
    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 62
    new-instance v3, Li9/a;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-direct {v3, v1, v15}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v3, v0, Li9/g;->G0:Li9/a;

    :cond_1b
    const/4 v1, 0x6

    if-eqz v2, :cond_1f

    .line 63
    iget-object v2, v0, Li9/g;->G0:Li9/a;

    .line 64
    iget v2, v2, Li9/a;->b:I

    if-ne v2, v15, :cond_35

    .line 65
    iget-object v2, v0, Li9/g;->q0:Lx8/o0;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lx8/e1;->b()V

    .line 66
    iget-object v2, v0, Li9/g;->q0:Lx8/o0;

    if-eqz v2, :cond_1d

    .line 67
    iget-object v2, v2, Lx8/e1;->d:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    .line 68
    :cond_1c
    new-instance v2, Li9/a;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v2, v3, v1}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v2, v0, Li9/g;->G0:Li9/a;

    goto/16 :goto_7

    .line 69
    :cond_1d
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 70
    :cond_1e
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_1f
    iget-object v2, v0, Li9/g;->F0:Li9/a;

    .line 72
    iget v2, v2, Li9/a;->b:I

    if-ne v2, v15, :cond_35

    .line 73
    iget-object v2, v0, Li9/g;->p0:Lx8/g0;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lx8/e1;->b()V

    .line 74
    iget-object v2, v0, Li9/g;->p0:Lx8/g0;

    if-eqz v2, :cond_21

    .line 75
    iget-object v2, v2, Lx8/e1;->d:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    .line 76
    :cond_20
    new-instance v2, Li9/a;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v2, v3, v1}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v2, v0, Li9/g;->F0:Li9/a;

    goto/16 :goto_7

    .line 77
    :cond_21
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 78
    :cond_22
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_23
    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v2

    const/4 v6, 0x7

    if-eqz v2, :cond_24

    .line 80
    new-instance v2, Li9/a;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v7

    invoke-direct {v2, v7, v6}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v2, v0, Li9/g;->F0:Li9/a;

    .line 81
    :cond_24
    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 82
    new-instance v2, Li9/a;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/FitCalibrateResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-direct {v2, v1, v6}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v2, v0, Li9/g;->G0:Li9/a;

    .line 83
    :cond_25
    iget-object v1, v0, Li9/g;->F0:Li9/a;

    .line 84
    iget v1, v1, Li9/a;->b:I

    if-ne v1, v6, :cond_35

    .line 85
    iget-object v1, v0, Li9/g;->G0:Li9/a;

    .line 86
    iget v1, v1, Li9/a;->b:I

    if-ne v1, v6, :cond_35

    .line 87
    iget-boolean v1, v0, Li9/g;->B0:Z

    if-nez v1, :cond_2c

    .line 88
    iget-object v1, v0, Li9/g;->p0:Lx8/g0;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lx8/e1;->a()V

    .line 89
    iget-object v1, v0, Li9/g;->q0:Lx8/o0;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lx8/e1;->a()V

    .line 90
    iget-object v1, v0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_29

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v6, Lp8/d0;

    iget-object v7, v0, Li9/g;->o0:Lj9/b;

    if-eqz v7, :cond_28

    invoke-virtual {v7, v11}, Lj9/b;->a(Z)I

    move-result v7

    invoke-direct {v6, v7, v12}, Lp8/d0;-><init>(II)V

    invoke-interface {v1, v2, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 91
    iget-object v1, v0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_27

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/d0;

    iget-object v6, v0, Li9/g;->o0:Lj9/b;

    if-eqz v6, :cond_26

    invoke-virtual {v6, v4}, Lj9/b;->a(Z)I

    move-result v6

    invoke-direct {v3, v6, v12}, Lp8/d0;-><init>(II)V

    invoke-interface {v1, v2, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 92
    iput v13, v0, Li9/g;->w0:I

    .line 93
    iput-boolean v4, v0, Li9/g;->B0:Z

    goto :goto_4

    .line 94
    :cond_26
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_27
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_28
    invoke-static {v10}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_29
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_2a
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_2b
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_2c
    :goto_4
    sget-object v1, Ls9/p;->a:Ls9/p;

    invoke-virtual/range {p0 .. p0}, Li9/g;->x0()Lh8/d;

    move-result-object v1

    invoke-interface {v1}, Lh8/d;->d()Ls9/r;

    move-result-object v1

    if-nez v1, :cond_2d

    const/4 v1, -0x1

    goto :goto_5

    .line 99
    :cond_2d
    sget-object v2, Ls9/p$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_5
    const v2, 0x7f110097

    packed-switch v1, :pswitch_data_0

    .line 100
    :pswitch_0
    new-instance v1, Lj2/a;

    invoke-direct {v1}, Lj2/a;-><init>()V

    throw v1

    :pswitch_1
    const v2, 0x7f110098

    goto :goto_6

    :pswitch_2
    const v2, 0x7f110099

    .line 101
    :goto_6
    :pswitch_3
    iget-object v1, v0, Li9/g;->j0:Lq7/i1;

    if-eqz v1, :cond_2e

    iget-object v1, v1, Lq7/i1;->c:Landroid/widget/TextView;

    const-string v3, "messagingHeadlineBinding.messagingHeadlineTitle"

    invoke-static {v1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_2e
    const-string v1, "messagingHeadlineBinding"

    .line 103
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_2f
    if-eqz v2, :cond_31

    .line 104
    iget-object v1, v0, Li9/g;->G0:Li9/a;

    .line 105
    iget v1, v1, Li9/a;->b:I

    if-ne v1, v4, :cond_35

    .line 106
    iget-object v1, v0, Li9/g;->q0:Lx8/o0;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lx8/e1;->a()V

    .line 107
    new-instance v1, Li9/a;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v1, v2, v15}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v1, v0, Li9/g;->G0:Li9/a;

    goto :goto_7

    .line 108
    :cond_30
    invoke-static {v8}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 109
    :cond_31
    iget-object v1, v0, Li9/g;->F0:Li9/a;

    .line 110
    iget v1, v1, Li9/a;->b:I

    if-ne v1, v4, :cond_35

    .line 111
    iget-object v1, v0, Li9/g;->p0:Lx8/g0;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lx8/e1;->a()V

    .line 112
    new-instance v1, Li9/a;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v1, v2, v15}, Li9/a;-><init>(Lcom/nike/adapt/adk/Shoe;I)V

    iput-object v1, v0, Li9/g;->F0:Li9/a;

    goto :goto_7

    .line 113
    :cond_32
    invoke-static {v9}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_33
    instance-of v1, v1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz v1, :cond_35

    .line 115
    sget-object v1, Lp7/b;->a:Lp7/b;

    iget-object v1, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v1, :cond_34

    iget-object v1, v1, Lq7/o0;->b:Landroid/widget/FrameLayout;

    const-string v2, "binding.adaptShoeControllerContainer"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lp7/b;->f(Landroid/view/View;)V

    goto :goto_7

    :cond_34
    const-string v1, "binding"

    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_35
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li9/g;->h0:Ljava/lang/String;

    return-object v0
.end method

.method public final r0()V
    .locals 2

    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->FIT:Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isScreenViewed(Lcom/nike/adapt/analytics/TrackManager$Screen;)V

    return-void
.end method

.method public final s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Li9/g;->m0:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lp8/t;->a:Lp8/t;

    invoke-interface {v0, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestFitCalibrate(Lp8/v;)V

    .line 2
    iget-object v0, p0, Li9/g;->r0:Lx8/n0;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, v0, Lx8/q0;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    iget-object v0, p0, Li9/g;->s0:Lx8/f0;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lx8/q0;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    iget-object v0, p0, Li9/g;->E0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Li9/g;->l0:Z

    .line 8
    iget-object v0, p0, Li9/g;->y0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "leftShoeControllerUiHelper"

    .line 9
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "rightShoeControllerUiHelper"

    .line 10
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "deviceController"

    .line 11
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final u0()V
    .locals 7

    .line 1
    iget-object v0, p0, Li9/g;->i0:Lq7/o0;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/o0;->c:Lq7/k1;

    iget-object v0, v0, Lq7/k1;->c:Landroid/widget/LinearLayout;

    const-string v3, "binding.itemPresetCreation.presetCreationStatus"

    invoke-static {v0, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x42960000    # 75.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0, v3, v4, v5, v6}, Lb7/j1;->b(Landroid/view/View;FFFF)V

    .line 3
    iget-object v0, p0, Li9/g;->i0:Lq7/o0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/o0;->c:Lq7/k1;

    iget-object v0, v0, Lq7/k1;->e:Landroid/widget/TextView;

    const-string v1, "binding.itemPresetCreati\u2026presetCreationStatusTitle"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x42960000    # 75.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Lb7/j1;->b(Landroid/view/View;FFFF)V

    return-void

    .line 5
    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final v0(Ljava/util/List;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/e;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li9/g;->i0:Lq7/o0;

    const-string v1, "binding"

    if-eqz v0, :cond_d

    iget-object v0, v0, Lq7/o0;->c:Lq7/k1;

    iget-object v0, v0, Lq7/k1;->c:Landroid/widget/LinearLayout;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lea/e;

    .line 4
    iget-boolean v3, v3, Lea/e;->j:Z

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lea/e;

    .line 6
    iget-object v4, v4, Lea/e;->i:Ljava/lang/String;

    .line 7
    invoke-static {v3, v4}, Lda/e;->h(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_1

    move-object v4, v3

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lea/e;

    .line 9
    iget-boolean v4, v4, Lea/e;->j:Z

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lea/e;

    .line 11
    iget-object v5, v5, Lea/e;->i:Ljava/lang/String;

    .line 12
    invoke-static {v4, v5}, Lda/e;->h(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const v5, 0x7f1101a6

    .line 13
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/util/Pair;

    new-instance v8, Landroid/util/Pair;

    const-string v9, "mode"

    invoke-direct {v8, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f11007c

    .line 14
    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Landroid/util/Pair;

    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v9, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v8, v2

    invoke-static {v7, v8}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v4

    .line 15
    sget-object v7, Lh8/c;->b:Lh8/c;

    .line 16
    invoke-virtual {v7}, Lh8/c;->getShoeType()Ls9/r;

    move-result-object v7

    const-string v8, "<this>"

    .line 17
    invoke-static {v7, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v8, Ls9/r;->l:Ls9/r;

    if-eq v7, v8, :cond_3

    sget-object v8, Ls9/r;->m:Ls9/r;

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    move v7, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v6

    :goto_2
    if-eqz v7, :cond_4

    const v2, 0x7f11004e

    .line 19
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const v7, 0x7f11004d

    .line 20
    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Landroid/util/Pair;

    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v8, v2

    invoke-static {v7, v8}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-wide/16 v7, 0x190

    .line 21
    iget-object v3, p0, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lq7/o0;->c:Lq7/k1;

    iget-object v3, v3, Lq7/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getDuration()J

    move-result-wide v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v11, v3

    mul-long/2addr v11, v7

    sub-long/2addr v9, v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v11, v3

    div-long/2addr v9, v11

    if-nez p2, :cond_6

    .line 22
    iget-object v2, p0, Li9/g;->i0:Lq7/o0;

    if-eqz v2, :cond_5

    iget-object v1, v2, Lq7/o0;->c:Lq7/k1;

    iget-object v1, v1, Lq7/k1;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Li9/g;->u0()V

    .line 24
    iget-object v1, p0, Li9/g;->E0:Landroid/os/Handler;

    new-instance v2, Li9/c;

    invoke-direct {v2, v0, p0, p1, p2}, Li9/c;-><init>(Landroid/widget/LinearLayout;Li9/g;Ljava/util/List;I)V

    add-long/2addr v9, v7

    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 25
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 26
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne p2, v3, :cond_9

    .line 27
    iget-object p1, p0, Li9/g;->i0:Lq7/o0;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/o0;->c:Lq7/k1;

    iget-object p1, p1, Lq7/k1;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Li9/g;->i0:Lq7/o0;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/o0;->c:Lq7/k1;

    iget-object p1, p1, Lq7/k1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Li9/g;->u0()V

    .line 30
    iget-object p1, p0, Li9/g;->E0:Landroid/os/Handler;

    new-instance p2, Ly0/u;

    const/4 v1, 0x4

    invoke-direct {p2, v0, p0, v1}, Ly0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-long/2addr v9, v7

    invoke-virtual {p1, p2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 31
    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_8
    const/4 p1, 0x0

    .line 32
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_9
    iget-object v3, p0, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_b

    iget-object v3, v3, Lq7/o0;->c:Lq7/k1;

    iget-object v3, v3, Lq7/k1;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v3, p0, Li9/g;->i0:Lq7/o0;

    if-eqz v3, :cond_a

    iget-object v1, v3, Lq7/o0;->c:Lq7/k1;

    iget-object v1, v1, Lq7/k1;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Li9/g;->u0()V

    .line 36
    iget-object v1, p0, Li9/g;->E0:Landroid/os/Handler;

    new-instance v2, Li9/d;

    invoke-direct {v2, v0, p0, p1, p2}, Li9/d;-><init>(Landroid/widget/LinearLayout;Li9/g;Ljava/util/List;I)V

    add-long/2addr v9, v7

    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    .line 37
    :cond_a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_b
    const/4 p1, 0x0

    .line 38
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p1

    :cond_c
    const/4 p1, 0x0

    .line 39
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p1

    :cond_d
    const/4 p1, 0x0

    .line 40
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p1
.end method

.method public final w0()V
    .locals 14

    .line 1
    iget-object v0, p0, Li9/g;->x0:Landroidx/appcompat/app/d;

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Ls9/y;->a:Ls9/y;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    new-instance v10, Li9/g$d;

    invoke-direct {v10, p0}, Li9/g$d;-><init>(Li9/g;)V

    new-instance v11, Li9/g$e;

    invoke-direct {v11, p0}, Li9/g$e;-><init>(Li9/g;)V

    .line 3
    new-instance v12, Ls9/y$a;

    const/16 v0, 0x8

    const-string v3, "DISCONNECTED_CALIBRATION_ERROR_DIALOG"

    const-string v4, "SKIP"

    const-string v5, "RESTART"

    invoke-direct {v12, v3, v4, v5, v0}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f110091

    const/4 v4, 0x0

    const v5, 0x7f11008e

    const/4 v6, 0x0

    const v7, 0x7f110090

    const v8, 0x7f11008f

    const/4 v9, 0x0

    const/16 v13, 0x94

    .line 4
    invoke-static/range {v1 .. v13}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    .line 5
    iput-object v0, p0, Li9/g;->x0:Landroidx/appcompat/app/d;

    .line 6
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isDisconnectedCalibrationErrorShown()V

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isDisconnectedCalibrationErrorShown()V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Li9/g;->x0:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 11
    :cond_3
    :goto_2
    iget-object v0, p0, Li9/g;->p0:Lx8/g0;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lx8/e1;->b()V

    .line 12
    iget-object v0, p0, Li9/g;->q0:Lx8/o0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lx8/e1;->b()V

    return-void

    :cond_4
    const-string v0, "rightShoeScaleControllerUiHelper"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "leftShoeScaleControllerUiHelper"

    .line 13
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final x0()Lh8/d;
    .locals 1

    iget-object v0, p0, Li9/g;->J0:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    return-object v0
.end method

.method public final y0(Lcom/nike/adapt/adk/Shoe;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Li9/g;->s0:Lx8/f0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lx8/q0;->s(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "leftShoeControllerUiHelper"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object p1, p0, Li9/g;->r0:Lx8/n0;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lx8/q0;->s(Z)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "rightShoeControllerUiHelper"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method
