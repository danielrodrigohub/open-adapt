.class public final Lq7/l1;
.super Ljava/lang/Object;
.source "ItemShoeControllerContainerBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/LinearLayout;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Space;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq7/l1;->a:Landroid/widget/ImageView;

    .line 3
    iput-object p2, p0, Lq7/l1;->b:Landroid/widget/LinearLayout;

    .line 4
    iput-object p3, p0, Lq7/l1;->c:Landroid/widget/LinearLayout;

    .line 5
    iput-object p4, p0, Lq7/l1;->d:Landroid/widget/Space;

    return-void
.end method

.method public static a(Landroid/view/View;)Lq7/l1;
    .locals 5

    const v0, 0x7f0a03c6

    .line 1
    invoke-static {p0, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0a03cc

    .line 3
    invoke-static {p0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    const v2, 0x7f0a03d1

    .line 4
    invoke-static {p0, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Space;

    if-eqz v4, :cond_0

    .line 5
    new-instance p0, Lq7/l1;

    invoke-direct {p0, v1, v0, v3, v4}, Lq7/l1;-><init>(Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Space;)V

    return-object p0

    :cond_0
    move v0, v2

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
