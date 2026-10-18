.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "LightPackLayoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager$a;
    }
.end annotation


# instance fields
.field public G:Lz8/a;

.field public final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->H:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final H0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager$b;

    invoke-direct {p2, p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager$b;-><init>(Landroid/content/Context;)V

    .line 2
    iput p3, p2, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->I0(Landroidx/recyclerview/widget/RecyclerView$x;)V

    return-void
.end method

.method public final j0(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j0(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->q1()V

    return-void
.end method

.method public final q1()V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->p:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->z()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v2, v3, :cond_7

    .line 3
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->y(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v8, v7

    int-to-float v7, v8

    div-float/2addr v7, v1

    sub-float v8, v0, v7

    .line 5
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, v0

    const/4 v9, 0x1

    int-to-float v10, v9

    const v11, 0x3e333333

    mul-float/2addr v11, v8

    sub-float v11, v10, v11

    .line 6
    invoke-virtual {v6, v11}, Landroid/view/View;->setScaleX(F)V

    .line 7
    invoke-virtual {v6, v11}, Landroid/view/View;->setScaleY(F)V

    cmpl-float v7, v7, v0

    if-lez v7, :cond_1

    const/4 v9, -0x1

    .line 8
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/2addr v7, v9

    int-to-float v7, v7

    sub-float v9, v10, v11

    mul-float/2addr v7, v9

    div-float/2addr v7, v1

    add-float/2addr v5, v7

    .line 9
    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 10
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const v9, 0x3dcccccd

    mul-float/2addr v5, v9

    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v5, v7, v4

    const/4 v9, 0x2

    if-lez v5, :cond_2

    add-int/lit8 v5, v2, -0x1

    .line 11
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->y(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v11

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    cmpg-float v5, v7, v4

    if-gez v5, :cond_3

    int-to-float v5, v9

    mul-float/2addr v5, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    :goto_2
    const v9, 0x3e19999a

    mul-float/2addr v9, v8

    sub-float/2addr v10, v9

    .line 12
    invoke-virtual {v6, v10}, Landroid/view/View;->setAlpha(F)V

    const v9, 0x3e99999a

    sub-float v10, v9, v8

    div-float/2addr v10, v9

    .line 13
    instance-of v11, v6, Lz8/d;

    if-eqz v11, :cond_6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 14
    check-cast v6, Lz8/d;

    invoke-virtual {v6}, Lz8/d;->getLightPack()Lz8/a;

    move-result-object v8

    iput-object v8, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->G:Lz8/a;

    .line 15
    invoke-virtual {v6, v10}, Lz8/d;->setTitleAlpha(F)V

    const v8, -0x40266666

    mul-float/2addr v7, v8

    .line 16
    invoke-virtual {v6, v7}, Lz8/d;->setTitleXAdjust(F)V

    .line 17
    iget-object v7, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->H:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager$a;

    .line 18
    invoke-virtual {v6}, Lz8/d;->getLightPack()Lz8/a;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Lz8/d;->getTitleHeight()I

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager$a;->w(Lz8/a;FI)V

    goto :goto_3

    .line 19
    :cond_5
    check-cast v6, Lz8/d;

    invoke-virtual {v6, v4}, Lz8/d;->setTitleAlpha(F)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final v0(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 1

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->v0(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    invoke-virtual {p0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->q1()V

    return p1
.end method
