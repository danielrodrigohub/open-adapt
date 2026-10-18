.class public final Lz8/i;
.super Lrd/o;
.source "LightPacksActivity.kt"

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
.field public final synthetic h:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;


# direct methods
.method public constructor <init>(Lqd/a;Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;",
            "Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lz8/i;->h:Lqd/a;

    iput-object p2, p0, Lz8/i;->i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lz8/i;->h:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "selectedLightPack"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lz8/i;->i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 4
    iget-object v3, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->L:Lz8/m;

    if-eqz v3, :cond_3

    .line 5
    iget-object v0, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v3, v0}, Lz8/m;->b(Lz8/a;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_2
    iget-object v0, p0, Lz8/i;->i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 8
    iget-object v3, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz v3, :cond_5

    .line 9
    iget-object v0, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v3, v0}, Lz8/n;->g(Lz8/a;)V

    .line 11
    iget-object v0, p0, Lz8/i;->i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 12
    invoke-virtual {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->u0()V

    .line 13
    :cond_3
    :goto_1
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    .line 14
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v0, "subtitleManager"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method
