.class public final Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;
.super Lp8/a;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lo7/m;
.implements Lx8/c0;
.implements Lx8/s$a;
.implements Lx8/q0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic s0:I


# instance fields
.field public I:Lq7/e0;

.field public J:Lx8/d0;

.field public K:Lx8/d0;

.field public L:Lcom/nike/adapt/adk/IDeviceController;

.field public M:Lx8/n0;

.field public N:Lx8/f0;

.field public O:Lcom/nike/adapt/adk/IAdaptRequester;

.field public P:Landroid/graphics/drawable/AnimationDrawable;

.field public final Q:Lo9/a;

.field public R:Ls9/a;

.field public S:J

.field public final T:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb9/a;",
            ">;"
        }
    .end annotation
.end field

.field public U:Landroid/animation/Animator;

.field public final V:Lx8/s;

.field public W:Lx8/n;

.field public X:Lx8/n;

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public d0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public e0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public f0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public g0:Lt9/a;

.field public h0:Lt9/b;

.field public i0:Ln3/x1;

.field public j0:Lo9/s;

.field public k0:Landroid/os/Handler;

.field public final l0:Landroidx/activity/g;

.field public m0:Z

.field public final n0:Lt9/c;

.field public o0:Z

.field public final p0:Lfd/d;

.field public final q0:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/p;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final r0:Ljava/util/ArrayList;
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
    .locals 13

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    .line 2
    new-instance v12, Lo9/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo9/a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILrd/h;)V

    iput-object v12, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    .line 3
    new-instance v0, Ls9/a;

    invoke-direct {v0}, Ls9/a;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->R:Ls9/a;

    .line 4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->T:Ljava/util/Vector;

    .line 5
    new-instance v0, Lx8/s;

    invoke-direct {v0, p0}, Lx8/s;-><init>(Lx8/s$a;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->V:Lx8/s;

    .line 6
    new-instance v0, Lt9/a;

    invoke-direct {v0}, Lt9/a;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->g0:Lt9/a;

    .line 7
    new-instance v0, Lt9/b;

    invoke-direct {v0}, Lt9/b;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->h0:Lt9/b;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->k0:Landroid/os/Handler;

    .line 9
    new-instance v0, Landroidx/activity/g;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Landroidx/activity/g;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->l0:Landroidx/activity/g;

    .line 10
    new-instance v0, Lt9/c;

    invoke-direct {v0}, Lt9/c;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->n0:Lt9/c;

    const/4 v0, 0x3

    .line 11
    sget-object v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$b;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$b;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->p0:Lfd/d;

    .line 12
    sget-object v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->q0:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0:Ljava/util/ArrayList;

    return-void
.end method

.method public static final p0(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const-string v0, "alpha"

    .line 2
    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static final q0(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Lx8/k0;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 3
    :goto_1
    sget-object v1, Lx8/k0;->h:Lx8/k0;

    if-ne p1, v1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    const/4 v1, 0x0

    if-nez v0, :cond_9

    if-eqz p1, :cond_3

    goto/16 :goto_5

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->J:Lx8/d0;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->K:Lx8/d0;

    invoke-static {p1, v0}, Landroidx/lifecycle/o;->v(Lx8/d0;Lx8/d0;)I

    move-result v2

    :cond_4
    if-nez v2, :cond_5

    const/4 p1, -0x1

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$a;->a:[I

    invoke-static {v2}, Lq/g;->a(I)I

    move-result v0

    aget p1, p1, v0

    :goto_3
    const/4 v0, 0x2

    if-eq p1, v3, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_4

    :cond_6
    const p1, 0x7f0801e0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_7
    const p1, 0x7f08018e

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    :goto_4
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->D:Landroid/widget/ImageView;

    const-string v0, "binding.unlaceOrLaceUpImageView"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 12
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->C:Landroid/widget/FrameLayout;

    new-instance v0, Lr9/a;

    new-instance v1, Li9/b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Li9/b;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0xc8

    .line 15
    invoke-direct {v0, v1, v2}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->C:Landroid/widget/FrameLayout;

    new-instance v0, Lo9/c;

    invoke-direct {v0, p0}, Lo9/c;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_6

    .line 18
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->C:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p0

    iget-object p0, p0, Lq7/e0;->C:Landroid/widget/FrameLayout;

    sget-object p1, Lo9/d;->h:Lo9/d;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public final A0(Lb9/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->T:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->T:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->U:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->U:Landroid/animation/Animator;

    .line 5
    :cond_1
    iget-object p1, p1, Lb9/a;->b:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->x0(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final B0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    :goto_0
    move-object/from16 v2, p2

    invoke-interface {v1, v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setBattery(Lcom/nike/adapt/adk/model/Battery;)V

    .line 2
    iget-boolean v1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-boolean v4, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    :goto_2
    if-eqz v1, :cond_3

    .line 3
    iget-boolean v1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v5

    invoke-interface {v5}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 4
    :goto_3
    iget-object v5, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v5, :cond_5

    iget-object v6, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    iget-boolean v7, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    iget-boolean v8, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v9

    iget-object v9, v9, Lq7/e0;->A:Landroid/widget/ImageView;

    const-string v10, "binding.staticGradientView"

    invoke-static {v9, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_5

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v5, v6, v2, v9}, Lo9/s;->c(Ln3/r;ZLandroid/view/View;)V

    .line 6
    invoke-virtual {v5, v6, v3, v9}, Lo9/s;->c(Ln3/r;ZLandroid/view/View;)V

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    if-nez v1, :cond_5

    .line 7
    invoke-virtual {v5, v6}, Lo9/s;->g(Ln3/r;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 8
    invoke-virtual {v5, v6, v2, v9}, Lo9/s;->f(Ln3/r;ZLandroid/view/View;)V

    .line 9
    invoke-virtual {v5, v6, v3, v9}, Lo9/s;->f(Ln3/r;ZLandroid/view/View;)V

    .line 10
    :cond_5
    :goto_4
    iget-boolean v5, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    const/4 v6, 0x0

    const-string v7, "batteryAnimation"

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->a0:Z

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->P:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_7

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v3

    goto :goto_5

    :cond_6
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    :cond_7
    move v5, v2

    :goto_5
    const v8, 0x7f08010c

    if-nez v4, :cond_47

    .line 11
    sget-object v4, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v9

    invoke-interface {v9}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v9

    if-nez v9, :cond_47

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v9

    invoke-interface {v9}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_f

    :cond_8
    const/16 v10, 0x28

    const/16 v9, 0x14

    const/16 v11, 0xf

    const/16 v6, 0xa

    const v13, 0x7f080126

    const/4 v15, 0x5

    const-string v12, "right"

    const-string v14, "left"

    if-nez v1, :cond_2c

    if-eqz v5, :cond_9

    goto/16 :goto_b

    .line 12
    :cond_9
    iget-object v1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    .line 13
    iget-object v5, v1, Lo9/a;->f:Ljava/lang/Integer;

    if-eqz v5, :cond_2b

    .line 14
    iget-object v1, v1, Lo9/a;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_2b

    .line 15
    iput-boolean v3, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->a0:Z

    .line 16
    iget-object v1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->P:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_27

    .line 17
    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v4

    .line 18
    invoke-static {v1, v14}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v12}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 20
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 21
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v12

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 22
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 23
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v12

    goto :goto_6

    .line 24
    :cond_a
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 25
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v12

    .line 26
    :cond_b
    :goto_6
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v14

    if-eqz v14, :cond_c

    goto :goto_7

    :cond_c
    move v3, v2

    .line 27
    :goto_7
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 29
    invoke-static {v0, v8}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 30
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_9

    :cond_d
    if-eqz v3, :cond_e

    .line 31
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 32
    invoke-static {v0, v13}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 33
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_9

    :cond_e
    if-ltz v12, :cond_f

    .line 34
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 35
    invoke-static {v0, v8}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 36
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_f
    if-lt v12, v9, :cond_12

    if-lt v12, v15, :cond_10

    const v1, 0x7f08011a

    .line 37
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 38
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 39
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_10
    if-lt v12, v6, :cond_11

    const v1, 0x7f08010e

    .line 40
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 41
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 42
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_11
    if-lt v12, v11, :cond_15

    const v1, 0x7f080110

    .line 43
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 44
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 45
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_8

    :cond_12
    if-lt v12, v15, :cond_13

    .line 46
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    const v1, 0x7f08011b

    .line 47
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 48
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_13
    if-lt v12, v6, :cond_14

    .line 49
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    const v1, 0x7f08010f

    .line 50
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 51
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_14
    if-lt v12, v11, :cond_15

    .line 52
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    const v1, 0x7f080111

    .line 53
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 54
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_15
    :goto_8
    if-lt v12, v9, :cond_16

    .line 55
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    const v1, 0x7f080112

    .line 56
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 57
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_16
    const/16 v1, 0x19

    if-lt v12, v1, :cond_17

    .line 58
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    const v1, 0x7f080113

    .line 59
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 60
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_17
    const/16 v1, 0x1e

    if-lt v12, v1, :cond_18

    .line 61
    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    const v1, 0x7f080114

    .line 62
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 63
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_18
    const/16 v1, 0x23

    if-lt v12, v1, :cond_19

    const v1, 0x7f080115

    .line 64
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 65
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 66
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_19
    if-lt v12, v10, :cond_1a

    const v1, 0x7f080116

    .line 67
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 68
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 69
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_1a
    const/16 v1, 0x2d

    if-lt v12, v1, :cond_1b

    const v1, 0x7f080117

    .line 70
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 71
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 72
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_1b
    const/16 v1, 0x32

    if-lt v12, v1, :cond_1c

    const v1, 0x7f080118

    .line 73
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 74
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 75
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_1c
    const/16 v1, 0x37

    if-lt v12, v1, :cond_1d

    const v1, 0x7f080119

    .line 76
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 77
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 78
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_1d
    const/16 v1, 0x3c

    if-lt v12, v1, :cond_1e

    const v1, 0x7f08011c

    .line 79
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 80
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 81
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_1e
    const/16 v1, 0x41

    if-lt v12, v1, :cond_1f

    const v1, 0x7f08011d

    .line 82
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 83
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 84
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_1f
    const/16 v1, 0x46

    if-lt v12, v1, :cond_20

    const v1, 0x7f08011e

    .line 85
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 86
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 87
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_20
    const/16 v1, 0x4b

    if-lt v12, v1, :cond_21

    const v1, 0x7f08011f

    .line 88
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 89
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 90
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_21
    const/16 v1, 0x50

    if-lt v12, v1, :cond_22

    const v1, 0x7f080120

    .line 91
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 92
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 93
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_22
    const/16 v1, 0x55

    if-lt v12, v1, :cond_23

    const v1, 0x7f080121

    .line 94
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 95
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 96
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_23
    const/16 v1, 0x5a

    if-lt v12, v1, :cond_24

    const v1, 0x7f080122

    .line 97
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 98
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 99
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_24
    const/16 v1, 0x5f

    if-lt v12, v1, :cond_25

    const v1, 0x7f080123

    .line 100
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 101
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 102
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_25
    const/16 v1, 0x64

    if-lt v12, v1, :cond_26

    const v1, 0x7f08010d

    .line 103
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 104
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 105
    invoke-virtual {v5, v1, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 106
    :cond_26
    :goto_9
    iput-object v5, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->P:Landroid/graphics/drawable/AnimationDrawable;

    .line 107
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->l:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->P:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->P:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2b

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 109
    iget-object v1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->P:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_a

    :cond_28
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_29
    const/4 v1, 0x0

    .line 110
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2a
    const/4 v1, 0x0

    .line 111
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2b
    :goto_a
    return-void

    .line 112
    :cond_2c
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->l:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v5

    invoke-interface {v5}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v4

    .line 113
    invoke-static {v5, v14}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v12}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v7

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 115
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 116
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v7

    goto :goto_c

    .line 117
    :cond_2d
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 118
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v7

    .line 119
    :cond_2e
    :goto_c
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v12

    if-eqz v12, :cond_2f

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v12

    if-eqz v12, :cond_2f

    move v2, v3

    .line 120
    :cond_2f
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v3

    if-nez v3, :cond_46

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v3

    if-eqz v3, :cond_30

    goto/16 :goto_d

    :cond_30
    if-eqz v2, :cond_31

    .line 121
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 122
    invoke-static {v0, v13}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_31
    if-ge v7, v15, :cond_32

    .line 123
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 124
    invoke-static {v0, v8}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_32
    if-ge v7, v6, :cond_33

    .line 125
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    const v2, 0x7f08011b

    .line 126
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_33
    if-ge v7, v11, :cond_34

    .line 127
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    const v2, 0x7f08010f

    .line 128
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_34
    if-ge v7, v9, :cond_35

    .line 129
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    const v2, 0x7f080111

    .line 130
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_35
    const/16 v2, 0x19

    if-ge v7, v2, :cond_36

    .line 131
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    const v2, 0x7f080112

    .line 132
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_36
    const/16 v2, 0x1e

    if-ge v7, v2, :cond_37

    .line 133
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    const v2, 0x7f080113

    .line 134
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_37
    const/16 v2, 0x23

    if-ge v7, v2, :cond_38

    .line 135
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    const v2, 0x7f080114

    .line 136
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_38
    if-ge v7, v10, :cond_39

    const v2, 0x7f080115

    .line 137
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 138
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_39
    const/16 v2, 0x2d

    if-ge v7, v2, :cond_3a

    const v2, 0x7f080116

    .line 139
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 140
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_3a
    const/16 v2, 0x32

    if-ge v7, v2, :cond_3b

    const v2, 0x7f080117

    .line 141
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 142
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_3b
    const/16 v2, 0x37

    if-ge v7, v2, :cond_3c

    const v2, 0x7f080118

    .line 143
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 144
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_3c
    const/16 v2, 0x3c

    if-ge v7, v2, :cond_3d

    const v2, 0x7f080119

    .line 145
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 146
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_3d
    const/16 v2, 0x41

    if-ge v7, v2, :cond_3e

    const v2, 0x7f08011c

    .line 147
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 148
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_e

    :cond_3e
    const/16 v2, 0x46

    if-ge v7, v2, :cond_3f

    const v2, 0x7f08011d

    .line 149
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 150
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_3f
    const/16 v2, 0x4b

    if-ge v7, v2, :cond_40

    const v2, 0x7f08011e

    .line 151
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 152
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_40
    const/16 v2, 0x50

    if-ge v7, v2, :cond_41

    const v2, 0x7f08011f

    .line 153
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 154
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_41
    const/16 v2, 0x55

    if-ge v7, v2, :cond_42

    const v2, 0x7f080120

    .line 155
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 156
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_42
    const/16 v2, 0x5a

    if-ge v7, v2, :cond_43

    const v2, 0x7f080121

    .line 157
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 158
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_43
    const/16 v2, 0x5f

    if-ge v7, v2, :cond_44

    const v2, 0x7f080122

    .line 159
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 160
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_44
    const/16 v2, 0x64

    if-ge v7, v2, :cond_45

    const v2, 0x7f080123

    .line 161
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 162
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_45
    const v2, 0x7f08010d

    .line 163
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 164
    invoke-static {v0, v2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    .line 165
    :cond_46
    :goto_d
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 166
    invoke-static {v0, v8}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 167
    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 168
    :cond_47
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->l:Landroid/widget/ImageView;

    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 169
    invoke-static {v0, v8}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final C0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v1

    .line 2
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v0

    .line 3
    sget-object v2, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p0, v2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p0, v3}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;

    move-result-object v3

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->z0(Lb9/a;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->A0(Lb9/a;)V

    :goto_0
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, v3}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->z0(Lb9/a;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, v3}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->A0(Lb9/a;)V

    :goto_1
    return-void
.end method

.method public final D0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V
    .locals 13

    .line 1
    sget-object v0, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->A:Landroid/widget/ImageView;

    const-string v1, "binding.staticGradientView"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp7/b;->f(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->getShoeType()Ls9/r;

    move-result-object v0

    const-string v1, "<this>"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Ls9/r;->l:Ls9/r;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Ls9/r;->m:Ls9/r;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->w:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->q:Landroid/widget/ImageView;

    const-string v1, "binding.lightsOffHome"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->g:Landroid/widget/FrameLayout;

    const-string v5, "binding.colorWithEffectsContainer"

    invoke-static {v1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v5

    iget-object v5, v5, Lq7/e0;->h:Landroid/widget/FrameLayout;

    const-string v6, "binding.colorWithoutEffectsContainer"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 13
    sget-object v4, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {v4, p1}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v4

    .line 14
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result p1

    .line 15
    sget-object v6, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightPack()Lz8/a;

    move-result-object v6

    sget-object v7, Lz8/a;->m:Lz8/a;

    if-eq v6, v7, :cond_4

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->i:Lcom/nike/adapt/ui/view/DuoColorView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Ly8/b;->a:Ly8/b;

    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v0, v3}, Ly8/b;->e(Lcom/nike/adapt/adk/Shoe;)Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v5

    .line 18
    sget-object v3, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v0, v3}, Ly8/b;->e(Lcom/nike/adapt/adk/Shoe;)Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    .line 19
    invoke-virtual/range {v3 .. v8}, Lcom/nike/adapt/ui/view/DuoColorView;->a(ZLcom/nike/adapt/adk/model/LightColor;ZZZ)V

    move v4, v10

    move-object v5, v0

    move v6, v9

    move v7, v12

    move v8, v11

    .line 20
    invoke-virtual/range {v3 .. v8}, Lcom/nike/adapt/ui/view/DuoColorView;->a(ZLcom/nike/adapt/adk/model/LightColor;ZZZ)V

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->V:Lx8/s;

    invoke-virtual {p1}, Lx8/s;->b()Z

    move-result p1

    const/16 v0, 0xc

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->i:Lcom/nike/adapt/ui/view/DuoColorView;

    const-string v3, "binding.effectsLightColor"

    invoke-static {p1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v2, v0}, Lcom/nike/adapt/ui/view/DuoColorView;->c(Lcom/nike/adapt/ui/view/DuoColorView;Lcom/nike/adapt/adk/model/ShoeColor;ZI)V

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 26
    :cond_7
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->r:Lcom/nike/adapt/ui/view/DuoColorView;

    const-string v1, "binding.noEffectsLightColor"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v2, v0}, Lcom/nike/adapt/ui/view/DuoColorView;->c(Lcom/nike/adapt/ui/view/DuoColorView;Lcom/nike/adapt/adk/model/ShoeColor;ZI)V

    .line 27
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public final W(Lcom/nike/adapt/adk/Shoe;)V
    .locals 2

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->n0:Lt9/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lt9/c;->d(ZLcom/nike/adapt/adk/Shoe;)V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->R:Ls9/a;

    invoke-virtual {p1}, Ls9/a;->b()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->pulsingLightsTurnedOff()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    return-void
.end method

.method public final g(Z)V
    .locals 2

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    invoke-virtual {v0, v1, p1}, Lo9/s;->b(Ln3/r;Z)V

    :cond_0
    return-void
.end method

.method public final n0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lh8/a;->s(Z)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->k0:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->l0:Landroidx/activity/g;

    const-string v4, "videoStartHandler"

    .line 3
    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "videoStartRunnable"

    invoke-static {v3, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-boolean v1, v0, Lo9/s;->c:Z

    .line 5
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v2, v1, v3}, Lo9/s;->c(Ln3/r;ZLandroid/view/View;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v2, v1, v3}, Lo9/s;->c(Ln3/r;ZLandroid/view/View;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->g0:Lt9/a;

    .line 10
    sget-object v1, Lt9/d;->j:Lt9/d;

    iput-object v1, v0, Lt9/a;->a:Lt9/d;

    .line 11
    iput-object v1, v0, Lt9/a;->b:Lt9/d;

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

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 13
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
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->g0:Lt9/a;

    invoke-virtual {v0, p1}, Lt9/a;->b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 5
    instance-of v0, p1, Lcom/nike/adapt/adk/DeviceFoundAndReadyToConnect;

    const-string v1, "rightShoeControllerUiHelper"

    const-string v2, "leftShoeControllerUiHelper"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    .line 6
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lu8/g;

    instance-of v7, v7, Lu8/q;

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    check-cast v6, Lu8/g;

    if-nez v6, :cond_3

    .line 8
    new-instance v0, Lu8/q;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v12, 0x1e

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    .line 9
    iput-boolean v3, v0, Lu8/g;->b:Z

    .line 10
    iput-boolean v3, v0, Lu8/g;->c:Z

    .line 11
    sget-object v6, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v7

    invoke-interface {v7}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownConnectionState()Lv9/e;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lu8/g;->c(ZLv9/e;)Z

    .line 12
    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v6

    invoke-interface {v6}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownConnectionState()Lv9/e;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lu8/g;->c(ZLv9/e;)Z

    .line 13
    iget-object v3, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lx8/q0;->w()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lx8/q0;->q()V

    .line 18
    :cond_4
    invoke-virtual {p1}, Lx8/q0;->l()V

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz p1, :cond_8

    .line 21
    invoke-virtual {p1}, Lx8/q0;->w()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lx8/q0;->q()V

    .line 22
    :cond_7
    invoke-virtual {p1}, Lx8/q0;->l()V

    .line 23
    :goto_1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0()V

    .line 24
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->C0()V

    .line 25
    invoke-virtual {p0, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->t0(Z)V

    goto/16 :goto_8

    .line 26
    :cond_8
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 27
    :cond_9
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_1c

    .line 28
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->y0(Lcom/nike/adapt/adk/Shoe;Z)V

    .line 29
    invoke-virtual {p0, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->t0(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0()V

    .line 31
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 32
    iget-boolean v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    if-nez v1, :cond_b

    :cond_a
    move v4, v3

    .line 33
    :cond_b
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v2

    .line 34
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 35
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v6, Lp8/n;->a:Lp8/n;

    invoke-interface {v2, v1, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 36
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v6, Lp8/x;->a:Lp8/x;

    invoke-interface {v2, v1, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 37
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v6, Lp8/g;->a:Lp8/g;

    invoke-interface {v2, v1, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 38
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    new-instance v6, Lp8/w;

    iget-object v7, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->q0:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$c;

    invoke-direct {v6, v7}, Lp8/w;-><init>(Lqd/l;)V

    invoke-interface {v2, v1, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 39
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v6, Lp8/b0;->a:Lp8/b0;

    invoke-interface {v2, v1, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 40
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v6, Lp8/e;->a:Lp8/e;

    invoke-interface {v2, v1, v6}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 41
    iget-boolean v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->o0:Z

    if-nez v2, :cond_c

    .line 42
    iput-boolean v3, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->o0:Z

    .line 43
    sget-object v2, Lo7/x;->a:Lo7/x;

    const-string v6, "ShoeControllerActivity"

    const-string v7, "about to make the GetFirmwareVersionRequest for both shoes"

    invoke-virtual {v2, v6, v7}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v6, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v7, Lp8/y;->a:Lp8/y;

    invoke-interface {v2, v6, v7}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 45
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    sget-object v7, Lp8/k;->a:Lp8/k;

    invoke-interface {v2, v6, v7}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 46
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v2

    iget-object v2, v2, Lq7/e0;->o:Lcom/nike/adapt/ui/helper/BottomSheet;

    new-instance v6, Lw4/h;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7}, Lw4/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    :cond_c
    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    if-eqz v4, :cond_e

    if-eqz v2, :cond_d

    .line 48
    sget-object v2, Lo7/x;->a:Lo7/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->S:J

    sub-long/2addr v6, v8

    const-string v8, "Right Shoe fresh Re-Connection Time"

    invoke-virtual {v2, v8, v6, v7}, Lo7/x;->i(Ljava/lang/String;J)V

    goto :goto_2

    .line 49
    :cond_d
    sget-object v2, Lo7/x;->a:Lo7/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->S:J

    sub-long/2addr v6, v8

    const-string v8, "Left Shoe fresh Re-Connection Time"

    invoke-virtual {v2, v8, v6, v7}, Lo7/x;->i(Ljava/lang/String;J)V

    goto :goto_2

    :cond_e
    if-eqz v2, :cond_f

    .line 50
    sget-object v2, Lo7/x;->a:Lo7/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->S:J

    sub-long/2addr v6, v8

    const-string v8, "Right Shoe Connection Time to current existing connection"

    invoke-virtual {v2, v8, v6, v7}, Lo7/x;->i(Ljava/lang/String;J)V

    goto :goto_2

    .line 51
    :cond_f
    sget-object v2, Lo7/x;->a:Lo7/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->S:J

    sub-long/2addr v6, v8

    const-string v8, "Left Shoe Connection Time to current existing connection"

    invoke-virtual {v2, v8, v6, v7}, Lo7/x;->i(Ljava/lang/String;J)V

    :goto_2
    if-eqz v4, :cond_11

    .line 52
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v2

    invoke-interface {v2}, Lh8/a;->T()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 53
    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lt8/a;->a:Lt8/a;

    .line 54
    sget-boolean v2, Lt8/a;->c:Z

    if-nez v2, :cond_10

    .line 55
    iget-object v6, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 56
    new-instance v9, Lo9/e;

    invoke-direct {v9, p0, v1, v5}, Lo9/e;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Lcom/nike/adapt/adk/Shoe;Ljd/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 57
    sput-boolean v3, Lt8/a;->c:Z

    goto :goto_3

    .line 58
    :cond_10
    invoke-virtual {v1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lt8/a;->a:Lt8/a;

    .line 59
    sget-boolean v2, Lt8/a;->d:Z

    if-nez v2, :cond_11

    .line 60
    iget-object v6, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 61
    new-instance v9, Lo9/e;

    invoke-direct {v9, p0, v1, v5}, Lo9/e;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Lcom/nike/adapt/adk/Shoe;Ljd/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 62
    sput-boolean v3, Lt8/a;->d:Z

    .line 63
    :cond_11
    :goto_3
    sget-object v1, Lr7/g;->a:Lr7/g;

    iget-boolean v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    iget-boolean v4, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    invoke-virtual {v1, v2, v4}, Lr7/g;->c(ZZ)V

    .line 64
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    .line 65
    sget-object v1, Ls9/p;->a:Ls9/p;

    .line 66
    iget-object v2, v0, Lea/m;->n:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, -0x1

    goto :goto_4

    :cond_12
    sget-object v2, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$a;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_4
    if-ne v1, v3, :cond_18

    .line 68
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    const/4 v2, 0x2

    if-nez v1, :cond_15

    .line 69
    new-instance v1, Lo9/s;

    invoke-direct {v1}, Lo9/s;-><init>()V

    iput-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    .line 70
    iget-object v4, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    invoke-virtual {v1, v4}, Lo9/s;->a(Ln3/r;)V

    .line 71
    new-instance v1, Ln3/r$b;

    invoke-direct {v1, p0}, Ln3/r$b;-><init>(Landroid/content/Context;)V

    .line 72
    iget-boolean v4, v1, Ln3/r$b;->r:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lm5/a;->e(Z)V

    .line 73
    iput-boolean v3, v1, Ln3/r$b;->r:Z

    .line 74
    new-instance v4, Ln3/x1;

    invoke-direct {v4, v1}, Ln3/x1;-><init>(Ln3/r$b;)V

    .line 75
    iput-object v4, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    .line 76
    invoke-virtual {v4, v2}, Ln3/x1;->E(I)V

    .line 77
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    new-instance v5, Ln3/m1;

    const v6, 0x3ecccccd

    invoke-direct {v5, v6}, Ln3/m1;-><init>(F)V

    invoke-virtual {v1, v5}, Ln3/x1;->i0(Ln3/m1;)V

    .line 78
    :goto_5
    new-instance v1, Ll5/g0;

    invoke-direct {v1, p0}, Ll5/g0;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v5, Ll5/m;

    const v6, 0x7f100006

    invoke-static {v6}, Ll5/g0;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Ll5/m;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v5}, Ll5/g0;->l(Ll5/m;)J

    .line 80
    iget-object v1, v1, Ll5/g0;->g:Landroid/net/Uri;

    if-eqz v1, :cond_14

    .line 81
    invoke-static {v1}, Ln3/y0;->c(Landroid/net/Uri;)Ln3/y0;

    move-result-object v1

    .line 82
    invoke-virtual {v4, v1}, Ln3/e;->f0(Ln3/y0;)V

    .line 83
    invoke-virtual {v4}, Ln3/x1;->b()V

    .line 84
    :cond_14
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v4, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Ln3/o1;)V

    .line 85
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    .line 86
    :cond_15
    iget-boolean v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->m0:Z

    const-string v4, "binding.staticGradientView"

    if-eqz v1, :cond_16

    .line 87
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v3

    iget-object v3, v3, Lq7/e0;->A:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1, v3}, Lo9/s;->f(Ln3/r;ZLandroid/view/View;)V

    goto/16 :goto_6

    .line 88
    :cond_16
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v1, :cond_17

    iget-object v5, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v6

    iget-object v6, v6, Lq7/e0;->A:Landroid/widget/ImageView;

    invoke-static {v6, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->k0:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->l0:Landroidx/activity/g;

    const-string v8, "videoStartHandler"

    .line 89
    invoke-static {v4, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "videoStartRunnable"

    invoke-static {v7, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_17

    .line 90
    invoke-virtual {v1, p1, v2}, Lo9/s;->e(ZI)V

    .line 91
    invoke-virtual {v1, v5}, Lo9/s;->g(Ln3/r;)Z

    move-result p1

    if-nez p1, :cond_17

    iget p1, v1, Lo9/s;->b:I

    if-ne p1, v2, :cond_17

    iget p1, v1, Lo9/s;->a:I

    if-ne p1, v2, :cond_17

    .line 92
    new-instance p1, Ln3/m1;

    const v2, 0x3f4ccccd

    invoke-direct {p1, v2}, Ln3/m1;-><init>(F)V

    invoke-virtual {v5, p1}, Ln3/x1;->i0(Ln3/m1;)V

    .line 93
    invoke-virtual {v5, v3}, Ln3/x1;->i(Z)V

    .line 94
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v5, 0x3e8

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v2, 0x3f266666

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 95
    iget-boolean p1, v1, Lo9/s;->c:Z

    if-nez p1, :cond_17

    const-wide/16 v5, 0xbb8

    .line 96
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    iput-boolean v3, v1, Lo9/s;->c:Z

    .line 98
    :cond_17
    iget-boolean p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    if-eqz p1, :cond_1a

    iput-boolean v3, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->m0:Z

    goto :goto_6

    .line 99
    :cond_18
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    invoke-virtual {p1, v1}, Lo9/s;->a(Ln3/r;)V

    .line 100
    :cond_19
    iput-object v5, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    .line 101
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->A:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    :cond_1a
    :goto_6
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    .line 103
    iget-object v0, v0, Lea/m;->n:Ljava/lang/String;

    .line 104
    iput-object v0, p1, Lo9/a;->a:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->isHomeViewLoaded(Lo9/a;)V

    .line 106
    :cond_1b
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->g0:Lt9/a;

    invoke-virtual {p1}, Lt9/a;->a()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 107
    sget-object p1, Ls9/c;->a:Ls9/c;

    invoke-virtual {p1, p0}, Ls9/c;->g(Landroid/content/Context;)V

    goto/16 :goto_8

    .line 108
    :cond_1c
    instance-of v0, p1, Lcom/nike/adapt/adk/Disconnected;

    if-eqz v0, :cond_20

    .line 109
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 110
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lx8/q0;->l()V

    goto :goto_7

    :cond_1d
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_1e
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lx8/q0;->l()V

    .line 112
    :goto_7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    new-instance v1, Lcom/nike/adapt/adk/model/Battery;

    sget-object v2, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    invoke-direct {v1, v4, v2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;)V

    invoke-virtual {p0, v0, v1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->B0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    .line 113
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->C0()V

    .line 114
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->y0(Lcom/nike/adapt/adk/Shoe;Z)V

    .line 115
    invoke-virtual {p0, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->t0(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0()V

    .line 117
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v0, Lcom/nike/adapt/adk/model/Battery;

    invoke-direct {v0, v4, v2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;)V

    invoke-virtual {p0, p1, v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->B0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_8

    .line 118
    :cond_1f
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    .line 119
    :cond_20
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectingToPair;

    if-eqz v0, :cond_21

    .line 120
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->C0()V

    .line 121
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->y0(Lcom/nike/adapt/adk/Shoe;Z)V

    .line 122
    invoke-virtual {p0, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->t0(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0()V

    .line 124
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v0, Lcom/nike/adapt/adk/model/Battery;

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    invoke-direct {v0, v4, v1}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;)V

    invoke-virtual {p0, p1, v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->B0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_8

    .line 125
    :cond_21
    instance-of v0, p1, Lcom/nike/adapt/adk/NotInitiated;

    if-eqz v0, :cond_22

    .line 126
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->C0()V

    .line 127
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->y0(Lcom/nike/adapt/adk/Shoe;Z)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->t0(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->r0()V

    .line 130
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    new-instance v0, Lcom/nike/adapt/adk/model/Battery;

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    invoke-direct {v0, v4, v1}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;)V

    invoke-virtual {p0, p1, v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->B0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_8

    .line 131
    :cond_22
    instance-of p1, p1, Lcom/nike/adapt/adk/BLEConnectionError;

    if-eqz p1, :cond_23

    .line 132
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x800000

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_23
    :goto_8
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 14
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
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->h0:Lt9/b;

    invoke-virtual {v0, p1}, Lt9/b;->d(Lcom/nike/adapt/adk/DeviceControllerResult;)V

    .line 4
    instance-of v0, p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lo9/a;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lo9/a;->f:Ljava/lang/Integer;

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->B0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    .line 11
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/analytics/TrackManager;->isHomeViewLoaded(Lo9/a;)V

    goto/16 :goto_12

    .line 12
    :cond_2
    instance-of v0, p1, Lcom/nike/adapt/adk/GetLacingPercentResult;

    const/4 v1, 0x5

    const-string v2, "leftShoeControllerUiHelper"

    const-string v3, "rightShoeControllerUiHelper"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/nike/adapt/adk/GetLacingPercentResult;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 14
    iget-object v3, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    if-eqz v2, :cond_c

    move-object v3, v2

    .line 16
    :goto_1
    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 17
    new-instance v2, Lx8/i0;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getRelativePercent()I

    move-result v7

    invoke-direct {v2, v7}, Lx8/i0;-><init>(I)V

    goto :goto_2

    .line 18
    :cond_5
    sget-object v2, Lx8/t;->a:Lx8/t;

    :goto_2
    move-object v12, v2

    .line 19
    new-instance v2, Lp4/z;

    const/4 v13, 0x1

    move-object v8, v2

    move-object v9, p0

    move-object v10, p1

    move-object v11, v3

    invoke-direct/range {v8 .. v13}, Lp4/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 20
    iput-object v2, v3, Lx8/q0;->B:Ljava/lang/Runnable;

    .line 21
    iget-boolean p1, v3, Lx8/q0;->A:Z

    if-eqz p1, :cond_6

    .line 22
    iget-object p1, v3, Lx8/q0;->h:Landroid/content/Context;

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {v2}, Lp4/z;->run()V

    .line 24
    :cond_6
    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 25
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getAbsolutePercent()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 26
    iput-object v0, p1, Lo9/a;->c:Ljava/lang/Integer;

    goto :goto_3

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/GetLacingPercentResult;->getAbsolutePercent()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 28
    iput-object v0, p1, Lo9/a;->b:Ljava/lang/Integer;

    .line 29
    :goto_3
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    .line 30
    iget-object v0, p1, Lo9/a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    move v0, v6

    goto :goto_4

    :cond_8
    move v0, v5

    .line 31
    :goto_4
    iget-object p1, p1, Lo9/a;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_9

    move v5, v6

    .line 32
    :cond_9
    sget-object p1, Lr7/g;->a:Lr7/g;

    .line 33
    sget-object v2, Lr7/g;->f:Lr7/a;

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    sget-object v3, Lr7/g$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v4, v3, v2

    :goto_5
    const/4 v2, 0x4

    if-eq v4, v2, :cond_b

    if-eq v4, v1, :cond_b

    goto :goto_6

    .line 34
    :cond_b
    invoke-virtual {p1, v0, v5}, Lr7/g;->b(ZZ)V

    .line 35
    :goto_6
    iget-boolean p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    if-eqz p1, :cond_3a

    iget-boolean p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    if-eqz p1, :cond_3a

    .line 36
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/analytics/TrackManager;->isHomeViewLoaded(Lo9/a;)V

    goto/16 :goto_12

    .line 37
    :cond_c
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 38
    :cond_d
    instance-of v0, p1, Lcom/nike/adapt/adk/GetLedResult;

    if-eqz v0, :cond_f

    .line 39
    check-cast p1, Lcom/nike/adapt/adk/GetLedResult;

    .line 40
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    if-eqz v0, :cond_e

    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->d0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto :goto_7

    :cond_e
    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->c0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 41
    :goto_7
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->c0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz p1, :cond_3a

    .line 42
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->d0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz v0, :cond_3a

    .line 43
    sget-object v1, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->D0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 46
    iput-object v7, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->c0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 47
    iput-object v7, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->d0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto/16 :goto_12

    .line 48
    :cond_f
    instance-of v0, p1, Lcom/nike/adapt/adk/SetLedResult;

    if-eqz v0, :cond_11

    .line 49
    check-cast p1, Lcom/nike/adapt/adk/SetLedResult;

    .line 50
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    if-eqz v0, :cond_10

    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->f0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto :goto_8

    :cond_10
    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->e0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 51
    :goto_8
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->e0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz p1, :cond_3a

    .line 52
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->f0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    if-eqz v0, :cond_3a

    .line 53
    sget-object v1, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->D0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 54
    iput-object v7, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->e0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 55
    iput-object v7, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->f0:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto/16 :goto_12

    .line 56
    :cond_11
    instance-of v0, p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    if-eqz v0, :cond_1c

    .line 57
    iget-object v8, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 58
    new-instance v11, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;

    invoke-direct {v11, p0, v7}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 59
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->n0:Lt9/c;

    check-cast p1, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lt9/c;->d(ZLcom/nike/adapt/adk/Shoe;)V

    .line 60
    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    .line 61
    iget-object v4, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v4, :cond_12

    iget-object v8, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    invoke-virtual {v4, v8, v0}, Lo9/s;->d(Ln3/r;Z)V

    :cond_12
    if-eqz v0, :cond_14

    .line 62
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    if-eqz v0, :cond_13

    goto :goto_9

    :cond_13
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    :cond_14
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz v0, :cond_1b

    :goto_9
    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result v2

    invoke-virtual {v0, v2, v6}, Lx8/q0;->k(IZ)V

    .line 63
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->h()Z

    move-result v0

    const/16 v2, -0xa

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->v()I

    move-result v0

    if-ne v0, v2, :cond_15

    .line 64
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->P()I

    move-result v3

    add-int/2addr v3, v6

    invoke-interface {v0, v3}, Lh8/a;->o(I)V

    .line 65
    :cond_15
    invoke-virtual {p1}, Lcom/nike/adapt/adk/ServoMoveCompleteBroadcastResult;->getRelativePercent()I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    float-to-double v3, p1

    .line 66
    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-float p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x64

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 67
    sget-object v0, Ls9/i;->a:Ls9/i;

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_a

    .line 69
    :cond_16
    sget-object v0, Ls9/i;->b:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->v()I

    move-result v1

    if-eq v1, v2, :cond_17

    goto :goto_a

    .line 70
    :cond_17
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREF_GOOGLE_VOICE_LACING_NOTIFICATION"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_a

    .line 71
    :cond_18
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GOOGLE_VOICE_LACING_NOTIFICATION_COUNT"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_19

    :goto_a
    move v0, v5

    goto :goto_b

    :cond_19
    move v0, v6

    :goto_b
    if-nez v0, :cond_1a

    goto :goto_c

    .line 72
    :cond_1a
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->x()V

    const v0, 0x7f110358

    .line 73
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "percent"

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->j:Lcom/nike/adapt/ui/helper/BottomSheet;

    sget-object v1, Lx8/q;->a:Lx8/q$f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-object v1, v0, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    .line 76
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->t:Landroid/view/View;

    const-string v2, "binding.shadedBackground"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object v1, v0, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    .line 78
    iput-boolean v6, v0, Lcom/nike/adapt/ui/helper/BottomSheet;->D:Z

    const-string v1, "description"

    .line 79
    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/nike/adapt/ui/helper/BottomSheet;->w(Ljava/lang/String;)Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 80
    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->x()V

    .line 81
    :goto_c
    invoke-virtual {p0, v6}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->t0(Z)V

    goto/16 :goto_12

    .line 82
    :cond_1b
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_1c
    instance-of v0, p1, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;

    if-eqz v0, :cond_1d

    .line 84
    check-cast p1, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/adk/BatteryUpdateBroadCastNotificationResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->B0(Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/model/Battery;)V

    goto/16 :goto_12

    .line 85
    :cond_1d
    instance-of v0, p1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    if-eqz v0, :cond_23

    .line 86
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    check-cast p1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->getFirmwareStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->getLeftStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 87
    iput-object v1, v0, Lo9/a;->h:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;->getFirmwareStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->getRightStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object p1

    .line 89
    iput-object p1, v0, Lo9/a;->i:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->W:Lx8/n;

    if-eqz p1, :cond_1e

    sget-object v0, Lx8/n$a;->h:Lx8/n$a;

    invoke-static {p1, v0}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 91
    :cond_1e
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getHasShoeUpdates()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 92
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "FW_UPDATE_AVAILABLE : FW_STATS "

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->X:Lx8/n;

    if-eqz v1, :cond_1f

    sget-object v2, Lx8/n$a;->j:Lx8/n$a;

    invoke-static {v1, v2}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    :cond_1f
    const-string v1, "Firmware Update Prompt in LnR Screen"

    .line 94
    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 95
    :cond_20
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->f()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 96
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "ShoeControllerActivity"

    const-string v2, "isConnectAttemptAfterFirmwareUpgrade=true logging success bread crumb"

    invoke-virtual {v0, v1, v2}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v3

    invoke-interface {v3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/nike/adapt/analytics/TrackManager;->softwareUpdateConnectionReEstablished(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->W()Lv7/d;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 99
    invoke-virtual {p1}, Lv7/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 100
    :cond_21
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    invoke-interface {p1, v7}, Lh8/a;->B(Lv7/d;)V

    .line 101
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    invoke-interface {p1, v5}, Lh8/a;->I(Z)V

    const-string p1, "isConnectAttemptAfterFirmwareUpgrade=false"

    .line 102
    invoke-virtual {v0, v1, p1}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_22
    sget-object p1, Ls9/g;->a:Ls9/g;

    invoke-virtual {p1}, Ls9/g;->f()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->e0()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 104
    sget-object p1, Lh9/p;->c:Lh9/p;

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_12

    .line 105
    :cond_23
    instance-of v0, p1, Lcom/nike/adapt/adk/GetCurrentFirmwareVersionsResult;

    if-eqz v0, :cond_26

    .line 106
    sget-object p1, Lo7/x;->a:Lo7/x;

    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEFT : Firmware version from LnR Screen is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : FW_STATS"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIGHT : Firmware version from LnR Screen is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    sget-object p1, Ls9/g;->a:Ls9/g;

    invoke-virtual {p1}, Ls9/g;->h()Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_12

    .line 110
    :cond_24
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->p:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->u()Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v5, 0x8

    :cond_25
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->u()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 112
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->p:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 114
    new-instance v0, Lo9/q;

    invoke-direct {v0, p0}, Lo9/q;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    goto/16 :goto_12

    .line 116
    :cond_26
    instance-of v0, p1, Lcom/nike/adapt/adk/StartAnimationResult;

    if-eqz v0, :cond_27

    .line 117
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->V:Lx8/s;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lx8/s;->e(I)V

    .line 118
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->D0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    goto/16 :goto_12

    .line 119
    :cond_27
    instance-of v0, p1, Lcom/nike/adapt/adk/StopAnimationResult;

    if-eqz v0, :cond_28

    .line 120
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->R:Ls9/a;

    check-cast p1, Lcom/nike/adapt/adk/StopAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/StopAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->V:Lx8/s;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ls9/a;->c(Lcom/nike/adapt/adk/Shoe;Lx8/s;Lcom/nike/adapt/adk/IDeviceController;)Z

    goto/16 :goto_12

    .line 121
    :cond_28
    instance-of v0, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    const/4 v1, 0x2

    if-eqz v0, :cond_2a

    .line 122
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightPack()Lz8/a;

    move-result-object p1

    .line 123
    sget-object v0, Lz8/a;->m:Lz8/a;

    if-ne p1, v0, :cond_29

    iget-object v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->V:Lx8/s;

    invoke-virtual {v2}, Lx8/s;->b()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 124
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->V:Lx8/s;

    invoke-virtual {p1, v1}, Lx8/s;->e(I)V

    .line 125
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->D0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    goto/16 :goto_12

    :cond_29
    if-eq p1, v0, :cond_3a

    .line 126
    sget-object p1, Lp7/b;->a:Lp7/b;

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->A:Landroid/widget/ImageView;

    const-string v0, "binding.staticGradientView"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    goto/16 :goto_12

    .line 127
    :cond_2a
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAnimationResult;

    if-eqz v0, :cond_2c

    .line 128
    check-cast p1, Lcom/nike/adapt/adk/GetAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getEndingState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v0

    sget-object v2, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v6, :cond_2b

    if-eq v0, v1, :cond_2b

    .line 129
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->V:Lx8/s;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx8/s;->f(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;)V

    .line 130
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->D0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    goto/16 :goto_12

    .line 131
    :cond_2b
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    goto/16 :goto_12

    .line 132
    :cond_2c
    instance-of v0, p1, Lcom/nike/adapt/adk/GetSerialNumberResult;

    if-eqz v0, :cond_2e

    .line 133
    check-cast p1, Lcom/nike/adapt/adk/GetSerialNumberResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetSerialNumberResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 134
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetSerialNumberResult;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    .line 135
    iput-object p1, v0, Lo9/a;->e:Ljava/lang/String;

    goto :goto_d

    .line 136
    :cond_2d
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetSerialNumberResult;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    .line 137
    iput-object p1, v0, Lo9/a;->d:Ljava/lang/String;

    .line 138
    :goto_d
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Q:Lo9/a;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/analytics/TrackManager;->isHomeViewLoaded(Lo9/a;)V

    goto/16 :goto_12

    .line 139
    :cond_2e
    instance-of v0, p1, Lcom/nike/adapt/adk/GetDeviceStatsResult;

    if-eqz v0, :cond_2f

    .line 140
    iget-object v8, p0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 141
    new-instance v11, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e;

    invoke-direct {v11, p1, v7}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e;-><init>(Lcom/nike/adapt/adk/DeviceControllerResult;Ljd/d;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_12

    .line 142
    :cond_2f
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAutoLaceResult;

    if-eqz v0, :cond_39

    .line 143
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->h0:Lt9/b;

    .line 144
    iget v0, p1, Lt9/b;->a:I

    if-eq v0, v4, :cond_30

    iget p1, p1, Lt9/b;->b:I

    if-eq p1, v4, :cond_30

    move p1, v6

    goto :goto_e

    :cond_30
    move p1, v5

    :goto_e
    if-eqz p1, :cond_3a

    .line 145
    sget-object p1, Lg9/k;->a:Lg9/k;

    .line 146
    sget-object p1, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {p1, v7, v6, v7}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 147
    sget-object v0, Lg9/k;->b:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    :cond_31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lv7/k;

    .line 149
    iget-object v2, v2, Lv7/k;->a:Ljava/lang/String;

    .line 150
    invoke-static {v2, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_f

    :cond_33
    move-object v1, v7

    :goto_f
    check-cast v1, Lv7/k;

    if-eqz v1, :cond_34

    .line 151
    iget-boolean p1, v1, Lv7/k;->f:Z

    goto :goto_10

    :cond_34
    move p1, v5

    :goto_10
    if-eqz p1, :cond_3a

    .line 152
    sget-object p1, Lg9/k;->a:Lg9/k;

    .line 153
    sget-object p1, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {p1, v7, v6, v7}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 154
    sget-object v0, Lg9/k;->b:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :cond_35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lv7/k;

    .line 156
    iget-object v3, v3, Lv7/k;->a:Ljava/lang/String;

    .line 157
    invoke-static {v3, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    move-object v7, v2

    :cond_37
    check-cast v7, Lv7/k;

    if-nez v7, :cond_38

    goto :goto_11

    .line 158
    :cond_38
    iput-boolean v5, v7, Lv7/k;->f:Z

    .line 159
    :goto_11
    sget-object p1, Lg9/k;->b:Lh8/c;

    invoke-virtual {p1, v0}, Lh8/c;->a(Ljava/util/ArrayList;)V

    .line 160
    sget-object p1, Lg9/k;->a:Lg9/k;

    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->h0:Lt9/b;

    .line 161
    iget v0, p1, Lt9/b;->a:I

    .line 162
    iget p1, p1, Lt9/b;->b:I

    .line 163
    invoke-static {v0, p1}, Lg9/k;->e(II)V

    goto :goto_12

    .line 164
    :cond_39
    instance-of v0, p1, Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    if-eqz v0, :cond_3a

    .line 165
    check-cast p1, Lcom/nike/adapt/adk/GestureStatsNotificationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GestureStatsNotificationResult;->getGestureNotification()Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptGestureNotification;->getGestureConfiguration()Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;->getAction()Lcom/nike/adapt/adk/model/AdaptGestureAction;

    move-result-object v0

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_UNLACE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    if-ne v0, v1, :cond_3a

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;->getClassification()Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    move-result-object p1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_DOUBLETAP:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    if-ne p1, v0, :cond_3a

    .line 167
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const-string v0, "L R screen"

    invoke-static {p1, v7, v0, v6, v7}, Lcom/nike/adapt/analytics/TrackManager;->gestureSuccessToastShown$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 168
    invoke-static {p1, v7, v6, v7}, Lcom/nike/adapt/analytics/TrackManager;->gestureSecondShoeSuccess$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->b:Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f11024d

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->e(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    const v0, 0x7f11024c

    .line 170
    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->c(I)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 171
    sget-object v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$f;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$f;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->d(Lqd/a;)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 172
    invoke-virtual {p1}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    :cond_3a
    :goto_12
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->j:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->o:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/BottomSheet;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->appIconBottomSheetMaybeLater()V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->X:Lx8/n;

    if-eqz v0, :cond_1

    sget-object v1, Lx8/n$a;->j:Lx8/n$a;

    invoke-static {v0, v1}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lh8/a;->i(Z)V

    return-void

    .line 6
    :cond_2
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 40

    move-object/from16 v7, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0041

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0081

    .line 4
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v11, :cond_7

    const v1, 0x7f0a00d3

    .line 5
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v12, :cond_7

    const v1, 0x7f0a00d5

    .line 6
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v13, :cond_7

    const v1, 0x7f0a00e4

    .line 7
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/FrameLayout;

    if-eqz v14, :cond_7

    const v1, 0x7f0a00e5

    .line 8
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    const v1, 0x7f0a00e6

    .line 9
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_7

    const v1, 0x7f0a00e7

    .line 10
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    const v1, 0x7f0a010d

    .line 11
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    const v1, 0x7f0a0135

    .line 12
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/FrameLayout;

    if-eqz v16, :cond_7

    const v1, 0x7f0a0136

    .line 13
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/FrameLayout;

    if-eqz v17, :cond_7

    const v1, 0x7f0a0158

    .line 14
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nike/adapt/ui/helper/NotificationToast;

    if-eqz v3, :cond_7

    const v1, 0x7f0a01b5

    .line 15
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/nike/adapt/ui/view/DuoColorView;

    if-eqz v18, :cond_7

    const v1, 0x7f0a0243

    .line 16
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v19, :cond_7

    const v1, 0x7f0a0255

    .line 17
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/FrameLayout;

    if-eqz v20, :cond_7

    const v1, 0x7f0a025a

    .line 18
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/ImageView;

    if-eqz v21, :cond_7

    const v1, 0x7f0a025b

    .line 19
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/FrameLayout;

    if-eqz v22, :cond_7

    const v1, 0x7f0a025e

    .line 20
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/LinearLayout;

    if-eqz v23, :cond_7

    const v1, 0x7f0a028b

    .line 21
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/nike/adapt/ui/helper/BottomSheet;

    if-eqz v24, :cond_7

    const v1, 0x7f0a02b6

    .line 22
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v25, :cond_7

    const v1, 0x7f0a02bd

    .line 23
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/ImageView;

    if-eqz v26, :cond_7

    const v1, 0x7f0a032d

    .line 24
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    const v1, 0x7f0a0330

    .line 25
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/nike/adapt/ui/view/DuoColorView;

    if-eqz v27, :cond_7

    const v1, 0x7f0a0370

    .line 26
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v28, :cond_7

    const v1, 0x7f0a03c3

    .line 27
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v29

    if-eqz v29, :cond_7

    const v1, 0x7f0a03c6

    .line 28
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 29
    invoke-static {v3}, Lq7/m1;->a(Landroid/view/View;)Lq7/m1;

    move-result-object v30

    const v1, 0x7f0a03cb

    .line 30
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/FrameLayout;

    if-eqz v31, :cond_7

    const v1, 0x7f0a03cd

    .line 31
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/widget/ImageView;

    if-eqz v32, :cond_7

    const v1, 0x7f0a03cf

    .line 32
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Landroid/widget/TextView;

    if-eqz v33, :cond_7

    const v1, 0x7f0a03d0

    .line 33
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Landroid/widget/TextView;

    if-eqz v34, :cond_7

    const v1, 0x7f0a03d2

    .line 34
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Landroid/widget/ImageView;

    if-eqz v35, :cond_7

    const v1, 0x7f0a041b

    .line 35
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Landroid/widget/ImageView;

    if-eqz v36, :cond_7

    const v1, 0x7f0a0445

    .line 36
    invoke-static {v0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 37
    check-cast v3, Landroid/widget/TextView;

    .line 38
    new-instance v1, Lq7/u1;

    invoke-direct {v1, v3}, Lq7/u1;-><init>(Landroid/widget/TextView;)V

    const v3, 0x7f0a0479

    .line 39
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v38, v4

    check-cast v38, Landroid/widget/FrameLayout;

    if-eqz v38, :cond_6

    const v3, 0x7f0a047a

    .line 40
    invoke-static {v0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v39, v4

    check-cast v39, Landroid/widget/ImageView;

    if-eqz v39, :cond_6

    .line 41
    new-instance v3, Lq7/e0;

    move-object v9, v3

    move-object v10, v0

    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object/from16 v37, v1

    invoke-direct/range {v9 .. v39}, Lq7/e0;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/nike/adapt/ui/helper/NotificationToast;Lcom/nike/adapt/ui/helper/NotificationToast;Lcom/google/android/exoplayer2/ui/PlayerView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/nike/adapt/ui/view/DuoColorView;Lcom/nike/adapt/ui/helper/BottomSheet;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/nike/adapt/ui/helper/BottomSheet;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;Lcom/nike/adapt/ui/view/DuoColorView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lq7/m1;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lq7/u1;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    .line 42
    iput-object v3, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->I:Lq7/e0;

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    .line 44
    iget-object v0, v0, Lq7/e0;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 45
    invoke-virtual {v7, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object v0, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->n0:Lt9/c;

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, v0, Lt9/c;->a:Z

    .line 48
    iput-boolean v1, v0, Lt9/c;->b:Z

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_unlace_gesture_on"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_2

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 51
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->b:Lcom/nike/adapt/ui/helper/NotificationToast;

    new-instance v1, Lx/a;

    const/4 v2, 0x3

    invoke-direct {v1, v7, v2}, Lx/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->S:J

    .line 53
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 54
    iget-object v1, v7, Lp8/q;->B:Li8/d;

    .line 55
    sget-object v2, Lo9/o;->h:Lo9/o;

    .line 56
    new-instance v3, Lo9/f;

    invoke-direct {v3, v7}, Lo9/f;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    .line 57
    check-cast v0, Lo7/f;

    invoke-virtual {v0, v7, v1, v2, v3}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object v0

    const-string v1, "<set-?>"

    .line 58
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object v0, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->O:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 60
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 61
    iget-object v2, v7, Lp8/q;->B:Li8/d;

    .line 62
    check-cast v0, Lo7/f;

    invoke-virtual {v0, v7, v2}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v0

    .line 63
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object v0, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->m:Landroid/widget/FrameLayout;

    new-instance v1, Lr9/a;

    new-instance v2, Le9/f;

    const/4 v3, 0x4

    invoke-direct {v2, v7, v3}, Le9/f;-><init>(Ljava/lang/Object;I)V

    const/4 v3, 0x2

    const/16 v4, 0xc8

    .line 66
    invoke-direct {v1, v2, v4}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->v:Landroid/widget/FrameLayout;

    new-instance v1, Lr9/a;

    new-instance v2, Lo8/e;

    const/4 v9, 0x5

    invoke-direct {v2, v7, v9}, Lo8/e;-><init>(Ljava/lang/Object;I)V

    .line 69
    invoke-direct {v1, v2, v4}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->k:Landroid/widget/FrameLayout;

    new-instance v1, Lr9/a;

    new-instance v2, Lo8/f;

    invoke-direct {v2, v7, v9}, Lo8/f;-><init>(Ljava/lang/Object;I)V

    const/16 v5, 0x1f4

    invoke-direct {v1, v2, v5}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lr9/a;

    new-instance v2, Lx8/j0;

    const/4 v6, 0x7

    invoke-direct {v2, v7, v6}, Lx8/j0;-><init>(Ljava/lang/Object;I)V

    .line 73
    invoke-direct {v1, v2, v4}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->f:Landroid/widget/FrameLayout;

    new-instance v1, Lr9/a;

    new-instance v2, Lo8/j;

    invoke-direct {v2, v7, v3}, Lo8/j;-><init>(Lf/e;I)V

    invoke-direct {v1, v2, v5}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v0, Lr7/g;->a:Lr7/g;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lr7/g;->d(Landroid/content/Intent;Lcom/nike/adapt/adk/IDeviceController;)V

    .line 77
    new-instance v10, Lx8/f0;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v2, v0, Lq7/e0;->u:Lq7/m1;

    const-string v11, "binding.shoeController"

    invoke-static {v2, v11}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    new-instance v5, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$g;

    invoke-direct {v5, v7}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$g;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    const/16 v13, 0x18

    const/4 v4, 0x0

    const/16 v6, 0x18

    move-object v0, v10

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v6}, Lx8/f0;-><init>(Lcom/nike/adapt/adk/IDeviceController;Lq7/m1;Lx8/q0$a;ZLqd/p;I)V

    iput-object v10, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    .line 78
    new-instance v10, Lx8/n0;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v2, v0, Lq7/e0;->u:Lq7/m1;

    invoke-static {v2, v11}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$h;

    invoke-direct {v5, v7}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$h;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    move-object v0, v10

    move-object/from16 v3, p0

    move v4, v12

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lx8/n0;-><init>(Lcom/nike/adapt/adk/IDeviceController;Lq7/m1;Lx8/q0$a;ZLqd/p;I)V

    iput-object v10, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    .line 79
    iget-object v0, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Lx8/q0;->n(Landroid/content/Context;)V

    .line 80
    iget-object v0, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v7}, Lx8/q0;->n(Landroid/content/Context;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->u:Lq7/m1;

    iget-object v0, v0, Lq7/m1;->a:Lq7/l1;

    iget-object v0, v0, Lq7/l1;->b:Landroid/widget/LinearLayout;

    new-instance v1, Ly0/t;

    invoke-direct {v1, v7, v9}, Ly0/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->u:Lq7/m1;

    iget-object v0, v0, Lq7/m1;->b:Lq7/l1;

    iget-object v0, v0, Lq7/l1;->b:Landroid/widget/LinearLayout;

    new-instance v1, Li8/f;

    invoke-direct {v1, v7, v9}, Li8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->u:Lq7/m1;

    iget-object v0, v0, Lq7/m1;->a:Lq7/l1;

    iget-object v0, v0, Lq7/l1;->a:Landroid/widget/ImageView;

    const-string v1, "binding.shoeController.l\u2026rContainer.shoeController"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060091

    .line 84
    sget-object v3, Ly/a;->a:Ljava/lang/Object;

    .line 85
    invoke-static {v7, v2}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v2

    .line 86
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->s:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->s:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->s:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lo9/r;

    invoke-direct {v2, v7}, Lo9/r;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    :cond_3
    new-instance v0, Lx8/n;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v2

    iget-object v2, v2, Lq7/e0;->x:Landroid/widget/TextView;

    const-string v3, "binding.shoeControllerMyShoeBadge"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lx8/n;-><init>(Landroid/widget/TextView;)V

    iput-object v0, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->W:Lx8/n;

    .line 92
    new-instance v0, Lx8/n;

    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v2

    iget-object v2, v2, Lq7/e0;->y:Landroid/widget/TextView;

    const-string v3, "binding.shoeControllerSettingsBadge"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lx8/n;-><init>(Landroid/widget/TextView;)V

    iput-object v0, v7, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->X:Lx8/n;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->u:Lq7/m1;

    iget-object v0, v0, Lq7/m1;->a:Lq7/l1;

    iget-object v0, v0, Lq7/l1;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->u:Lq7/m1;

    iget-object v1, v1, Lq7/m1;->b:Lq7/l1;

    iget-object v1, v1, Lq7/l1;->a:Landroid/widget/ImageView;

    const-string v2, "binding.shoeController.r\u2026rContainer.shoeController"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v2

    iget-object v2, v2, Lq7/e0;->e:Landroid/widget/FrameLayout;

    const-string v3, "binding.bigfootLacingSettings"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v3, Lx8/b;

    invoke-direct {v3, v2}, Lx8/b;-><init>(Landroid/view/View;)V

    invoke-static {v0, v3}, Lj0/a0;->p(Landroid/view/View;Lj0/a;)V

    .line 97
    new-instance v2, Lx8/b;

    invoke-direct {v2, v0}, Lx8/b;-><init>(Landroid/view/View;)V

    invoke-static {v1, v2}, Lj0/a0;->p(Landroid/view/View;Lj0/a;)V

    .line 98
    sget-object v0, Lh8/e;->b:Lh8/e;

    .line 99
    invoke-virtual {v0}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_ON_BOARDING_SHOE_TYPE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    invoke-virtual {v0}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_ON_BOARDING_COLORWAY_CODE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    invoke-virtual {v0}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_ON_BOARDING_LEFT_COLORWAY_CODE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    invoke-virtual {v0}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_ON_BOARDING_RIGHT_COLORWAY_CODE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    invoke-virtual {v0}, Lh8/e;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 105
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PREF_LEFT_PAIR"

    .line 106
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_RIGHT_PAIR"

    .line 107
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_4
    const-string v0, "rightShoeControllerUiHelper"

    .line 109
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    :cond_5
    const-string v0, "leftShoeControllerUiHelper"

    .line 110
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v1, v3

    .line 111
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    invoke-virtual {v0, v1}, Lo9/s;->a(Ln3/r;)V

    .line 2
    :cond_0
    invoke-super {p0}, Lf/e;->onDestroy()V

    return-void
.end method

.method public final onRestart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->D0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->a0:Z

    const-string v1, "has_animated_battery"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onResume()V
    .locals 14

    .line 1
    invoke-super {p0}, Lp8/q;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->D0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->W:Lx8/n;

    if-eqz v0, :cond_0

    sget-object v1, Lx8/n$a;->i:Lx8/n$a;

    invoke-static {v0, v1}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->W:Lx8/n;

    if-eqz v0, :cond_1

    sget-object v1, Lx8/n$a;->k:Lx8/n$a;

    invoke-static {v0, v1}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->g0:Lt9/a;

    .line 6
    sget-object v1, Lt9/d;->j:Lt9/d;

    iput-object v1, v0, Lt9/a;->a:Lt9/d;

    .line 7
    iput-object v1, v0, Lt9/a;->b:Lt9/d;

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v1, Ls9/y;->a:Ls9/y;

    new-instance v10, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$i;

    invoke-direct {v10, p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$i;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    new-instance v11, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$j;

    invoke-direct {v11, p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$j;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    const v3, 0x7f110085

    const v5, 0x7f110084

    const v7, 0x7f110290

    const v8, 0x7f110086

    .line 10
    new-instance v12, Ls9/y$a;

    const/16 v0, 0x8

    const-string v2, "DECOMMISSION_LEARN_MORE"

    const-string v4, "OK"

    const-string v6, "CANCEL"

    invoke-direct {v12, v2, v4, v6, v0}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v13, 0x14

    move-object v2, p0

    .line 11
    invoke-static/range {v1 .. v13}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/a;->onStart()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->S:J

    .line 3
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->HOME:Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isScreenViewed(Lcom/nike/adapt/analytics/TrackManager$Screen;)V

    .line 4
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->a0:Z

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->l:Landroid/widget/ImageView;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->D:Landroid/widget/ImageView;

    const v1, 0x7f080140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->D:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/a;->onStop()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->o0:Z

    return-void
.end method

.method public final r0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v1

    .line 2
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v0

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p0, v1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->z0(Lb9/a;)V

    :cond_0
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->z0(Lb9/a;)V

    :cond_1
    return-void
.end method

.method public final s0(Lcom/nike/adapt/adk/Shoe;)Lb9/a;
    .locals 3

    new-instance v0, Lb9/a;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->u:Lq7/m1;

    iget-object v1, v1, Lq7/m1;->b:Lq7/l1;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->u:Lq7/m1;

    iget-object v1, v1, Lq7/m1;->a:Lq7/l1;

    :goto_0
    iget-object v1, v1, Lq7/l1;->a:Landroid/widget/ImageView;

    const-string v2, "if (shoe.isRight()) bind\u2026rContainer.shoeController"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lb9/a;-><init>(Lcom/nike/adapt/adk/Shoe;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public final t0(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    invoke-interface {v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v2

    .line 2
    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->isConnected()Z

    move-result v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v3

    iget-object v3, v3, Lq7/e0;->B:Lq7/u1;

    iget-object v3, v3, Lq7/u1;->a:Landroid/widget/TextView;

    const-string v4, "binding.textViewDmcContent.textViewDmc"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v4, Lx8/r;->a:Lx8/r;

    .line 5
    iget-object v4, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->O:Lcom/nike/adapt/adk/IAdaptRequester;

    const/4 v5, 0x0

    if-eqz v4, :cond_17

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v6

    invoke-interface {v6}, Lh8/a;->d0()Z

    move-result v6

    const/4 v7, 0x0

    const v8, 0x7f1100dd

    const v9, 0x7f1100dc

    const v10, 0x7f1100de

    const/4 v11, 0x1

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 7
    invoke-static {v9}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_0
    if-nez v1, :cond_1

    .line 8
    invoke-static {v10}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_1
    if-nez v2, :cond_2

    .line 9
    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_2
    if-eqz v6, :cond_3

    const v1, 0x7f11004c

    .line 10
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 11
    :cond_3
    invoke-interface {v4}, Lcom/nike/adapt/adk/IAdaptRequester;->modes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nike/adapt/adk/model/AdaptDeviceMode;

    .line 13
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getLeftAttributes()Lea/c;

    move-result-object v4

    .line 14
    iget-object v4, v4, Lea/c;->h:Lea/i;

    .line 15
    iget-object v4, v4, Lea/i;->h:Lea/h$c;

    .line 16
    iget v4, v4, Lea/h$c;->j:I

    .line 17
    sget-object v6, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v12

    invoke-interface {v12}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    if-gt v4, v12, :cond_5

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getLeftAttributes()Lea/c;

    move-result-object v4

    .line 18
    iget-object v4, v4, Lea/c;->h:Lea/i;

    .line 19
    iget-object v4, v4, Lea/i;->h:Lea/h$c;

    .line 20
    iget v4, v4, Lea/h$c;->j:I

    .line 21
    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v12

    invoke-interface {v12}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    if-lt v4, v12, :cond_5

    move v4, v11

    goto :goto_0

    :cond_5
    move v4, v7

    .line 22
    :goto_0
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getRightAttributes()Lea/c;

    move-result-object v12

    .line 23
    iget-object v12, v12, Lea/c;->h:Lea/i;

    .line 24
    iget-object v12, v12, Lea/i;->h:Lea/h$c;

    .line 25
    iget v12, v12, Lea/h$c;->j:I

    .line 26
    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v13

    invoke-interface {v13}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v13

    add-int/lit8 v13, v13, 0x2

    if-gt v12, v13, :cond_6

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getRightAttributes()Lea/c;

    move-result-object v12

    .line 27
    iget-object v12, v12, Lea/c;->h:Lea/i;

    .line 28
    iget-object v12, v12, Lea/i;->h:Lea/h$c;

    .line 29
    iget v12, v12, Lea/h$c;->j:I

    .line 30
    invoke-virtual {v6}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v6

    invoke-interface {v6}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownRelativeTightness()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-lt v12, v6, :cond_6

    move v6, v11

    goto :goto_1

    :cond_6
    move v6, v7

    :goto_1
    if-eqz v4, :cond_7

    if-eqz v6, :cond_7

    move v4, v11

    goto :goto_2

    :cond_7
    move v4, v7

    .line 31
    :goto_2
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getLeftAttributes()Lea/c;

    move-result-object v6

    .line 32
    iget-object v6, v6, Lea/c;->i:Lea/d;

    .line 33
    iget-object v6, v6, Lea/d;->l:Lba/f;

    if-eqz v6, :cond_8

    .line 34
    sget-object v12, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {v12, v6}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v6

    move-object v13, v6

    goto :goto_3

    :cond_8
    move-object v13, v5

    .line 35
    :goto_3
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getRightAttributes()Lea/c;

    move-result-object v6

    .line 36
    iget-object v6, v6, Lea/c;->i:Lea/d;

    .line 37
    iget-object v6, v6, Lea/d;->l:Lba/f;

    if-eqz v6, :cond_9

    .line 38
    sget-object v12, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {v12, v6}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v6

    move-object v14, v6

    goto :goto_4

    :cond_9
    move-object v14, v5

    :goto_4
    if-eqz v13, :cond_a

    if-eqz v14, :cond_a

    .line 39
    new-instance v6, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v6

    invoke-direct/range {v12 .. v17}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    sget-object v12, Lx8/r;->b:Lh8/c;

    invoke-virtual {v12}, Lh8/c;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v12

    invoke-static {v6, v12}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v11

    goto :goto_5

    :cond_a
    move v6, v7

    .line 40
    :goto_5
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getAutoGenerated()Z

    move-result v12

    if-nez v12, :cond_c

    if-eqz v6, :cond_b

    goto :goto_6

    :cond_b
    move v6, v7

    goto :goto_7

    :cond_c
    :goto_6
    move v6, v11

    :goto_7
    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    .line 41
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getAutoGenerated()Z

    move-result v1

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "name"

    .line 42
    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    .line 43
    :try_start_0
    sget-object v1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    .line 44
    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 45
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{\n            BigfootApp\u2026N.packageName))\n        }"

    .line 46
    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_d
    move-object v1, v2

    goto :goto_8

    :catchall_0
    :cond_e
    const-string v1, ""

    .line 47
    :goto_8
    sget-object v2, Lx8/r;->a:Lx8/r;

    .line 48
    invoke-static {v9}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 49
    invoke-static {v10}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 50
    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    move v2, v11

    goto :goto_9

    :cond_f
    move v2, v7

    :goto_9
    if-eqz v2, :cond_11

    :cond_10
    move v7, v11

    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v7, :cond_12

    .line 52
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 53
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 54
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v4

    invoke-interface {v4}, Lh8/a;->d0()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 55
    iget-boolean v4, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->b0:Z

    if-eqz v4, :cond_13

    return-void

    .line 56
    :cond_13
    iput-boolean v11, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->b0:Z

    .line 57
    :cond_14
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v2

    invoke-interface {v2}, Lh8/a;->d0()Z

    move-result v2

    const-wide/16 v4, 0x3e8

    if-eqz v2, :cond_15

    const-wide/16 v6, 0x157c

    goto :goto_a

    :cond_15
    move-wide v6, v4

    .line 59
    :goto_a
    new-instance v2, Landroidx/activity/d;

    const/4 v8, 0x5

    invoke-direct {v2, v0, v8}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 61
    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    .line 62
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 63
    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_16

    .line 66
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v3, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownAbsoluteTightness()I

    move-result v4

    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v3

    invoke-interface {v3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownAbsoluteTightness()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3}, Lcom/nike/adapt/analytics/TrackManager;->modeEnteredManually(Ljava/lang/String;II)V

    :cond_16
    :goto_b
    return-void

    :cond_17
    const-string v1, "adaptRequester"

    .line 67
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5
.end method

.method public final u0()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->p0:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final v0()Lq7/e0;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->I:Lq7/e0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final w0()Lcom/nike/adapt/adk/IDeviceController;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->L:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceController"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final x0(Landroid/widget/ImageView;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, -0x1

    .line 3
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final y0(Lcom/nike/adapt/adk/Shoe;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iput-boolean p2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Y:Z

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lx8/q0;->s(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "leftShoeControllerUiHelper"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iput-boolean p2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->Z:Z

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lx8/q0;->s(Z)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "rightShoeControllerUiHelper"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method

.method public final z0(Lb9/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->U:Landroid/animation/Animator;

    if-nez v0, :cond_0

    const v0, 0x3e051eb8

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 2
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-string v3, ""

    .line 3
    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v3, Lo9/p;

    invoke-direct {v3, v2}, Lo9/p;-><init>(Landroid/animation/ValueAnimator;)V

    .line 5
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f99999a

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x3e8

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance v1, Lo9/b;

    invoke-direct {v1, p0, v0}, Lo9/b;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;F)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->T:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->T:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    .line 14
    iget-object p1, p1, Lb9/a;->a:Lcom/nike/adapt/adk/Shoe;

    .line 15
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, p1, v3}, Lo9/s;->c(Ln3/r;ZLandroid/view/View;)V

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 19
    :cond_2
    iput-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->U:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd
    .end array-data
.end method
