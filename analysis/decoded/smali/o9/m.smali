.class public final Lo9/m;
.super Lrd/o;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 2
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v1

    invoke-interface {v1}, Lh8/a;->v()I

    move-result v1

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v1

    invoke-interface {v1}, Lh8/a;->v()I

    move-result v2

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lh8/a;->d(I)V

    invoke-interface {v1}, Lh8/a;->v()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 5
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->googleVoiceInfoPrompt()V

    .line 6
    sget-object v1, Lh9/r;->c:Lh9/r;

    invoke-virtual {v1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lg9/k;->a:Lg9/k;

    invoke-static {}, Lg9/k;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceUnlacedToastShown()V

    .line 9
    iget-object v0, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->c:Lcom/nike/adapt/ui/helper/NotificationToast;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    .line 10
    :cond_2
    iget-object v0, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v0

    iget-object v0, v0, Lq7/e0;->D:Landroid/widget/ImageView;

    const-string v1, "binding.unlaceOrLaceUpImageView"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 12
    iget-object v2, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->J:Lx8/d0;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 13
    iget-object v1, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->K:Lx8/d0;

    .line 14
    invoke-static {v2, v1}, Landroidx/lifecycle/o;->v(Lx8/d0;Lx8/d0;)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    if-nez v1, :cond_4

    const/4 v1, -0x1

    goto :goto_2

    :cond_4
    sget-object v2, Lo9/m$a;->a:[I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    aget v1, v2, v1

    :goto_2
    if-ne v1, v3, :cond_8

    .line 15
    iget-object v1, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 16
    iget-object v1, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 17
    sget-object v5, Lx8/d0;->i:Lx8/d0;

    invoke-virtual {v1, v5}, Lx8/q0;->m(Lx8/d0;)V

    .line 18
    iget-object v1, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 19
    iget-object v1, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v1, v5}, Lx8/q0;->m(Lx8/d0;)V

    .line 21
    iget-object v1, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 22
    iget-object v5, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v5, :cond_5

    .line 23
    iget-object v1, v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    .line 24
    invoke-virtual {v5, v1, v4}, Lo9/s;->b(Ln3/r;Z)V

    .line 25
    invoke-virtual {v5, v1, v3}, Lo9/s;->b(Ln3/r;Z)V

    .line 26
    :cond_5
    iget-object v1, p0, Lo9/m;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 27
    iget-object v4, v1, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 28
    new-instance v7, Lo9/l;

    invoke-direct {v7, v1, v2}, Lo9/l;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const v1, 0x7f0801e0

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 32
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    :cond_6
    const-string v0, "leftShoeControllerUiHelper"

    .line 34
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v0, "rightShoeControllerUiHelper"

    .line 35
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_8
    :goto_3
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
