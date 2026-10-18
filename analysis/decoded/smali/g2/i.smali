.class public final Lg2/i;
.super Lg2/b;
.source "SolidLayer.java"


# instance fields
.field public final D:Landroid/graphics/RectF;

.field public final E:Lz1/a;

.field public final F:[F

.field public final G:Landroid/graphics/Path;

.field public final H:Lg2/f;

.field public I:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/f;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lg2/b;-><init>(Ly1/e0;Lg2/f;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lg2/i;->D:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Lz1/a;

    invoke-direct {p1}, Lz1/a;-><init>()V

    iput-object p1, p0, Lg2/i;->E:Lz1/a;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lg2/i;->F:[F

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg2/i;->G:Landroid/graphics/Path;

    .line 6
    iput-object p2, p0, Lg2/i;->H:Lg2/f;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lz1/a;->setAlpha(I)V

    .line 8
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget p2, p2, Lg2/f;->l:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lg2/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lg2/i;->D:Landroid/graphics/RectF;

    iget-object p3, p0, Lg2/i;->H:Lg2/f;

    .line 3
    iget v0, p3, Lg2/f;->j:I

    int-to-float v0, v0

    .line 4
    iget p3, p3, Lg2/f;->k:I

    int-to-float p3, p3

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v1, v1, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    iget-object p2, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    iget-object p3, p0, Lg2/i;->D:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7
    iget-object p2, p0, Lg2/i;->D:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ll2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ll2/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lg2/b;->g(Ljava/lang/Object;Ll2/c;)V

    .line 2
    sget-object v0, Ly1/i0;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 3
    iput-object p1, p0, Lg2/i;->I:Lb2/r;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lb2/r;

    .line 5
    invoke-direct {v0, p2, p1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lg2/i;->I:Lb2/r;

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lg2/i;->H:Lg2/f;

    .line 2
    iget v0, v0, Lg2/f;->l:I

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lg2/b;->x:Lb2/q;

    .line 5
    iget-object v1, v1, Lb2/q;->j:Lb2/a;

    if-nez v1, :cond_1

    const/16 v1, 0x64

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    mul-float/2addr v0, v2

    float-to-int p3, v0

    .line 7
    iget-object v0, p0, Lg2/i;->E:Lz1/a;

    invoke-virtual {v0, p3}, Lz1/a;->setAlpha(I)V

    .line 8
    iget-object v0, p0, Lg2/i;->I:Lb2/r;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lg2/i;->E:Lz1/a;

    invoke-virtual {v0}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    if-lez p3, :cond_3

    .line 10
    iget-object p3, p0, Lg2/i;->F:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p3, v0

    const/4 v2, 0x1

    .line 11
    aput v1, p3, v2

    .line 12
    iget-object v3, p0, Lg2/i;->H:Lg2/f;

    .line 13
    iget v4, v3, Lg2/f;->j:I

    int-to-float v4, v4

    const/4 v5, 0x2

    .line 14
    aput v4, p3, v5

    const/4 v6, 0x3

    .line 15
    aput v1, p3, v6

    const/4 v7, 0x4

    .line 16
    aput v4, p3, v7

    .line 17
    iget v3, v3, Lg2/f;->k:I

    int-to-float v3, v3

    const/4 v4, 0x5

    .line 18
    aput v3, p3, v4

    const/4 v8, 0x6

    .line 19
    aput v1, p3, v8

    const/4 v1, 0x7

    .line 20
    aput v3, p3, v1

    .line 21
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 22
    iget-object p2, p0, Lg2/i;->G:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 23
    iget-object p2, p0, Lg2/i;->G:Landroid/graphics/Path;

    iget-object p3, p0, Lg2/i;->F:[F

    aget v3, p3, v0

    aget p3, p3, v2

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 24
    iget-object p2, p0, Lg2/i;->G:Landroid/graphics/Path;

    iget-object p3, p0, Lg2/i;->F:[F

    aget v3, p3, v5

    aget p3, p3, v6

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget-object p2, p0, Lg2/i;->G:Landroid/graphics/Path;

    iget-object p3, p0, Lg2/i;->F:[F

    aget v3, p3, v7

    aget p3, p3, v4

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    iget-object p2, p0, Lg2/i;->G:Landroid/graphics/Path;

    iget-object p3, p0, Lg2/i;->F:[F

    aget v3, p3, v8

    aget p3, p3, v1

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    iget-object p2, p0, Lg2/i;->G:Landroid/graphics/Path;

    iget-object p3, p0, Lg2/i;->F:[F

    aget v0, p3, v0

    aget p3, p3, v2

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 28
    iget-object p2, p0, Lg2/i;->G:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 29
    iget-object p2, p0, Lg2/i;->G:Landroid/graphics/Path;

    iget-object p3, p0, Lg2/i;->E:Lz1/a;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method
