.class public final Lz8/k;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

.field public final synthetic i:I

.field public final synthetic j:Landroidx/recyclerview/widget/e0;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;ILandroidx/recyclerview/widget/e0;)V
    .locals 0

    iput-object p2, p0, Lz8/k;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    iput p3, p0, Lz8/k;->i:I

    iput-object p4, p0, Lz8/k;->j:Landroidx/recyclerview/widget/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lz8/k;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    const/4 v1, 0x0

    const-string v2, "lightPackLayoutManager"

    if-eqz v0, :cond_3

    .line 3
    iget v3, p0, Lz8/k;->i:I

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->u(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lz8/k;->j:Landroidx/recyclerview/widget/e0;

    iget-object v4, p0, Lz8/k;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 5
    iget-object v4, v4, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v3, v4, v0}, Landroidx/recyclerview/widget/e0;->b(Landroidx/recyclerview/widget/RecyclerView$m;Landroid/view/View;)[I

    move-result-object v0

    .line 7
    iget-object v3, p0, Lz8/k;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 8
    iget-object v3, v3, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    if-eqz v3, :cond_1

    .line 9
    iget v1, p0, Lz8/k;->i:I

    const/4 v2, 0x0

    aget v0, v0, v2

    neg-int v0, v0

    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
