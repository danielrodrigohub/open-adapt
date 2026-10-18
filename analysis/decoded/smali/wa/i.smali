.class public final Lwa/i;
.super Landroid/content/BroadcastReceiver;
.source "AdaptKitRequirementsReceiver.kt"


# instance fields
.field public final a:Lv9/o0;

.field public final b:Lfd/h;


# direct methods
.method public constructor <init>(Lv9/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/i;->a:Lv9/o0;

    .line 3
    sget-object p1, Lwa/i$a;->h:Lwa/i$a;

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lwa/i;->b:Lfd/h;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwa/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwa/i;

    iget-object v1, p0, Lwa/i;->a:Lv9/o0;

    iget-object p1, p1, Lwa/i;->a:Lv9/o0;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lwa/i;->a:Lv9/o0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lwa/i;->a:Lv9/o0;

    invoke-interface {v0}, Lv9/o0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    .line 4
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_4

    .line 5
    iget-object p2, p0, Lwa/i;->b:Lfd/h;

    invoke-virtual {p2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lwa/j;

    .line 6
    invoke-interface {p2, p1}, Lwa/j;->a(Landroid/content/Context;)Lja/b;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lja/b;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p1, p0, Lwa/i;->a:Lv9/o0;

    invoke-interface {p1}, Lv9/o0;->a()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p0, Lwa/i;->a:Lv9/o0;

    invoke-interface {p2, p1}, Lv9/o0;->c(Lja/b;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lwa/i;->a:Lv9/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdaptKitRequirementsReceiver(adaptKitRequirementsListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
