.class public final Lcom/nike/adapt/ui/modes/ModeEditActivity;
.super Lp8/a;
.source "ModeEditActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/modes/ModeEditActivity$NonScrollableLayoutManager;
    }
.end annotation


# static fields
.field public static final synthetic P:I


# instance fields
.field public I:Lq7/d;

.field public J:Lcom/nike/adapt/adk/IDeviceController;

.field public K:Lcom/nike/adapt/adk/IAdaptRequester;

.field public L:Le9/d;

.field public M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/e;",
            ">;"
        }
    .end annotation
.end field

.field public N:Lea/m;

.field public final O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    .line 2
    sget-object v0, Lgd/p;->h:Lgd/p;

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->M:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    .line 3
    new-instance v7, Lu8/q;

    new-instance v3, Lcom/nike/adapt/ui/modes/ModeEditActivity$a;

    invoke-direct {v3, p0}, Lcom/nike/adapt/ui/modes/ModeEditActivity$a;-><init>(Lcom/nike/adapt/ui/modes/ModeEditActivity;)V

    const-wide/16 v4, 0x0

    const/16 v6, 0x1c

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 4
    new-instance v1, Lu8/c;

    const v2, 0x7f0a004f

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->O:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->O:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string p2, "PARAM_MODE_UPDATED"

    .line 2
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lea/m;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_4

    .line 3
    iget-object p3, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->L:Le9/d;

    if-eqz p3, :cond_3

    invoke-static {p2}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lea/e;

    .line 6
    iget-boolean v1, v1, Lea/e;->j:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p2}, Lrd/b0;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-virtual {p3, p1}, Le9/d;->n(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    const-string p2, "modeEditAdapter"

    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 5
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

    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->N:Lea/m;

    if-eqz p1, :cond_7

    .line 8
    invoke-static {p1}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lea/e;

    .line 11
    iget-boolean v4, v4, Lea/e;->j:Z

    if-eqz v4, :cond_2

    .line 12
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->M:Ljava/util/List;

    .line 13
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->L:Le9/d;

    if-eqz v0, :cond_6

    .line 14
    new-instance v1, Lcom/nike/adapt/ui/modes/ModeEditActivity$b;

    invoke-direct {v1}, Lcom/nike/adapt/ui/modes/ModeEditActivity$b;-><init>()V

    invoke-static {p1, v1}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lea/e;

    .line 17
    iget-boolean v3, v3, Lea/e;->j:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 18
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v1}, Lrd/b0;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Le9/d;->n(Ljava/util/List;)V

    goto :goto_2

    :cond_6
    const-string p1, "modeEditAdapter"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p1, "adaptKitPairedDevices"

    .line 21
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p1, "deviceController"

    .line 22
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_2
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 7
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
    instance-of v0, p1, Lcom/nike/adapt/adk/SnapshotListUpdated;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/SnapshotListUpdated;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SnapshotListUpdated;->getDevice()Lea/m;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->N:Lea/m;

    if-eqz p1, :cond_9

    .line 5
    invoke-static {p1}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lea/e;

    .line 8
    iget-boolean v4, v4, Lea/e;->j:Z

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->M:Ljava/util/List;

    .line 10
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->L:Le9/d;

    const-string v2, "modeEditAdapter"

    if-eqz v0, :cond_8

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lea/e;

    .line 13
    iget-boolean v6, v6, Lea/e;->j:Z

    xor-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v3}, Lrd/b0;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Le9/d;->n(Ljava/util/List;)V

    .line 17
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->L:Le9/d;

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p1, Le9/d;->g:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_2
    if-eqz v5, :cond_c

    .line 20
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeEditActivity;->p0()V

    goto :goto_3

    .line 21
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_8
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string p1, "adaptKitPairedDevices"

    .line 23
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_a
    instance-of p1, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz p1, :cond_c

    .line 25
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->I:Lq7/d;

    if-eqz p1, :cond_b

    .line 26
    iget-object p1, p1, Lq7/d;->a:Landroid/widget/FrameLayout;

    const-string v0, "binding.root"

    .line 27
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    goto :goto_3

    :cond_b
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0021

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0050

    .line 5
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    const v2, 0x7f0a0051

    .line 6
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_6

    const v2, 0x7f0a0066

    .line 7
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_6

    const v2, 0x7f0a02eb

    .line 8
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    const v2, 0x7f0a02ef

    .line 9
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_6

    .line 10
    new-instance p1, Lq7/d;

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lq7/d;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    .line 11
    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->I:Lq7/d;

    .line 12
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 13
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->I:Lq7/d;

    const-string v0, "binding"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/d;->b:Landroid/widget/FrameLayout;

    const-string v2, "binding.activityEditMode"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    .line 14
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 15
    iget-object v3, p0, Lp8/q;->B:Li8/d;

    .line 16
    sget-object v4, Lc9/f;->h:Lc9/f;

    .line 17
    new-instance v5, Lc9/e;

    invoke-direct {v5, p0}, Lc9/e;-><init>(Lcom/nike/adapt/ui/modes/ModeEditActivity;)V

    .line 18
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v3, v4, v5}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 19
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 20
    iget-object v3, p0, Lp8/q;->B:Li8/d;

    .line 21
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v3}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    .line 22
    new-instance p1, Le9/d;

    invoke-direct {p1, p0}, Le9/d;-><init>(Lcom/nike/adapt/ui/modes/ModeEditActivity;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->L:Le9/d;

    .line 23
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->I:Lq7/d;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/d;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/nike/adapt/ui/modes/ModeEditActivity$NonScrollableLayoutManager;

    invoke-direct {v3, p0}, Lcom/nike/adapt/ui/modes/ModeEditActivity$NonScrollableLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 24
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->I:Lq7/d;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/d;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->L:Le9/d;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 25
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->I:Lq7/d;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/d;->c:Landroid/widget/FrameLayout;

    new-instance v3, Lw8/b;

    invoke-direct {v3, p0, v2}, Lw8/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->I:Lq7/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/d;->e:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "modeEditAdapter"

    .line 28
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p0()V
    .locals 15

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: Mode Edit Save"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->M:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/e;

    .line 5
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->L:Le9/d;

    const-string v1, "modeEditAdapter"

    const/4 v14, 0x0

    if-eqz v0, :cond_7

    .line 7
    iget-object v0, v0, Le9/d;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lea/e;

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x1f

    invoke-static {v3, v14, v2, v5}, Lea/e;->a(Lea/e;Ljava/lang/String;Ljava/lang/Integer;I)Lea/e;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    throw v14

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->L:Le9/d;

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, v0, Le9/d;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 13
    invoke-static {v0}, Lgd/n;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 14
    iget-object v2, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->N:Lea/m;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1f7f

    invoke-static/range {v2 .. v13}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "adaptKitPairedDevices"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v14

    :cond_4
    move-object v0, v14

    .line 15
    :goto_2
    iget-object v1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Lcom/nike/adapt/adk/IDeviceController;->updatePair(Lea/m;)V

    .line 16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "PARAM_MODE_UPDATED"

    .line 17
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Lp8/q;->onBackPressed()V

    return-void

    :cond_5
    const-string v0, "deviceController"

    .line 20
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v14

    .line 21
    :cond_6
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v14

    .line 22
    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v14
.end method
