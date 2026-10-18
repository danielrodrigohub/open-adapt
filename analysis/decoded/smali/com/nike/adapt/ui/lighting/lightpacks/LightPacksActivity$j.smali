.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$j;
.super Lrd/o;
.source "LightPacksActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$j;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "it"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "market://details?id=com.nike.adapt"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    iget-object v2, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$j;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$j;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "https://play.google.com/store/apps/details?id=com.nike.adapt"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$j;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    invoke-static {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->p0(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)Lk9/a;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lk9/a;->b:Lk9/b;

    const/4 v2, 0x1

    invoke-interface {v1}, Lk9/b;->c()V

    .line 8
    iget-object v0, v0, Lk9/a;->b:Lk9/b;

    invoke-interface {v0, v2}, Lk9/b;->f(I)V

    .line 9
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 10
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "App Rated"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 11
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
