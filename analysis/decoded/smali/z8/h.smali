.class public final Lz8/h;
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
.field public final synthetic h:Lp9/d;

.field public final synthetic i:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic j:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;


# direct methods
.method public constructor <init>(Lp9/d;Lqd/a;Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d;",
            "Lqd/a<",
            "Lfd/o;",
            ">;",
            "Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lz8/h;->h:Lp9/d;

    iput-object p2, p0, Lz8/h;->i:Lqd/a;

    iput-object p3, p0, Lz8/h;->j:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lz8/h;->h:Lp9/d;

    invoke-virtual {v0}, Lp9/d;->c()V

    .line 2
    iget-object v0, p0, Lz8/h;->i:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lz8/h;->j:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->c0:Z

    .line 5
    iget-object v2, v0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    new-instance v5, Lz8/g;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lz8/g;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;Ljd/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 7
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksTooltipOneNextSelected()V

    .line 8
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
