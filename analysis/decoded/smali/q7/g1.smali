.class public final Lq7/g1;
.super Ljava/lang/Object;
.source "ItemMessagingCtaBinding.java"


# instance fields
.field public final a:Landroid/widget/Button;

.field public final b:Lcom/nike/adapt/ui/view/SecondaryButton;


# direct methods
.method public constructor <init>(Landroid/widget/Button;Lcom/nike/adapt/ui/view/SecondaryButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq7/g1;->a:Landroid/widget/Button;

    .line 3
    iput-object p2, p0, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    return-void
.end method

.method public static a(Landroid/view/View;)Lq7/g1;
    .locals 3

    const v0, 0x7f0a02e8

    .line 1
    invoke-static {p0, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    const v0, 0x7f0a02e9

    .line 2
    invoke-static {p0, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nike/adapt/ui/view/SecondaryButton;

    if-eqz v2, :cond_0

    .line 3
    new-instance p0, Lq7/g1;

    invoke-direct {p0, v1, v2}, Lq7/g1;-><init>(Landroid/widget/Button;Lcom/nike/adapt/ui/view/SecondaryButton;)V

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
