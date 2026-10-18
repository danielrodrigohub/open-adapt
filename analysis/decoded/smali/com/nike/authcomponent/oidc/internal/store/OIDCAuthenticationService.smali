.class public final Lcom/nike/authcomponent/oidc/internal/store/OIDCAuthenticationService;
.super Landroid/app/Service;
.source "OIDCAuthenticationService.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ldc/e;

    invoke-direct {p1, p0}, Ldc/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
