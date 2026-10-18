.class public final Lo9/g;
.super Lrd/o;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
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

    iput-object p1, p0, Lo9/g;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureEnabledToastSelected$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Lh9/o;->c:Lh9/o;

    iget-object v1, p0, Lo9/g;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {v0, v1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 3
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
