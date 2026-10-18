.class public final Lq7/l0;
.super Ljava/lang/Object;
.source "ContentMessagingHeadlineWithCtaBinding.java"


# instance fields
.field public final a:Landroid/widget/LinearLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq7/l0;->a:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lq7/l0;->b:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Lq7/l0;->c:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lq7/l0;
    .locals 2

    const v0, 0x7f0a0272

    .line 1
    invoke-static {p0, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 2
    check-cast p0, Landroid/widget/LinearLayout;

    .line 3
    new-instance v0, Lq7/l0;

    invoke-direct {v0, p0, v1, p0}, Lq7/l0;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V

    return-object v0

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
