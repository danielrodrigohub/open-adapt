.class public final Lb2/q;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ll2/d;",
            "Ll2/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lb2/d;

.field public l:Lb2/d;

.field public m:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le2/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    .line 3
    iget-object v0, p1, Le2/k;->a:Le2/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Le2/e;->a()Lb2/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lb2/q;->f:Lb2/a;

    .line 5
    iget-object v0, p1, Le2/k;->b:Le2/l;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Le2/l;->a()Lb2/a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lb2/q;->g:Lb2/a;

    .line 7
    iget-object v0, p1, Le2/k;->c:Le2/g;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v0}, Le2/g;->a()Lb2/a;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lb2/q;->h:Lb2/a;

    .line 9
    iget-object v0, p1, Le2/k;->d:Le2/b;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {v0}, Le2/b;->a()Lb2/a;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lb2/q;->i:Lb2/a;

    .line 11
    iget-object v0, p1, Le2/k;->f:Le2/b;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual {v0}, Le2/b;->a()Lb2/a;

    move-result-object v0

    check-cast v0, Lb2/d;

    :goto_4
    iput-object v0, p0, Lb2/q;->k:Lb2/d;

    if-eqz v0, :cond_5

    .line 13
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb2/q;->b:Landroid/graphics/Matrix;

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb2/q;->c:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb2/q;->d:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 16
    iput-object v0, p0, Lb2/q;->e:[F

    goto :goto_5

    .line 17
    :cond_5
    iput-object v1, p0, Lb2/q;->b:Landroid/graphics/Matrix;

    .line 18
    iput-object v1, p0, Lb2/q;->c:Landroid/graphics/Matrix;

    .line 19
    iput-object v1, p0, Lb2/q;->d:Landroid/graphics/Matrix;

    .line 20
    iput-object v1, p0, Lb2/q;->e:[F

    .line 21
    :goto_5
    iget-object v0, p1, Le2/k;->g:Le2/b;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {v0}, Le2/b;->a()Lb2/a;

    move-result-object v0

    check-cast v0, Lb2/d;

    :goto_6
    iput-object v0, p0, Lb2/q;->l:Lb2/d;

    .line 23
    iget-object v0, p1, Le2/k;->e:Le2/d;

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v0}, Le2/d;->a()Lb2/a;

    move-result-object v0

    iput-object v0, p0, Lb2/q;->j:Lb2/a;

    .line 25
    :cond_7
    iget-object v0, p1, Le2/k;->h:Le2/b;

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {v0}, Le2/b;->a()Lb2/a;

    move-result-object v0

    iput-object v0, p0, Lb2/q;->m:Lb2/a;

    goto :goto_7

    .line 27
    :cond_8
    iput-object v1, p0, Lb2/q;->m:Lb2/a;

    .line 28
    :goto_7
    iget-object p1, p1, Le2/k;->i:Le2/b;

    if-eqz p1, :cond_9

    .line 29
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    iput-object p1, p0, Lb2/q;->n:Lb2/a;

    goto :goto_8

    .line 30
    :cond_9
    iput-object v1, p0, Lb2/q;->n:Lb2/a;

    :goto_8
    return-void
.end method


# virtual methods
.method public final a(Lg2/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/q;->j:Lb2/a;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 2
    iget-object v0, p0, Lb2/q;->m:Lb2/a;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 3
    iget-object v0, p0, Lb2/q;->n:Lb2/a;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 4
    iget-object v0, p0, Lb2/q;->f:Lb2/a;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 5
    iget-object v0, p0, Lb2/q;->g:Lb2/a;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 6
    iget-object v0, p0, Lb2/q;->h:Lb2/a;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 7
    iget-object v0, p0, Lb2/q;->i:Lb2/a;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 8
    iget-object v0, p0, Lb2/q;->k:Lb2/d;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 9
    iget-object v0, p0, Lb2/q;->l:Lb2/d;

    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    return-void
.end method

.method public final b(Lb2/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/q;->j:Lb2/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb2/q;->m:Lb2/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lb2/q;->n:Lb2/a;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lb2/q;->f:Lb2/a;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lb2/q;->g:Lb2/a;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lb2/q;->h:Lb2/a;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lb2/q;->i:Lb2/a;

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lb2/q;->k:Lb2/d;

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lb2/q;->l:Lb2/d;

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {v0, p1}, Lb2/a;->a(Lb2/a$a;)V

    :cond_8
    return-void
.end method

.method public final c(Ljava/lang/Object;Ll2/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ll2/c<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Ly1/i0;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lb2/q;->f:Lb2/a;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lb2/r;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lb2/q;->f:Lb2/a;

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object v0, Ly1/i0;->g:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lb2/q;->g:Lb2/a;

    if-nez p1, :cond_2

    .line 7
    new-instance p1, Lb2/r;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lb2/q;->g:Lb2/a;

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object v0, Ly1/i0;->h:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lb2/q;->g:Lb2/a;

    instance-of v1, v0, Lb2/n;

    if-eqz v1, :cond_4

    .line 10
    check-cast v0, Lb2/n;

    .line 11
    iget-object p1, v0, Lb2/n;->m:Ll2/c;

    .line 12
    iput-object p2, v0, Lb2/n;->m:Ll2/c;

    goto/16 :goto_0

    .line 13
    :cond_4
    sget-object v0, Ly1/i0;->i:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lb2/q;->g:Lb2/a;

    instance-of v1, v0, Lb2/n;

    if-eqz v1, :cond_5

    .line 14
    check-cast v0, Lb2/n;

    .line 15
    iget-object p1, v0, Lb2/n;->n:Ll2/c;

    .line 16
    iput-object p2, v0, Lb2/n;->n:Ll2/c;

    goto/16 :goto_0

    .line 17
    :cond_5
    sget-object v0, Ly1/i0;->o:Ll2/d;

    if-ne p1, v0, :cond_7

    .line 18
    iget-object p1, p0, Lb2/q;->h:Lb2/a;

    if-nez p1, :cond_6

    .line 19
    new-instance p1, Lb2/r;

    new-instance v0, Ll2/d;

    invoke-direct {v0}, Ll2/d;-><init>()V

    invoke-direct {p1, p2, v0}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lb2/q;->h:Lb2/a;

    goto/16 :goto_0

    .line 20
    :cond_6
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 21
    :cond_7
    sget-object v0, Ly1/i0;->p:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    .line 22
    iget-object p1, p0, Lb2/q;->i:Lb2/a;

    if-nez p1, :cond_8

    .line 23
    new-instance p1, Lb2/r;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lb2/q;->i:Lb2/a;

    goto/16 :goto_0

    .line 24
    :cond_8
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 25
    :cond_9
    sget-object v0, Ly1/i0;->c:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    .line 26
    iget-object p1, p0, Lb2/q;->j:Lb2/a;

    if-nez p1, :cond_a

    .line 27
    new-instance p1, Lb2/r;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lb2/q;->j:Lb2/a;

    goto/16 :goto_0

    .line 28
    :cond_a
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto/16 :goto_0

    .line 29
    :cond_b
    sget-object v0, Ly1/i0;->C:Ljava/lang/Float;

    const/high16 v2, 0x42c80000    # 100.0f

    if-ne p1, v0, :cond_d

    .line 30
    iget-object p1, p0, Lb2/q;->m:Lb2/a;

    if-nez p1, :cond_c

    .line 31
    new-instance p1, Lb2/r;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lb2/q;->m:Lb2/a;

    goto :goto_0

    .line 32
    :cond_c
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 33
    :cond_d
    sget-object v0, Ly1/i0;->D:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    .line 34
    iget-object p1, p0, Lb2/q;->n:Lb2/a;

    if-nez p1, :cond_e

    .line 35
    new-instance p1, Lb2/r;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lb2/q;->n:Lb2/a;

    goto :goto_0

    .line 36
    :cond_e
    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 37
    :cond_f
    sget-object v0, Ly1/i0;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    .line 38
    iget-object p1, p0, Lb2/q;->k:Lb2/d;

    if-nez p1, :cond_10

    .line 39
    new-instance p1, Lb2/d;

    new-instance v0, Ll2/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ll2/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lb2/d;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lb2/q;->k:Lb2/d;

    .line 40
    :cond_10
    iget-object p1, p0, Lb2/q;->k:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    goto :goto_0

    .line 41
    :cond_11
    sget-object v0, Ly1/i0;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_13

    .line 42
    iget-object p1, p0, Lb2/q;->l:Lb2/d;

    if-nez p1, :cond_12

    .line 43
    new-instance p1, Lb2/d;

    new-instance v0, Ll2/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ll2/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lb2/d;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lb2/q;->l:Lb2/d;

    .line 44
    :cond_12
    iget-object p1, p0, Lb2/q;->l:Lb2/d;

    invoke-virtual {p1, p2}, Lb2/a;->k(Ll2/c;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lb2/q;->e:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()Landroid/graphics/Matrix;
    .locals 13

    .line 1
    iget-object v0, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lb2/q;->g:Lb2/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    .line 4
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    .line 5
    :cond_0
    iget-object v3, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lb2/q;->i:Lb2/a;

    if-eqz v0, :cond_3

    .line 7
    instance-of v2, v0, Lb2/r;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 9
    :cond_2
    check-cast v0, Lb2/d;

    invoke-virtual {v0}, Lb2/d;->l()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 11
    :cond_3
    iget-object v0, p0, Lb2/q;->k:Lb2/d;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 12
    iget-object v3, p0, Lb2/q;->l:Lb2/d;

    const/high16 v4, 0x42b40000    # 90.0f

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lb2/d;->l()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 13
    :goto_1
    iget-object v5, p0, Lb2/q;->l:Lb2/d;

    if-nez v5, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lb2/d;->l()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 14
    :goto_2
    invoke-virtual {v0}, Lb2/d;->l()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 15
    invoke-virtual {p0}, Lb2/q;->d()V

    .line 16
    iget-object v5, p0, Lb2/q;->e:[F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v7, 0x1

    .line 17
    aput v4, v5, v7

    neg-float v8, v4

    const/4 v9, 0x3

    .line 18
    aput v8, v5, v9

    const/4 v10, 0x4

    .line 19
    aput v3, v5, v10

    const/16 v11, 0x8

    .line 20
    aput v2, v5, v11

    .line 21
    iget-object v12, p0, Lb2/q;->b:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 22
    invoke-virtual {p0}, Lb2/q;->d()V

    .line 23
    iget-object v5, p0, Lb2/q;->e:[F

    aput v2, v5, v6

    .line 24
    aput v0, v5, v9

    .line 25
    aput v2, v5, v10

    .line 26
    aput v2, v5, v11

    .line 27
    iget-object v0, p0, Lb2/q;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 28
    invoke-virtual {p0}, Lb2/q;->d()V

    .line 29
    iget-object v0, p0, Lb2/q;->e:[F

    aput v3, v0, v6

    .line 30
    aput v8, v0, v7

    .line 31
    aput v4, v0, v9

    .line 32
    aput v3, v0, v10

    .line 33
    aput v2, v0, v11

    .line 34
    iget-object v3, p0, Lb2/q;->d:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 35
    iget-object v0, p0, Lb2/q;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lb2/q;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 36
    iget-object v0, p0, Lb2/q;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lb2/q;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 37
    iget-object v0, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lb2/q;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 38
    :cond_6
    iget-object v0, p0, Lb2/q;->h:Lb2/a;

    if-eqz v0, :cond_8

    .line 39
    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/d;

    .line 40
    iget v3, v0, Ll2/d;->a:F

    cmpl-float v4, v3, v2

    if-nez v4, :cond_7

    .line 41
    iget v4, v0, Ll2/d;->b:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_8

    .line 42
    :cond_7
    iget-object v2, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    .line 43
    iget v0, v0, Ll2/d;->b:F

    .line 44
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 45
    :cond_8
    iget-object v0, p0, Lb2/q;->f:Lb2/a;

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 47
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_9

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_a

    .line 48
    :cond_9
    iget-object v1, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 49
    :cond_a
    iget-object v0, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final f(F)Landroid/graphics/Matrix;
    .locals 9

    .line 1
    iget-object v0, p0, Lb2/q;->g:Lb2/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 2
    :goto_0
    iget-object v2, p0, Lb2/q;->h:Lb2/a;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll2/d;

    .line 3
    :goto_1
    iget-object v3, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    .line 4
    iget-object v3, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 5
    iget-object v0, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    .line 6
    iget v3, v2, Ll2/d;->a:F

    float-to-double v3, v3

    float-to-double v5, p1

    .line 7
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 8
    iget v2, v2, Ll2/d;->b:F

    float-to-double v7, v2

    .line 9
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 11
    :cond_3
    iget-object v0, p0, Lb2/q;->i:Lb2/a;

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 13
    iget-object v2, p0, Lb2/q;->f:Lb2/a;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 14
    :goto_2
    iget-object v2, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 15
    :cond_7
    iget-object p1, p0, Lb2/q;->a:Landroid/graphics/Matrix;

    return-object p1
.end method
