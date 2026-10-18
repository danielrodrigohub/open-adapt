.class public final synthetic Lp9/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:Lp9/d;


# direct methods
.method public synthetic constructor <init>(Lp9/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp9/b;->a:Lp9/d;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 9

    iget-object v0, p0, Lp9/b;->a:Lp9/d;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    int-to-double v1, v1

    neg-float v3, p1

    float-to-double v3, v3

    const-wide v5, 0x3fc3333333333333L    # 0.15

    div-double/2addr v3, v5

    const-wide v5, 0x4005bf0a8b145769L    # Math.E

    .line 2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v0, v0, Lp9/d;->h:Lp9/a;

    .line 3
    iget-wide v5, v0, Lp9/a;->o:D

    float-to-double v7, p1

    mul-double/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    double-to-float p1, v1

    return p1
.end method
