.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$h;
.super Lrd/o;
.source "LightPacksActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$h;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$h;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->L:Lz8/m;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lz8/m;->c:Lz8/m$b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lz8/m$b;->e:Z

    .line 5
    :goto_0
    invoke-virtual {v0}, Lz8/m;->a()V

    .line 6
    :cond_1
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
