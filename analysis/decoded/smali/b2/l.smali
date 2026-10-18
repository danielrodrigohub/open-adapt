.class public final Lb2/l;
.super Lb2/g;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb2/g<",
        "Ll2/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ll2/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll2/a<",
            "Ll2/d;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lb2/g;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Ll2/d;

    invoke-direct {p1}, Ll2/d;-><init>()V

    iput-object p1, p0, Lb2/l;->i:Ll2/d;

    return-void
.end method


# virtual methods
.method public final g(Ll2/a;F)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p1, Ll2/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Ll2/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Ll2/d;

    .line 3
    check-cast v1, Ll2/d;

    .line 4
    iget-object v2, p0, Lb2/a;->e:Ll2/c;

    if-eqz v2, :cond_0

    .line 5
    iget v3, p1, Ll2/a;->g:F

    iget-object p1, p1, Ll2/a;->h:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 6
    invoke-virtual {p0}, Lb2/a;->e()F

    move-result v8

    .line 7
    iget v9, p0, Lb2/a;->d:F

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    .line 8
    invoke-virtual/range {v2 .. v9}, Ll2/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll2/d;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lb2/l;->i:Ll2/d;

    .line 10
    iget v2, v0, Ll2/d;->a:F

    iget v3, v1, Ll2/d;->a:F

    .line 11
    sget-object v4, Lk2/f;->a:Landroid/graphics/PointF;

    invoke-static {v3, v2, p2, v2}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v2

    .line 12
    iget v0, v0, Ll2/d;->b:F

    iget v1, v1, Ll2/d;->b:F

    invoke-static {v1, v0, p2, v0}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result p2

    .line 13
    iput v2, p1, Ll2/d;->a:F

    .line 14
    iput p2, p1, Ll2/d;->b:F

    :goto_0
    return-object p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
