.class public final Li9/z;
.super Landroidx/recyclerview/widget/x;
.source "ChooseYourShoesFragment.kt"


# instance fields
.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/PointF;
    .locals 2

    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final i(Landroid/view/View;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/x;->i(Landroid/view/View;I)I

    move-result p1

    iget p2, p0, Li9/z;->q:I

    add-int/2addr p1, p2

    return p1
.end method

.method public final j(Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3e99999a

    return p1
.end method
