.class public final Li9/b0;
.super Lp8/b;
.source "PutOnShoesOnBoardingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/b0$a;
    }
.end annotation


# static fields
.field public static final q0:Li9/b0$a;

.field public static final r0:Ljava/lang/String;


# instance fields
.field public final h0:Ljava/lang/String;

.field public i0:Lq7/u0;

.field public j0:Lo8/d;

.field public k0:Lcom/nike/adapt/adk/IAdaptRequester;

.field public l0:Lcom/nike/adapt/adk/IDeviceController;

.field public final m0:Lt9/b;

.field public n0:Z

.field public final o0:Lfd/d;

.field public final p0:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li9/b0$a;

    invoke-direct {v0}, Li9/b0$a;-><init>()V

    sput-object v0, Li9/b0;->q0:Li9/b0$a;

    const-class v0, Li9/b0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li9/b0;->r0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/b;-><init>()V

    const-string v0, "PutOnShoesOnBoardingFragment"

    .line 2
    iput-object v0, p0, Li9/b0;->h0:Ljava/lang/String;

    .line 3
    new-instance v0, Lt9/b;

    invoke-direct {v0}, Lt9/b;-><init>()V

    iput-object v0, p0, Li9/b0;->m0:Lt9/b;

    .line 4
    sget-object v0, Li9/b0$e;->h:Li9/b0$e;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Li9/b0;->o0:Lfd/d;

    .line 5
    new-instance v0, Li9/b0$b;

    invoke-direct {v0, p0}, Li9/b0$b;-><init>(Li9/b0;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Li9/b0;->p0:Lfd/h;

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

    iput-object p1, p0, Li9/b0;->j0:Lo8/d;

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
    sget-object v1, Li9/d0;->h:Li9/d0;

    .line 5
    new-instance v2, Li9/c0;

    invoke-direct {v2, p0}, Li9/c0;-><init>(Li9/b0;)V

    .line 6
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0, v1, v2}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Li9/b0;->k0:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 7
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lp8/r;->d0:Li8/d;

    .line 9
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Li9/b0;->l0:Lcom/nike/adapt/adk/IDeviceController;

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d007c

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout;

    const p3, 0x7f0a0377

    .line 4
    invoke-static {p1, p3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_c

    const p3, 0x7f0a0378

    .line 5
    invoke-static {p1, p3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_c

    const p3, 0x7f0a0379

    .line 6
    invoke-static {p1, p3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_c

    const p3, 0x7f0a037a

    .line 7
    invoke-static {p1, p3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_c

    const p3, 0x7f0a037b

    .line 8
    invoke-static {p1, p3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_c

    const p3, 0x7f0a037c

    .line 9
    invoke-static {p1, p3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_c

    const p3, 0x7f0a037d

    .line 10
    invoke-static {p1, p3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_c

    const p3, 0x7f0a0404

    .line 11
    invoke-static {p1, p3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Space;

    if-eqz v9, :cond_c

    .line 12
    new-instance p1, Lq7/u0;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v9}, Lq7/u0;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Space;)V

    .line 13
    iput-object p1, p0, Li9/b0;->i0:Lq7/u0;

    .line 14
    invoke-virtual {p0}, Li9/b0;->u0()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->k()Lv7/g;

    move-result-object p1

    sget-object p3, Lv7/g;->s:Lv7/g;

    const/4 v1, 0x1

    if-eq p1, p3, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iget-object p3, p0, Li9/b0;->i0:Lq7/u0;

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz p3, :cond_b

    iget-object p3, p3, Lq7/u0;->d:Landroid/widget/Button;

    const/16 v4, 0x8

    if-eqz p1, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p3, p0, Li9/b0;->i0:Lq7/u0;

    if-eqz p3, :cond_a

    iget-object p3, p3, Lq7/u0;->g:Landroid/widget/Space;

    if-eqz p1, :cond_2

    move v0, v4

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Li9/b0;->i0:Lq7/u0;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lq7/u0;->d:Landroid/widget/Button;

    new-instance p3, Li9/b;

    invoke-direct {p3, p0, v1}, Li9/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Li9/b0;->i0:Lq7/u0;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/u0;->f:Landroid/widget/Button;

    new-instance p3, Lw8/b;

    const/4 v0, 0x3

    invoke-direct {p3, p0, v0}, Lw8/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Li9/b0;->i0:Lq7/u0;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/u0;->b:Landroid/widget/TextView;

    sget-object p3, Ls9/p;->a:Ls9/p;

    invoke-virtual {p0}, Li9/b0;->u0()Lh8/d;

    move-result-object v0

    invoke-interface {v0}, Lh8/d;->d()Ls9/r;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    .line 20
    :cond_3
    sget-object v4, Ls9/p$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 21
    :pswitch_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :pswitch_1
    const v0, 0x7f1103de

    .line 22
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    const v0, 0x7f1103df

    .line 23
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    const v0, 0x7f1103dd

    .line 24
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_4
    const-string v0, ""

    .line 25
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Li9/b0;->i0:Lq7/u0;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/u0;->c:Landroid/widget/ImageView;

    const-string v0, "binding.putOnShoesImageView"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Li9/b0;->u0()Lh8/d;

    move-result-object v0

    invoke-interface {v0}, Lh8/d;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {p3, p1, v0, v4}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 27
    iget-object p1, p0, Li9/b0;->i0:Lq7/u0;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/u0;->a:Landroid/widget/Button;

    new-instance p3, Lw8/c;

    const/4 v0, 0x4

    invoke-direct {p3, p0, v0}, Lw8/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Li9/b0;->i0:Lq7/u0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/u0;->e:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-object p2

    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 31
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_8
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_9
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 34
    :cond_a
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 35
    :cond_b
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 5
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

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Li9/b0;->l0:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    const-string v2, "deviceController"

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    invoke-virtual {p0}, Li9/b0;->u0()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->c()Lv7/h;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lv7/h;->o:Lv7/h;

    if-eq p1, v0, :cond_3

    sget-object v0, Lv7/h;->p:Lv7/h;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_7

    .line 9
    invoke-virtual {p0}, Li9/b0;->u0()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->c()Lv7/h;

    move-result-object p1

    invoke-virtual {p1}, Lv7/h;->b()Z

    move-result p1

    if-nez p1, :cond_7

    .line 10
    sget-object p1, Ls9/p;->a:Ls9/p;

    invoke-virtual {p0}, Li9/b0;->u0()Lh8/d;

    move-result-object v0

    invoke-interface {v0}, Lh8/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls9/p;->m(Ljava/lang/String;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 11
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    sget-object v3, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    invoke-direct {v0, p1, v3}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)V

    .line 12
    iget-object p1, p0, Li9/b0;->l0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_5

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v4, Lp8/j;

    invoke-direct {v4, v0}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {p1, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 13
    iget-object p1, p0, Li9/b0;->l0:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_4

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v2, Lp8/j;

    invoke-direct {v2, v0}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {p1, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 14
    sget p1, Lh8/a;->a:I

    .line 15
    sget-object p1, Lh8/c;->b:Lh8/c;

    .line 16
    sget-object v1, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v1, v0, v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh8/c;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 13
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
    iget-object v0, p0, Li9/b0;->m0:Lt9/b;

    invoke-virtual {v0, p1}, Lt9/b;->d(Lcom/nike/adapt/adk/DeviceControllerResult;)V

    .line 4
    instance-of p1, p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    if-eqz p1, :cond_8

    .line 5
    iget-object p1, p0, Li9/b0;->m0:Lt9/b;

    invoke-virtual {p1}, Lt9/b;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6
    iget-object p1, p0, Li9/b0;->m0:Lt9/b;

    .line 7
    iget-object v0, p1, Lt9/b;->c:Lcom/nike/adapt/adk/model/Battery;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/nike/adapt/adk/model/BatteryState;->OFF_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

    if-ne v0, v2, :cond_3

    iget-object p1, p1, Lt9/b;->d:Lcom/nike/adapt/adk/model/Battery;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-ne p1, v2, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    .line 8
    iget-boolean p1, p0, Li9/b0;->n0:Z

    if-eqz p1, :cond_4

    const-string v0, "Put On Shoes - Pressed: Orthotics"

    goto :goto_3

    :cond_4
    const-string v0, "Put On Shoes - Pressed: Begin"

    :goto_3
    if-eqz p1, :cond_5

    .line 9
    sget-object p1, Lo8/a;->k:Lo8/a;

    goto :goto_4

    :cond_5
    sget-object p1, Lo8/a;->j:Lo8/a;

    .line 10
    :goto_4
    sget-object v2, Lo7/x;->a:Lo7/x;

    invoke-virtual {v2, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Li9/b0;->j0:Lo8/d;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lo8/d;->O(Lo8/a;)V

    goto :goto_5

    :cond_6
    const-string p1, "stateListener"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_7
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->onChargerErrorPresentedFindYourFit()V

    .line 13
    sget-object v0, Ls9/y;->a:Ls9/y;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v1

    new-instance v10, Li9/b0$c;

    invoke-direct {v10, p0}, Li9/b0$c;-><init>(Li9/b0;)V

    sget-object v9, Li9/b0$d;->h:Li9/b0$d;

    const-string p1, "ok"

    .line 14
    invoke-static {v9, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v11, Ls9/y$a;

    const/16 p1, 0x8

    const-string v2, "TAKE_SHOES_OFF_CHARGER_DIALOG"

    const-string v3, "OK"

    const-string v4, "SKIP"

    invoke-direct {v11, v2, v3, v4, p1}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v2, 0x7f1101fc

    const/4 v3, 0x0

    const v4, 0x7f1101f9

    const/4 v5, 0x0

    const v6, 0x7f1101fa

    const v7, 0x7f1101fb

    const/4 v8, 0x1

    const/16 v12, 0x14

    .line 16
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    :cond_8
    :goto_5
    return-void
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li9/b0;->h0:Ljava/lang/String;

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

    iget-object v0, p0, Li9/b0;->p0:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final u0()Lh8/d;
    .locals 1

    iget-object v0, p0, Li9/b0;->o0:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    return-object v0
.end method
