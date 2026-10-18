.class public final Lm9/r;
.super Lp8/h;
.source "FirmwareUpdateCompleteFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/r$a;
    }
.end annotation


# static fields
.field public static final f0:Lm9/r$a;


# instance fields
.field public final b0:Ljava/lang/String;

.field public final c0:Lh8/c;

.field public d0:Lq7/y0;

.field public final e0:Lcom/nike/adapt/coroutine/MainCoroutineScope;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/r$a;

    invoke-direct {v0}, Lm9/r$a;-><init>()V

    sput-object v0, Lm9/r;->f0:Lm9/r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/h;-><init>()V

    const-string v0, "FirmwareUpdateCompleteFragment"

    .line 2
    iput-object v0, p0, Lm9/r;->b0:Ljava/lang/String;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object v0, p0, Lm9/r;->c0:Lh8/c;

    .line 5
    new-instance v0, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object v0, p0, Lm9/r;->e0:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    return-void
.end method


# virtual methods
.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0081

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0102

    .line 2
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    if-eqz p3, :cond_4

    const p2, 0x7f0a0115

    .line 3
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_4

    .line 4
    check-cast p1, Landroid/widget/LinearLayout;

    .line 5
    new-instance p2, Lq7/y0;

    invoke-direct {p2, p1, p3, v1}, Lq7/y0;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 6
    iput-object p2, p0, Lm9/r;->d0:Lq7/y0;

    .line 7
    iget-object p1, p0, Lm9/r;->c0:Lh8/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lh8/c;->I(Z)V

    .line 8
    iget-object p1, p0, Lm9/r;->c0:Lh8/c;

    invoke-virtual {p1, v0}, Lh8/c;->q(I)V

    .line 9
    iget-object p1, p0, Lm9/r;->d0:Lq7/y0;

    const-string p2, "binding"

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 10
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->softwareUpdateSuccess()V

    .line 11
    sget-object p1, Lo7/x;->a:Lo7/x;

    sget-object v0, Ls9/g;->a:Ls9/g;

    const-string v0, "Update Complete!"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    const-string v0, "FirmwareUpdateCrumb Update Fully Complete : FW_STATS"

    .line 12
    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lm9/r;->d0:Lq7/y0;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/y0;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 14
    iget-object p1, p0, Lm9/r;->d0:Lq7/y0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/y0;->b:Landroid/widget/Button;

    new-instance v0, Li9/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Li9/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lm9/r;->d0:Lq7/y0;

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p1, Lq7/y0;->a:Landroid/widget/LinearLayout;

    const-string p2, "binding.root"

    .line 17
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 18
    :cond_1
    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 19
    :cond_2
    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 20
    :cond_3
    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm9/r;->b0:Ljava/lang/String;

    return-object v0
.end method
