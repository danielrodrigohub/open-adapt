.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$k;
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

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$k;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

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
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$k;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    invoke-static {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->p0(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)Lk9/a;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lk9/a;->b:Lk9/b;

    invoke-interface {v1}, Lk9/b;->a()V

    .line 5
    iget-object v0, v0, Lk9/a;->b:Lk9/b;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lk9/b;->f(I)V

    .line 6
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 7
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Rate App: Later"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
