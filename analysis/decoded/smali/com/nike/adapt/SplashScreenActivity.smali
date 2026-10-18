.class public Lcom/nike/adapt/SplashScreenActivity;
.super Lf/e;
.source "SplashScreenActivity.kt"

# interfaces
.implements Lo7/h;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomSplashScreen"
    }
.end annotation

.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/SplashScreenActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic K:I


# instance fields
.field public A:Lq7/g0;

.field public B:Ln3/k0;

.field public final C:Lfd/d;

.field public final D:Lfd/d;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/util/UUID;

.field public final G:Lfd/h;

.field public final H:Lcom/nike/adapt/coroutine/MainCoroutineScope;

.field public I:I

.field public J:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/e;-><init>()V

    .line 2
    sget-object v0, Lcom/nike/adapt/SplashScreenActivity$d;->h:Lcom/nike/adapt/SplashScreenActivity$d;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/SplashScreenActivity;->C:Lfd/d;

    .line 3
    sget-object v0, Lcom/nike/adapt/SplashScreenActivity$b;->h:Lcom/nike/adapt/SplashScreenActivity$b;

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/SplashScreenActivity;->D:Lfd/d;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/SplashScreenActivity;->E:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nike/adapt/SplashScreenActivity;->F:Ljava/util/UUID;

    .line 6
    new-instance v0, Lcom/nike/adapt/SplashScreenActivity$c;

    invoke-direct {v0, p0}, Lcom/nike/adapt/SplashScreenActivity$c;-><init>(Lcom/nike/adapt/SplashScreenActivity;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lcom/nike/adapt/SplashScreenActivity;->G:Lfd/h;

    .line 7
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/SplashScreenActivity;->H:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/nike/adapt/SplashScreenActivity;->J:Z

    return-void
.end method

.method public static final l0(Lcom/nike/adapt/SplashScreenActivity;)Lh8/d;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/SplashScreenActivity;->C:Lfd/d;

    invoke-interface {p0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh8/d;

    return-object p0
.end method


# virtual methods
.method public final m0()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/SplashScreenActivity;->D:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final n0()V
    .locals 5

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v1

    check-cast v1, Lo7/f;

    invoke-virtual {v1}, Lo7/f;->d()Lcom/nike/adapt/adk/model/AdaptFirmwareStage;

    move-result-object v1

    iget v2, p0, Lcom/nike/adapt/SplashScreenActivity;->I:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Background Check App Launch State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroidx/recyclerview/widget/d;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/nike/adapt/SplashScreenActivity;->I:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/nike/adapt/SplashScreenActivity$a;->a:[I

    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object v0

    invoke-interface {v0, v3}, Lh8/a;->h0(Z)V

    .line 5
    new-instance v0, Lh9/n;

    .line 6
    invoke-direct {v0, v3, v3}, Lh9/n;-><init>(ZZ)V

    .line 7
    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Lh9/n;

    invoke-direct {v0, v2, v2}, Lh9/n;-><init>(ZZ)V

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_1

    .line 9
    :cond_4
    sget-object v0, Lh9/i;->c:Lh9/i;

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_1

    .line 10
    :cond_5
    new-instance v0, Lh9/v0;

    invoke-direct {v0, v3, v2, v1}, Lh9/v0;-><init>(ZILrd/h;)V

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_1

    .line 11
    :cond_6
    sget-object v0, Lh9/v;->c:Lh9/v;

    invoke-virtual {v0, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 12
    :goto_1
    iput v3, p0, Lcom/nike/adapt/SplashScreenActivity;->I:I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "SplashScreenActivity#onCreate"

    const-string v1, "SplashScreenActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :catch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object p1

    sget-object v2, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    sget-object v3, Lcom/nike/adapt/adk/model/ShoeColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-static {v2, v3, v1, v0, v1}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create$default(Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;Lcom/nike/adapt/adk/model/ShoeColor;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v2

    invoke-interface {p1, v2}, Lh8/a;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 4
    :cond_1
    new-instance p1, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object v2

    invoke-interface {v2}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v2

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lba/f;

    .line 5
    new-instance p1, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object v2

    invoke-interface {v2}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v2

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lba/f;

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lh8/a;->k0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "PARAM_SPLASH_SCREEN_SHOW"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nike/adapt/SplashScreenActivity;->J:Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0d0043

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0a0409

    .line 10
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v4, :cond_b

    .line 11
    new-instance v2, Lq7/g0;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1, v4}, Lq7/g0;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 12
    iput-object v2, p0, Lcom/nike/adapt/SplashScreenActivity;->A:Lq7/g0;

    .line 13
    invoke-virtual {p0, p1}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->k:Landroidx/lifecycle/r;

    .line 15
    iget-object v2, p0, Lcom/nike/adapt/SplashScreenActivity;->H:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    .line 16
    invoke-virtual {p0}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->getShoeType()Ls9/r;

    move-result-object p1

    const-string v2, "shoeType"

    .line 17
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v2, Ln3/r$b;

    invoke-direct {v2, p0}, Ln3/r$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ln3/r$b;->a()Ln3/r;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ln3/k0;

    iput-object v4, p0, Lcom/nike/adapt/SplashScreenActivity;->B:Ln3/k0;

    .line 19
    invoke-virtual {v4, v3}, Ln3/k0;->E(I)V

    const/4 v5, 0x0

    .line 20
    invoke-virtual {v4, v5}, Ln3/k0;->A0(F)V

    .line 21
    invoke-virtual {v4, v0}, Ln3/k0;->i(Z)V

    .line 22
    new-instance v0, Ll5/g0;

    invoke-direct {v0, p0}, Ll5/g0;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v5, Ll5/m;

    sget-object v6, Ls9/p;->a:Ls9/p;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_3

    if-eq v6, v7, :cond_3

    const/high16 v6, 0x7f100000

    goto :goto_0

    :cond_3
    const v6, 0x7f100004

    goto :goto_0

    :cond_4
    const v6, 0x7f100002

    .line 25
    :goto_0
    invoke-static {v6}, Ll5/g0;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Ll5/m;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v5}, Ll5/g0;->l(Ll5/m;)J

    .line 26
    iget-object v0, v0, Ll5/g0;->g:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 27
    invoke-static {v0}, Ln3/y0;->c(Landroid/net/Uri;)Ln3/y0;

    move-result-object v0

    .line 28
    check-cast v2, Ln3/e;

    invoke-virtual {v2, v0}, Ln3/e;->f0(Ln3/y0;)V

    .line 29
    invoke-virtual {v4}, Ln3/k0;->b()V

    .line 30
    :cond_5
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v9, :cond_7

    if-eq p1, v8, :cond_6

    if-eq p1, v7, :cond_6

    const-string p1, "Adapt"

    goto :goto_1

    :cond_6
    const-string p1, "Jordan"

    goto :goto_1

    :cond_7
    const-string p1, "Automax"

    .line 32
    :goto_1
    invoke-virtual {v0, p1}, Lcom/nike/adapt/analytics/TrackManager;->showSplashScreen(Ljava/lang/String;)V

    .line 33
    new-instance p1, Lo7/b0;

    invoke-direct {p1, p0}, Lo7/b0;-><init>(Lcom/nike/adapt/SplashScreenActivity;)V

    invoke-virtual {v4, p1}, Ln3/k0;->a0(Ln3/o1$c;)V

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/SplashScreenActivity;->A:Lq7/g0;

    const-string v0, "binding"

    if-eqz p1, :cond_a

    iget-object p1, p1, Lq7/g0;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v2, p0, Lcom/nike/adapt/SplashScreenActivity;->B:Ln3/k0;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Ln3/o1;)V

    .line 35
    iget-object p1, p0, Lcom/nike/adapt/SplashScreenActivity;->A:Lq7/g0;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lq7/g0;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    .line 36
    iget-object p1, p0, Lcom/nike/adapt/SplashScreenActivity;->A:Lq7/g0;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/g0;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v0, Lo7/z;

    invoke-direct {v0, p0}, Lo7/z;-><init>(Lcom/nike/adapt/SplashScreenActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    sget-object p1, Lk9/c;->a:Lk9/c;

    .line 38
    sget-object p1, Lk9/c;->b:Landroid/content/SharedPreferences;

    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 40
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WAITING_FOR_NEW_SESSION_BEFORE_RATE_DIALOG"

    .line 41
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 44
    :cond_8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_9
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_a
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onStart()V
    .locals 8

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 1
    invoke-super {p0}, Lf/e;->onStart()V

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->ANIMATEDSPLASH:Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isScreenViewed(Lcom/nike/adapt/analytics/TrackManager$Screen;)V

    .line 3
    iget-object v2, p0, Lcom/nike/adapt/SplashScreenActivity;->H:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lo7/a0;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lo7/a0;-><init>(Lcom/nike/adapt/SplashScreenActivity;Ljd/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lf/e;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
