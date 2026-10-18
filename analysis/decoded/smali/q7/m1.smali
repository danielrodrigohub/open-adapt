.class public final Lq7/m1;
.super Ljava/lang/Object;
.source "ItemShoeControllerContainerCombinedBinding.java"


# instance fields
.field public final a:Lq7/l1;

.field public final b:Lq7/l1;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lq7/l1;Lq7/l1;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq7/m1;->a:Lq7/l1;

    .line 3
    iput-object p2, p0, Lq7/m1;->b:Lq7/l1;

    .line 4
    iput-object p3, p0, Lq7/m1;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    iput-object p4, p0, Lq7/m1;->d:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lq7/m1;
    .locals 5

    const v0, 0x7f0a0294

    .line 1
    invoke-static {p0, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    invoke-static {v1}, Lq7/l1;->a(Landroid/view/View;)Lq7/l1;

    move-result-object v0

    const v1, 0x7f0a0393

    .line 3
    invoke-static {p0, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v2}, Lq7/l1;->a(Landroid/view/View;)Lq7/l1;

    move-result-object v1

    .line 5
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a03fb

    .line 6
    invoke-static {p0, v3}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 7
    new-instance p0, Lq7/m1;

    invoke-direct {p0, v0, v1, v2, v4}, Lq7/m1;-><init>(Lq7/l1;Lq7/l1;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;)V

    return-object p0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
