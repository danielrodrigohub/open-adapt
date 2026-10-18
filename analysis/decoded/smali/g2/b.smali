.class public abstract Lg2/b;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements La2/d;
.implements Lb2/a$a;
.implements Ld2/f;


# instance fields
.field public A:Lz1/a;

.field public B:F

.field public C:Landroid/graphics/BlurMaskFilter;

.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Lz1/a;

.field public final e:Lz1/a;

.field public final f:Lz1/a;

.field public final g:Lz1/a;

.field public final h:Lz1/a;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/RectF;

.field public final n:Ljava/lang/String;

.field public final o:Landroid/graphics/Matrix;

.field public final p:Ly1/e0;

.field public final q:Lg2/f;

.field public r:Lb2/h;

.field public s:Lb2/d;

.field public t:Lg2/b;

.field public u:Lg2/b;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb2/a<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final x:Lb2/q;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg2/b;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg2/b;->b:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg2/b;->c:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Lz1/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz1/a;-><init>(I)V

    iput-object v0, p0, Lg2/b;->d:Lz1/a;

    .line 6
    new-instance v0, Lz1/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lz1/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lg2/b;->e:Lz1/a;

    .line 7
    new-instance v0, Lz1/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lz1/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lg2/b;->f:Lz1/a;

    .line 8
    new-instance v0, Lz1/a;

    invoke-direct {v0, v1}, Lz1/a;-><init>(I)V

    iput-object v0, p0, Lg2/b;->g:Lz1/a;

    .line 9
    new-instance v2, Lz1/a;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Lz1/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lg2/b;->h:Lz1/a;

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lg2/b;->i:Landroid/graphics/RectF;

    .line 11
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lg2/b;->j:Landroid/graphics/RectF;

    .line 12
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lg2/b;->k:Landroid/graphics/RectF;

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lg2/b;->l:Landroid/graphics/RectF;

    .line 14
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lg2/b;->m:Landroid/graphics/RectF;

    .line 15
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lg2/b;->w:Ljava/util/ArrayList;

    .line 17
    iput-boolean v1, p0, Lg2/b;->y:Z

    const/4 v2, 0x0

    .line 18
    iput v2, p0, Lg2/b;->B:F

    .line 19
    iput-object p1, p0, Lg2/b;->p:Ly1/e0;

    .line 20
    iput-object p2, p0, Lg2/b;->q:Lg2/f;

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v2, p2, Lg2/f;->c:Ljava/lang/String;

    const-string v3, "#draw"

    .line 23
    invoke-static {p1, v2, v3}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lg2/b;->n:Ljava/lang/String;

    .line 25
    iget p1, p2, Lg2/f;->u:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 26
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    :goto_0
    iget-object p1, p2, Lg2/f;->i:Le2/k;

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lb2/q;

    invoke-direct {v0, p1}, Lb2/q;-><init>(Le2/k;)V

    .line 31
    iput-object v0, p0, Lg2/b;->x:Lb2/q;

    .line 32
    invoke-virtual {v0, p0}, Lb2/q;->b(Lb2/a$a;)V

    .line 33
    iget-object p1, p2, Lg2/f;->h:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 35
    new-instance p1, Lb2/h;

    .line 36
    iget-object p2, p2, Lg2/f;->h:Ljava/util/List;

    .line 37
    invoke-direct {p1, p2}, Lb2/h;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lg2/b;->r:Lb2/h;

    .line 38
    iget-object p1, p1, Lb2/h;->a:Ljava/util/ArrayList;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb2/a;

    .line 40
    invoke-virtual {p2, p0}, Lb2/a;->a(Lb2/a$a;)V

    goto :goto_1

    .line 41
    :cond_1
    iget-object p1, p0, Lg2/b;->r:Lb2/h;

    .line 42
    iget-object p1, p1, Lb2/h;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb2/a;

    .line 44
    invoke-virtual {p0, p2}, Lg2/b;->f(Lb2/a;)V

    .line 45
    invoke-virtual {p2, p0}, Lb2/a;->a(Lb2/a$a;)V

    goto :goto_2

    .line 46
    :cond_2
    iget-object p1, p0, Lg2/b;->q:Lg2/f;

    .line 47
    iget-object p1, p1, Lg2/f;->t:Ljava/util/List;

    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 49
    new-instance p1, Lb2/d;

    iget-object p2, p0, Lg2/b;->q:Lg2/f;

    .line 50
    iget-object p2, p2, Lg2/f;->t:Ljava/util/List;

    .line 51
    invoke-direct {p1, p2}, Lb2/d;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lg2/b;->s:Lb2/d;

    .line 52
    iput-boolean v1, p1, Lb2/a;->b:Z

    .line 53
    new-instance p2, Lg2/a;

    invoke-direct {p2, p0}, Lg2/a;-><init>(Lg2/b;)V

    invoke-virtual {p1, p2}, Lb2/a;->a(Lb2/a$a;)V

    .line 54
    iget-object p1, p0, Lg2/b;->s:Lb2/d;

    invoke-virtual {p1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Lg2/b;->w(Z)V

    .line 55
    iget-object p1, p0, Lg2/b;->s:Lb2/d;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    goto :goto_4

    .line 56
    :cond_4
    invoke-virtual {p0, v1}, Lg2/b;->w(Z)V

    :goto_4
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lg2/b;->i:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    invoke-virtual {p0}, Lg2/b;->j()V

    .line 3
    iget-object p1, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p0, Lg2/b;->v:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 6
    iget-object p2, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    iget-object p3, p0, Lg2/b;->v:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg2/b;

    iget-object p3, p3, Lg2/b;->x:Lb2/q;

    invoke-virtual {p3}, Lb2/q;->e()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lg2/b;->u:Lg2/b;

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    iget-object p1, p1, Lg2/b;->x:Lb2/q;

    invoke-virtual {p1}, Lb2/q;->e()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 9
    :cond_1
    iget-object p1, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    iget-object p2, p0, Lg2/b;->x:Lb2/q;

    invoke-virtual {p2}, Lb2/q;->e()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lg2/b;->p:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "La2/b;",
            ">;",
            "Ljava/util/List<",
            "La2/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final f(Lb2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/a<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg2/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;Ll2/c;)V
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

    iget-object v0, p0, Lg2/b;->x:Lb2/q;

    invoke-virtual {v0, p1, p2}, Lb2/q;->c(Ljava/lang/Object;Ll2/c;)Z

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 2
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lg2/b;->y:Z

    if-eqz v3, :cond_22

    iget-object v3, v0, Lg2/b;->q:Lg2/f;

    .line 2
    iget-boolean v3, v3, Lg2/f;->v:Z

    if-eqz v3, :cond_0

    goto/16 :goto_c

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lg2/b;->j()V

    .line 4
    iget-object v3, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 5
    iget-object v3, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v3, v0, Lg2/b;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 7
    iget-object v5, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    iget-object v6, v0, Lg2/b;->v:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg2/b;

    iget-object v6, v6, Lg2/b;->x:Lb2/q;

    invoke-virtual {v6}, Lb2/q;->e()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lp4/h;->p()V

    .line 9
    iget-object v3, v0, Lg2/b;->x:Lb2/q;

    .line 10
    iget-object v3, v3, Lb2/q;->j:Lb2/a;

    if-nez v3, :cond_2

    const/16 v3, 0x64

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v3}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    move/from16 v5, p3

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    int-to-float v3, v3

    mul-float/2addr v5, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v5, v3

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 12
    invoke-virtual/range {p0 .. p0}, Lg2/b;->q()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lg2/b;->p()Z

    move-result v5

    if-nez v5, :cond_3

    .line 13
    iget-object v2, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    iget-object v4, v0, Lg2/b;->x:Lb2/q;

    invoke-virtual {v4}, Lb2/q;->e()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 14
    iget-object v2, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, v3}, Lg2/b;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 15
    invoke-static {}, Lp4/h;->p()V

    .line 16
    invoke-static {}, Lp4/h;->p()V

    invoke-virtual/range {p0 .. p0}, Lg2/b;->r()V

    return-void

    .line 17
    :cond_3
    iget-object v5, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v6, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lg2/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 18
    iget-object v5, v0, Lg2/b;->i:Landroid/graphics/RectF;

    .line 19
    invoke-virtual/range {p0 .. p0}, Lg2/b;->q()Z

    move-result v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-nez v6, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    iget-object v6, v0, Lg2/b;->q:Lg2/f;

    .line 21
    iget v6, v6, Lg2/f;->u:I

    if-ne v6, v8, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    iget-object v6, v0, Lg2/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    iget-object v6, v0, Lg2/b;->t:Lg2/b;

    iget-object v10, v0, Lg2/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v6, v10, v2, v4}, Lg2/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 24
    iget-object v6, v0, Lg2/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 25
    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    :cond_6
    :goto_2
    iget-object v5, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    iget-object v6, v0, Lg2/b;->x:Lb2/q;

    invoke-virtual {v6}, Lb2/q;->e()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 27
    iget-object v5, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v6, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    .line 28
    iget-object v10, v0, Lg2/b;->k:Landroid/graphics/RectF;

    invoke-virtual {v10, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lg2/b;->p()Z

    move-result v10

    const/4 v11, 0x2

    if-nez v10, :cond_7

    goto/16 :goto_6

    .line 30
    :cond_7
    iget-object v10, v0, Lg2/b;->r:Lb2/h;

    .line 31
    iget-object v10, v10, Lb2/h;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .line 32
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v12, v7

    :goto_3
    if-ge v12, v10, :cond_c

    .line 33
    iget-object v13, v0, Lg2/b;->r:Lb2/h;

    .line 34
    iget-object v13, v13, Lb2/h;->c:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    .line 35
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf2/f;

    .line 36
    iget-object v14, v0, Lg2/b;->r:Lb2/h;

    .line 37
    iget-object v14, v14, Lb2/h;->a:Ljava/util/ArrayList;

    .line 38
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb2/a;

    .line 39
    invoke-virtual {v14}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Path;

    if-nez v14, :cond_8

    goto :goto_5

    .line 40
    :cond_8
    iget-object v15, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v15, v14}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 41
    iget-object v14, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 42
    iget v14, v13, Lf2/f;->a:I

    .line 43
    invoke-static {v14}, Lq/g;->a(I)I

    move-result v14

    if-eqz v14, :cond_9

    if-eq v14, v4, :cond_d

    if-eq v14, v11, :cond_9

    if-eq v14, v8, :cond_d

    goto :goto_4

    .line 44
    :cond_9
    iget-boolean v13, v13, Lf2/f;->d:Z

    if-eqz v13, :cond_a

    goto :goto_6

    .line 45
    :cond_a
    :goto_4
    iget-object v13, v0, Lg2/b;->a:Landroid/graphics/Path;

    iget-object v14, v0, Lg2/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v13, v14, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v12, :cond_b

    .line 46
    iget-object v13, v0, Lg2/b;->k:Landroid/graphics/RectF;

    iget-object v14, v0, Lg2/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v13, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_5

    .line 47
    :cond_b
    iget-object v13, v0, Lg2/b;->k:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lg2/b;->m:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    .line 48
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget-object v15, v0, Lg2/b;->k:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lg2/b;->m:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 49
    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v15, v0, Lg2/b;->k:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v8, v0, Lg2/b;->m:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 50
    invoke-static {v15, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v15, v0, Lg2/b;->k:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget-object v11, v0, Lg2/b;->m:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    .line 51
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 52
    invoke-virtual {v13, v14, v7, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v11, 0x2

    goto/16 :goto_3

    .line 53
    :cond_c
    iget-object v6, v0, Lg2/b;->k:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 54
    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    :cond_d
    :goto_6
    iget-object v5, v0, Lg2/b;->j:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    iget-object v5, v0, Lg2/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 57
    iget-object v5, v0, Lg2/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_e

    .line 58
    iget-object v5, v0, Lg2/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v5, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 59
    iget-object v5, v0, Lg2/b;->c:Landroid/graphics/Matrix;

    iget-object v6, v0, Lg2/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 60
    :cond_e
    iget-object v5, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v6, v0, Lg2/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 61
    iget-object v5, v0, Lg2/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    :cond_f
    invoke-static {}, Lp4/h;->p()V

    .line 63
    iget-object v5, v0, Lg2/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_20

    iget-object v5, v0, Lg2/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_20

    .line 64
    iget-object v5, v0, Lg2/b;->d:Lz1/a;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Lz1/a;->setAlpha(I)V

    .line 65
    iget-object v5, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v7, v0, Lg2/b;->d:Lz1/a;

    sget-object v8, Lk2/g;->a:Lk2/g$a;

    .line 66
    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 67
    invoke-static {}, Lp4/h;->p()V

    .line 68
    invoke-static {}, Lp4/h;->p()V

    .line 69
    invoke-virtual/range {p0 .. p1}, Lg2/b;->k(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v5, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v5, v3}, Lg2/b;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 71
    invoke-static {}, Lp4/h;->p()V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lg2/b;->p()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 73
    iget-object v5, v0, Lg2/b;->b:Landroid/graphics/Matrix;

    .line 74
    iget-object v7, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v8, v0, Lg2/b;->e:Lz1/a;

    .line 75
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 76
    invoke-static {}, Lp4/h;->p()V

    .line 77
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-ge v7, v8, :cond_10

    .line 78
    invoke-virtual/range {p0 .. p1}, Lg2/b;->k(Landroid/graphics/Canvas;)V

    .line 79
    :cond_10
    invoke-static {}, Lp4/h;->p()V

    const/4 v7, 0x0

    .line 80
    :goto_7
    iget-object v8, v0, Lg2/b;->r:Lb2/h;

    .line 81
    iget-object v8, v8, Lb2/h;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 82
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1d

    .line 83
    iget-object v8, v0, Lg2/b;->r:Lb2/h;

    .line 84
    iget-object v8, v8, Lb2/h;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 85
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf2/f;

    .line 86
    iget-object v9, v0, Lg2/b;->r:Lb2/h;

    .line 87
    iget-object v9, v9, Lb2/h;->a:Ljava/util/ArrayList;

    .line 88
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb2/a;

    .line 89
    iget-object v10, v0, Lg2/b;->r:Lb2/h;

    .line 90
    iget-object v10, v10, Lb2/h;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .line 91
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb2/a;

    .line 92
    iget v11, v8, Lf2/f;->a:I

    .line 93
    invoke-static {v11}, Lq/g;->a(I)I

    move-result v11

    const v12, 0x40233333

    if-eqz v11, :cond_1a

    if-eq v11, v4, :cond_17

    const/4 v13, 0x2

    if-eq v11, v13, :cond_15

    const/4 v14, 0x3

    if-eq v11, v14, :cond_11

    goto/16 :goto_b

    .line 94
    :cond_11
    iget-object v8, v0, Lg2/b;->r:Lb2/h;

    .line 95
    iget-object v8, v8, Lb2/h;->a:Ljava/util/ArrayList;

    .line 96
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_9

    :cond_12
    const/4 v8, 0x0

    .line 97
    :goto_8
    iget-object v9, v0, Lg2/b;->r:Lb2/h;

    .line 98
    iget-object v9, v9, Lb2/h;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    .line 99
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_14

    .line 100
    iget-object v9, v0, Lg2/b;->r:Lb2/h;

    .line 101
    iget-object v9, v9, Lb2/h;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    .line 102
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf2/f;

    .line 103
    iget v9, v9, Lf2/f;->a:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_13

    :goto_9
    const/4 v8, 0x0

    goto :goto_a

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_14
    move v8, v4

    :goto_a
    if-eqz v8, :cond_1c

    .line 104
    iget-object v8, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v8, v6}, Lz1/a;->setAlpha(I)V

    .line 105
    iget-object v8, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v9, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_b

    :cond_15
    const/4 v14, 0x3

    .line 106
    iget-boolean v8, v8, Lf2/f;->d:Z

    if-eqz v8, :cond_16

    .line 107
    iget-object v8, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v11, v0, Lg2/b;->e:Lz1/a;

    sget-object v15, Lk2/g;->a:Lk2/g$a;

    .line 108
    invoke-virtual {v1, v8, v11}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 109
    invoke-static {}, Lp4/h;->p()V

    .line 110
    iget-object v8, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v11, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v1, v8, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 111
    iget-object v8, v0, Lg2/b;->f:Lz1/a;

    invoke-virtual {v10}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v12

    float-to-int v10, v10

    invoke-virtual {v8, v10}, Lz1/a;->setAlpha(I)V

    .line 112
    invoke-virtual {v9}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 113
    iget-object v9, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 114
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    iget-object v9, v0, Lg2/b;->f:Lz1/a;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    .line 117
    :cond_16
    iget-object v8, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v11, v0, Lg2/b;->e:Lz1/a;

    sget-object v15, Lk2/g;->a:Lk2/g$a;

    .line 118
    invoke-virtual {v1, v8, v11}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 119
    invoke-static {}, Lp4/h;->p()V

    .line 120
    invoke-virtual {v9}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 121
    iget-object v9, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 122
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 123
    iget-object v8, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v10}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lz1/a;->setAlpha(I)V

    .line 124
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    iget-object v9, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    :cond_17
    const/4 v13, 0x2

    const/4 v14, 0x3

    if-nez v7, :cond_18

    .line 126
    iget-object v11, v0, Lg2/b;->d:Lz1/a;

    const/high16 v15, -0x1000000

    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v11, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v11, v6}, Lz1/a;->setAlpha(I)V

    .line 128
    iget-object v11, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v15, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v1, v11, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 129
    :cond_18
    iget-boolean v8, v8, Lf2/f;->d:Z

    if-eqz v8, :cond_19

    .line 130
    iget-object v8, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v11, v0, Lg2/b;->f:Lz1/a;

    sget-object v15, Lk2/g;->a:Lk2/g$a;

    .line 131
    invoke-virtual {v1, v8, v11}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 132
    invoke-static {}, Lp4/h;->p()V

    .line 133
    iget-object v8, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v11, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v1, v8, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 134
    iget-object v8, v0, Lg2/b;->f:Lz1/a;

    invoke-virtual {v10}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v12

    float-to-int v10, v10

    invoke-virtual {v8, v10}, Lz1/a;->setAlpha(I)V

    .line 135
    invoke-virtual {v9}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 136
    iget-object v9, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 137
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 138
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    iget-object v9, v0, Lg2/b;->f:Lz1/a;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    .line 140
    :cond_19
    invoke-virtual {v9}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 141
    iget-object v9, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 142
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 143
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    iget-object v9, v0, Lg2/b;->f:Lz1/a;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_1a
    const/4 v13, 0x2

    const/4 v14, 0x3

    .line 144
    iget-boolean v8, v8, Lf2/f;->d:Z

    if-eqz v8, :cond_1b

    .line 145
    iget-object v8, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v11, v0, Lg2/b;->d:Lz1/a;

    sget-object v15, Lk2/g;->a:Lk2/g$a;

    .line 146
    invoke-virtual {v1, v8, v11}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 147
    invoke-static {}, Lp4/h;->p()V

    .line 148
    iget-object v8, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v11, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v1, v8, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    invoke-virtual {v9}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 150
    iget-object v9, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 151
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 152
    iget-object v8, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v10}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lz1/a;->setAlpha(I)V

    .line 153
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    iget-object v9, v0, Lg2/b;->f:Lz1/a;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    .line 155
    :cond_1b
    invoke-virtual {v9}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Path;

    .line 156
    iget-object v9, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 157
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 158
    iget-object v8, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v10}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lz1/a;->setAlpha(I)V

    .line 159
    iget-object v8, v0, Lg2/b;->a:Landroid/graphics/Path;

    iget-object v9, v0, Lg2/b;->d:Lz1/a;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1c
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 160
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    invoke-static {}, Lp4/h;->p()V

    .line 162
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lg2/b;->q()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 163
    iget-object v4, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v5, v0, Lg2/b;->g:Lz1/a;

    .line 164
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 165
    invoke-static {}, Lp4/h;->p()V

    .line 166
    invoke-static {}, Lp4/h;->p()V

    .line 167
    invoke-virtual/range {p0 .. p1}, Lg2/b;->k(Landroid/graphics/Canvas;)V

    .line 168
    iget-object v4, v0, Lg2/b;->t:Lg2/b;

    invoke-virtual {v4, v1, v2, v3}, Lg2/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    invoke-static {}, Lp4/h;->p()V

    .line 171
    invoke-static {}, Lp4/h;->p()V

    .line 172
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 173
    invoke-static {}, Lp4/h;->p()V

    .line 174
    :cond_20
    iget-boolean v2, v0, Lg2/b;->z:Z

    if-eqz v2, :cond_21

    iget-object v2, v0, Lg2/b;->A:Lz1/a;

    if-eqz v2, :cond_21

    .line 175
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v2, v0, Lg2/b;->A:Lz1/a;

    const v3, -0x3d7fd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v2, v0, Lg2/b;->A:Lz1/a;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget-object v2, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v3, v0, Lg2/b;->A:Lz1/a;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 179
    iget-object v2, v0, Lg2/b;->A:Lz1/a;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v2, v0, Lg2/b;->A:Lz1/a;

    const v3, 0x50ebebeb

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v2, v0, Lg2/b;->i:Landroid/graphics/RectF;

    iget-object v3, v0, Lg2/b;->A:Lz1/a;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 182
    :cond_21
    invoke-static {}, Lp4/h;->p()V

    invoke-virtual/range {p0 .. p0}, Lg2/b;->r()V

    return-void

    .line 183
    :cond_22
    :goto_c
    invoke-static {}, Lp4/h;->p()V

    return-void
