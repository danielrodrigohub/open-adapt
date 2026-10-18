.class public final synthetic Ly0/y;
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

    iput p2, p0, Ly0/y;->h:I

    iput-object p1, p0, Ly0/y;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Ly0/y;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Ly0/y;->i:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 1
    sget v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->E:I

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ls9/y;->a:Ls9/y;

    sget-object v10, Lm9/q0;->h:Lm9/q0;

    new-instance v11, Lm9/r0;

    invoke-direct {v11, v2}, Lm9/r0;-><init>(Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;)V

    const-string v0, "cancel"

    .line 4
    invoke-static {v10, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v12, Ls9/y$a;

    const/16 v0, 0x8

    const-string v3, "DELETE_ACCOUNT_CONNECTION_TIMEOUT"

    const-string v4, "OK"

    const-string v5, "RETRY"

    invoke-direct {v12, v3, v4, v5, v0}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f110212

    const/4 v4, 0x0

    const v5, 0x7f110211

    const/4 v6, 0x0

    const v7, 0x7f11015f

    const v8, 0x7f1101a4

    const/4 v9, 0x0

    const/16 v13, 0x94

    .line 6
    invoke-static/range {v1 .. v13}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void

    .line 8
    :pswitch_1
    iget-object v0, p0, Ly0/y;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    sget v4, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->k0:I

    .line 9
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    const-string v4, "durationTab"

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v5, 0x3

    div-int/2addr v3, v5

    iput v3, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->M:I

    .line 11
    iget-object v3, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    const-string v6, "durationIndicator"

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v7, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v7}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    iget v7, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->M:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 13
    iget-object v7, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->K:Landroid/view/View;

    if-eqz v7, :cond_9

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget v3, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->S:I

    if-eq v3, v5, :cond_0

    const v3, 0x7f0d009c

    goto :goto_0

    :cond_0
    const v3, 0x7f0d009b

    .line 15
    :goto_0
    iget-object v6, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->i()Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/material/tabs/TabLayout$g;->d(I)Lcom/google/android/material/tabs/TabLayout$g;

    const v8, 0x7f110101

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$g;->e(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 16
    iget-object v8, v7, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 17
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v8, 0x7f1103d7

    .line 18
    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$g;->c(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 19
    invoke-virtual {v6, v7, v1}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    .line 20
    iget-object v6, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->i()Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/material/tabs/TabLayout$g;->d(I)Lcom/google/android/material/tabs/TabLayout$g;

    const v8, 0x7f110100

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$g;->e(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 21
    iget-object v8, v7, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 22
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const v8, 0x7f1103d9

    .line 23
    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$g;->c(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 24
    invoke-virtual {v6, v7, v1}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    .line 25
    iget-object v6, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->i()Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/material/tabs/TabLayout$g;->d(I)Lcom/google/android/material/tabs/TabLayout$g;

    const v3, 0x7f110102

    invoke-virtual {v7, v3}, Lcom/google/android/material/tabs/TabLayout$g;->e(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 26
    iget-object v3, v7, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 27
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const v3, 0x7f1103d8

    .line 28
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/material/tabs/TabLayout$g;->c(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 29
    invoke-virtual {v6, v7, v1}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    .line 30
    iget v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->S:I

    if-eq v1, v5, :cond_5

    iget-object v1, v0, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->L:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_4

    .line 31
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$c;)V

    goto :goto_1

    .line 32
    :cond_4
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    return-void

    .line 33
    :cond_6
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_7
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_8
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_9
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_a
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_b
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 39
    :pswitch_2
    iget-object v0, p0, Ly0/y;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 40
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/f;->b(Lcom/google/android/exoplayer2/source/rtsp/f;)V

    return-void

    .line 41
    :pswitch_3
    iget-object v0, p0, Ly0/y;->i:Ljava/lang/Object;

    check-cast v0, Lu4/n$b;

    check-cast v0, Lu4/l;

    invoke-virtual {v0}, Lu4/l;->p()V

    return-void

    :pswitch_4
    iget-object v0, p0, Ly0/y;->i:Ljava/lang/Object;

    check-cast v0, Lp4/i0;

    .line 42
    iget-boolean v1, v0, Lp4/i0;->S:Z

    if-nez v1, :cond_c

    .line 43
    iget-object v1, v0, Lp4/i0;->x:Lp4/v$a;

    .line 44
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v1, v0}, Lp4/n0$a;->j(Lp4/n0;)V

    :cond_c
    return-void

    .line 46
    :pswitch_5
    iget-object v0, p0, Ly0/y;->i:Ljava/lang/Object;

    check-cast v0, Ly0/z;

    .line 47
    iget-object v0, v0, Ly0/z;->h:Ly0/d0$d;

    invoke-interface {v0}, Ly0/d0$d;->a()V

    return-void

    .line 48
    :goto_2
    iget-object v0, p0, Ly0/y;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;

    sget v4, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->Q:I

    .line 49
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v3, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    const-string v4, "leftShoeControllerUiHelper"

    if-eqz v3, :cond_e

    .line 51
    invoke-virtual {v3, v1}, Lx8/q0;->p(Z)V

    .line 52
    iget-object v0, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->M:Lx8/f0;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lx8/q0;->e()V

    return-void

    :cond_d
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_e
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
