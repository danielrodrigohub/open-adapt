.class public final Lcom/nike/adapt/service/AdaptAuthenticationService;
.super Landroidx/lifecycle/t;
.source "AdaptAuthenticationService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/service/AdaptAuthenticationService$a;
    }
.end annotation


# instance fields
.field public i:I

.field public j:Lv9/i0;

.field public final k:Lfd/d;

.field public final l:Lcom/nike/adapt/service/AdaptAuthenticationService$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    .line 3
    sget-object v0, Lcom/nike/adapt/service/AdaptAuthenticationService$b;->h:Lcom/nike/adapt/service/AdaptAuthenticationService$b;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/service/AdaptAuthenticationService;->k:Lfd/d;

    .line 4
    new-instance v0, Lcom/nike/adapt/service/AdaptAuthenticationService$a;

    invoke-direct {v0, p0}, Lcom/nike/adapt/service/AdaptAuthenticationService$a;-><init>(Lcom/nike/adapt/service/AdaptAuthenticationService;)V

    iput-object v0, p0, Lcom/nike/adapt/service/AdaptAuthenticationService;->l:Lcom/nike/adapt/service/AdaptAuthenticationService$a;

    return-void
.end method

.method public static final b(Lcom/nike/adapt/service/AdaptAuthenticationService;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lo7/x;->a:Lo7/x;

    const-string v0, "Pairing - Both Shoes Paired"

    invoke-virtual {p0, v0}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lo7/x;->a:Lo7/x;

    const-string v0, "Pairing - First Shoe Paired"

    invoke-virtual {p0, v0}, Lo7/x;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lde/n0;->b(Li8/b;)V

    .line 3
    move-object p0, p1

    check-cast p0, Ln8/f;

    .line 4
    sget-object p0, Ls7/b;->a:Ls7/b;

    invoke-virtual {p0, p1}, Ls7/b;->a(Li8/b;)V

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 2

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "STOP PAIRING"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/service/AdaptAuthenticationService;->j:Lv9/i0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lv9/i0;->g(Z)V

    return-void

    :cond_0
    const-string p1, "pairing"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/t;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/service/AdaptAuthenticationService;->l:Lcom/nike/adapt/service/AdaptAuthenticationService$a;

    return-object p1
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 2
    invoke-super {p0}, Landroidx/lifecycle/t;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/t;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
