.class public final Li9/t;
.super Lp8/b;
.source "CalibrateOrthoticsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/t$a;,
        Li9/t$b;
    }
.end annotation


# static fields
.field public static final u0:Li9/t$a;

.field public static final v0:Ljava/lang/String;


# instance fields
.field public final h0:Ljava/lang/String;

.field public i0:Lq7/p0;

.field public j0:Lq7/l0;

.field public k0:Lq7/i1;

.field public l0:Lq7/g1;

.field public m0:Lo8/d;

.field public n0:Lcom/nike/adapt/adk/IDeviceController;

.field public o0:Lcom/nike/adapt/adk/IAdaptRequester;

.field public p0:I

.field public q0:Z

.field public r0:Z

.field public final s0:Lfd/d;

.field public final t0:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li9/t$a;

    invoke-direct {v0}, Li9/t$a;-><init>()V

    sput-object v0, Li9/t;->u0:Li9/t$a;

    const-class v0, Li9/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li9/t;->v0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/b;-><init>()V

    const-string v0, "CalibrateOrthoticsFragment"

    .line 2
    iput-object v0, p0, Li9/t;->h0:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Li9/t;->p0:I

    .line 4
    sget-object v0, Li9/t$d;->h:Li9/t$d;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Li9/t;->s0:Lfd/d;

    .line 5
    new-instance v0, Li9/t$c;

    invoke-direct {v0, p0}, Li9/t$c;-><init>(Li9/t;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Li9/t;->t0:Lfd/h;

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

    iput-object p1, p0, Li9/t;->m0:Lo8/d;

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
    sget-object v1, Li9/w;->h:Li9/w;

    .line 5
    new-instance v2, Li9/u;

    invoke-direct {v2, p0}, Li9/u;-><init>(Li9/t;)V

    .line 6
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0, v1, v2}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Li9/t;->o0:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 7
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 9
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Li9/t;->n0:Lcom/nike/adapt/adk/IDeviceController;

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0073

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView"

    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    check-cast p1, Landroid/widget/LinearLayout;

    .line 5
    new-instance p2, Lq7/p0;

    invoke-direct {p2, p1}, Lq7/p0;-><init>(Landroid/widget/LinearLayout;)V

    .line 6
    iput-object p2, p0, Li9/t;->i0:Lq7/p0;

    .line 7
    invoke-static {p1}, Lq7/l0;->a(Landroid/view/View;)Lq7/l0;

    move-result-object p1

    iput-object p1, p0, Li9/t;->j0:Lq7/l0;

    .line 8
    iget-object p1, p0, Li9/t;->i0:Lq7/p0;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-eqz p1, :cond_14

    .line 9
    iget-object p1, p1, Lq7/p0;->a:Landroid/widget/LinearLayout;

    .line 10
    invoke-static {p1}, Lq7/i1;->a(Landroid/view/View;)Lq7/i1;

    move-result-object p1

    iput-object p1, p0, Li9/t;->k0:Lq7/i1;

    .line 11
    iget-object p1, p0, Li9/t;->i0:Lq7/p0;

    if-eqz p1, :cond_13

    .line 12
    iget-object p1, p1, Lq7/p0;->a:Landroid/widget/LinearLayout;

    .line 13
    invoke-static {p1}, Lq7/g1;->a(Landroid/view/View;)Lq7/g1;

    move-result-object p1

    iput-object p1, p0, Li9/t;->l0:Lq7/g1;

    .line 14
    iget-object p1, p0, Li9/t;->i0:Lq7/p0;

    if-eqz p1, :cond_12

    .line 15
    iget-object p1, p1, Lq7/p0;->a:Landroid/widget/LinearLayout;

    .line 16
    iget-object p3, p0, Li9/t;->k0:Lq7/i1;

    const-string v1, "itemMessagingHeadlineBinding"

    if-eqz p3, :cond_11

    iget-object p3, p3, Lq7/i1;->c:Landroid/widget/TextView;

    const v2, 0x7f110167

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object p3, p0, Li9/t;->k0:Lq7/i1;

    if-eqz p3, :cond_10

    iget-object p3, p3, Lq7/i1;->c:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {p3, v2}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 18
    iget-object p3, p0, Li9/t;->k0:Lq7/i1;

    if-eqz p3, :cond_f

    iget-object p3, p3, Lq7/i1;->c:Landroid/widget/TextView;

    const v3, 0x7f06029d

    invoke-static {v3}, Landroidx/lifecycle/o;->o(I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object p3, p0, Li9/t;->k0:Lq7/i1;

    if-eqz p3, :cond_e

    iget-object p3, p3, Lq7/i1;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110166

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ls9/p;->a:Ls9/p;

    .line 20
    iget-object v8, p0, Li9/t;->s0:Lfd/d;

    invoke-interface {v8}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh8/d;

    .line 21
    invoke-interface {v8}, Lh8/d;->d()Ls9/r;

    move-result-object v8

    const/4 v9, -0x1

    if-nez v8, :cond_0

    move v8, v9

    goto :goto_0

    .line 22
    :cond_0
    sget-object v10, Ls9/p$b;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v10, v8

    :goto_0
    const v10, 0x7f1103e8

    packed-switch v8, :pswitch_data_0

    .line 23
    invoke-static {v10}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_0
    const v8, 0x7f11003f

    .line 24
    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_1
    const v8, 0x7f1103e7

    .line 25
    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_2
    const v8, 0x7f110068

    .line 26
    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_3
    const v8, 0x7f1103e9

    .line 27
    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 28
    :pswitch_4
    invoke-static {v10}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    const-string v10, "shoe_model"

    .line 29
    invoke-direct {v6, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v0

    invoke-static {v4, v5, v2}, Ls9/e;->a(Landroid/content/Context;I[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p3, p0, Li9/t;->k0:Lq7/i1;

    if-eqz p3, :cond_d

    iget-object p3, p3, Lq7/i1;->a:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/lifecycle/o;->o(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    const-string v1, "itemMessagingCtaBinding"

    if-eqz p3, :cond_c

    iget-object p3, p3, Lq7/g1;->a:Landroid/widget/Button;

    const v2, 0x7f110161

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_b

    iget-object p3, p3, Lq7/g1;->a:Landroid/widget/Button;

    const v2, 0x7f0602a1

    invoke-static {v2}, Landroidx/lifecycle/o;->o(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_a

    iget-object p3, p3, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_9

    iget-object p3, p3, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08006d

    invoke-virtual {v2, v4, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_8

    iget-object p3, p3, Lq7/g1;->a:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 36
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_7

    iget-object p3, p3, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {p3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 37
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_6

    iget-object p3, p3, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    const v4, 0x7f110070

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 38
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_5

    iget-object p3, p3, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    invoke-static {v3}, Landroidx/lifecycle/o;->o(I)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_4

    iget-object p3, p3, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p3, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p3, p0, Li9/t;->j0:Lq7/l0;

    const-string v0, "contentMessagingHeadlineWithCtaBinding"

    if-eqz p3, :cond_2

    iget-object p3, p3, Lq7/l0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 42
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v1, p0, Li9/t;->j0:Lq7/l0;

    if-eqz v1, :cond_1

    iget-object p2, v1, Lq7/l0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    iget-object p2, p0, Li9/t;->s0:Lfd/d;

    invoke-interface {p2}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh8/d;

    .line 47
    invoke-interface {p2}, Lh8/d;->f()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {v7, p3, p2, v0}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-object p1

    .line 48
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 49
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 50
    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 51
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 52
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 54
    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 55
    :cond_8
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 56
    :cond_9
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 57
    :cond_a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 58
    :cond_b
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 59
    :cond_c
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 60
    :cond_d
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 61
    :cond_e
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 62
    :cond_f
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 63
    :cond_10
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 64
    :cond_11
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 65
    :cond_12
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 66
    :cond_13
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 67
    :cond_14
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final S()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/b;->S()V

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->ORTHOTICS:Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isScreenViewed(Lcom/nike/adapt/analytics/TrackManager$Screen;)V

    return-void
.end method

.method public final T()V
    .locals 4

    .line 1
    invoke-super {p0}, Lp8/b;->T()V

    .line 2
    iget-object v0, p0, Li9/t;->n0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v2, Lp8/f0;

    sget-object v3, Lg9/k;->a:Lg9/k;

    invoke-static {}, Lg9/k;->d()Z

    move-result v3

    invoke-direct {v2, v3}, Lp8/f0;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void

    :cond_0
    const-string v0, "deviceController"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 6
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
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Li9/t;->n0:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "deviceController"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-object v0, p0, Li9/t;->n0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v4, Lp8/f0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lp8/f0;-><init>(Z)V

    invoke-interface {v0, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    iget-object v0, p0, Li9/t;->n0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v1, Lp8/d0;

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lp8/d0;-><init>(II)V

    invoke-interface {v0, p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_0
    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 4
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    if-eqz v0, :cond_5

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v0, Li9/t$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v0, p0, Li9/t;->q0:Z

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v0, p0, Li9/t;->r0:Z

    .line 7
    :goto_0
    iget-boolean p1, p0, Li9/t;->r0:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Li9/t;->q0:Z

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Li9/t;->l0:Lq7/g1;

    const/4 v1, 0x0

    const-string v2, "itemMessagingCtaBinding"

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/g1;->a:Landroid/widget/Button;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 9
    iget-object p1, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "stateListener"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Li9/t;->m0:Lo8/d;

    if-eqz p1, :cond_0

    sget-object v0, Lo8/a;->i:Lo8/a;

    invoke-interface {p1, v0}, Lo8/d;->O(Lo8/a;)V

    .line 3
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Orthotics - Pressed: Cancel"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_1
    iget p1, p0, Li9/t;->p0:I

    const-string v2, "<this>"

    .line 6
    invoke-static {p1, v2}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const/4 v2, 0x4

    .line 7
    invoke-static {v2}, Lq/g;->b(I)[I

    move-result-object v2

    .line 8
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    const/4 v3, 0x1

    add-int/2addr p1, v3

    array-length v4, v2

    rem-int/2addr p1, v4

    aget p1, v2, p1

    .line 9
    iput p1, p0, Li9/t;->p0:I

    .line 10
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eq p1, v3, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->isCalibrateOrthoticsCompleted()V

    .line 12
    iget-object p1, p0, Li9/t;->m0:Lo8/d;

    if-eqz p1, :cond_2

    sget-object v0, Lo8/a;->j:Lo8/a;

    invoke-interface {p1, v0}, Lo8/d;->O(Lo8/a;)V

    .line 13
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Orthotics - Pressed: Finish"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->isCalibrateOrthoticsStarted()V

    .line 16
    iget-object p1, p0, Li9/t;->l0:Lq7/g1;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/g1;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 17
    iput-boolean v1, p0, Li9/t;->r0:Z

    .line 18
    iput-boolean v1, p0, Li9/t;->q0:Z

    .line 19
    iget-object p1, p0, Li9/t;->n0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_5

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v4, Lp8/d0;

    invoke-direct {v4, v1, v2}, Lp8/d0;-><init>(II)V

    invoke-interface {p1, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 20
    iget-object p1, p0, Li9/t;->j0:Lq7/l0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/l0;->c:Landroid/widget/LinearLayout;

    const-string v0, "contentMessagingHeadline\u2026.messagingCenterContainer"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {p1, v1, v0}, Lf1/b;->g(Landroid/view/View;ZI)Landroid/animation/Animator;

    move-result-object p1

    .line 21
    new-instance v0, Li9/v;

    invoke-direct {v0, p0}, Li9/v;-><init>(Li9/t;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 23
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Orthotics - Pressed: Next (Floor & Calibrate)"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "contentMessagingHeadlineWithCtaBinding"

    .line 24
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p1, "deviceController"

    .line 25
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "itemMessagingCtaBinding"

    .line 26
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_7
    iget-object p1, p0, Li9/t;->k0:Lq7/i1;

    const-string v1, "itemMessagingHeadlineBinding"

    if-eqz p1, :cond_a

    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    const-string v2, "itemMessagingHeadlineBin\u2026ng.messagingHeadlineTitle"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f11016a

    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Li9/t;->k0:Lq7/i1;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 29
    iget-object p1, p0, Li9/t;->k0:Lq7/i1;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/i1;->a:Landroid/widget/TextView;

    const-string v0, "itemMessagingHeadlineBin\u2026messagingHeadlineMessage1"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110169

    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Orthotics - Pressed: Next"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_8
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_9
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a02e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li9/t;->h0:Ljava/lang/String;

    return-object v0
.end method

.method public final t0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li9/t;->t0:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
