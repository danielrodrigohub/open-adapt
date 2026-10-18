.class public final Lm6/h;
.super Landroidx/lifecycle/k0;
.source "RoundedCornerTreatment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/k0;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Lm6/k;FF)V
    .locals 7

    mul-float v0, p3, p2

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    .line 1
    invoke-virtual {p1, v0, v1, v2}, Lm6/k;->f(FFF)V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p3, v0

    mul-float v4, p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v0, p1

    move v3, v4

    .line 2
    invoke-virtual/range {v0 .. v6}, Lm6/k;->a(FFFFFF)V

    return-void
.end method
