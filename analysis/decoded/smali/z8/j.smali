.class public final Lz8/j;
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
.field public final synthetic h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V
    .locals 0

    iput-object p1, p0, Lz8/j;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lz8/j;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->p:Lq7/b2;

    iget-object v0, v0, Lq7/b2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lz8/j;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lh8/a;->a0()V

    .line 5
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
