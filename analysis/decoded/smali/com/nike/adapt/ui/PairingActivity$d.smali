.class public final Lcom/nike/adapt/ui/PairingActivity$d;
.super Lrd/o;
.source "PairingActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/PairingActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput-object p1, p0, Lcom/nike/adapt/ui/PairingActivity$d;->h:Lcom/nike/adapt/ui/PairingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pairing Connection Error - Pressed: Try Again"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isConnectionErrorTryAgainButtonSelected()V

    .line 5
    iget-object v0, p0, Lcom/nike/adapt/ui/PairingActivity$d;->h:Lcom/nike/adapt/ui/PairingActivity;

    sget v1, Lcom/nike/adapt/ui/PairingActivity;->Y:I

    .line 6
    invoke-virtual {v0}, Lcom/nike/adapt/ui/PairingActivity;->q0()V

    .line 7
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 8
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity$d;->h:Lcom/nike/adapt/ui/PairingActivity;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/nike/adapt/ui/PairingActivity;->H:Landroidx/appcompat/app/d;

    .line 10
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
