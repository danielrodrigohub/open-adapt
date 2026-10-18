.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$e;
.super Lrd/o;
.source "LightPacksActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->q0()V
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

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$e;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$e;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object v0

    iget-object v0, v0, Lq7/j;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$e;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lh8/a;->b()V

    .line 5
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
