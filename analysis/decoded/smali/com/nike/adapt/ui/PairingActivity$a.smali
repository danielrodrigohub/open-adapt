.class public final Lcom/nike/adapt/ui/PairingActivity$a;
.super Ljava/lang/Object;
.source "PairingActivity.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/PairingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/PairingActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/PairingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/PairingActivity$a;->h:Lcom/nike/adapt/ui/PairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity$a;->h:Lcom/nike/adapt/ui/PairingActivity;

    check-cast p2, Lcom/nike/adapt/service/AdaptAuthenticationService$a;

    .line 2
    iget-object p2, p2, Lcom/nike/adapt/service/AdaptAuthenticationService$a;->a:Lcom/nike/adapt/service/AdaptAuthenticationService;

    .line 3
    iput-object p2, p1, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/nike/adapt/ui/PairingActivity;->S:Z

    if-eqz p2, :cond_3

    .line 5
    new-instance p1, Ln8/d;

    invoke-direct {p1, p2}, Ln8/d;-><init>(Lcom/nike/adapt/service/AdaptAuthenticationService;)V

    .line 6
    new-instance v0, Lv9/k0;

    invoke-direct {v0}, Lv9/k0;-><init>()V

    invoke-virtual {p1, v0}, Ln8/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lv9/i0;

    invoke-direct {p1, v0}, Lv9/i0;-><init>(Lv9/k0;)V

    .line 8
    iput-object p1, p2, Lcom/nike/adapt/service/AdaptAuthenticationService;->j:Lv9/i0;

    .line 9
    invoke-static {}, Laa/a;->a()Z

    move-result p1

    const-string v0, "pairing"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p2, Lcom/nike/adapt/service/AdaptAuthenticationService;->j:Lv9/i0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lv9/i0;->f()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    iget-object p1, p2, Lcom/nike/adapt/service/AdaptAuthenticationService;->j:Lv9/i0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lv9/i0;->e()V

    .line 12
    :goto_0
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string p2, "Pairing - Started Pairing"

    invoke-virtual {p1, p2}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity$a;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 2
    iget-object v0, p1, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean p1, p1, Lcom/nike/adapt/ui/PairingActivity;->R:Z

    .line 4
    invoke-virtual {v0, p1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->d(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity$a;->h:Lcom/nike/adapt/ui/PairingActivity;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/nike/adapt/ui/PairingActivity;->S:Z

    return-void
.end method
