.class public final Lcom/nike/adapt/ui/myshoes/MyShoesActivity;
.super Lp8/q;
.source "MyShoesActivity.kt"


# static fields
.field public static final synthetic K:I


# instance fields
.field public E:Lq7/r;

.field public F:Lt9/a;

.field public G:Lcom/nike/adapt/adk/IDeviceController;

.field public H:Lcom/nike/adapt/adk/IAdaptRequester;

.field public I:Lf9/b;

.field public J:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/q;-><init>()V

    .line 2
    new-instance v0, Lt9/a;

    invoke-direct {v0}, Lt9/a;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->F:Lt9/a;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->J:Z

    .line 3
    iget-object p2, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->H:Lcom/nike/adapt/adk/IAdaptRequester;

    const-string p3, "adaptRequester"

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p2, :cond_1

    sget-object p3, Lcom/nike/adapt/adk/DeviceListRepository;->INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;

    invoke-static {p3, v0, p1, v0}, Lcom/nike/adapt/adk/DeviceListRepository;->getLocalDevices$default(Lcom/nike/adapt/adk/DeviceListRepository;Lv9/t;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/nike/adapt/adk/IAdaptRequester;->findOrSetDefaultDevice(Ljava/util/List;)Lea/m;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p1}, Lcom/nike/adapt/adk/IAdaptRequester;->connect(Lea/m;)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public final onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 21
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "result"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {v1, v2}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->F:Lt9/a;

    invoke-virtual {v2, v1}, Lt9/a;->b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    instance-of v2, v1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    const-string v3, "myShoesAdapter"

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v2, v0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->G:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-object v2, v0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->F:Lt9/a;

    invoke-virtual {v2}, Lt9/a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    iget-object v2, v0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->I:Lf9/b;

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v5

    sget-object v6, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getHasShoeUpdates()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lf9/b;->r(Lea/m;Z)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-string v1, "deviceController"

    .line 9
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 10
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 11
    iget-object v2, v0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->I:Lf9/b;

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lg7/c;->e(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)Lt9/d;

    move-result-object v1

    const-string v5, "device"

    .line 12
    invoke-static {v3, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "shoe"

    invoke-static {v4, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v6, v2, Lf9/b;->e:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf9/f;

    .line 16
    new-instance v8, Lf9/f;

    .line 17
    iget-object v9, v7, Lf9/f;->a:Lea/m;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1fff

    .line 18
    invoke-static/range {v9 .. v20}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v9

    .line 19
    iget-object v10, v7, Lf9/f;->b:Lt9/d;

    .line 20
    iget-object v11, v7, Lf9/f;->c:Lt9/d;

    .line 21
    iget-object v7, v7, Lf9/f;->d:Lx8/m;

    .line 22
    invoke-direct {v8, v9, v10, v11, v7}, Lf9/f;-><init>(Lea/m;Lt9/d;Lt9/d;Lx8/m;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v2, v5, v3}, Lf9/b;->p(Ljava/util/List;Lea/m;)I

    move-result v6

    if-ltz v6, :cond_d

    .line 24
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_6

    goto/16 :goto_4

    .line 25
    :cond_6
    sget-object v7, Lf9/b$b;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v7, v4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v4, v9, :cond_9

    if-eq v4, v8, :cond_8

    if-eq v4, v7, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf9/f;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-object v1, v4, Lf9/f;->b:Lt9/d;

    .line 28
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf9/f;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object v1, v4, Lf9/f;->c:Lt9/d;

    goto :goto_2

    .line 30
    :cond_8
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf9/f;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object v1, v4, Lf9/f;->c:Lt9/d;

    goto :goto_2

    .line 32
    :cond_9
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf9/f;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object v1, v4, Lf9/f;->b:Lt9/d;

    .line 34
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf9/f;

    .line 35
    iget-object v10, v6, Lf9/f;->a:Lea/m;

    .line 36
    invoke-static {v10, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    sget-object v10, Lt9/d;->h:Lt9/d;

    if-ne v1, v10, :cond_a

    .line 37
    sget-object v10, Lt9/d;->j:Lt9/d;

    .line 38
    iput-object v10, v6, Lf9/f;->b:Lt9/d;

    .line 39
    iput-object v10, v6, Lf9/f;->c:Lt9/d;

    goto :goto_3

    :cond_b
    new-array v1, v7, [Lqd/l;

    const/4 v3, 0x0

    .line 40
    sget-object v4, Lf9/c;->h:Lf9/c;

    aput-object v4, v1, v3

    sget-object v3, Lf9/d;->h:Lf9/d;

    aput-object v3, v1, v9

    sget-object v3, Lf9/e;->h:Lf9/e;

    aput-object v3, v1, v8

    invoke-static {v1}, Lhd/a;->a([Lqd/l;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v5, v1}, Lgd/k;->V(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    invoke-virtual {v2, v5}, Lf9/b;->m(Ljava/util/List;)V

    goto :goto_4

    .line 42
    :cond_c
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_d
    :goto_4
    return-void
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 2
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
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->I:Lf9/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getHasShoeUpdates()Z

    move-result v1

    .line 5
    invoke-virtual {p1, v0, v1}, Lf9/b;->r(Lea/m;Z)V

    goto :goto_0

    :cond_1
    const-string p1, "myShoesAdapter"

    .line 6
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    .line 2
    iget-boolean v0, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->J:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lh9/v0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lh9/v0;-><init>(ZILrd/h;)V

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0031

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a006e

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v2, :cond_5

    const v0, 0x7f0a006f

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    const v0, 0x7f0a0070

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_5

    const v0, 0x7f0a0489

    .line 7
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 8
    invoke-static {v4}, Lq7/e2;->a(Landroid/view/View;)Lq7/e2;

    .line 9
    new-instance v0, Lq7/r;

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1, v2, v3}, Lq7/r;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 10
    iput-object v0, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->E:Lq7/r;

    .line 11
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    const p1, 0x7f110130

    const v0, 0x7f0a00e3

    .line 12
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, v0}, Lf/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lf/e;->k0(Landroidx/appcompat/widget/Toolbar;)V

    .line 14
    invoke-virtual {p0}, Lf/e;->i0()Lf/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v0, v2}, Lf/a;->m(Z)V

    .line 17
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v3

    .line 18
    iget-object v5, p0, Lp8/q;->B:Li8/d;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v4, p0

    .line 19
    invoke-static/range {v3 .. v9}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->H:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 20
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 22
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->G:Lcom/nike/adapt/adk/IDeviceController;

    .line 23
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 24
    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 25
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->E:Lq7/r;

    const-string v3, "binding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/r;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 26
    new-instance p1, Lf9/b;

    invoke-direct {p1, p0}, Lf9/b;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object v0, Lcom/nike/adapt/adk/DeviceListRepository;->INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/adk/DeviceListRepository;->getLocalDevices$default(Lcom/nike/adapt/adk/DeviceListRepository;Lv9/t;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf9/b;->q(Ljava/util/List;)V

    .line 28
    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->I:Lf9/b;

    .line 29
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lf9/b;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->multipairIconSelected(I)V

    .line 30
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->E:Lq7/r;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/r;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->I:Lf9/b;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 31
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->E:Lq7/r;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/r;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lw8/c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lw8/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "myShoesAdapter"

    .line 32
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_4
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 35
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
    invoke-virtual {p0}, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lp8/q;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/MyShoesActivity;->I:Lf9/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/nike/adapt/adk/DeviceListRepository;->INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v1}, Lcom/nike/adapt/adk/DeviceListRepository;->getLocalDevices$default(Lcom/nike/adapt/adk/DeviceListRepository;Lv9/t;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf9/b;->q(Ljava/util/List;)V

    return-void

    :cond_0
    const-string v0, "myShoesAdapter"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
