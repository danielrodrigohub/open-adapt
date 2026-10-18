.class public final Lg2/j;
.super Lg2/b;
.source "TextLayer.java"


# instance fields
.field public final D:Ljava/lang/StringBuilder;

.field public final E:Landroid/graphics/RectF;

.field public final F:Landroid/graphics/Matrix;

.field public final G:Lg2/j$a;

.field public final H:Lg2/j$b;

.field public final I:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ld2/d;",
            "Ljava/util/List<",
            "La2/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final J:Lp/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final K:Lb2/p;

.field public final L:Ly1/e0;

.field public final M:Ly1/i;

.field public N:Lb2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public O:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public P:Lb2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public Q:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public R:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public S:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public T:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public U:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public V:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public W:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/f;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lg2/b;-><init>(Ly1/e0;Lg2/f;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lg2/j;->D:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg2/j;->E:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg2/j;->F:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Lg2/j$a;

    invoke-direct {v0}, Lg2/j$a;-><init>()V

    iput-object v0, p0, Lg2/j;->G:Lg2/j$a;

    .line 6
    new-instance v0, Lg2/j$b;

    invoke-direct {v0}, Lg2/j$b;-><init>()V

    iput-object v0, p0, Lg2/j;->H:Lg2/j$b;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg2/j;->I:Ljava/util/HashMap;

    .line 8
    new-instance v0, Lp/d;

    invoke-direct {v0}, Lp/d;-><init>()V

    iput-object v0, p0, Lg2/j;->J:Lp/d;

    .line 9
    iput-object p1, p0, Lg2/j;->L:Ly1/e0;

    .line 10
    iget-object p1, p2, Lg2/f;->b:Ly1/i;

    .line 11
    iput-object p1, p0, Lg2/j;->M:Ly1/i;

    .line 12
    iget-object p1, p2, Lg2/f;->q:Le2/j;

    .line 13
    new-instance v0, Lb2/p;

    iget-object p1, p1, Le2/m;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lb2/p;-><init>(Ljava/util/List;)V

    .line 14
    iput-object v0, p0, Lg2/j;->K:Lb2/p;

    .line 15
    invoke-virtual {v0, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 16
    invoke-virtual {p0, v0}, Lg2/b;->f(Lb2/a;)V

    .line 17
    iget-object p1, p2, Lg2/f;->r:Lq/c;

    if-eqz p1, :cond_0

    .line 18
    iget-object p2, p1, Lq/c;->a:Ljava/lang/Object;

    check-cast p2, Le2/a;

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Le2/a;->a()Lb2/a;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lb2/b;

    iput-object v0, p0, Lg2/j;->N:Lb2/b;

    .line 20
    invoke-virtual {p2, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 21
    iget-object p2, p0, Lg2/j;->N:Lb2/b;

    invoke-virtual {p0, p2}, Lg2/b;->f(Lb2/a;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 22
    iget-object p2, p1, Lq/c;->b:Ljava/lang/Object;

    check-cast p2, Le2/a;

    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p2}, Le2/a;->a()Lb2/a;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lb2/b;

    iput-object v0, p0, Lg2/j;->P:Lb2/b;

    .line 24
    invoke-virtual {p2, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 25
    iget-object p2, p0, Lg2/j;->P:Lb2/b;

    invoke-virtual {p0, p2}, Lg2/b;->f(Lb2/a;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 26
    iget-object p2, p1, Lq/c;->c:Ljava/lang/Object;

    check-cast p2, Le2/b;

    if-eqz p2, :cond_2

    .line 27
    invoke-virtual {p2}, Le2/b;->a()Lb2/a;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lb2/d;

    iput-object v0, p0, Lg2/j;->R:Lb2/d;

    .line 28
    invoke-virtual {p2, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 29
    iget-object p2, p0, Lg2/j;->R:Lb2/d;

    invoke-virtual {p0, p2}, Lg2/b;->f(Lb2/a;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 30
    iget-object p1, p1, Lq/c;->d:Ljava/lang/Object;

    check-cast p1, Le2/b;

    if-eqz p1, :cond_3

    .line 31
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lb2/d;

    iput-object p2, p0, Lg2/j;->T:Lb2/d;

    .line 32
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 33
    iget-object p1, p0, Lg2/j;->T:Lb2/d;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\r\n"

    const-string v1, "\r"

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lg2/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lg2/j;->M:Ly1/i;

    .line 3
    iget-object p2, p2, Ly1/i;->j:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lg2/j;->M:Ly1/i;

    .line 5
    iget-object p3, p3, Ly1/i;->j:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ll2/c;)V
    .locals 3
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
    sget-object v0, Ly1/i0;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lg2/j;->O:Lb2/r;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_0
    if-nez p2, :cond_1

    .line 5
    iput-object v1, p0, Lg2/j;->O:Lb2/r;

    goto/16 :goto_0

    .line 6
    :cond_1
    new-instance p1, Lb2/r;

    .line 7
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lg2/j;->O:Lb2/r;

    .line 9
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 10
    iget-object p1, p0, Lg2/j;->O:Lb2/r;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    sget-object v0, Ly1/i0;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    .line 12
    iget-object p1, p0, Lg2/j;->Q:Lb2/r;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_3
    if-nez p2, :cond_4

    .line 14
    iput-object v1, p0, Lg2/j;->Q:Lb2/r;

    goto/16 :goto_0

    .line 15
    :cond_4
    new-instance p1, Lb2/r;

    .line 16
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lg2/j;->Q:Lb2/r;

    .line 18
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 19
    iget-object p1, p0, Lg2/j;->Q:Lb2/r;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    goto/16 :goto_0

    .line 20
    :cond_5
    sget-object v0, Ly1/i0;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 21
    iget-object p1, p0, Lg2/j;->S:Lb2/r;

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_6
    if-nez p2, :cond_7

    .line 23
    iput-object v1, p0, Lg2/j;->S:Lb2/r;

    goto/16 :goto_0

    .line 24
    :cond_7
    new-instance p1, Lb2/r;

    .line 25
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lg2/j;->S:Lb2/r;

    .line 27
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 28
    iget-object p1, p0, Lg2/j;->S:Lb2/r;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    goto/16 :goto_0

    .line 29
    :cond_8
    sget-object v0, Ly1/i0;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 30
    iget-object p1, p0, Lg2/j;->U:Lb2/r;

    if-eqz p1, :cond_9

    .line 31
    invoke-virtual {p0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_9
    if-nez p2, :cond_a

    .line 32
    iput-object v1, p0, Lg2/j;->U:Lb2/r;

    goto :goto_0

    .line 33
    :cond_a
    new-instance p1, Lb2/r;

    .line 34
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lg2/j;->U:Lb2/r;

    .line 36
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 37
    iget-object p1, p0, Lg2/j;->U:Lb2/r;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 38
    :cond_b
    sget-object v0, Ly1/i0;->F:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    .line 39
    iget-object p1, p0, Lg2/j;->V:Lb2/r;

    if-eqz p1, :cond_c

    .line 40
    invoke-virtual {p0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_c
    if-nez p2, :cond_d

    .line 41
    iput-object v1, p0, Lg2/j;->V:Lb2/r;

    goto :goto_0

    .line 42
    :cond_d
    new-instance p1, Lb2/r;

    .line 43
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lg2/j;->V:Lb2/r;

    .line 45
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 46
    iget-object p1, p0, Lg2/j;->V:Lb2/r;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 47
    :cond_e
    sget-object v0, Ly1/i0;->M:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_11

    .line 48
    iget-object p1, p0, Lg2/j;->W:Lb2/r;

    if-eqz p1, :cond_f

    .line 49
    invoke-virtual {p0, p1}, Lg2/b;->s(Lb2/a;)V

    :cond_f
    if-nez p2, :cond_10

    .line 50
    iput-object v1, p0, Lg2/j;->W:Lb2/r;

    goto :goto_0

    .line 51
    :cond_10
    new-instance p1, Lb2/r;

    .line 52
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lg2/j;->W:Lb2/r;

    .line 54
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 55
    iget-object p1, p0, Lg2/j;->W:Lb2/r;

    invoke-virtual {p0, p1}, Lg2/b;->f(Lb2/a;)V

    goto :goto_0

    .line 56
    :cond_11
    sget-object v0, Ly1/i0;->O:Ljava/lang/String;

    if-ne p1, v0, :cond_12

    .line 57
    iget-object p1, p0, Lg2/j;->K:Lb2/p;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Ll2/b;

    invoke-direct {v0}, Ll2/b;-><init>()V

    .line 59
    new-instance v1, Ld2/b;

    invoke-direct {v1}, Ld2/b;-><init>()V

    .line 60
    new-instance v2, Lb2/o;

    invoke-direct {v2, v0, p2, v1}, Lb2/o;-><init>(Ll2/b;Ll2/c;Ld2/b;)V

    invoke-virtual {p1, v2}, Lb2/a;->k(Ll2/c;)V

    :cond_12
    :goto_0
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v2, v0, Lg2/j;->L:Ly1/e0;

    .line 3
    iget-object v2, v2, Ly1/e0;->h:Ly1/i;

    .line 4
    iget-object v2, v2, Ly1/i;->g:Lp/h;

    .line 5
    iget v2, v2, Lp/h;->j:I

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 6
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 7
    :cond_1
    iget-object v2, v0, Lg2/j;->K:Lb2/p;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/b;

    .line 8
    iget-object v4, v0, Lg2/j;->M:Ly1/i;

    .line 9
    iget-object v4, v4, Ly1/i;->e:Ljava/util/Map;

    .line 10
    iget-object v5, v2, Ld2/b;->b:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld2/c;

    if-nez v4, :cond_2

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 12
    :cond_2
    iget-object v5, v0, Lg2/j;->O:Lb2/r;

    if-eqz v5, :cond_3

    .line 13
    iget-object v6, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v5}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v5, v0, Lg2/j;->N:Lb2/b;

    if-eqz v5, :cond_4

    .line 15
    iget-object v6, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v5}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v5, v0, Lg2/j;->G:Lg2/j$a;

    iget v6, v2, Ld2/b;->h:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    :goto_1
    iget-object v5, v0, Lg2/j;->Q:Lb2/r;

    if-eqz v5, :cond_5

    .line 18
    iget-object v6, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v5}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v5, v0, Lg2/j;->P:Lb2/b;

    if-eqz v5, :cond_6

    .line 20
    iget-object v6, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v5}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 21
    :cond_6
    iget-object v5, v0, Lg2/j;->H:Lg2/j$b;

    iget v6, v2, Ld2/b;->i:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    :goto_2
    iget-object v5, v0, Lg2/b;->x:Lb2/q;

    .line 23
    iget-object v5, v5, Lb2/q;->j:Lb2/a;

    const/16 v6, 0x64

    if-nez v5, :cond_7

    move v5, v6

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {v5}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_3
    mul-int/lit16 v5, v5, 0xff

    .line 25
    div-int/2addr v5, v6

    .line 26
    iget-object v6, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    iget-object v6, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    iget-object v5, v0, Lg2/j;->S:Lb2/r;

    if-eqz v5, :cond_8

    .line 29
    iget-object v6, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v5}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    .line 30
    :cond_8
    iget-object v5, v0, Lg2/j;->R:Lb2/d;

    if-eqz v5, :cond_9

    .line 31
    iget-object v6, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v5}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    .line 32
    :cond_9
    invoke-static/range {p2 .. p2}, Lk2/g;->d(Landroid/graphics/Matrix;)F

    move-result v5

    .line 33
    iget-object v6, v0, Lg2/j;->H:Lg2/j$b;

    iget v7, v2, Ld2/b;->j:F

    invoke-static {}, Lk2/g;->c()F

    move-result v8

    mul-float/2addr v8, v7

    mul-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    :goto_4
    iget-object v5, v0, Lg2/j;->L:Ly1/e0;

    .line 35
    iget-object v5, v5, Ly1/e0;->h:Ly1/i;

    .line 36
    iget-object v5, v5, Ly1/i;->g:Lp/h;

    .line 37
    iget v5, v5, Lp/h;->j:I

    if-lez v5, :cond_a

    move v5, v3

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v5, :cond_16

    .line 38
    iget-object v3, v0, Lg2/j;->V:Lb2/r;

    if-eqz v3, :cond_b

    .line 39
    invoke-virtual {v3}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_6

    .line 40
    :cond_b
    iget v3, v2, Ld2/b;->c:F

    :goto_6
    div-float/2addr v3, v6

    .line 41
    invoke-static/range {p2 .. p2}, Lk2/g;->d(Landroid/graphics/Matrix;)F

    move-result v5

    .line 42
    iget-object v6, v2, Ld2/b;->a:Ljava/lang/String;

    .line 43
    iget v7, v2, Ld2/b;->f:F

    invoke-static {}, Lk2/g;->c()F

    move-result v8

    mul-float/2addr v8, v7

    .line 44
    invoke-virtual {v0, v6}, Lg2/j;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 45
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v7, :cond_30

    .line 46
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 47
    :goto_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_d

    .line 48
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 49
    iget-object v14, v4, Ld2/c;->a:Ljava/lang/String;

    .line 50
    iget-object v15, v4, Ld2/c;->b:Ljava/lang/String;

    .line 51
    invoke-static {v13, v14, v15}, Ld2/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 52
    iget-object v14, v0, Lg2/j;->M:Ly1/i;

    .line 53
    iget-object v14, v14, Ly1/i;->g:Lp/h;

    const/4 v15, 0x0

    .line 54
    invoke-virtual {v14, v13, v15}, Lp/h;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 55
    check-cast v13, Ld2/d;

    if-nez v13, :cond_c

    move v13, v8

    move/from16 v16, v9

    move-object/from16 p3, v10

    goto :goto_9

    :cond_c
    float-to-double v14, v11

    move-object/from16 p3, v10

    .line 56
    iget-wide v10, v13, Ld2/d;->c:D

    move v13, v8

    move/from16 v16, v9

    float-to-double v8, v3

    mul-double/2addr v10, v8

    .line 57
    invoke-static {}, Lk2/g;->c()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v10, v8

    float-to-double v8, v5

    mul-double/2addr v10, v8

    add-double/2addr v10, v14

    double-to-float v8, v10

    move v11, v8

    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, p3

    move v8, v13

    move/from16 v9, v16

    goto :goto_8

    :cond_d
    move v13, v8

    move/from16 v16, v9

    move-object/from16 p3, v10

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    iget v8, v2, Ld2/b;->d:I

    invoke-virtual {v0, v8, v1, v11}, Lg2/j;->x(ILandroid/graphics/Canvas;F)V

    add-int/lit8 v8, v7, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v13

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move/from16 v9, v16

    int-to-float v10, v9

    mul-float/2addr v10, v13

    sub-float/2addr v10, v8

    const/4 v8, 0x0

    .line 60
    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v8, 0x0

    .line 61
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_15

    move-object/from16 v10, p3

    .line 62
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 63
    iget-object v12, v4, Ld2/c;->a:Ljava/lang/String;

    .line 64
    iget-object v14, v4, Ld2/c;->b:Ljava/lang/String;

    .line 65
    invoke-static {v11, v12, v14}, Ld2/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 66
    iget-object v12, v0, Lg2/j;->M:Ly1/i;

    .line 67
    iget-object v12, v12, Ly1/i;->g:Lp/h;

    const/4 v14, 0x0

    .line 68
    invoke-virtual {v12, v11, v14}, Lp/h;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 69
    check-cast v11, Ld2/d;

    if-nez v11, :cond_e

    move-object/from16 v14, p2

    move-object/from16 p3, v6

    move/from16 v17, v7

    move-object/from16 v16, v10

    goto/16 :goto_10

    .line 70
    :cond_e
    iget-object v12, v0, Lg2/j;->I:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 71
    iget-object v12, v0, Lg2/j;->I:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object/from16 p3, v6

    move/from16 v17, v7

    move-object/from16 v16, v10

    goto :goto_c

    .line 72
    :cond_f
    iget-object v12, v11, Ld2/d;->a:Ljava/util/List;

    .line 73
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    .line 74
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x0

    move-object/from16 p3, v6

    move/from16 v6, v16

    :goto_b
    if-ge v6, v14, :cond_10

    .line 75
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v7

    move-object/from16 v7, v16

    check-cast v7, Lf2/n;

    move-object/from16 v16, v10

    .line 76
    new-instance v10, La2/c;

    move-object/from16 v18, v12

    iget-object v12, v0, Lg2/j;->L:Ly1/e0;

    invoke-direct {v10, v12, v0, v7}, La2/c;-><init>(Ly1/e0;Lg2/b;Lf2/n;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v16

    move/from16 v7, v17

    move-object/from16 v12, v18

    goto :goto_b

    :cond_10
    move/from16 v17, v7

    move-object/from16 v16, v10

    .line 77
    iget-object v6, v0, Lg2/j;->I:Ljava/util/HashMap;

    invoke-virtual {v6, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v15

    :goto_c
    const/4 v6, 0x0

    .line 78
    :goto_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_12

    .line 79
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La2/c;

    invoke-virtual {v7}, La2/c;->a()Landroid/graphics/Path;

    move-result-object v7

    .line 80
    iget-object v10, v0, Lg2/j;->E:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 81
    iget-object v10, v0, Lg2/j;->F:Landroid/graphics/Matrix;

    move-object/from16 v14, p2

    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 82
    iget-object v10, v0, Lg2/j;->F:Landroid/graphics/Matrix;

    iget v15, v2, Ld2/b;->g:F

    neg-float v15, v15

    invoke-static {}, Lk2/g;->c()F

    move-result v18

    mul-float v15, v15, v18

    move-object/from16 v18, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 83
    iget-object v10, v0, Lg2/j;->F:Landroid/graphics/Matrix;

    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 84
    iget-object v10, v0, Lg2/j;->F:Landroid/graphics/Matrix;

    invoke-virtual {v7, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 85
    iget-boolean v10, v2, Ld2/b;->k:Z

    if-eqz v10, :cond_11

    .line 86
    iget-object v10, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v0, v7, v10, v1}, Lg2/j;->z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 87
    iget-object v10, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v0, v7, v10, v1}, Lg2/j;->z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_e

    .line 88
    :cond_11
    iget-object v10, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v0, v7, v10, v1}, Lg2/j;->z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 89
    iget-object v10, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v0, v7, v10, v1}, Lg2/j;->z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v18

    goto :goto_d

    :cond_12
    move-object/from16 v14, p2

    .line 90
    iget-wide v6, v11, Ld2/d;->c:D

    double-to-float v6, v6

    mul-float/2addr v6, v3

    .line 91
    invoke-static {}, Lk2/g;->c()F

    move-result v7

    mul-float/2addr v7, v6

    mul-float/2addr v7, v5

    .line 92
    iget v6, v2, Ld2/b;->e:I

    int-to-float v6, v6

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v6, v10

    .line 93
    iget-object v10, v0, Lg2/j;->U:Lb2/r;

    if-eqz v10, :cond_13

    .line 94
    invoke-virtual {v10}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_f

    .line 95
    :cond_13
    iget-object v10, v0, Lg2/j;->T:Lb2/d;

    if-eqz v10, :cond_14

    .line 96
    invoke-virtual {v10}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_f
    add-float/2addr v6, v10

    :cond_14
    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    const/4 v7, 0x0

    .line 97
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_10
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p3

    move-object/from16 p3, v16

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_15
    move-object/from16 v14, p2

    move-object/from16 p3, v6

    move/from16 v17, v7

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v9, v9, 0x1

    move v8, v13

    goto/16 :goto_7

    .line 99
    :cond_16
    iget-object v5, v0, Lg2/j;->W:Lb2/r;

    if-eqz v5, :cond_17

    .line 100
    invoke-virtual {v5}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_17

    goto/16 :goto_17

    .line 101
    :cond_17
    iget-object v5, v0, Lg2/j;->L:Ly1/e0;

    .line 102
    iget-object v7, v4, Ld2/c;->a:Ljava/lang/String;

    .line 103
    iget-object v4, v4, Ld2/c;->b:Ljava/lang/String;

    .line 104
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v8

    if-nez v8, :cond_18

    const/4 v5, 0x0

    goto :goto_11

    .line 105
    :cond_18
    iget-object v8, v5, Ly1/e0;->s:Lc2/a;

    if-nez v8, :cond_19

    .line 106
    new-instance v8, Lc2/a;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v9

    invoke-direct {v8, v9}, Lc2/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v8, v5, Ly1/e0;->s:Lc2/a;

    .line 107
    :cond_19
    iget-object v5, v5, Ly1/e0;->s:Lc2/a;

    :goto_11
    if-eqz v5, :cond_20

    .line 108
    iget-object v8, v5, Lc2/a;->a:Ly0/r;

    .line 109
    iput-object v7, v8, Ly0/r;->b:Ljava/lang/Object;

    .line 110
    iput-object v4, v8, Ly0/r;->c:Ljava/lang/Object;

    .line 111
    iget-object v9, v5, Lc2/a;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    if-eqz v8, :cond_1a

    goto :goto_15

    .line 112
    :cond_1a
    iget-object v8, v5, Lc2/a;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    if-eqz v8, :cond_1b

    goto :goto_12

    :cond_1b
    const-string v8, "fonts/"

    .line 113
    invoke-static {v8, v7}, Landroidx/fragment/app/r0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 114
    iget-object v9, v5, Lc2/a;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 115
    iget-object v9, v5, Lc2/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v9, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 116
    iget-object v9, v5, Lc2/a;->c:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    const-string v7, "Italic"

    .line 117
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v9, "Bold"

    .line 118
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v7, :cond_1c

    if-eqz v4, :cond_1c

    const/4 v4, 0x3

    goto :goto_13

    :cond_1c
    if-eqz v7, :cond_1d

    const/4 v4, 0x2

    goto :goto_13

    :cond_1d
    if-eqz v4, :cond_1e

    move v4, v3

    goto :goto_13

    :cond_1e
    const/4 v4, 0x0

    .line 119
    :goto_13
    invoke-virtual {v8}, Landroid/graphics/Typeface;->getStyle()I

    move-result v7

    if-ne v7, v4, :cond_1f

    goto :goto_14

    .line 120
    :cond_1f
    invoke-static {v8, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    move-object v8, v4

    .line 121
    :goto_14
    iget-object v4, v5, Lc2/a;->b:Ljava/util/HashMap;

    iget-object v5, v5, Lc2/a;->a:Ly0/r;

    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    move-object v5, v8

    goto :goto_16

    :cond_20
    const/4 v4, 0x0

    move-object v5, v4

    :goto_16
    if-eqz v5, :cond_21

    goto :goto_17

    :cond_21
    const/4 v5, 0x0

    :goto_17
    if-nez v5, :cond_22

    goto/16 :goto_24

    .line 122
    :cond_22
    iget-object v4, v2, Ld2/b;->a:Ljava/lang/String;

    .line 123
    iget-object v7, v0, Lg2/j;->L:Ly1/e0;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v7, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 125
    iget-object v5, v0, Lg2/j;->V:Lb2/r;

    if-eqz v5, :cond_23

    .line 126
    invoke-virtual {v5}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_18

    .line 127
    :cond_23
    iget v5, v2, Ld2/b;->c:F

    .line 128
    :goto_18
    iget-object v7, v0, Lg2/j;->G:Lg2/j$a;

    invoke-static {}, Lk2/g;->c()F

    move-result v8

    mul-float/2addr v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    iget-object v7, v0, Lg2/j;->H:Lg2/j$b;

    iget-object v8, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 130
    iget-object v7, v0, Lg2/j;->H:Lg2/j$b;

    iget-object v8, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    iget v7, v2, Ld2/b;->f:F

    invoke-static {}, Lk2/g;->c()F

    move-result v8

    mul-float/2addr v8, v7

    .line 132
    iget v7, v2, Ld2/b;->e:I

    int-to-float v7, v7

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v7, v9

    .line 133
    iget-object v9, v0, Lg2/j;->U:Lb2/r;

    if-eqz v9, :cond_24

    .line 134
    invoke-virtual {v9}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_19

    .line 135
    :cond_24
    iget-object v9, v0, Lg2/j;->T:Lb2/d;

    if-eqz v9, :cond_25

    .line 136
    invoke-virtual {v9}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_19
    add-float/2addr v7, v9

    .line 137
    :cond_25
    invoke-static {}, Lk2/g;->c()F

    move-result v9

    mul-float/2addr v9, v7

    mul-float/2addr v9, v5

    div-float/2addr v9, v6

    .line 138
    invoke-virtual {v0, v4}, Lg2/j;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 139
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_30

    .line 140
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 141
    iget-object v10, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    int-to-float v3, v11

    mul-float/2addr v3, v9

    add-float/2addr v3, v10

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    iget v10, v2, Ld2/b;->d:I

    invoke-virtual {v0, v10, v1, v3}, Lg2/j;->x(ILandroid/graphics/Canvas;F)V

    add-int/lit8 v3, v5, -0x1

    int-to-float v3, v3

    mul-float/2addr v3, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v3, v10

    int-to-float v10, v6

    mul-float/2addr v10, v8

    sub-float/2addr v10, v3

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v1, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    .line 145
    :goto_1b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_2f

    .line 146
    invoke-virtual {v7, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 147
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v11, v3

    .line 148
    :goto_1c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_29

    .line 149
    invoke-virtual {v7, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 150
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v14, 0x10

    if-eq v13, v14, :cond_27

    .line 151
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v14, 0x1b

    if-eq v13, v14, :cond_27

    .line 152
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/4 v14, 0x6

    if-eq v13, v14, :cond_27

    .line 153
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v14, 0x1c

    if-eq v13, v14, :cond_27

    .line 154
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_27

    .line 155
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v14, 0x13

    if-ne v13, v14, :cond_26

    goto :goto_1d

    :cond_26
    const/4 v13, 0x0

    goto :goto_1e

    :cond_27
    :goto_1d
    const/4 v13, 0x1

    :goto_1e
    if-nez v13, :cond_28

    goto :goto_1f

    .line 156
    :cond_28
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v11, v13

    mul-int/lit8 v10, v10, 0x1f

    add-int/2addr v10, v12

    goto :goto_1c

    .line 157
    :cond_29
    :goto_1f
    iget-object v12, v0, Lg2/j;->J:Lp/d;

    int-to-long v13, v10

    .line 158
    iget-boolean v10, v12, Lp/d;->h:Z

    if-eqz v10, :cond_2a

    .line 159
    invoke-virtual {v12}, Lp/d;->c()V

    .line 160
    :cond_2a
    iget-object v10, v12, Lp/d;->i:[J

    iget v12, v12, Lp/d;->k:I

    invoke-static {v10, v12, v13, v14}, Landroidx/lifecycle/k0;->f([JIJ)I

    move-result v10

    if-ltz v10, :cond_2b

    const/4 v10, 0x1

    goto :goto_20

    :cond_2b
    const/4 v10, 0x0

    :goto_20
    if-eqz v10, :cond_2c

    .line 161
    iget-object v10, v0, Lg2/j;->J:Lp/d;

    const/4 v11, 0x0

    .line 162
    invoke-virtual {v10, v13, v14, v11}, Lp/d;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 163
    check-cast v10, Ljava/lang/String;

    goto :goto_22

    .line 164
    :cond_2c
    iget-object v10, v0, Lg2/j;->D:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    move v10, v3

    :goto_21
    if-ge v10, v11, :cond_2d

    .line 165
    invoke-virtual {v7, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 166
    iget-object v15, v0, Lg2/j;->D:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_21

    .line 168
    :cond_2d
    iget-object v10, v0, Lg2/j;->D:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 169
    iget-object v11, v0, Lg2/j;->J:Lp/d;

    invoke-virtual {v11, v13, v14, v10}, Lp/d;->f(JLjava/lang/Object;)V

    .line 170
    :goto_22
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v3, v11

    .line 171
    iget-boolean v11, v2, Ld2/b;->k:Z

    if-eqz v11, :cond_2e

    .line 172
    iget-object v11, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v0, v10, v11, v1}, Lg2/j;->y(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 173
    iget-object v11, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v0, v10, v11, v1}, Lg2/j;->y(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_23

    .line 174
    :cond_2e
    iget-object v11, v0, Lg2/j;->H:Lg2/j$b;

    invoke-virtual {v0, v10, v11, v1}, Lg2/j;->y(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 175
    iget-object v11, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v0, v10, v11, v1}, Lg2/j;->y(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 176
    :goto_23
    iget-object v11, v0, Lg2/j;->G:Lg2/j$a;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    add-float/2addr v10, v9

    const/4 v11, 0x0

    .line 177
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1b

    .line 178
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    goto/16 :goto_1a

    .line 179
    :cond_30
    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final x(ILandroid/graphics/Canvas;F)V
    .locals 2

    if-eqz p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 1
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    neg-float p1, p3

    .line 2
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final y(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
