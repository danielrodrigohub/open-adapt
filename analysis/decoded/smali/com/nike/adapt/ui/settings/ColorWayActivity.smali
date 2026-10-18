.class public final Lcom/nike/adapt/ui/settings/ColorWayActivity;
.super Lp8/a;
.source "ColorWayActivity.kt"


# instance fields
.field public I:Lq7/k0;

.field public J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls9/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public K:Lea/m;

.field public L:Lcom/nike/adapt/adk/IDeviceController;

.field public M:Lcom/nike/adapt/adk/IAdaptRequester;

.field public N:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->N:I

    return-void
.end method


# virtual methods
.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 2
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp8/a;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->K:Lea/m;

    goto :goto_0

    :cond_2
    const-string p1, "deviceController"

    .line 8
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->N:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v4, v0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->J:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls9/p$a;

    .line 2
    iget-object v1, v1, Ls9/p$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "supportedColorWayList"

    .line 3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v1, ""

    .line 4
    :goto_0
    iget v4, v0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->N:I

    if-eq v4, v3, :cond_6

    iget-object v4, v0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->K:Lea/m;

    const-string v16, "adaptKitPairedDevices"

    if-eqz v4, :cond_5

    .line 5
    iget-object v4, v4, Lea/m;->n:Ljava/lang/String;

    .line 6
    invoke-static {v4, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 7
    iget-object v4, v0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->K:Lea/m;

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1fbf

    move-object v10, v1

    invoke-static/range {v4 .. v15}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v4

    iput-object v4, v0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->K:Lea/m;

    .line 8
    iget-object v5, v0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Lcom/nike/adapt/adk/IDeviceController;->updatePair(Lea/m;)V

    .line 9
    sget-object v4, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v4, v1}, Lcom/nike/adapt/analytics/TrackManager;->multipairColorWayColorSelected(Ljava/lang/String;)V

    .line 10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v4, v0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->K:Lea/m;

    if-eqz v4, :cond_2

    const-string v2, "PARAM_MODE_UPDATED"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static/range {v16 .. v16}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v1, "deviceController"

    .line 11
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_4
    invoke-static/range {v16 .. v16}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_5
    invoke-static/range {v16 .. v16}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_6
    :goto_1
    invoke-super/range {p0 .. p0}, Lp8/q;->onBackPressed()V

    const v1, 0x7f01001f

    const v2, 0x7f010022

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d004f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0134

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_16

    const v0, 0x7f0a0489

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 6
    invoke-static {v4}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 7
    new-instance v0, Lq7/k0;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p1, v3}, Lq7/k0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    iput-object v0, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->I:Lq7/k0;

    .line 9
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f11013a

    const v0, 0x7f0a00e3

    .line 10
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 12
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v0, v3}, Lf/a;->m(Z)V

    .line 15
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 17
    sget-object v4, Lm9/b;->h:Lm9/b;

    .line 18
    new-instance v5, Lm9/a;

    invoke-direct {v5, p0}, Lm9/a;-><init>(Lcom/nike/adapt/ui/settings/ColorWayActivity;)V

    .line 19
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0, v4, v5}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->M:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 20
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 22
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "selected_color_way"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 24
    :goto_0
    sget-object v0, Ls9/p;->a:Ls9/p;

    .line 25
    sget-object v4, Ls9/r;->m:Ls9/r;

    sget-object v5, Ls9/r;->l:Ls9/r;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v0, p1}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v7

    .line 27
    invoke-virtual {v0, v7}, Ls9/p;->i(Ls9/r;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 28
    sget-object v8, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v8}, Lcom/nike/adapt/adk/InMemoryCache;->getManifest()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/nike/adapt/network/assets/model/Manifest;->getConfiguration()Lcom/nike/adapt/network/assets/model/Configuration;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/nike/adapt/network/assets/model/Configuration;->getSettings()Lcom/nike/adapt/network/assets/model/Settings;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/nike/adapt/network/assets/model/Settings;->getColorwayV1()Lcom/nike/adapt/network/assets/model/ColorwayV1;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 29
    invoke-virtual {v8}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getColorways()Ljava/util/List;

    move-result-object v8

    .line 30
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/nike/adapt/network/assets/model/Colorway;

    if-eqz v7, :cond_4

    if-eq v7, v5, :cond_3

    if-ne v7, v4, :cond_2

    goto :goto_2

    :cond_2
    move v12, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v12, v3

    :goto_3
    if-ne v12, v3, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_7

    .line 32
    invoke-virtual {v11}, Lcom/nike/adapt/network/assets/model/Colorway;->getShoeIdentifier()Ljava/lang/String;

    move-result-object v2

    sget-object v12, Ls9/p;->a:Ls9/p;

    invoke-virtual {v12, v5}, Ls9/p;->i(Ls9/r;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v11}, Lcom/nike/adapt/network/assets/model/Colorway;->getShoeIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v4}, Ls9/p;->i(Ls9/r;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v3

    goto :goto_5

    .line 33
    :cond_7
    invoke-virtual {v11}, Lcom/nike/adapt/network/assets/model/Colorway;->getShoeIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_8

    .line 34
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 35
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nike/adapt/network/assets/model/Colorway;

    const-string v4, "colorway"

    .line 36
    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/Colorway;->getStyleCodes()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 38
    new-instance v5, Ls9/p$a;

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/Colorway;->getColorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/Colorway;->getShoeIdentifier()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    .line 39
    invoke-static {v8, v9, v4}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/Colorway;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v7, v4, v2}, Ls9/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 41
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_d

    new-instance v0, Ls9/q;

    invoke-direct {v0}, Ls9/q;-><init>()V

    invoke-static {v6, v0}, Lgd/k;->V(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_7

    .line 42
    :cond_c
    sget-object v6, Lgd/p;->h:Lgd/p;

    .line 43
    :cond_d
    :goto_7
    iput-object v6, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->J:Ljava/util/List;

    .line 44
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 45
    check-cast v4, Ls9/p$a;

    .line 46
    sget-object v5, Ls9/p;->a:Ls9/p;

    .line 47
    iget-object v4, v4, Ls9/p$a;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v5, v4}, Ls9/p;->c(Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;

    move-result-object v4

    .line 49
    invoke-virtual {v5, p1}, Ls9/p;->c(Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;

    move-result-object v5

    if-nez v4, :cond_e

    goto :goto_9

    :cond_e
    if-nez v5, :cond_f

    goto :goto_9

    .line 50
    :cond_f
    invoke-virtual {v4}, Lcom/nike/adapt/network/assets/model/Colorway;->getStyleCodes()Ljava/util/List;

    move-result-object v4

    .line 51
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 52
    invoke-virtual {v5}, Lcom/nike/adapt/network/assets/model/Colorway;->getStyleCodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_11

    goto :goto_b

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    const/4 v2, -0x1

    .line 53
    :goto_b
    iput v2, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->N:I

    .line 54
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 55
    invoke-direct {p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 56
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->I:Lq7/k0;

    const-string v2, "binding"

    if-eqz v0, :cond_15

    iget-object v0, v0, Lq7/k0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 57
    new-instance p1, Lm9/d;

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->J:Ljava/util/List;

    if-eqz v0, :cond_14

    iget v3, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->N:I

    invoke-direct {p1, p0, v0, v3}, Lm9/d;-><init>(Lcom/nike/adapt/ui/settings/ColorWayActivity;Ljava/util/List;I)V

    .line 58
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/ColorWayActivity;->I:Lq7/k0;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lq7/k0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void

    :cond_13
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_14
    const-string p1, "supportedColorWayList"

    .line 59
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_15
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/ColorWayActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
