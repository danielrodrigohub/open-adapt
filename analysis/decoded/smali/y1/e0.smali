.class public final Ly1/e0;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/e0$b;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Ly1/m0;

.field public C:Z

.field public final D:Landroid/graphics/Matrix;

.field public E:Landroid/graphics/Bitmap;

.field public F:Landroid/graphics/Canvas;

.field public G:Landroid/graphics/Rect;

.field public H:Landroid/graphics/RectF;

.field public I:Lz1/a;

.field public J:Landroid/graphics/Rect;

.field public K:Landroid/graphics/Rect;

.field public L:Landroid/graphics/RectF;

.field public M:Landroid/graphics/RectF;

.field public N:Landroid/graphics/Matrix;

.field public O:Landroid/graphics/Matrix;

.field public P:Z

.field public h:Ly1/i;

.field public final i:Lk2/d;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly1/e0$b;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ly1/e0$a;

.field public p:Lc2/b;

.field public q:Ljava/lang/String;

.field public r:Ly1/b;

.field public s:Lc2/a;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lg2/c;

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lk2/d;

    invoke-direct {v0}, Lk2/d;-><init>()V

    iput-object v0, p0, Ly1/e0;->i:Lk2/d;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ly1/e0;->j:Z

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Ly1/e0;->k:Z

    .line 5
    iput-boolean v2, p0, Ly1/e0;->l:Z

    .line 6
    iput v1, p0, Ly1/e0;->m:I

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    .line 8
    new-instance v3, Ly1/e0$a;

    invoke-direct {v3, p0}, Ly1/e0$a;-><init>(Ly1/e0;)V

    iput-object v3, p0, Ly1/e0;->o:Ly1/e0$a;

    .line 9
    iput-boolean v2, p0, Ly1/e0;->u:Z

    .line 10
    iput-boolean v1, p0, Ly1/e0;->v:Z

    const/16 v1, 0xff

    .line 11
    iput v1, p0, Ly1/e0;->x:I

    .line 12
    sget-object v1, Ly1/m0;->h:Ly1/m0;

    iput-object v1, p0, Ly1/e0;->B:Ly1/m0;

    .line 13
    iput-boolean v2, p0, Ly1/e0;->C:Z

    .line 14
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Ly1/e0;->D:Landroid/graphics/Matrix;

    .line 15
    iput-boolean v2, p0, Ly1/e0;->P:Z

    .line 16
    invoke-virtual {v0, v3}, Lk2/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ld2/e;Ljava/lang/Object;Ll2/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld2/e;",
            "TT;",
            "Ll2/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly1/e0;->w:Lg2/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/d0;

    invoke-direct {v1, p0, p1, p2, p3}, Ly1/d0;-><init>(Ly1/e0;Ld2/e;Ljava/lang/Object;Ll2/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    sget-object v1, Ld2/e;->c:Ld2/e;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {v0, p2, p3}, Lg2/c;->g(Ljava/lang/Object;Ll2/c;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p1, Ld2/e;->b:Ld2/f;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1, p2, p3}, Ld2/f;->g(Ljava/lang/Object;Ll2/c;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 7
    invoke-static {p1}, Lk2/c;->b(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v3, p0, Ly1/e0;->w:Lg2/c;

    new-instance v4, Ld2/e;

    new-array v5, v1, [Ljava/lang/String;

    invoke-direct {v4, v5}, Ld2/e;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, p1, v1, v0, v4}, Lg2/b;->i(Ld2/e;ILjava/util/List;Ld2/e;)V

    move-object p1, v0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/e;

    .line 13
    iget-object v0, v0, Ld2/e;->b:Ld2/f;

    .line 14
    invoke-interface {v0, p2, p3}, Ld2/f;->g(Ljava/lang/Object;Ll2/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p0}, Ly1/e0;->invalidateSelf()V

    .line 17
    sget-object p1, Ly1/i0;->E:Ljava/lang/Float;

    if-ne p2, p1, :cond_5

    .line 18
    invoke-virtual {p0}, Ly1/e0;->j()F

    move-result p1

    invoke-virtual {p0, p1}, Ly1/e0;->z(F)V

    :cond_5
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Ly1/e0;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ly1/e0;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c()V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    iget-object v3, v0, Ly1/e0;->h:Ly1/i;

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v4, Lg2/c;

    .line 3
    sget-object v1, Li2/v;->a:Lj2/c$a;

    .line 4
    iget-object v15, v3, Ly1/i;->j:Landroid/graphics/Rect;

    .line 5
    new-instance v14, Lg2/f;

    move-object v1, v14

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v13, Le2/k;

    move-object v12, v13

    invoke-direct {v13}, Le2/k;-><init>()V

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v28, v14

    move/from16 v14, v16

    move-object/from16 v19, v15

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 8
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v29, "__container"

    move-object/from16 v30, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v3

    invoke-direct/range {v1 .. v27}, Lg2/f;-><init>(Ljava/util/List;Ly1/i;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Le2/k;IIIFFIILe2/j;Lq/c;Ljava/util/List;ILe2/b;ZLf/p;Li2/j;)V

    move-object/from16 v1, v29

    .line 9
    iget-object v2, v1, Ly1/i;->i:Ljava/util/List;

    move-object/from16 v4, v28

    move-object/from16 v3, v30

    .line 10
    invoke-direct {v3, v0, v4, v2, v1}, Lg2/c;-><init>(Ly1/e0;Lg2/f;Ljava/util/List;Ly1/i;)V

    iput-object v3, v0, Ly1/e0;->w:Lg2/c;

    .line 11
    iget-boolean v1, v0, Ly1/e0;->z:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v3, v1}, Lg2/c;->u(Z)V

    .line 13
    :cond_1
    iget-object v1, v0, Ly1/e0;->w:Lg2/c;

    iget-boolean v2, v0, Ly1/e0;->v:Z

    .line 14
    iput-boolean v2, v1, Lg2/c;->I:Z

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    .line 2
    iget-boolean v1, v0, Lk2/d;->r:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lk2/d;->cancel()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Ly1/e0;->m:I

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ly1/e0;->h:Ly1/i;

    .line 7
    iput-object v0, p0, Ly1/e0;->w:Lg2/c;

    .line 8
    iput-object v0, p0, Ly1/e0;->p:Lc2/b;

    .line 9
    iget-object v1, p0, Ly1/e0;->i:Lk2/d;

    .line 10
    iput-object v0, v1, Lk2/d;->q:Ly1/i;

    const/high16 v0, -0x31000000

    .line 11
    iput v0, v1, Lk2/d;->o:F

    const/high16 v0, 0x4f000000

    .line 12
    iput v0, v1, Lk2/d;->p:F

    .line 13
    invoke-virtual {p0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly1/e0;->l:Z

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ly1/e0;->C:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ly1/e0;->w:Lg2/c;

    invoke-virtual {p0, p1, v0}, Ly1/e0;->o(Landroid/graphics/Canvas;Lg2/c;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ly1/e0;->g(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    sget-object p1, Lk2/c;->a:Lk2/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Ly1/e0;->C:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Ly1/e0;->w:Lg2/c;

    invoke-virtual {p0, p1, v0}, Ly1/e0;->o(Landroid/graphics/Canvas;Lg2/c;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Ly1/e0;->g(Landroid/graphics/Canvas;)V

    :goto_0
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Ly1/e0;->P:Z

    .line 10
    invoke-static {}, Lp4/h;->p()V

    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Ly1/e0;->B:Ly1/m0;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    iget-boolean v3, v0, Ly1/i;->n:Z

    .line 4
    iget v0, v0, Ly1/i;->o:I

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    if-eqz v3, :cond_1

    const/16 v1, 0x1c

    if-ge v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x19

    if-gt v2, v0, :cond_4

    :cond_3
    :goto_0
    move v4, v5

    .line 6
    :cond_4
    iput-boolean v4, p0, Ly1/e0;->C:Z

    return-void
.end method

.method public final f(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/e0;->w:Lg2/c;

    .line 2
    iget-object v1, p0, Ly1/e0;->h:Ly1/i;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Ly1/e0;->D:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 7
    iget-object v4, v1, Ly1/i;->j:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 10
    iget-object v1, v1, Ly1/i;->j:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 12
    iget-object v1, p0, Ly1/e0;->D:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 13
    :cond_1
    iget-object v1, p0, Ly1/e0;->D:Landroid/graphics/Matrix;

    iget v2, p0, Ly1/e0;->x:I

    invoke-virtual {v0, p1, v1, v2}, Lg2/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Ly1/e0;->x:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Ly1/i;->j:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Ly1/i;->j:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final h()F
    .locals 1

    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Lk2/d;->f()F

    move-result v0

    return v0
.end method

.method public final i()F
    .locals 1

    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Lk2/d;->g()F

    move-result v0

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly1/e0;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly1/e0;->P:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    invoke-virtual {p0}, Ly1/e0;->l()Z

    move-result v0

    return v0
.end method

.method public final j()F
    .locals 1

    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Lk2/d;->e()F

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lk2/d;->r:Z

    return v0
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    .line 3
    invoke-virtual {v0}, Lk2/d;->j()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Ly1/e0;->m:I

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/e0;->w:Lg2/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/r;

    invoke-direct {v1, p0}, Ly1/r;-><init>(Ly1/e0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ly1/e0;->e()V

    .line 4
    invoke-virtual {p0}, Ly1/e0;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ly1/e0;->k()I

    move-result v0

    if-nez v0, :cond_4

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    .line 7
    iput-boolean v1, v0, Lk2/d;->r:Z

    .line 8
    invoke-virtual {v0}, Lk2/d;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Lk2/a;->b(Z)V

    .line 9
    invoke-virtual {v0}, Lk2/d;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lk2/d;->f()F

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lk2/d;->g()F

    move-result v2

    :goto_0
    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lk2/d;->k(F)V

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, v0, Lk2/d;->l:J

    const/4 v2, 0x0

    .line 11
    iput v2, v0, Lk2/d;->n:I

    .line 12
    invoke-virtual {v0}, Lk2/d;->i()V

    .line 13
    iput v1, p0, Ly1/e0;->m:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 14
    iput v0, p0, Ly1/e0;->m:I

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ly1/e0;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    .line 17
    iget v0, v0, Lk2/d;->j:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 18
    invoke-virtual {p0}, Ly1/e0;->i()F

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ly1/e0;->h()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ly1/e0;->q(I)V

    .line 19
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Lk2/d;->d()V

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 21
    iput v1, p0, Ly1/e0;->m:I

    :cond_6
    return-void
.end method

.method public final o(Landroid/graphics/Canvas;Lg2/c;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-eqz v0, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Ly1/e0;->F:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Ly1/e0;->F:Landroid/graphics/Canvas;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly1/e0;->N:Landroid/graphics/Matrix;

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly1/e0;->O:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ly1/e0;->G:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ly1/e0;->H:Landroid/graphics/RectF;

    .line 9
    new-instance v0, Lz1/a;

    invoke-direct {v0}, Lz1/a;-><init>()V

    iput-object v0, p0, Ly1/e0;->I:Lz1/a;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ly1/e0;->J:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ly1/e0;->K:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ly1/e0;->L:Landroid/graphics/RectF;

    .line 13
    :goto_0
    iget-object v0, p0, Ly1/e0;->N:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 14
    iget-object v0, p0, Ly1/e0;->G:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 15
    iget-object v0, p0, Ly1/e0;->G:Landroid/graphics/Rect;

    iget-object v1, p0, Ly1/e0;->H:Landroid/graphics/RectF;

    .line 16
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 17
    iget-object v0, p0, Ly1/e0;->N:Landroid/graphics/Matrix;

    iget-object v1, p0, Ly1/e0;->H:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 18
    iget-object v0, p0, Ly1/e0;->H:Landroid/graphics/RectF;

    iget-object v1, p0, Ly1/e0;->G:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Ly1/e0;->f(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 19
    iget-boolean v0, p0, Ly1/e0;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ly1/e0;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Ly1/e0;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lg2/c;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 22
    :goto_1
    iget-object v0, p0, Ly1/e0;->N:Landroid/graphics/Matrix;

    iget-object v2, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Ly1/e0;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ly1/e0;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 26
    iget-object v3, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    .line 27
    iget v4, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v2

    iget v5, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v0

    iget v6, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v2

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    .line 29
    instance-of v4, v3, Landroid/view/View;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    goto :goto_2

    .line 30
    :cond_3
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 31
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 32
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    xor-int/2addr v3, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    :goto_3
    if-nez v3, :cond_5

    .line 33
    iget-object v3, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    iget-object v4, p0, Ly1/e0;->G:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 34
    :cond_5
    iget-object v3, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 35
    iget-object v4, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    if-eqz v3, :cond_c

    if-nez v4, :cond_6

    goto/16 :goto_6

    .line 36
    :cond_6
    iget-object v6, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_9

    .line 37
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lt v6, v3, :cond_9

    iget-object v6, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v6, v4, :cond_7

    goto :goto_4

    .line 39
    :cond_7
    iget-object v6, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v6, v3, :cond_8

    iget-object v6, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, v4, :cond_a

    .line 40
    :cond_8
    iget-object v6, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    invoke-static {v6, v1, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    .line 41
    iget-object v7, p0, Ly1/e0;->F:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    iput-boolean v5, p0, Ly1/e0;->P:Z

    goto :goto_5

    .line 43
    :cond_9
    :goto_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    .line 44
    iget-object v7, p0, Ly1/e0;->F:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    iput-boolean v5, p0, Ly1/e0;->P:Z

    .line 46
    :cond_a
    :goto_5
    iget-boolean v5, p0, Ly1/e0;->P:Z

    if-eqz v5, :cond_b

    .line 47
    iget-object v5, p0, Ly1/e0;->D:Landroid/graphics/Matrix;

    iget-object v6, p0, Ly1/e0;->N:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 48
    iget-object v5, p0, Ly1/e0;->D:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 49
    iget-object v0, p0, Ly1/e0;->D:Landroid/graphics/Matrix;

    iget-object v2, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 50
    iget-object v0, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 51
    iget-object v0, p0, Ly1/e0;->F:Landroid/graphics/Canvas;

    iget-object v2, p0, Ly1/e0;->D:Landroid/graphics/Matrix;

    iget v5, p0, Ly1/e0;->x:I

    invoke-virtual {p2, v0, v2, v5}, Lg2/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 52
    iget-object p2, p0, Ly1/e0;->N:Landroid/graphics/Matrix;

    iget-object v0, p0, Ly1/e0;->O:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 53
    iget-object p2, p0, Ly1/e0;->O:Landroid/graphics/Matrix;

    iget-object v0, p0, Ly1/e0;->L:Landroid/graphics/RectF;

    iget-object v2, p0, Ly1/e0;->M:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 54
    iget-object p2, p0, Ly1/e0;->L:Landroid/graphics/RectF;

    iget-object v0, p0, Ly1/e0;->K:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Ly1/e0;->f(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 55
    :cond_b
    iget-object p2, p0, Ly1/e0;->J:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    iget-object p2, p0, Ly1/e0;->E:Landroid/graphics/Bitmap;

    iget-object v0, p0, Ly1/e0;->J:Landroid/graphics/Rect;

    iget-object v1, p0, Ly1/e0;->K:Landroid/graphics/Rect;

    iget-object v2, p0, Ly1/e0;->I:Lz1/a;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/e0;->w:Lg2/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/v;

    invoke-direct {v1, p0}, Ly1/v;-><init>(Ly1/e0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ly1/e0;->e()V

    .line 4
    invoke-virtual {p0}, Ly1/e0;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ly1/e0;->k()I

    move-result v0

    if-nez v0, :cond_5

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    .line 7
    iput-boolean v1, v0, Lk2/d;->r:Z

    .line 8
    invoke-virtual {v0}, Lk2/d;->i()V

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, v0, Lk2/d;->l:J

    .line 10
    invoke-virtual {v0}, Lk2/d;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iget v2, v0, Lk2/d;->m:F

    .line 12
    invoke-virtual {v0}, Lk2/d;->g()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 13
    invoke-virtual {v0}, Lk2/d;->f()F

    move-result v2

    iput v2, v0, Lk2/d;->m:F

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Lk2/d;->h()Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    iget v2, v0, Lk2/d;->m:F

    .line 16
    invoke-virtual {v0}, Lk2/d;->f()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 17
    invoke-virtual {v0}, Lk2/d;->g()F

    move-result v2

    iput v2, v0, Lk2/d;->m:F

    .line 18
    :cond_3
    :goto_0
    iput v1, p0, Ly1/e0;->m:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    .line 19
    iput v0, p0, Ly1/e0;->m:I

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ly1/e0;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    .line 22
    iget v0, v0, Lk2/d;->j:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 23
    invoke-virtual {p0}, Ly1/e0;->i()F

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ly1/e0;->h()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ly1/e0;->q(I)V

    .line 24
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Lk2/d;->d()V

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    iput v1, p0, Ly1/e0;->m:I

    :cond_7
    return-void
.end method

.method public final q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/b0;

    invoke-direct {v1, p0, p1}, Ly1/b0;-><init>(Ly1/e0;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lk2/d;->k(F)V

    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/a0;

    invoke-direct {v1, p0, p1}, Ly1/a0;-><init>(Ly1/e0;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    int-to-float p1, p1

    const v1, 0x3f7d70a4

    add-float/2addr p1, v1

    .line 4
    iget v1, v0, Lk2/d;->o:F

    invoke-virtual {v0, v1, p1}, Lk2/d;->l(FF)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/t;

    invoke-direct {v1, p0, p1}, Ly1/t;-><init>(Ly1/e0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ly1/i;->c(Ljava/lang/String;)Ld2/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Ld2/h;->b:F

    iget v0, v0, Ld2/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ly1/e0;->r(I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    .line 6
    invoke-static {v1, p1, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/e0;->x:I

    .line 2
    invoke-virtual {p0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p1, "Use addColorFilter instead."

    invoke-static {p1}, Lk2/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Ly1/e0;->m:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ly1/e0;->n()V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_3

    .line 5
    invoke-virtual {p0}, Ly1/e0;->p()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Ly1/e0;->i:Lk2/d;

    .line 7
    iget-boolean p1, p1, Lk2/d;->r:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Ly1/e0;->m()V

    .line 9
    iput v2, p0, Ly1/e0;->m:I

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 10
    iput v1, p0, Ly1/e0;->m:I

    :cond_3
    :goto_0
    return p2
.end method

.method public final start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ly1/e0;->n()V

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Lk2/d;->d()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Ly1/e0;->m:I

    :cond_0
    return-void
.end method

.method public final t(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/x;

    invoke-direct {v1, p0, p1}, Ly1/x;-><init>(Ly1/e0;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Ly1/e0;->i:Lk2/d;

    .line 4
    iget v2, v0, Ly1/i;->k:F

    .line 5
    iget v0, v0, Ly1/i;->l:F

    .line 6
    sget-object v3, Lk2/f;->a:Landroid/graphics/PointF;

    invoke-static {v0, v2, p1, v2}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result p1

    .line 7
    iget v0, v1, Lk2/d;->o:F

    invoke-virtual {v1, v0, p1}, Lk2/d;->l(FF)V

    return-void
.end method

.method public final u(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/c0;

    invoke-direct {v1, p0, p1, p2}, Ly1/c0;-><init>(Ly1/e0;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lk2/d;->l(FF)V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/u;

    invoke-direct {v1, p0, p1}, Ly1/u;-><init>(Ly1/e0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ly1/i;->c(Ljava/lang/String;)Ld2/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Ld2/h;->b:F

    float-to-int p1, p1

    .line 5
    iget v0, v0, Ld2/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Ly1/e0;->u(II)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    .line 7
    invoke-static {v1, p1, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/z;

    invoke-direct {v1, p0, p1}, Ly1/z;-><init>(Ly1/e0;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly1/e0;->i:Lk2/d;

    int-to-float p1, p1

    .line 4
    iget v1, v0, Lk2/d;->p:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lk2/d;->l(FF)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/s;

    invoke-direct {v1, p0, p1}, Ly1/s;-><init>(Ly1/e0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ly1/i;->c(Ljava/lang/String;)Ld2/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Ld2/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ly1/e0;->w(I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find marker with name "

    const-string v2, "."

    .line 6
    invoke-static {v1, p1, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/w;

    invoke-direct {v1, p0, p1}, Ly1/w;-><init>(Ly1/e0;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget v1, v0, Ly1/i;->k:F

    .line 4
    iget v0, v0, Ly1/i;->l:F

    .line 5
    sget-object v2, Lk2/f;->a:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1, v1}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ly1/e0;->w(I)V

    return-void
.end method

.method public final z(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/e0;->h:Ly1/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly1/e0;->n:Ljava/util/ArrayList;

    new-instance v1, Ly1/y;

    invoke-direct {v1, p0, p1}, Ly1/y;-><init>(Ly1/e0;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Ly1/e0;->i:Lk2/d;

    .line 4
    iget v2, v0, Ly1/i;->k:F

    iget v0, v0, Ly1/i;->l:F

    sget-object v3, Lk2/f;->a:Landroid/graphics/PointF;

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    .line 5
    invoke-virtual {v1, v0}, Lk2/d;->k(F)V

    .line 6
    invoke-static {}, Lp4/h;->p()V

    return-void
.end method
