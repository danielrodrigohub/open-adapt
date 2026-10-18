.class public final Lcom/nike/adapt/ui/settings/ShoeProfileActivity;
.super Lp8/a;
.source "ShoeProfileActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/settings/ShoeProfileActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic V:I


# instance fields
.field public I:Lcom/nike/adapt/adk/IDeviceController;

.field public J:Lcom/nike/adapt/adk/IAdaptRequester;

.field public K:Lq7/f0;

.field public L:Lea/m;

.field public M:Lx8/n;

.field public N:Lx8/n;

.field public O:Lx8/n;

.field public P:Ljava/lang/String;

.field public Q:Lt9/d;

.field public R:Lt9/d;

.field public final S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public final T:Lh8/c;

.field public U:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->P:Ljava/lang/String;

    .line 3
    sget-object v0, Lt9/d;->j:Lt9/d;

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->Q:Lt9/d;

    .line 4
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->R:Lt9/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    .line 5
    new-instance v7, Lu8/q;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x1e

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lu8/c;

    const v2, 0x7f0a0091

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->S:Ljava/util/ArrayList;

    .line 6
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 7
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->T:Lh8/c;

    .line 8
    sget-object v0, Ls9/g;->a:Ls9/g;

    invoke-virtual {v0}, Ls9/g;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->U:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final o0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->S:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const-string p1, "PARAM_MODE_UPDATED"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lea/m;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->L:Lea/m;

    .line 4
    iget-object p1, p1, Lea/m;->n:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->p0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 8
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    sget-object v0, Lt9/d;->h:Lt9/d;

    const-string v1, "result"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {p1, v1}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp8/a;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    instance-of v1, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "binding"

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->I:Lcom/nike/adapt/adk/IDeviceController;

    const-string v6, "deviceController"

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->I:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_9

    sget-object v6, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v7, Lp8/k;->a:Lp8/k;

    invoke-interface {v1, v6, v7}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lea/m;->i:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->P:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v1

    iput-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->L:Lea/m;

    if-eqz v1, :cond_5

    .line 12
    iget-object v6, v1, Lea/m;->i:Ljava/lang/String;

    .line 13
    iput-object v6, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->P:Ljava/lang/String;

    .line 14
    iget-object v7, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v7, :cond_4

    iget-object v7, v7, Lq7/f0;->l:Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v6, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lq7/f0;->l:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->P:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v6, v1, Lea/m;->n:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v6}, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->p0(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    sget-object v7, Ls9/p;->a:Ls9/p;

    .line 19
    iget-object v1, v1, Lea/m;->n:Ljava/lang/String;

    .line 20
    invoke-virtual {v7, v1}, Ls9/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 22
    :cond_4
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    sget-object v1, Lcom/nike/adapt/ui/settings/ShoeProfileActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    goto :goto_1

    .line 24
    :cond_6
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->Q:Lt9/d;

    .line 25
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->R:Lt9/d;

    goto :goto_1

    .line 26
    :cond_7
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->R:Lt9/d;

    goto :goto_1

    .line 27
    :cond_8
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->Q:Lt9/d;

    goto :goto_1

    .line 28
    :cond_9
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 29
    :cond_a
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 30
    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->Q:Lt9/d;

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->R:Lt9/d;

    invoke-static {p1, v0}, Lg7/c;->i(Lt9/d;Lt9/d;)Lt9/d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_12

    const v0, 0x7f060087

    if-eq p1, v3, :cond_f

    if-eq p1, v2, :cond_c

    goto :goto_2

    .line 31
    :cond_c
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lq7/f0;->f:Landroid/widget/TextView;

    const v1, 0x7f11012e

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lq7/f0;->f:Landroid/widget/TextView;

    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 33
    invoke-static {p0, v0}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_d
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 35
    :cond_e
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 36
    :cond_f
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lq7/f0;->f:Landroid/widget/TextView;

    const v1, 0x7f11012d

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lq7/f0;->f:Landroid/widget/TextView;

    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 38
    invoke-static {p0, v0}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_10
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_11
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 41
    :cond_12
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lq7/f0;->f:Landroid/widget/TextView;

    const v0, 0x7f11012c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz p1, :cond_13

    iget-object p1, p1, Lq7/f0;->f:Landroid/widget/TextView;

    const v0, 0x7f060094

    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 43
    invoke-static {p0, v0}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void

    :cond_13
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 45
    :cond_14
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 1
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of p1, p1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->N:Lx8/n;

    if-eqz p1, :cond_1

    sget-object v0, Lx8/n$a;->h:Lx8/n$a;

    invoke-static {p1, v0}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 5
    :cond_1
    sget-object p1, Ls9/g;->a:Ls9/g;

    invoke-virtual {p1}, Ls9/g;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->U:Z

    :cond_2
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairShoePreferenceBackSelected()V

    const v0, 0x7f01001f

    const v1, 0x7f010022

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v13, p0

    const-string v0, "view"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    .line 2
    :sswitch_0
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: ShoeProfile Remove Shoe"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    sget-object v14, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v14}, Lcom/nike/adapt/analytics/TrackManager;->multipairRemoveShoeSelected()V

    .line 4
    sget-object v0, Ls9/y;->a:Ls9/y;

    iget-object v2, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->Q:Lt9/d;

    iget-object v4, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->R:Lt9/d;

    invoke-static {v2, v4}, Lg7/c;->i(Lt9/d;Lt9/d;)Lt9/d;

    move-result-object v2

    sget-object v4, Lt9/d;->h:Lt9/d;

    if-ne v2, v4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5
    :goto_0
    iget-object v4, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->L:Lea/m;

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, v4, Lea/m;->i:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_1
    const-string v4, ""

    .line 7
    :cond_2
    sget-object v9, Lm9/j0;->h:Lm9/j0;

    new-instance v10, Lm9/l0;

    invoke-direct {v10, v13}, Lm9/l0;-><init>(Lcom/nike/adapt/ui/settings/ShoeProfileActivity;)V

    const-string v5, "cancel"

    .line 8
    invoke-static {v9, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v1, [Landroid/util/Pair;

    .line 9
    new-instance v5, Landroid/util/Pair;

    const-string v6, "nickname"

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v3

    const v3, 0x7f110135

    .line 10
    invoke-virtual {v13, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "format(activity, R.strin\u2026ir(\"nickname\", pairName))"

    .line 11
    invoke-static {v3, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const v1, 0x7f110133

    goto :goto_1

    :cond_3
    const v1, 0x7f110134

    :goto_1
    move v4, v1

    const/4 v5, 0x0

    const v6, 0x7f110137

    const v7, 0x7f110136

    const/4 v8, 0x0

    .line 12
    new-instance v11, Ls9/y$a;

    const/16 v1, 0x8

    const-string v2, "SHOE_PREF_REMOVE_DIALOG"

    const-string v12, "CANCEL"

    const-string v15, "REMOVE"

    invoke-direct {v11, v2, v12, v15, v1}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v12, 0x92

    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 13
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    .line 14
    invoke-virtual {v14}, Lcom/nike/adapt/analytics/TrackManager;->multipairModalConnected()V

    goto/16 :goto_6

    .line 15
    :sswitch_1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: ShoeProfile Name"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairEditNicknameSelected()V

    goto/16 :goto_6

    .line 17
    :sswitch_2
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: ShoeProfile Model Information"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairModelInformationSelected()V

    .line 19
    new-instance v0, Lh9/n0;

    sget-object v1, Lv7/n;->j:Lv7/n;

    invoke-direct {v0, v1}, Lh9/n0;-><init>(Lv7/n;)V

    invoke-virtual {v0, v13}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_6

    .line 20
    :sswitch_3
    iget-boolean v0, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->U:Z

    if-eqz v0, :cond_4

    .line 21
    sget-object v0, Lh9/o;->c:Lh9/o;

    invoke-virtual {v0, v13}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 22
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->gesturesPreferencesSelectedFromMyShoes()V

    goto/16 :goto_6

    .line 23
    :cond_4
    sget-object v0, Ls9/b;->a:Ls9/b;

    .line 24
    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {v0, v2, v1, v2}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    sget-object v4, Lh8/c;->b:Lh8/c;

    .line 26
    invoke-virtual {v4}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lv7/k;

    .line 28
    iget-object v6, v6, Lv7/k;->a:Ljava/lang/String;

    .line 29
    invoke-static {v6, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_7
    move-object v5, v2

    :goto_2
    check-cast v5, Lv7/k;

    if-eqz v5, :cond_8

    .line 30
    iget-boolean v3, v5, Lv7/k;->h:Z

    :cond_8
    const-string v0, "binding"

    if-nez v3, :cond_f

    .line 31
    sget-object v3, Ls9/b;->a:Ls9/b;

    .line 32
    sget-object v3, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {v3, v2, v1, v2}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 33
    sget-object v4, Lh8/c;->b:Lh8/c;

    .line 34
    invoke-virtual {v4}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :cond_9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lv7/k;

    .line 36
    iget-object v8, v8, Lv7/k;->a:Ljava/lang/String;

    .line 37
    invoke-static {v8, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_b
    move-object v7, v2

    :goto_3
    check-cast v7, Lv7/k;

    if-eqz v7, :cond_c

    .line 38
    iput-boolean v1, v7, Lv7/k;->h:Z

    .line 39
    :cond_c
    invoke-virtual {v4, v5}, Lh8/c;->a(Ljava/util/ArrayList;)V

    .line 40
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v3}, Lcom/nike/adapt/analytics/TrackManager;->gestureFirmwareUpdateNotificationPresented()V

    .line 41
    iget-object v3, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lq7/f0;->p:Lcom/nike/adapt/ui/helper/BottomSheet;

    const-string v4, "binding.gesturesShoeProfileBottomSheet"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v4, :cond_d

    iget-object v0, v4, Lq7/f0;->o:Landroid/view/View;

    const-string v2, "binding.activityShoeProfileShadedBackground"

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object v0, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    .line 43
    iput-boolean v1, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->D:Z

    .line 44
    sget-object v0, Lx8/q;->f:Lx8/q$b;

    .line 45
    iput-object v0, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    .line 46
    invoke-virtual {v3}, Lcom/nike/adapt/ui/helper/BottomSheet;->x()V

    goto/16 :goto_6

    .line 47
    :cond_d
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_f
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureFirmwareUpdateToastShown()V

    .line 49
    iget-object v1, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_10

    iget-object v0, v1, Lq7/f0;->m:Lcom/nike/adapt/ui/helper/NotificationToast;

    new-instance v1, Lm9/i0;

    invoke-direct {v1, v13}, Lm9/i0;-><init>(Lcom/nike/adapt/ui/settings/ShoeProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/helper/NotificationToast;->d(Lqd/a;)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 50
    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    goto/16 :goto_6

    .line 51
    :cond_10
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 52
    :sswitch_4
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: ShoeProfile Firmware"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairFirmwareVersionSelected()V

    .line 54
    new-instance v0, Lh9/n;

    invoke-direct {v0, v1, v3}, Lh9/n;-><init>(ZZ)V

    invoke-virtual {v0, v13}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_6

    .line 55
    :sswitch_5
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairColorWayScreenSelected()V

    .line 56
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: ShoeProfile ColorWay"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 57
    iget-object v0, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->L:Lea/m;

    if-eqz v0, :cond_13

    .line 58
    new-instance v1, Lh9/j;

    .line 59
    iget-object v0, v0, Lea/m;->n:Ljava/lang/String;

    .line 60
    invoke-direct {v1, v0}, Lh9/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_6

    .line 61
    :sswitch_6
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v4, "Pressed: ShoeProfile Calibrate"

    invoke-virtual {v0, v4}, Lo7/x;->a(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lh8/e;->b:Lh8/e;

    .line 63
    sget-object v4, Ls9/p;->a:Ls9/p;

    iget-object v5, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->L:Lea/m;

    if-eqz v5, :cond_11

    .line 64
    iget-object v5, v5, Lea/m;->n:Ljava/lang/String;

    goto :goto_4

    :cond_11
    move-object v5, v2

    .line 65
    :goto_4
    invoke-virtual {v4, v5}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v4

    invoke-virtual {v0, v4}, Lh8/e;->e(Ls9/r;)V

    .line 66
    iget-object v4, v13, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->L:Lea/m;

    if-eqz v4, :cond_12

    .line 67
    iget-object v4, v4, Lea/m;->n:Ljava/lang/String;

    goto :goto_5

    :cond_12
    move-object v4, v2

    .line 68
    :goto_5
    invoke-virtual {v0, v4}, Lh8/e;->a(Ljava/lang/String;)V

    .line 69
    sget-object v4, Lv7/h;->m:Lv7/h;

    invoke-virtual {v0, v4}, Lh8/e;->i(Lv7/h;)V

    .line 70
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairFitSelected()V

    .line 71
    new-instance v0, Lh9/m;

    invoke-direct {v0, v3, v1, v2}, Lh9/m;-><init>(ZILrd/h;)V

    invoke-virtual {v0, v13}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_6

    .line 72
    :sswitch_7
    sget-object v0, Lh9/g;->c:Lh9/g;

    invoke-virtual {v0, v13}, Lh9/a;->e(Landroid/app/Activity;)V

    :cond_13
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0082 -> :sswitch_7
        0x7f0a0083 -> :sswitch_6
        0x7f0a0085 -> :sswitch_5
        0x7f0a0090 -> :sswitch_4
        0x7f0a0092 -> :sswitch_3
        0x7f0a0094 -> :sswitch_2
        0x7f0a0096 -> :sswitch_1
        0x7f0a0099 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0042

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0082

    .line 4
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/widget/Button;

    const-string v5, "Missing required view with ID: "

    if-eqz v8, :cond_13

    const v2, 0x7f0a0083

    .line 5
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_13

    const v2, 0x7f0a0084

    .line 6
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_13

    const v2, 0x7f0a0085

    .line 7
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_13

    const v2, 0x7f0a0086

    .line 8
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_13

    const v2, 0x7f0a0087

    .line 9
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_13

    const v2, 0x7f0a0088

    .line 10
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_13

    const v2, 0x7f0a0089

    .line 11
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    const v2, 0x7f0a008a

    .line 12
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    const v2, 0x7f0a008b

    .line 13
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    const v2, 0x7f0a008c

    .line 14
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    const v2, 0x7f0a008d

    .line 15
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    const v2, 0x7f0a008e

    .line 16
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    const v2, 0x7f0a008f

    .line 17
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_13

    const v2, 0x7f0a0090

    .line 18
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_13

    const v2, 0x7f0a0091

    .line 19
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_13

    const v2, 0x7f0a0092

    .line 20
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_13

    const v2, 0x7f0a0093

    .line 21
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_13

    const v2, 0x7f0a0094

    .line 22
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Landroid/widget/Button;

    if-eqz v17, :cond_13

    const v2, 0x7f0a0095

    .line 23
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_13

    const v2, 0x7f0a0096

    .line 24
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Landroid/widget/EditText;

    if-eqz v18, :cond_13

    const v2, 0x7f0a0097

    .line 25
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v19, :cond_13

    .line 26
    move-object v7, v1

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0a0099

    .line 27
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Landroid/widget/Button;

    if-eqz v20, :cond_13

    const v2, 0x7f0a009a

    .line 28
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/core/widget/NestedScrollView;

    if-eqz v6, :cond_13

    const v2, 0x7f0a009b

    .line 29
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_13

    const v2, 0x7f0a0151

    .line 30
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    const v2, 0x7f0a023a

    .line 31
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v22, v6

    check-cast v22, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v22, :cond_13

    const v2, 0x7f0a03d3

    .line 32
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v23, v6

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_13

    const v2, 0x7f0a03d4

    .line 33
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_13

    const v2, 0x7f0a03d5

    .line 34
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_13

    const v2, 0x7f0a0489

    .line 35
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 36
    invoke-static {v6}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 37
    new-instance v1, Lq7/f0;

    move-object v6, v1

    invoke-direct/range {v6 .. v25}, Lq7/f0;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/EditText;Lcom/nike/adapt/ui/helper/NotificationToast;Landroid/widget/Button;Landroid/view/View;Lcom/nike/adapt/ui/helper/BottomSheet;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 38
    iput-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d004b

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00f1

    .line 41
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_12

    const v2, 0x7f0a00f3

    .line 42
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_12

    const v2, 0x7f0a00f4

    .line 43
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_12

    .line 44
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a00f6

    .line 45
    invoke-static {v1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_12

    .line 46
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    const-string v2, "binding"

    if-eqz v1, :cond_11

    .line 47
    iget-object v1, v1, Lq7/f0;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 48
    invoke-virtual {v0, v1}, Lf/e;->setContentView(Landroid/view/View;)V

    const v1, 0x7f110143

    const v5, 0x7f0a00e3

    .line 49
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v5}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v5, v6}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v5}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lf/e;->i0()Lf/a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v5, v1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v5, v1}, Lf/a;->m(Z)V

    .line 54
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v1

    .line 55
    iget-object v5, v0, Lp8/q;->B:Li8/d;

    .line 56
    sget-object v6, Lm9/m0;->h:Lm9/m0;

    .line 57
    new-instance v7, Lm9/h0;

    invoke-direct {v7, v0}, Lm9/h0;-><init>(Lcom/nike/adapt/ui/settings/ShoeProfileActivity;)V

    .line 58
    check-cast v1, Lo7/f;

    invoke-virtual {v1, v0, v5, v6, v7}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v1

    iput-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->J:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 59
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v1

    .line 60
    iget-object v5, v0, Lp8/q;->B:Li8/d;

    .line 61
    check-cast v1, Lo7/f;

    invoke-virtual {v1, v0, v5}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v1

    iput-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->I:Lcom/nike/adapt/adk/IDeviceController;

    .line 62
    new-instance v1, Lx8/n;

    iget-object v5, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v5, :cond_10

    iget-object v5, v5, Lq7/f0;->q:Landroid/widget/TextView;

    const-string v6, "binding.shoeProfileAutoLaceBadge"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Lx8/n;-><init>(Landroid/widget/TextView;)V

    iput-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->M:Lx8/n;

    .line 63
    new-instance v1, Lx8/n;

    iget-object v5, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v5, :cond_f

    iget-object v5, v5, Lq7/f0;->r:Landroid/widget/TextView;

    const-string v6, "binding.shoeProfileFirmwareBadge"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Lx8/n;-><init>(Landroid/widget/TextView;)V

    iput-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->N:Lx8/n;

    .line 64
    new-instance v1, Lx8/n;

    iget-object v5, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lq7/f0;->s:Landroid/widget/TextView;

    const-string v6, "binding.shoeProfileGesturesBadge"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Lx8/n;-><init>(Landroid/widget/TextView;)V

    iput-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->O:Lx8/n;

    .line 65
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lq7/f0;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lq7/f0;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 67
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lq7/f0;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lq7/f0;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lq7/f0;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lq7/f0;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lq7/f0;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lq7/f0;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lq7/f0;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lq7/f0;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lq7/f0;->i:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lq7/f0;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v1, v0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lq7/f0;->g:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_8
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_9
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_a
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_b
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_c
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_d
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_e
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_f
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_10
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_11
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_12
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->q0()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->q0()V

    .line 2
    invoke-super {p0}, Lp8/q;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->M:Lx8/n;

    if-eqz v0, :cond_0

    sget-object v1, Lx8/n$a;->i:Lx8/n$a;

    invoke-static {v0, v1}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->N:Lx8/n;

    if-eqz v0, :cond_1

    sget-object v1, Lx8/n$a;->h:Lx8/n$a;

    invoke-static {v0, v1}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->O:Lx8/n;

    if-eqz v0, :cond_2

    sget-object v1, Lx8/n$a;->k:Lx8/n$a;

    invoke-static {v0, v1}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    :cond_2
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->P:Ljava/lang/String;

    return-void
.end method

.method public final p0(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Ls9/p;->a:Ls9/p;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_7

    iget-object v1, v1, Lq7/f0;->j:Landroid/widget/ImageView;

    const-string v4, "binding.activityShoeProfileImage"

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, p1, v4}, Ls9/p;->o(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lq7/f0;->e:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Ls9/p;->c(Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Colorway;->getColorName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f110139

    .line 4
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_0
    if-nez v4, :cond_5

    .line 7
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->K:Lq7/f0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/f0;->e:Landroid/widget/TextView;

    const v0, 0x7f060028

    invoke-static {v0}, Landroidx/lifecycle/o;->o(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    return-void

    .line 8
    :cond_6
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_7
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final q0()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->L:Lea/m;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->P:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->P:Ljava/lang/String;

    .line 3
    iget-object v2, v0, Lea/m;->i:Ljava/lang/String;

    .line 4
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->P:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1ffd

    invoke-static/range {v0 .. v11}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->I:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/nike/adapt/adk/IDeviceController;->updatePair(Lea/m;)V

    goto :goto_1

    :cond_1
    const-string v0, "deviceController"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method
