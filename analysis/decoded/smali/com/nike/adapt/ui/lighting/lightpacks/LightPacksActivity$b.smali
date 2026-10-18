.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "LightPacksActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    iput p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$b;->a:I

    return-void
.end method


# virtual methods
.method public final f(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "state"

    invoke-static {p4, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$n;->a()I

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->g()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-nez p2, :cond_1

    move v0, p3

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$b;->a:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 6
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2

    goto :goto_2

    :cond_2
    iget p2, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$b;->a:I

    div-int/lit8 p3, p2, 0x2

    :goto_2
    iput p3, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
