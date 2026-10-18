.class public final Li9/e0;
.super Lp8/r;
.source "WelcomeOnBoardingFragment.kt"


# static fields
.field public static final synthetic p0:I


# instance fields
.field public final e0:Ljava/lang/String;

.field public f0:Lq7/a1;

.field public g0:Lq7/g1;

.field public final h0:Lfd/d;

.field public final i0:Lfd/d;

.field public final j0:Lfd/h;

.field public k0:Li9/a0;

.field public l0:Ljava/lang/String;

.field public m0:Z

.field public n0:I

.field public o0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/r;-><init>()V

    const-string v0, "WelcomeOnBoardingFragment"

    .line 2
    iput-object v0, p0, Li9/e0;->e0:Ljava/lang/String;

    .line 3
    sget-object v0, Li9/e0$a;->h:Li9/e0$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Li9/e0;->h0:Lfd/d;

    .line 4
    sget-object v0, Li9/e0$d;->h:Li9/e0$d;

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Li9/e0;->i0:Lfd/d;

    .line 5
    new-instance v0, Li9/e0$e;

    invoke-direct {v0, p0}, Li9/e0$e;-><init>(Li9/e0;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Li9/e0;->j0:Lfd/h;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Li9/e0;->n0:I

    return-void
.end method


# virtual methods
.method public final G(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Li9/a0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Li9/a0;

    iput-object p1, p0, Li9/e0;->k0:Li9/a0;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-class v0, Li9/a0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity must implement "

    .line 5
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final H(Landroid/os/Bundle;)V
    .locals 1
    invoke-super {p0, p1}, Lp8/r;->H(Landroid/os/Bundle;)V
    const/4 v0, 0x2
    iput v0, p0, Li9/e0;->n0:I
    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0083

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01f3

    .line 3
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    const p2, 0x7f0a026c

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const p2, 0x7f0a026d

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    const p2, 0x7f0a02c6

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    const p2, 0x7f0a049a

    .line 7
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    const p2, 0x7f0a049b

    .line 8
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    const p2, 0x7f0a049c

    .line 9
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    .line 10
    new-instance p2, Lq7/a1;

    check-cast p1, Landroid/widget/FrameLayout;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lq7/a1;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 11
    iput-object p2, p0, Li9/e0;->f0:Lq7/a1;

    .line 12
    invoke-static {p1}, Lq7/g1;->a(Landroid/view/View;)Lq7/g1;

    move-result-object p1

    iput-object p1, p0, Li9/e0;->g0:Lq7/g1;

    .line 13
    iget-object p1, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p1, Lq7/a1;->a:Landroid/widget/FrameLayout;

    const-string p2, ""

    .line 15
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Li9/e0$c;->h:Li9/e0$c;

    invoke-static {p1, p2}, Landroidx/lifecycle/o;->l(Landroid/view/ViewGroup;Lqd/l;)V

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Li9/e0;->m0:Z

    .line 17
    invoke-virtual {p0}, Li9/e0;->t0()V

    return-object p1

    :cond_0
    const-string p1, "binding"

    .line 18
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final R(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Li9/e0;->l0:Ljava/lang/String;

    const-string v1, "PARAM_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onFetchProfileResult(Lk8/g;)V
    .locals 7
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "fetchProfileActionResult"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lk8/g;->i:Lcom/nike/adapt/presenter/profile/AdaptUser;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getFirstName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Li9/e0;->l0:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lf/e;

    const v1, 0x7f110163

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const/4 v3, 0x0

    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Li9/e0;->l0:Ljava/lang/String;

    const-string v6, "name"

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lq7/a1;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li9/e0;->e0:Ljava/lang/String;

    return-object v0
.end method

.method public final t0()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Li9/e0;->m0:Z

    if-eqz v0, :cond_12

    iget v0, p0, Li9/e0;->n0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget-boolean v2, p0, Li9/e0;->o0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iput-boolean v1, p0, Li9/e0;->o0:Z

    .line 3
    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Li9/e0;->u0()Lh8/d;

    move-result-object v0

    invoke-interface {v0}, Lh8/d;->g()V

    .line 5
    invoke-virtual {p0}, Li9/e0;->u0()Lh8/d;

    move-result-object v0

    sget-object v3, Lv7/h;->i:Lv7/h;

    invoke-interface {v0, v3}, Lh8/d;->i(Lv7/h;)V

    .line 6
    invoke-virtual {p0}, Li9/e0;->u0()Lh8/d;

    move-result-object v0

    sget-object v3, Lv7/g;->s:Lv7/g;

    invoke-interface {v0, v3}, Lh8/d;->h(Lv7/g;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    sget-object v3, Lwa/k;->b:Lwa/k;

    invoke-virtual {v3, v0}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v3

    check-cast v3, Lja/a;

    invoke-virtual {v3}, Lja/a;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    new-instance v3, Lh9/v0;

    invoke-direct {v3, v2, v1, v4}, Lh9/v0;-><init>(ZILrd/h;)V

    invoke-virtual {v3, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Li9/e0;->u0()Lh8/d;

    move-result-object v0

    sget-object v5, Lv7/g;->k:Lv7/g;

    invoke-interface {v0, v5}, Lh8/d;->h(Lv7/g;)V

    .line 11
    iget-object v0, p0, Li9/e0;->f0:Lq7/a1;

    const-string v5, "binding"

    if-eqz v0, :cond_11

    iget-object v0, v0, Lq7/a1;->f:Landroid/widget/TextView;

    const v6, 0x7f06029d

    invoke-static {v6}, Landroidx/lifecycle/o;->o(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v0, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lq7/a1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lq7/a1;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/m;->w()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v7, "https://agreementservice.svs.nike.com/rest/agreement?agreementType=dataLearnMore&uxId=com.nike.bigfoot.droid&country="

    const-string v8, "&language="

    const-string v9, "&requestType=redirect"

    .line 16
    invoke-static {v7, v6, v8, v0, v9}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v6, 0x7f1100e4

    .line 17
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "<a href="

    const-string v8, " >"

    const-string v9, "</a>"

    .line 18
    invoke-static {v7, v0, v8, v6, v9}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v6, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v6, :cond_e

    iget-object v6, v6, Lq7/a1;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 20
    iget-object v6, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lq7/a1;->d:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lq7/a1;->d:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const v0, 0x7f110201

    .line 22
    iget-object v6, p0, Li9/e0;->g0:Lq7/g1;

    const-string v7, "itemMessagingCtaBinding"

    if-eqz v6, :cond_b

    iget-object v6, v6, Lq7/g1;->a:Landroid/widget/Button;

    const-string v8, "itemMessagingCtaBinding.messagingCtaPrimary"

    invoke-static {v6, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 25
    iget-object v6, p0, Li9/e0;->g0:Lq7/g1;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lq7/g1;->a:Landroid/widget/Button;

    const v8, 0x7f0602a1

    sget-object v9, Ly/a;->a:Ljava/lang/Object;

    .line 26
    invoke-static {v0, v8}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v0

    .line 27
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 28
    :cond_4
    :goto_0
    iget-object v0, p0, Li9/e0;->g0:Lq7/g1;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lq7/g1;->a:Landroid/widget/Button;

    new-instance v6, Lx8/p;

    invoke-direct {v6, p0, v3}, Lx8/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Li9/e0;->g0:Lq7/g1;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->w()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f08006d

    invoke-virtual {v3, v6, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v0, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lq7/a1;->e:Landroid/widget/TextView;

    new-instance v3, Lz8/f;

    invoke-direct {v3, p0, v1}, Lz8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/a1;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Li9/e0;->f0:Lq7/a1;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/a1;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->WELCOME:Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isScreenViewed(Lcom/nike/adapt/analytics/TrackManager$Screen;)V

    :cond_5
    :goto_1
    return-void

    .line 34
    :cond_6
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_7
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_8
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 37
    :cond_9
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 38
    :cond_a
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_b
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 40
    :cond_c
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_d
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_e
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 43
    :cond_f
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 44
    :cond_10
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_11
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_12
    :goto_2
    return-void
.end method

.method public final u0()Lh8/d;
    .locals 1

    iget-object v0, p0, Li9/e0;->i0:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    return-object v0
.end method
