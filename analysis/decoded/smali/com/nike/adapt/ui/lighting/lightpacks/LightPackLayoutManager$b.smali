.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager$b;
.super Landroidx/recyclerview/widget/x;
.source "LightPackLayoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->H0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .locals 2

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-static {p3, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x;->m()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/x;->h(Landroid/view/View;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/x;->k(I)I

    move-result p2

    if-lez p2, :cond_0

    int-to-float p1, p1

    const v0, 0x3f95c28f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    neg-int p1, p1

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/x;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p1, v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$x$a;->b(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public final j(Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42a00000    # 80.0f

    div-float/2addr v0, p1

    return v0
.end method