.end method

.method public final i(Ld2/e;ILjava/util/List;Ld2/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/e;",
            "I",
            "Ljava/util/List<",
            "Ld2/e;",
            ">;",
            "Ld2/e;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg2/b;->t:Lg2/b;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lg2/b;->q:Lg2/f;

    .line 3
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p4, v0}, Ld2/e;->a(Ljava/lang/String;)Ld2/e;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lg2/b;->t:Lg2/b;

    .line 6
    iget-object v1, v1, Lg2/b;->q:Lg2/f;

    .line 7
    iget-object v1, v1, Lg2/f;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1, p2}, Ld2/e;->c(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lg2/b;->t:Lg2/b;

    invoke-virtual {v0, v1}, Ld2/e;->g(Ld2/f;)Ld2/e;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object v1, p0, Lg2/b;->q:Lg2/f;

    .line 11
    iget-object v1, v1, Lg2/f;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v1, p2}, Ld2/e;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lg2/b;->t:Lg2/b;

    .line 14
    iget-object v1, v1, Lg2/b;->q:Lg2/f;

    .line 15
    iget-object v1, v1, Lg2/f;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v1, p2}, Ld2/e;->d(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p2

    .line 17
    iget-object v2, p0, Lg2/b;->t:Lg2/b;

    invoke-virtual {v2, p1, v1, p3, v0}, Lg2/b;->t(Ld2/e;ILjava/util/List;Ld2/e;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 19
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0, p2}, Ld2/e;->e(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 21
    :cond_2
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 22
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    const-string v1, "__container"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 25
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {p4, v0}, Ld2/e;->a(Ljava/lang/String;)Ld2/e;

    move-result-object p4

    .line 27
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 28
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v0, p2}, Ld2/e;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p4, p0}, Ld2/e;->g(Ld2/f;)Ld2/e;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_3
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 32
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v0, p2}, Ld2/e;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 35
    iget-object v0, v0, Lg2/f;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v0, p2}, Ld2/e;->d(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    .line 37
    invoke-virtual {p0, p1, v0, p3, p4}, Lg2/b;->t(Ld2/e;ILjava/util/List;Ld2/e;)V

    :cond_4
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg2/b;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg2/b;->u:Lg2/b;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg2/b;->v:Ljava/util/List;

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg2/b;->v:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lg2/b;->u:Lg2/b;

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lg2/b;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, v0, Lg2/b;->u:Lg2/b;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lg2/b;->i:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget-object v8, p0, Lg2/b;->h:Lz1/a;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2
    invoke-static {}, Lp4/h;->p()V

    return-void
.end method

.method public abstract l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public m()Lf/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 2
    iget-object v0, v0, Lg2/f;->w:Lf/p;

    return-object v0
.end method

.method public final n(F)Landroid/graphics/BlurMaskFilter;
    .locals 3

    .line 1
    iget v0, p0, Lg2/b;->B:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lg2/b;->C:Landroid/graphics/BlurMaskFilter;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lg2/b;->C:Landroid/graphics/BlurMaskFilter;

    .line 4
    iput p1, p0, Lg2/b;->B:F

    return-object v0
.end method

.method public o()Li2/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 2
    iget-object v0, v0, Lg2/f;->x:Li2/j;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/b;->r:Lb2/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lb2/h;->a:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lg2/b;->t:Lg2/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg2/b;->p:Ly1/e0;

    .line 2
    iget-object v0, v0, Ly1/e0;->h:Ly1/i;

    .line 3
    iget-object v0, v0, Ly1/i;->a:Ly1/l0;

    .line 4
    iget-object v1, p0, Lg2/b;->q:Lg2/f;

    .line 5
    iget-object v1, v1, Lg2/f;->c:Ljava/lang/String;

    .line 6
    iget-boolean v2, v0, Ly1/l0;->a:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, v0, Ly1/l0;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk2/e;

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lk2/e;

    invoke-direct {v2}, Lk2/e;-><init>()V

    .line 9
    iget-object v3, v0, Ly1/l0;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget v3, v2, Lk2/e;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lk2/e;->a:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 11
    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lk2/e;->a:I

    :cond_2
    const-string v2, "__container"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v0, v0, Ly1/l0;->b:Lp/c;

    invoke-virtual {v0}, Lp/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lp/f$a;

    invoke-virtual {v1}, Lp/f$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lp/f$a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/l0$a;

    .line 14
    invoke-interface {v1}, Ly1/l0$a;->a()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final s(Lb2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/a<",
            "**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lg2/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public t(Ld2/e;ILjava/util/List;Ld2/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/e;",
            "I",
            "Ljava/util/List<",
            "Ld2/e;",
            ">;",
            "Ld2/e;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public u(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lg2/b;->A:Lz1/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lz1/a;

    invoke-direct {v0}, Lz1/a;-><init>()V

    iput-object v0, p0, Lg2/b;->A:Lz1/a;

    .line 3
    :cond_0
    iput-boolean p1, p0, Lg2/b;->z:Z

    return-void
.end method

.method public v(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg2/b;->x:Lb2/q;

    .line 2
    iget-object v1, v0, Lb2/q;->j:Lb2/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lb2/a;->j(F)V

    .line 4
    :cond_0
    iget-object v1, v0, Lb2/q;->m:Lb2/a;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Lb2/a;->j(F)V

    .line 6
    :cond_1
    iget-object v1, v0, Lb2/q;->n:Lb2/a;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, p1}, Lb2/a;->j(F)V

    .line 8
    :cond_2
    iget-object v1, v0, Lb2/q;->f:Lb2/a;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1, p1}, Lb2/a;->j(F)V

    .line 10
    :cond_3
    iget-object v1, v0, Lb2/q;->g:Lb2/a;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1, p1}, Lb2/a;->j(F)V

    .line 12
    :cond_4
    iget-object v1, v0, Lb2/q;->h:Lb2/a;

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1, p1}, Lb2/a;->j(F)V

    .line 14
    :cond_5
    iget-object v1, v0, Lb2/q;->i:Lb2/a;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v1, p1}, Lb2/a;->j(F)V

    .line 16
    :cond_6
    iget-object v1, v0, Lb2/q;->k:Lb2/d;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v1, p1}, Lb2/a;->j(F)V

    .line 18
    :cond_7
    iget-object v0, v0, Lb2/q;->l:Lb2/d;

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {v0, p1}, Lb2/a;->j(F)V

    .line 20
    :cond_8
    iget-object v0, p0, Lg2/b;->r:Lb2/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    .line 21
    :goto_0
    iget-object v2, p0, Lg2/b;->r:Lb2/h;

    .line 22
    iget-object v2, v2, Lb2/h;->a:Ljava/util/ArrayList;

    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 24
    iget-object v2, p0, Lg2/b;->r:Lb2/h;

    .line 25
    iget-object v2, v2, Lb2/h;->a:Ljava/util/ArrayList;

    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb2/a;

    invoke-virtual {v2, p1}, Lb2/a;->j(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_9
    iget-object v0, p0, Lg2/b;->s:Lb2/d;

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {v0, p1}, Lb2/a;->j(F)V

    .line 29
    :cond_a
    iget-object v0, p0, Lg2/b;->t:Lg2/b;

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {v0, p1}, Lg2/b;->v(F)V

    .line 31
    :cond_b
    :goto_1
    iget-object v0, p0, Lg2/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 32
    iget-object v0, p0, Lg2/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/a;

    invoke-virtual {v0, p1}, Lb2/a;->j(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public final w(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg2/b;->y:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lg2/b;->y:Z

    .line 3
    iget-object p1, p0, Lg2/b;->p:Ly1/e0;

    invoke-virtual {p1}, Ly1/e0;->invalidateSelf()V

    :cond_0
    return-void
.end method
