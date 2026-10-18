.class public final Lwa/a$a;
.super Lrd/o;
.source "AdaptKitBaseBroadcastReceiver.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Landroid/content/Intent;",
        "Ljava/lang/String;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lwa/a;

.field public final synthetic i:Landroid/content/Intent;

.field public final synthetic j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lwa/a;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lwa/a$a;->h:Lwa/a;

    iput-object p2, p0, Lwa/a$a;->i:Landroid/content/Intent;

    iput-object p3, p0, Lwa/a$a;->j:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/content/Intent;

    check-cast p2, Ljava/lang/String;

    const-string v0, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deviceId"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lwa/a$a;->h:Lwa/a;

    iget-object v0, p0, Lwa/a$a;->i:Landroid/content/Intent;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lwa/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lwa/a$a;->h:Lwa/a;

    iget-object v0, p0, Lwa/a$a;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.packageName"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object v0, p1, Lwa/a;->a:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lwa/a$a;->h:Lwa/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwa/a$a;->h:Lwa/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "getResultExtras(true)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_0
    iput-object v0, p1, Lwa/a;->b:Landroid/os/Bundle;

    .line 10
    iget-object p1, p0, Lwa/a$a;->h:Lwa/a;

    iget-object v0, p0, Lwa/a$a;->i:Landroid/content/Intent;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    .line 11
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v0, p1, Lwa/a;->c:Landroid/content/Intent;

    .line 13
    iget-object p1, p0, Lwa/a$a;->h:Lwa/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p2, p1, Lwa/a;->d:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lwa/a$a;->h:Lwa/a;

    invoke-virtual {p1}, Lwa/a;->c()V

    .line 16
    :cond_1
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
