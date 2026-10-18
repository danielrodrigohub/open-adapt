.class public final Lm9/h;
.super Lp8/b;
.source "FirmwareNoNetworkFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/h$a;
    }
.end annotation


# static fields
.field public static final j0:Lm9/h$a;


# instance fields
.field public final h0:Ljava/lang/String;

.field public i0:Lq7/v0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/h$a;

    invoke-direct {v0}, Lm9/h$a;-><init>()V

    sput-object v0, Lm9/h;->j0:Lm9/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/b;-><init>()V

    const-string v0, "FirmwareNoNetworkFragment"

    .line 2
    iput-object v0, p0, Lm9/h;->h0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d007e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01fc

    .line 2
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const p2, 0x7f0a01fd

    .line 3
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const p2, 0x7f0a01fe

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const p2, 0x7f0a01ff

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const p2, 0x7f0a0200

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 7
    new-instance p2, Lq7/v0;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p2, p1, p3, v0, v1}, Lq7/v0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 8
    iput-object p2, p0, Lm9/h;->i0:Lq7/v0;

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final U(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string p2, "view"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string p2, "FirmwareUpdateCrumb Firmware No Network : FW_STATS"

    invoke-virtual {p1, p2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    invoke-interface {p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lm9/h;->i0:Lq7/v0;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/v0;->c:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v3

    const v4, 0x7f11025e

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/util/Pair;

    .line 6
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ls9/g;->a:Ls9/g;

    invoke-virtual {v8, p2, p1}, Ls9/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "number"

    invoke-direct {v7, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v7, v6, p1

    .line 7
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lm9/h;->i0:Lq7/v0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/v0;->a:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v3

    const v4, 0x7f11006d

    new-array v6, v5, [Landroid/util/Pair;

    .line 11
    new-instance v7, Landroid/util/Pair;

    const-string v8, "2017062198"

    invoke-direct {v7, p2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, p1

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v6}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, Lm9/h;->i0:Lq7/v0;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lq7/v0;->b:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    const v1, 0x7f11007b

    new-array v2, v5, [Landroid/util/Pair;

    .line 16
    new-instance v3, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "year"

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, p1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm9/h;->h0:Ljava/lang/String;

    return-object v0
.end method
