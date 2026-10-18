.class public final Lo8/t;
.super Lrd/o;
.source "PairingActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/PairingActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/PairingActivity;)V
    .locals 0

    iput-object p1, p0, Lo8/t;->h:Lcom/nike/adapt/ui/PairingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pairing Shoe Already Paired - Pressed: Get Help"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isShoeAlreadyPairedGetHelpButtonSelected()V

    .line 5
    new-instance v0, Lh9/g0;

    sget-object v1, Lh9/g0;->f:Lh9/g0$b;

    invoke-virtual {v1}, Lh9/g0$b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh9/g0;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lo8/t;->h:Lcom/nike/adapt/ui/PairingActivity;

    invoke-virtual {v0, v1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 6
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 7
    iget-object p1, p0, Lo8/t;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 8
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 10
    :cond_0
    iget-object p1, p0, Lo8/t;->h:Lcom/nike/adapt/ui/PairingActivity;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Lcom/nike/adapt/ui/PairingActivity;->I:Landroidx/appcompat/app/d;

    .line 12
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
