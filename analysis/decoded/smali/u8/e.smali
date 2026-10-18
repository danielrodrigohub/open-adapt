.class public final Lu8/e;
.super Lp8/h;
.source "ConnectingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu8/e$a;
    }
.end annotation


# static fields
.field public static final h0:Lu8/e$a;


# instance fields
.field public final b0:Ljava/lang/String;

.field public c0:Lq7/r0;

.field public final d0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

.field public e0:I

.field public f0:Z

.field public g0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu8/e$a;

    invoke-direct {v0}, Lu8/e$a;-><init>()V

    sput-object v0, Lu8/e;->h0:Lu8/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/h;-><init>()V

    const-string v0, "ConnectingFragment"

    .line 2
    iput-object v0, p0, Lu8/e;->b0:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object v0, p0, Lu8/e;->d0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lu8/e;->e0:I

    return-void
.end method


# virtual methods
.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0076

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a021c

    .line 3
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_d

    const p2, 0x7f0a021d

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    const p2, 0x7f0a021e

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_d

    const p2, 0x7f0a021f

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_d

    .line 7
    new-instance p2, Lq7/r0;

    check-cast p1, Landroid/widget/FrameLayout;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lq7/r0;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 8
    iput-object p2, p0, Lu8/e;->c0:Lq7/r0;

    .line 9
    sget-object p2, Lu8/d;->h:Lu8/d;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    const-string v0, "binding"

    const/4 v2, 0x0

    if-eqz p2, :cond_c

    iget-object p2, p2, Lq7/r0;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_b

    iget-object p2, p2, Lq7/r0;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 12
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_a

    iget-object p2, p2, Lq7/r0;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 13
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_9

    iget-object p2, p2, Lq7/r0;->b:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    const-string p2, "PARAM_CONTAINER_ID"

    const/4 v3, -0x1

    if-eqz p3, :cond_0

    .line 14
    :goto_0
    invoke-virtual {p3, p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    .line 15
    :cond_0
    iget-object p3, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move p2, v3

    .line 16
    :goto_1
    iput p2, p0, Lu8/e;->e0:I

    if-ne p2, v3, :cond_8

    .line 17
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_7

    iget-object p2, p2, Lq7/r0;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lq7/r0;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lq7/r0;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lq7/r0;->a:Landroid/widget/ImageView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 21
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lq7/r0;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 22
    iget-object p2, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lq7/r0;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p0, Lu8/e;->g0:Z

    goto :goto_2

    .line 24
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_7
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object p2

    .line 31
    iget-object v3, p0, Lu8/e;->d0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lu8/e$b;

    invoke-direct {v6, p0, p2, v2}, Lu8/e$b;-><init>(Lu8/e;Landroidx/fragment/app/p;Ljd/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_2
    return-object p1

    .line 32
    :cond_9
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_a
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_b
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_c
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final K()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu8/e;->c0:Lq7/r0;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/r0;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/r0;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 4
    iget v0, p0, Lu8/e;->e0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lu8/e;->e0:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    return-void

    .line 7
    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final R(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lu8/e;->e0:I

    const-string v1, "PARAM_CONTAINER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final U(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu8/e;->q0()V

    return-void
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu8/e;->b0:Ljava/lang/String;

    return-object v0
.end method

.method public final q0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lu8/e;->c0:Lq7/r0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownConnectionState()Lv9/e;

    move-result-object v1

    sget-object v2, Lv9/e;->o:Lv9/e;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lu8/e;->f0:Z

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownConnectionState()Lv9/e;

    move-result-object v0

    if-ne v0, v2, :cond_2

    move v3, v4

    .line 4
    :cond_2
    iget-boolean v0, p0, Lu8/e;->g0:Z

    if-eqz v0, :cond_8

    .line 5
    iget-boolean v0, p0, Lu8/e;->f0:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    const/4 v4, 0x2

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    const/4 v4, 0x3

    .line 6
    :cond_5
    :goto_1
    invoke-static {v4}, La1/d;->b(I)I

    move-result v0

    .line 7
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lu8/e;->c0:Lq7/r0;

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v1, Lq7/r0;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lu8/e;->c0:Lq7/r0;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lq7/r0;->d:Landroid/widget/TextView;

    const-string v2, "binding.fragmentConnectingTitle"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_2
    return-void
.end method
