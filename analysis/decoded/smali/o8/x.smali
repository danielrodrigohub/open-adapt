.class public final Lo8/x;
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

    iput-object p1, p0, Lo8/x;->h:Lcom/nike/adapt/ui/PairingActivity;

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

    const-string v1, "Pairing Reset - Pressed: Settings"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 5
    iget-object p1, p0, Lo8/x;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 6
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 8
    :cond_0
    iget-object p1, p0, Lo8/x;->h:Lcom/nike/adapt/ui/PairingActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xd4

    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
