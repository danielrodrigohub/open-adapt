.class public final synthetic Ly0/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ly0/x;->h:I

    iput-object p1, p0, Ly0/x;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ly0/x;->h:I

    const/4 v1, 0x0

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/lighting/LightingActivity;

    sget v1, Lcom/nike/adapt/ui/lighting/LightingActivity;->T:I

    .line 1
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lp7/b;->a:Lp7/b;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/lighting/LightingActivity;->r0()Lq7/k;

    move-result-object v0

    iget-object v0, v0, Lq7/k;->k:Landroid/widget/FrameLayout;

    const-string v1, "binding.transitionToView"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/helper/NotificationToast;

    sget v3, Lcom/nike/adapt/ui/helper/NotificationToast;->k:I

    .line 4
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/helper/NotificationToast;->b(Z)V

    return-void

    .line 6
    :pswitch_2
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    .line 7
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v0, Lq7/h;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 10
    :pswitch_3
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lo7/x;->a:Lo7/x;

    const/16 v1, 0xa

    .line 11
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 13
    :pswitch_4
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/b;

    sget v2, Lcom/google/android/exoplayer2/ui/b;->U:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/b;->g(Z)V

    return-void

    .line 15
    :pswitch_5
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/f;->b(Lcom/google/android/exoplayer2/source/rtsp/f;)V

    return-void

    .line 17
    :pswitch_6
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Lp4/i0;

    sget-object v1, Lp4/i0;->T:Ljava/util/Map;

    invoke-virtual {v0}, Lp4/i0;->z()V

    return-void

    :pswitch_7
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Ly0/z;

    .line 18
    iget-object v0, v0, Ly0/z;->h:Ly0/d0$d;

    invoke-interface {v0}, Ly0/d0$d;->a()V

    return-void

    .line 19
    :goto_0
    iget-object v0, p0, Ly0/x;->i:Ljava/lang/Object;

    check-cast v0, Lic/p;

    sget-object v1, Lic/g;->b:Lic/g;

    const-string v1, "$this_apply"

    .line 20
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lic/g;->b:Lic/g;

    .line 22
    iget-object v0, v0, Lic/p;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v0}, Lic/g;->b(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
