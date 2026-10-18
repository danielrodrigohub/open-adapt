.class public final Lp5/a;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Lt0/b;

.field public static final c:Lt0/a;

.field public static final d:Lt0/c;

.field public static final e:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lp5/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 2
    new-instance v0, Lt0/b;

    invoke-direct {v0}, Lt0/b;-><init>()V

    sput-object v0, Lp5/a;->b:Lt0/b;

    .line 3
    new-instance v0, Lt0/a;

    invoke-direct {v0}, Lt0/a;-><init>()V

    sput-object v0, Lp5/a;->c:Lt0/a;

    .line 4
    new-instance v0, Lt0/c;

    invoke-direct {v0}, Lt0/c;-><init>()V

    sput-object v0, Lp5/a;->d:Lt0/c;

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lp5/a;->e:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public static a(FFFFF)F
    .locals 1

    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    return p1

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    invoke-static {p1, p0, p4, p0}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result p0

    return p0
.end method

.method public static b(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
