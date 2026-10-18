.class public final Ls8/a;
.super Lp8/m;
.source "DataOptInConfirmationFragment.kt"


# instance fields
.field public final c0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/m;-><init>()V

    const-string v0, "DataOptInConfirmationFragment"

    .line 2
    iput-object v0, p0, Ls8/a;->c0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0077

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p2}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInConfirmationPresented()V

    return-object p1
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls8/a;->c0:Ljava/lang/String;

    return-object v0
.end method
