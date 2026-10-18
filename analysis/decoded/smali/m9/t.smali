.class public final Lm9/t;
.super Lp8/h;
.source "FirmwareUpdateToDateFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/t$a;
    }
.end annotation


# static fields
.field public static final d0:Lm9/t$a;


# instance fields
.field public final b0:Ljava/lang/String;

.field public c0:Lq7/w0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/t$a;

    invoke-direct {v0}, Lm9/t$a;-><init>()V

    sput-object v0, Lm9/t;->d0:Lm9/t$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/h;-><init>()V

    const-string v0, "FirmwareUpdateToDateFragment"

    .line 2
    iput-object v0, p0, Lm9/t;->b0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d007f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0148

    .line 2
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a01fa

    .line 3
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const p2, 0x7f0a01fb

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const p2, 0x7f0a0202

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 6
    new-instance p2, Lq7/w0;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p2, p1, p3, v1}, Lq7/w0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 7
    iput-object p2, p0, Lm9/t;->c0:Lq7/w0;

    const-string p2, "binding.root"

    .line 8
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p2, Lo7/x;->a:Lo7/x;

    const-string p3, "Firmware UpToDate : FW_STATS"

    invoke-virtual {p2, p3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 10
    sget-object p2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p3

    invoke-interface {p3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-virtual {p2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    invoke-interface {p2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object p2

    .line 12
    sget-object v1, Ls9/g;->a:Ls9/g;

    invoke-virtual {v1, p2, p3}, Ls9/g;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 13
    :goto_0
    iget-object p2, p0, Lm9/t;->c0:Lq7/w0;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p2, Lq7/w0;->a:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.nike.adapt.ui.settings.FirmwareUpdateActivity"

    invoke-static {v3, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    const v4, 0x7f1101c0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/util/Pair;

    .line 15
    new-instance v7, Landroid/util/Pair;

    const-string v8, "version"

    invoke-direct {v7, v8, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v0

    .line 16
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v6}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p3

    .line 17
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p2, p0, Lm9/t;->c0:Lq7/w0;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lq7/w0;->b:Landroid/widget/TextView;

    invoke-static {p2, v5}, Lj0/a0;->q(Landroid/view/View;Z)V

    return-object p1

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm9/t;->b0:Ljava/lang/String;

    return-object v0
.end method
