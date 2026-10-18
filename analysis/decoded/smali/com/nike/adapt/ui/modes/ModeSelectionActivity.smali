.class public final Lcom/nike/adapt/ui/modes/ModeSelectionActivity;
.super Lp8/a;
.source "ModeSelectionActivity.kt"

# interfaces
.implements Le9/i$d;
.implements Lx8/s$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/modes/ModeSelectionActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic U:I


# instance fields
.field public I:Lq7/q;

.field public J:Ls9/a;

.field public K:Lcom/nike/adapt/adk/IDeviceController;

.field public L:Lcom/nike/adapt/adk/IAdaptRequester;

.field public M:Ld9/a;

.field public N:Ld9/a;

.field public final O:Lx8/s;

.field public P:Z

.field public Q:Le9/i;

.field public R:Ljava/lang/String;

.field public final S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public final T:Lfd/d;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    .line 2
    new-instance v0, Ls9/a;

    invoke-direct {v0}, Ls9/a;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->J:Ls9/a;

    .line 3
    new-instance v0, Lx8/s;

    invoke-direct {v0, p0}, Lx8/s;-><init>(Lx8/s$a;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->O:Lx8/s;

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    .line 4
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

    const v2, 0x7f0a02f8

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->S:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 5
    sget-object v1, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$b;->h:Lcom/nike/adapt/ui/modes/ModeSelectionActivity$b;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->T:Lfd/d;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/q;->e:Lcom/nike/adapt/ui/helper/NotificationToast;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final H()V
    .locals 2

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Viewed: Create Presets"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->q0(Z)V

    return-void
.end method

.method public final N(Lea/e;ZZ)V
    .locals 9

    sget-object v0, Lba/f;->m:Lba/f;

    if-eqz p1, :cond_e

    if-eqz p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p2, "{\n            BigfootApp\u2026N.packageName))\n        }"

    const-string v1, "string"

    const-string v2, ""

    const-string v3, "name"

    if-eqz p3, :cond_2

    .line 1
    sget-object p3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    .line 2
    iget-boolean v4, p1, Lea/e;->j:Z

    .line 3
    iget-object v5, p1, Lea/e;->i:Ljava/lang/String;

    .line 4
    invoke-static {v5, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 5
    :try_start_0
    sget-object v3, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 6
    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v5, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 7
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    :catchall_0
    move-object v5, v2

    .line 9
    :cond_1
    invoke-virtual {p3, v5}, Lcom/nike/adapt/analytics/TrackManager;->isAutoGeneratedModeSelected(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    .line 11
    iget-object v4, p1, Lea/e;->k:Lea/c;

    .line 12
    iget-object v4, v4, Lea/c;->h:Lea/i;

    .line 13
    iget-object v4, v4, Lea/i;->i:Lea/h$a;

    .line 14
    iget v4, v4, Lea/h$a;->j:I

    .line 15
    iget-object v5, p1, Lea/e;->l:Lea/c;

    .line 16
    iget-object v5, v5, Lea/c;->h:Lea/i;

    .line 17
    iget-object v5, v5, Lea/i;->i:Lea/h$a;

    .line 18
    iget v5, v5, Lea/h$a;->j:I

    .line 19
    iget-boolean v6, p1, Lea/e;->j:Z

    .line 20
    iget-object v7, p1, Lea/e;->i:Ljava/lang/String;

    .line 21
    invoke-static {v7, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    .line 22
    :try_start_1
    sget-object v3, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v6

    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 23
    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v7, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 24
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v1

    :catchall_1
    move-object v7, v2

    .line 26
    :cond_3
    invoke-virtual {p3, v4, v5, v7}, Lcom/nike/adapt/analytics/TrackManager;->isModeSelected(IILjava/lang/String;)V

    .line 27
    :goto_0
    sget-object p2, Lo7/x;->a:Lo7/x;

    const-string p3, "Pressed: Mode Selected"

    invoke-virtual {p2, p3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    const-string p3, "deviceController"

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    new-instance v2, Lp8/e0;

    invoke-direct {v2, p1}, Lp8/e0;-><init>(Lea/e;)V

    invoke-interface {p2, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestModeTo(Lp8/l;)V

    .line 29
    iget-object p2, p1, Lea/e;->k:Lea/c;

    .line 30
    iget-object p2, p2, Lea/c;->i:Lea/d;

    .line 31
    iget-object p2, p2, Lea/d;->l:Lba/f;

    if-nez p2, :cond_4

    move-object p2, v0

    .line 32
    :cond_4
    iget-object v2, p1, Lea/e;->l:Lea/c;

    .line 33
    iget-object v2, v2, Lea/c;->i:Lea/d;

    .line 34
    iget-object v2, v2, Lea/d;->l:Lba/f;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 35
    :goto_1
    iget-boolean p1, p1, Lea/e;->j:Z

    const/4 v2, 0x2

    if-nez p1, :cond_9

    .line 36
    new-instance p1, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    sget-object p3, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {p3, p2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    invoke-virtual {p3, v0}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 37
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->p0()Lh8/a;

    move-result-object p3

    invoke-interface {p3, p1}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 38
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/q;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p3, "binding.activityModeSelectionBackground"

    invoke-static {p1, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    if-eqz p1, :cond_7

    const/4 p3, 0x0

    const/16 v2, 0xd

    invoke-static {p1, p2, p3, p3, v2}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    .line 40
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    if-eqz p1, :cond_6

    invoke-static {p1, v0, p3, p3, v2}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    .line 41
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->p0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->O:Lx8/s;

    .line 43
    iget p3, p2, Lx8/s;->b:I

    .line 44
    invoke-virtual {p2, p1}, Lx8/s;->a(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    const/4 p2, 0x3

    if-ne p3, p2, :cond_a

    .line 45
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result p1

    if-nez p1, :cond_a

    .line 46
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->colorChangeLacingScreenDuringPulsing()V

    goto :goto_2

    :cond_6
    const-string p1, "rightModeSnapshot"

    .line 47
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p1, "leftModeSnapshot"

    .line 48
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p1, "binding"

    .line 49
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_9
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->p0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p2, :cond_c

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/j;

    new-instance v4, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-direct {v3, v4}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {p2, v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 52
    iget-object p2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p2, :cond_b

    sget-object p3, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v0, Lp8/j;

    new-instance v3, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p1

    invoke-direct {v3, p1, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-direct {v0, v3}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-interface {p2, p3, v0}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_c
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_d
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_3
    return-void
.end method

.method public final U()V
    .locals 3

    const-string v0, "Edit Custom Modes"

    .line 1
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: "

    .line 2
    invoke-static {v2, v0, v1}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    .line 3
    sget-object v0, Lh9/y;->c:Lh9/y;

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->J:Ls9/a;

    invoke-virtual {p1}, Ls9/a;->b()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->pulsingLightsTurnedOff()V

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void

    :cond_1
    const-string p1, "deviceController"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final l()V
    .locals 3

    const-string v0, "Add Mode"

    .line 1
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: "

    .line 2
    invoke-static {v2, v0, v1}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    .line 3
    sget-object v0, Lh9/x;->c:Lh9/x;

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

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

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->S:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

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
    if-eqz p2, :cond_3

    .line 3
    iget-object p3, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->Q:Le9/i;

    if-eqz p3, :cond_3

    invoke-static {p2}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    if-eqz v1, :cond_1

    invoke-virtual {p3, p2, v0, v1}, Le9/i;->o(Ljava/util/List;Ld9/a;Ld9/a;)V

    goto :goto_1

    :cond_1
    const-string p2, "rightModeSnapshot"

    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p2, "leftModeSnapshot"

    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 6
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

    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    const-string v1, "deviceController"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v3

    sget-object v4, Lp8/n;->a:Lp8/n;

    invoke-interface {v0, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v3

    sget-object v4, Lp8/x;->a:Lp8/x;

    invoke-interface {v0, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    new-instance v3, Lp8/w;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v2}, Lp8/w;-><init>(Lqd/l;ILrd/h;)V

    invoke-interface {v0, v1, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 10
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lea/m;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    .line 12
    :cond_2
    sput-object v0, Ls9/n;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lea/m;->n:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->R:Ljava/lang/String;

    .line 16
    check-cast p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    .line 17
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    .line 18
    :cond_3
    invoke-static {p1}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object p1

    .line 19
    iget-boolean v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->P:Z

    if-nez v0, :cond_4

    .line 20
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isModeAccessed(I)V

    .line 21
    iput-boolean v4, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->P:Z

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lq7/q;->b:Landroid/widget/TextView;

    .line 23
    instance-of v1, p1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 24
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lea/e;

    .line 25
    iget-boolean v5, v5, Lea/e;->j:Z

    if-eqz v5, :cond_6

    move v3, v4

    :cond_7
    :goto_0
    if-ne v3, v4, :cond_8

    const v1, 0x7f110128

    .line 26
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    const v1, 0x7f110118

    .line 27
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->Q:Le9/i;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    if-eqz v3, :cond_9

    invoke-virtual {v0, p1, v1, v3}, Le9/i;->o(Ljava/util/List;Ld9/a;Ld9/a;)V

    goto :goto_2

    :cond_9
    const-string p1, "rightModeSnapshot"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_a
    const-string p1, "leftModeSnapshot"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_b
    const-string p1, "binding"

    .line 30
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_c
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_d
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_e
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_f
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_10
    :goto_2
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 8
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
    instance-of v0, p1, Lcom/nike/adapt/adk/GetLacingPercentResult;

    const-string v1, "rightModeSnapshot"

    const-string v2, "leftModeSnapshot"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    .line 4
    check-cast p1, Lcom/nike/adapt/adk/GetLacingPercentResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v7, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result v3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getAbsolutePercent()I

    move-result p1

    invoke-static {v0, v6, v3, p1, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    goto/16 :goto_0

    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result v3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getAbsolutePercent()I

    move-result p1

    invoke-static {v0, v6, v3, p1, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    goto/16 :goto_0

    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 7
    :cond_5
    instance-of v0, p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    if-eqz v0, :cond_a

    .line 8
    check-cast p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v7, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v3, :cond_8

    if-eq v0, v4, :cond_6

    goto/16 :goto_0

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result v3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getAbsolutePercent()I

    move-result p1

    invoke-static {v0, v6, v3, p1, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    goto/16 :goto_0

    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 10
    :cond_8
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result v3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getAbsolutePercent()I

    move-result p1

    invoke-static {v0, v6, v3, p1, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    goto/16 :goto_0

    :cond_9
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 11
    :cond_a
    instance-of v0, p1, Lcom/nike/adapt/adk/GetLedResult;

    if-eqz v0, :cond_f

    .line 12
    check-cast p1, Lcom/nike/adapt/adk/GetLedResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v5, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const/16 v5, 0xd

    const/4 v7, 0x0

    if-eq v0, v3, :cond_d

    if-eq v0, v4, :cond_b

    goto/16 :goto_0

    .line 13
    :cond_b
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lba/f;

    move-result-object p1

    invoke-static {v0, p1, v7, v7, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    goto/16 :goto_0

    :cond_c
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lba/f;

    move-result-object p1

    invoke-static {v0, p1, v7, v7, v5}, Ld9/a;->a(Ld9/a;Lba/f;III)Ld9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    goto/16 :goto_0

    :cond_e
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 15
    :cond_f
    instance-of v0, p1, Lcom/nike/adapt/adk/StartAnimationResult;

    if-eqz v0, :cond_10

    .line 16
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->O:Lx8/s;

    invoke-virtual {p1, v5}, Lx8/s;->e(I)V

    goto/16 :goto_0

    .line 17
    :cond_10
    instance-of v0, p1, Lcom/nike/adapt/adk/StopAnimationResult;

    const-string v5, "deviceController"

    if-eqz v0, :cond_12

    .line 18
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->J:Ls9/a;

    check-cast p1, Lcom/nike/adapt/adk/StopAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/StopAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    iget-object v3, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->O:Lx8/s;

    iget-object v4, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v4, :cond_11

    invoke-virtual {v0, p1, v3, v4}, Ls9/a;->c(Lcom/nike/adapt/adk/Shoe;Lx8/s;Lcom/nike/adapt/adk/IDeviceController;)Z

    goto :goto_0

    :cond_11
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 19
    :cond_12
    instance-of v0, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz v0, :cond_14

    .line 20
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->O:Lx8/s;

    invoke-virtual {p1, v4}, Lx8/s;->e(I)V

    .line 21
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    if-eqz p1, :cond_13

    iget-object p1, p1, Lq7/q;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.activityModeSelectionBackground"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_13
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 22
    :cond_14
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAnimationResult;

    if-eqz v0, :cond_17

    .line 23
    check-cast p1, Lcom/nike/adapt/adk/GetAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getEndingState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v0

    sget-object v7, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v3, :cond_15

    if-eq v0, v4, :cond_15

    .line 24
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->O:Lx8/s;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx8/s;->f(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;)V

    goto :goto_0

    .line 25
    :cond_15
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_16

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v3, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v0, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto :goto_0

    :cond_16
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 26
    :cond_17
    instance-of v0, p1, Lcom/nike/adapt/adk/SnapshotListUpdated;

    if-eqz v0, :cond_19

    .line 27
    check-cast p1, Lcom/nike/adapt/adk/SnapshotListUpdated;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SnapshotListUpdated;->getDevice()Lea/m;

    move-result-object p1

    .line 28
    iget-object p1, p1, Lea/m;->m:Ljava/lang/String;

    if-nez p1, :cond_18

    const-string p1, ""

    .line 29
    :cond_18
    sput-object p1, Ls9/n;->d:Ljava/lang/String;

    .line 30
    :cond_19
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->Q:Le9/i;

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    if-eqz v2, :cond_1a

    invoke-virtual {p1, v0, v2}, Le9/i;->p(Ld9/a;Ld9/a;)V

    goto :goto_1

    :cond_1a
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    :cond_1b
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    :cond_1c
    :goto_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v3, v0, Lq7/q;->f:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 2
    iget-object v4, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 3
    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v3}, Lcom/nike/adapt/ui/helper/BottomSheet;->t()V

    return-void

    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    return-void

    .line 6
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0030

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a006d

    .line 4
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_4

    const v0, 0x7f0a02ea

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    const v0, 0x7f0a02ee

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_4

    .line 7
    move-object v0, p1

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0a02f9

    .line 8
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_3

    const v2, 0x7f0a02fb

    .line 9
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v9, :cond_3

    const v2, 0x7f0a02fc

    .line 10
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v10, :cond_3

    const v2, 0x7f0a03c3

    .line 11
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 12
    new-instance p1, Lq7/q;

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v3 .. v11}, Lq7/q;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/nike/adapt/ui/helper/NotificationToast;Lcom/nike/adapt/ui/helper/BottomSheet;Landroid/view/View;)V

    .line 13
    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    .line 14
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 15
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    const-string v0, "binding"

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/q;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "binding.activityModeSelectionBackground"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    .line 16
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 17
    iget-object v2, p0, Lp8/q;->B:Li8/d;

    .line 18
    sget-object v3, Lc9/l;->h:Lc9/l;

    .line 19
    new-instance v4, Lc9/k;

    invoke-direct {v4, p0}, Lc9/k;-><init>(Lcom/nike/adapt/ui/modes/ModeSelectionActivity;)V

    .line 20
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v2, v3, v4}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->L:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 21
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 22
    iget-object v2, p0, Lp8/q;->B:Li8/d;

    .line 23
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v2}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->K:Lcom/nike/adapt/adk/IDeviceController;

    .line 24
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->p0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    .line 25
    new-instance v2, Ld9/a;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    invoke-static {v4}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)Lba/f;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ld9/a;-><init>(Lcom/nike/adapt/adk/Shoe;Lba/f;)V

    iput-object v2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->M:Ld9/a;

    .line 26
    new-instance v2, Ld9/a;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p1

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)Lba/f;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ld9/a;-><init>(Lcom/nike/adapt/adk/Shoe;Lba/f;)V

    iput-object v2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->N:Ld9/a;

    .line 27
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/q;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 29
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 30
    invoke-direct {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 31
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 32
    new-instance v3, Le9/i;

    invoke-direct {v3, p0}, Le9/i;-><init>(Le9/i$d;)V

    iput-object v3, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->Q:Le9/i;

    .line 33
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/q;->c:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_1
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v2

    .line 37
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p0()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->T:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final q0(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const v0, 0x7f110122

    goto :goto_0

    :cond_0
    const v0, 0x7f110096

    :goto_0
    if-eqz p1, :cond_1

    const v1, 0x7f110121

    goto :goto_1

    :cond_1
    const v1, 0x7f110115

    :goto_1
    if-eqz p1, :cond_2

    const v2, 0x7f110120

    goto :goto_2

    :cond_2
    const v2, 0x7f110114

    .line 1
    :goto_2
    iget-object v3, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    const-string v4, "binding"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v3, Lq7/q;->f:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v6, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    iget-object v6, v6, Lq7/j0;->e:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v6, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    iget-object v6, v6, Lq7/j0;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->w(Ljava/lang/String;)Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 6
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    iget-object v1, v1, Lq7/j0;->b:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    iget-object v1, v1, Lq7/j0;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/q;->g:Landroid/view/View;

    const-string v1, "binding.shadedBackground"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 10
    iput-object v0, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    .line 11
    iput-boolean v1, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->D:Z

    .line 12
    new-instance v0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;-><init>(Lcom/nike/adapt/ui/modes/ModeSelectionActivity;Z)V

    .line 13
    iput-object v0, v3, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    .line 14
    invoke-virtual {v3}, Lcom/nike/adapt/ui/helper/BottomSheet;->x()V

    return-void

    .line 15
    :cond_3
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 16
    :cond_4
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5
.end method

.method public final x()V
    .locals 2

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Viewed: Update Presets"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->q0(Z)V

    return-void
.end method
