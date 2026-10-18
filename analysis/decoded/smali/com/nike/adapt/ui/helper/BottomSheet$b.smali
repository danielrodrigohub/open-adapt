.class public final Lcom/nike/adapt/ui/helper/BottomSheet$b;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;
.source "BottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/helper/BottomSheet;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/helper/BottomSheet;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/helper/BottomSheet$b;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/helper/BottomSheet$b;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 2
    iget-object p1, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/helper/BottomSheet$b;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 5
    iget-object p1, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 3

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/helper/BottomSheet$b;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 2
    iget-object p1, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/helper/BottomSheet$b;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 5
    iget-boolean v0, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->E:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 6
    iget-object p1, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    .line 8
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/nike/adapt/ui/helper/BottomSheet$b;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    .line 9
    iget-object v0, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    if-eqz v0, :cond_4

    .line 10
    iget-object p1, p1, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    .line 11
    iget-object p1, p1, Lq7/j0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.bottomSheetAnimateParent"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nike/adapt/ui/helper/BottomSheet$b;->a:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p1, v1}, Lcom/nike/adapt/ui/helper/BottomSheet$a;->c(ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/Context;)V

    return-void

    :cond_4
    const-string p1, "bottomSheetStateManager"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
