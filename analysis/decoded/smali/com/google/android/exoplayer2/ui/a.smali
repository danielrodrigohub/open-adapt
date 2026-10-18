.class public final Lcom/google/android/exoplayer2/ui/a;
.super Landroid/view/View;
.source "CanvasSubtitleOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/SubtitleView$a;


# instance fields
.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk5/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz4/a;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:F

.field public l:Lk5/b;

.field public m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/a;->h:Ljava/util/ArrayList;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/a;->i:Ljava/util/List;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/ui/a;->j:I

    const p1, 0x3d5a511a

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/ui/a;->k:F

    .line 6
    sget-object p1, Lk5/b;->g:Lk5/b;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/a;->l:Lk5/b;

    const p1, 0x3da3d70a

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lk5/b;FIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz4/a;",
            ">;",
            "Lk5/b;",
            "FIF)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/a;->i:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/a;->l:Lk5/b;

    .line 3
    iput p3, p0, Lcom/google/android/exoplayer2/ui/a;->k:F

    .line 4
    iput p4, p0, Lcom/google/android/exoplayer2/ui/a;->j:I

    .line 5
    iput p5, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/a;->h:Ljava/util/ArrayList;

    new-instance p3, Lk5/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lk5/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 44

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/a;->i:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int v6, v2, v6

    if-le v6, v4, :cond_2e

    if-gt v5, v3, :cond_1

    goto/16 :goto_1d

    :cond_1
    sub-int v7, v6, v4

    .line 8
    iget v8, v0, Lcom/google/android/exoplayer2/ui/a;->j:I

    iget v9, v0, Lcom/google/android/exoplayer2/ui/a;->k:F

    .line 9
    invoke-static {v8, v9, v2, v7}, Lk5/e;->b(IFII)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v10, v8, v9

    if-gtz v10, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v13, p1

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_2e

    .line 11
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz4/a;

    .line 12
    iget v15, v14, Lz4/a;->w:I

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v11, -0x80000000

    if-eq v15, v11, :cond_6

    .line 13
    iget-object v15, v14, Lz4/a;->h:Ljava/lang/CharSequence;

    .line 14
    iget-object v11, v14, Lz4/a;->k:Landroid/graphics/Bitmap;

    .line 15
    iget-object v9, v14, Lz4/a;->j:Landroid/text/Layout$Alignment;

    move-object/from16 v35, v1

    .line 16
    iget v1, v14, Lz4/a;->n:I

    move/from16 v17, v1

    .line 17
    iget v1, v14, Lz4/a;->u:I

    move/from16 v36, v10

    .line 18
    iget v10, v14, Lz4/a;->v:F

    move-object/from16 v37, v13

    .line 19
    iget v13, v14, Lz4/a;->q:F

    move/from16 v38, v6

    .line 20
    iget v6, v14, Lz4/a;->r:F

    move/from16 v39, v5

    .line 21
    iget-boolean v5, v14, Lz4/a;->s:Z

    move/from16 v40, v4

    .line 22
    iget v4, v14, Lz4/a;->t:I

    move/from16 v41, v3

    .line 23
    iget v3, v14, Lz4/a;->w:I

    move/from16 v42, v8

    .line 24
    iget v8, v14, Lz4/a;->x:F

    const v25, -0x800001

    const/16 v19, 0x0

    move/from16 v43, v12

    .line 25
    iget v12, v14, Lz4/a;->m:I

    if-nez v12, :cond_3

    .line 26
    iget v12, v14, Lz4/a;->l:F

    sub-float v12, v16, v12

    move/from16 v22, v12

    const/16 v23, 0x0

    goto :goto_1

    .line 27
    :cond_3
    iget v12, v14, Lz4/a;->l:F

    neg-float v12, v12

    sub-float v12, v12, v16

    move/from16 v22, v12

    const/16 v23, 0x1

    .line 28
    :goto_1
    iget v12, v14, Lz4/a;->n:I

    if-eqz v12, :cond_5

    const/4 v14, 0x2

    if-eq v12, v14, :cond_4

    move/from16 v24, v17

    goto :goto_2

    :cond_4
    const/16 v24, 0x0

    goto :goto_2

    :cond_5
    const/16 v24, 0x2

    .line 29
    :goto_2
    new-instance v14, Lz4/a;

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    const/high16 v9, -0x80000000

    move/from16 v26, v9

    move/from16 v27, v1

    move/from16 v28, v10

    move/from16 v29, v13

    move/from16 v30, v6

    move/from16 v31, v5

    move/from16 v32, v4

    move/from16 v33, v3

    move/from16 v34, v8

    invoke-direct/range {v17 .. v34}, Lz4/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    goto :goto_3

    :cond_6
    move-object/from16 v35, v1

    move/from16 v41, v3

    move/from16 v40, v4

    move/from16 v39, v5

    move/from16 v38, v6

    move/from16 v42, v8

    move/from16 v36, v10

    move/from16 v43, v12

    move-object/from16 v37, v13

    .line 30
    :goto_3
    iget v1, v14, Lz4/a;->u:I

    iget v3, v14, Lz4/a;->v:F

    .line 31
    invoke-static {v1, v3, v2, v7}, Lk5/e;->b(IFII)F

    move-result v1

    .line 32
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/a;->h:Ljava/util/ArrayList;

    move/from16 v11, v43

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/d;

    .line 33
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/a;->l:Lk5/b;

    iget v5, v0, Lcom/google/android/exoplayer2/ui/a;->m:F

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v6, v14, Lz4/a;->k:Landroid/graphics/Bitmap;

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    const/high16 v8, -0x1000000

    if-eqz v6, :cond_a

    .line 35
    iget-object v8, v14, Lz4/a;->h:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object/from16 v9, v37

    move/from16 v15, v38

    move/from16 v13, v39

    move/from16 v12, v40

    move/from16 v10, v41

    goto/16 :goto_8

    .line 36
    :cond_8
    iget-boolean v8, v14, Lz4/a;->s:Z

    if-eqz v8, :cond_9

    iget v8, v14, Lz4/a;->t:I

    goto :goto_5

    :cond_9
    iget v8, v4, Lk5/b;->c:I

    .line 37
    :cond_a
    :goto_5
    iget-object v9, v3, Lk5/d;->i:Ljava/lang/CharSequence;

    iget-object v10, v14, Lz4/a;->h:Ljava/lang/CharSequence;

    if-eq v9, v10, :cond_c

    if-eqz v9, :cond_b

    .line 38
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v9, 0x1

    :goto_7
    if-eqz v9, :cond_11

    .line 39
    iget-object v9, v3, Lk5/d;->j:Landroid/text/Layout$Alignment;

    iget-object v10, v14, Lz4/a;->i:Landroid/text/Layout$Alignment;

    .line 40
    invoke-static {v9, v10}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v3, Lk5/d;->k:Landroid/graphics/Bitmap;

    iget-object v10, v14, Lz4/a;->k:Landroid/graphics/Bitmap;

    if-ne v9, v10, :cond_11

    iget v9, v3, Lk5/d;->l:F

    iget v10, v14, Lz4/a;->l:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_11

    iget v9, v3, Lk5/d;->m:I

    iget v10, v14, Lz4/a;->m:I

    if-ne v9, v10, :cond_11

    iget v9, v3, Lk5/d;->n:I

    .line 41
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v14, Lz4/a;->n:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, v3, Lk5/d;->o:F

    iget v10, v14, Lz4/a;->o:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_11

    iget v9, v3, Lk5/d;->p:I

    .line 42
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v14, Lz4/a;->p:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, v3, Lk5/d;->q:F

    iget v10, v14, Lz4/a;->q:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_11

    iget v9, v3, Lk5/d;->r:F

    iget v10, v14, Lz4/a;->r:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_11

    iget v9, v3, Lk5/d;->s:I

    iget v10, v4, Lk5/b;->a:I

    if-ne v9, v10, :cond_11

    iget v9, v3, Lk5/d;->t:I

    iget v10, v4, Lk5/b;->b:I

    if-ne v9, v10, :cond_11

    iget v9, v3, Lk5/d;->u:I

    if-ne v9, v8, :cond_11

    iget v9, v3, Lk5/d;->w:I

    iget v10, v4, Lk5/b;->d:I

    if-ne v9, v10, :cond_11

    iget v9, v3, Lk5/d;->v:I

    iget v10, v4, Lk5/b;->e:I

    if-ne v9, v10, :cond_11

    iget-object v9, v3, Lk5/d;->f:Landroid/text/TextPaint;

    .line 43
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    iget-object v10, v4, Lk5/b;->f:Landroid/graphics/Typeface;

    invoke-static {v9, v10}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, v3, Lk5/d;->x:F

    cmpl-float v9, v9, v42

    if-nez v9, :cond_11

    iget v9, v3, Lk5/d;->y:F

    cmpl-float v9, v9, v1

    if-nez v9, :cond_11

    iget v9, v3, Lk5/d;->z:F

    cmpl-float v9, v9, v5

    if-nez v9, :cond_11

    iget v9, v3, Lk5/d;->A:I

    move/from16 v10, v41

    if-ne v9, v10, :cond_10

    iget v9, v3, Lk5/d;->B:I

    move/from16 v12, v40

    if-ne v9, v12, :cond_f

    iget v9, v3, Lk5/d;->C:I

    move/from16 v13, v39

    if-ne v9, v13, :cond_e

    iget v9, v3, Lk5/d;->D:I

    move/from16 v15, v38

    if-ne v9, v15, :cond_d

    move-object/from16 v9, v37

    .line 44
    invoke-virtual {v3, v9, v6}, Lk5/d;->a(Landroid/graphics/Canvas;Z)V

    :goto_8
    move/from16 v26, v2

    move/from16 v27, v7

    move/from16 v41, v10

    move/from16 v43, v11

    move/from16 v40, v12

    move/from16 v39, v13

    move/from16 v38, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v9

    goto/16 :goto_1c

    :cond_d
    move-object/from16 v9, v37

    goto :goto_9

    :cond_e
    move-object/from16 v9, v37

    move/from16 v15, v38

    goto :goto_9

    :cond_f
    move-object/from16 v9, v37

    move/from16 v15, v38

    move/from16 v13, v39

    goto :goto_9

    :cond_10
    move-object/from16 v9, v37

    move/from16 v15, v38

    move/from16 v13, v39

    move/from16 v12, v40

    goto :goto_9

    :cond_11
    move-object/from16 v9, v37

    move/from16 v15, v38

    move/from16 v13, v39

    move/from16 v12, v40

    move/from16 v10, v41

    .line 45
    :goto_9
    iget-object v0, v14, Lz4/a;->h:Ljava/lang/CharSequence;

    iput-object v0, v3, Lk5/d;->i:Ljava/lang/CharSequence;

    .line 46
    iget-object v0, v14, Lz4/a;->i:Landroid/text/Layout$Alignment;

    iput-object v0, v3, Lk5/d;->j:Landroid/text/Layout$Alignment;

    .line 47
    iget-object v0, v14, Lz4/a;->k:Landroid/graphics/Bitmap;

    iput-object v0, v3, Lk5/d;->k:Landroid/graphics/Bitmap;

    .line 48
    iget v0, v14, Lz4/a;->l:F

    iput v0, v3, Lk5/d;->l:F

    .line 49
    iget v0, v14, Lz4/a;->m:I

    iput v0, v3, Lk5/d;->m:I

    .line 50
    iget v0, v14, Lz4/a;->n:I

    iput v0, v3, Lk5/d;->n:I

    .line 51
    iget v0, v14, Lz4/a;->o:F

    iput v0, v3, Lk5/d;->o:F

    .line 52
    iget v0, v14, Lz4/a;->p:I

    iput v0, v3, Lk5/d;->p:I

    .line 53
    iget v0, v14, Lz4/a;->q:F

    iput v0, v3, Lk5/d;->q:F

    .line 54
    iget v0, v14, Lz4/a;->r:F

    iput v0, v3, Lk5/d;->r:F

    .line 55
    iget v0, v4, Lk5/b;->a:I

    iput v0, v3, Lk5/d;->s:I

    .line 56
    iget v0, v4, Lk5/b;->b:I

    iput v0, v3, Lk5/d;->t:I

    .line 57
    iput v8, v3, Lk5/d;->u:I

    .line 58
    iget v0, v4, Lk5/b;->d:I

    iput v0, v3, Lk5/d;->w:I

    .line 59
    iget v0, v4, Lk5/b;->e:I

    iput v0, v3, Lk5/d;->v:I

    .line 60
    iget-object v0, v3, Lk5/d;->f:Landroid/text/TextPaint;

    iget-object v4, v4, Lk5/b;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, v42

    .line 61
    iput v0, v3, Lk5/d;->x:F

    .line 62
    iput v1, v3, Lk5/d;->y:F

    .line 63
    iput v5, v3, Lk5/d;->z:F

    .line 64
    iput v10, v3, Lk5/d;->A:I

    .line 65
    iput v12, v3, Lk5/d;->B:I

    .line 66
    iput v13, v3, Lk5/d;->C:I

    .line 67
    iput v15, v3, Lk5/d;->D:I

    if-eqz v6, :cond_28

    .line 68
    iget-object v4, v3, Lk5/d;->i:Ljava/lang/CharSequence;

    .line 69
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v4, v3, Lk5/d;->i:Ljava/lang/CharSequence;

    instance-of v5, v4, Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_12

    .line 71
    check-cast v4, Landroid/text/SpannableStringBuilder;

    goto :goto_a

    .line 72
    :cond_12
    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v5, v3, Lk5/d;->i:Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    :goto_a
    iget v5, v3, Lk5/d;->C:I

    iget v8, v3, Lk5/d;->A:I

    sub-int/2addr v5, v8

    .line 74
    iget v8, v3, Lk5/d;->D:I

    iget v14, v3, Lk5/d;->B:I

    sub-int/2addr v8, v14

    .line 75
    iget-object v14, v3, Lk5/d;->f:Landroid/text/TextPaint;

    iget v1, v3, Lk5/d;->x:F

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget v1, v3, Lk5/d;->x:F

    const/high16 v14, 0x3e000000    # 0.125f

    mul-float/2addr v1, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v1, v14

    float-to-int v1, v1

    mul-int/lit8 v14, v1, 0x2

    move/from16 v42, v0

    sub-int v0, v5, v14

    move/from16 v26, v2

    .line 77
    iget v2, v3, Lk5/d;->q:F

    const v17, -0x800001

    cmpl-float v18, v2, v17

    if-eqz v18, :cond_13

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_13
    const-string v2, "SubtitlePainter"

    if-gtz v0, :cond_14

    const-string v0, "Skipped drawing subtitle cue (insufficient space)"

    .line 78
    invoke-static {v2, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v27, v7

    move/from16 v41, v10

    move/from16 v43, v11

    move/from16 v40, v12

    move/from16 v39, v13

    move/from16 v38, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v9

    goto/16 :goto_1b

    .line 79
    :cond_14
    iget v9, v3, Lk5/d;->y:F

    const/16 v17, 0x0

    cmpl-float v9, v9, v17

    move/from16 v27, v7

    if-lez v9, :cond_15

    .line 80
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, v3, Lk5/d;->y:F

    float-to-int v7, v7

    invoke-direct {v9, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 81
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    move/from16 v41, v10

    move/from16 v40, v12

    const/high16 v10, 0xff0000

    const/4 v12, 0x0

    .line 82
    invoke-virtual {v4, v9, v12, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_15
    move/from16 v41, v10

    move/from16 v40, v12

    const/4 v12, 0x0

    .line 83
    :goto_b
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    iget v9, v3, Lk5/d;->w:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 85
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const-class v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7, v12, v9, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ForegroundColorSpan;

    .line 86
    array-length v10, v9

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v10, :cond_16

    move/from16 v18, v10

    aget-object v10, v9, v12

    .line 87
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v18

    goto :goto_c

    .line 88
    :cond_16
    iget v9, v3, Lk5/d;->t:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lez v9, :cond_19

    .line 89
    iget v9, v3, Lk5/d;->w:I

    if-eqz v9, :cond_18

    const/4 v10, 0x2

    if-ne v9, v10, :cond_17

    goto :goto_d

    .line 90
    :cond_17
    new-instance v9, Landroid/text/style/BackgroundColorSpan;

    iget v10, v3, Lk5/d;->t:I

    invoke-direct {v9, v10}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 91
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    move/from16 v39, v13

    const/high16 v12, 0xff0000

    const/4 v13, 0x0

    .line 92
    invoke-virtual {v7, v9, v13, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :cond_18
    :goto_d
    move/from16 v39, v13

    const/high16 v12, 0xff0000

    const/4 v13, 0x0

    .line 93
    new-instance v9, Landroid/text/style/BackgroundColorSpan;

    iget v10, v3, Lk5/d;->t:I

    invoke-direct {v9, v10}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 94
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 95
    invoke-virtual {v4, v9, v13, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :cond_19
    move/from16 v39, v13

    .line 96
    :goto_e
    iget-object v9, v3, Lk5/d;->j:Landroid/text/Layout$Alignment;

    if-nez v9, :cond_1a

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 97
    :cond_1a
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v12, v3, Lk5/d;->f:Landroid/text/TextPaint;

    iget v13, v3, Lk5/d;->d:F

    move/from16 v38, v15

    iget v15, v3, Lk5/d;->e:F

    const/16 v24, 0x1

    move-object/from16 v17, v10

    move-object/from16 v18, v4

    move-object/from16 v19, v12

    move/from16 v20, v0

    move-object/from16 v21, v9

    move/from16 v22, v13

    move/from16 v23, v15

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v3, Lk5/d;->E:Landroid/text/StaticLayout;

    .line 98
    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    .line 99
    iget-object v12, v3, Lk5/d;->E:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_f
    if-ge v13, v12, :cond_1b

    move/from16 v17, v12

    .line 100
    iget-object v12, v3, Lk5/d;->E:Landroid/text/StaticLayout;

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v12

    move/from16 v43, v11

    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v17

    move/from16 v11, v43

    goto :goto_f

    :cond_1b
    move/from16 v43, v11

    .line 101
    iget v11, v3, Lk5/d;->q:F

    const v12, -0x800001

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_1c

    if-ge v15, v0, :cond_1c

    goto :goto_10

    :cond_1c
    move v0, v15

    :goto_10
    add-int/2addr v0, v14

    .line 102
    iget v11, v3, Lk5/d;->o:F

    cmpl-float v13, v11, v12

    if-eqz v13, :cond_1f

    int-to-float v5, v5

    mul-float/2addr v5, v11

    .line 103
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v11, v3, Lk5/d;->A:I

    add-int/2addr v5, v11

    .line 104
    iget v12, v3, Lk5/d;->p:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1e

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1d

    goto :goto_11

    :cond_1d
    sub-int/2addr v5, v0

    goto :goto_11

    :cond_1e
    const/4 v13, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v0

    .line 105
    div-int/2addr v5, v13

    .line 106
    :goto_11
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v0, v5

    .line 107
    iget v11, v3, Lk5/d;->C:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_12

    :cond_1f
    const/4 v13, 0x2

    sub-int/2addr v5, v0

    .line 108
    div-int/2addr v5, v13

    iget v11, v3, Lk5/d;->A:I

    add-int/2addr v5, v11

    add-int/2addr v0, v5

    :goto_12
    sub-int/2addr v0, v5

    if-gtz v0, :cond_20

    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 109
    invoke-static {v2, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, p1

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1b

    .line 110
    :cond_20
    iget v2, v3, Lk5/d;->l:F

    const v11, -0x800001

    cmpl-float v11, v2, v11

    if-eqz v11, :cond_26

    .line 111
    iget v11, v3, Lk5/d;->m:I

    if-nez v11, :cond_23

    int-to-float v8, v8

    mul-float/2addr v8, v2

    .line 112
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v8, v3, Lk5/d;->B:I

    add-int/2addr v2, v8

    .line 113
    iget v8, v3, Lk5/d;->n:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_21

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_13

    :cond_21
    const/4 v12, 0x1

    if-ne v8, v12, :cond_22

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v10

    .line 114
    div-int/2addr v2, v11

    :cond_22
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_14

    .line 115
    :cond_23
    iget-object v2, v3, Lk5/d;->E:Landroid/text/StaticLayout;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget-object v8, v3, Lk5/d;->E:Landroid/text/StaticLayout;

    invoke-virtual {v8, v11}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v2, v8

    .line 116
    iget v8, v3, Lk5/d;->l:F

    const/4 v12, 0x0

    cmpl-float v13, v8, v12

    if-ltz v13, :cond_24

    int-to-float v2, v2

    mul-float/2addr v8, v2

    .line 117
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v8, v3, Lk5/d;->B:I

    add-int/2addr v2, v8

    goto :goto_14

    :cond_24
    add-float v8, v8, v16

    int-to-float v2, v2

    mul-float/2addr v8, v2

    .line 118
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v8, v3, Lk5/d;->D:I

    add-int/2addr v2, v8

    :goto_13
    sub-int/2addr v2, v10

    :goto_14
    add-int v8, v2, v10

    .line 119
    iget v13, v3, Lk5/d;->D:I

    if-le v8, v13, :cond_25

    sub-int v2, v13, v10

    goto :goto_15

    .line 120
    :cond_25
    iget v8, v3, Lk5/d;->B:I

    if-ge v2, v8, :cond_27

    goto :goto_16

    :cond_26
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 121
    iget v2, v3, Lk5/d;->D:I

    sub-int/2addr v2, v10

    int-to-float v8, v8

    iget v10, v3, Lk5/d;->z:F

    mul-float/2addr v8, v10

    float-to-int v8, v8

    sub-int/2addr v2, v8

    :cond_27
    :goto_15
    move v8, v2

    .line 122
    :goto_16
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v10, v3, Lk5/d;->f:Landroid/text/TextPaint;

    iget v13, v3, Lk5/d;->d:F

    iget v14, v3, Lk5/d;->e:F

    const/4 v15, 0x1

    const/16 v24, 0x1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    move/from16 v20, v0

    move-object/from16 v21, v9

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v3, Lk5/d;->E:Landroid/text/StaticLayout;

    .line 123
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, v3, Lk5/d;->f:Landroid/text/TextPaint;

    iget v10, v3, Lk5/d;->d:F

    iget v13, v3, Lk5/d;->e:F

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v19, v4

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v24, v15

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v3, Lk5/d;->F:Landroid/text/StaticLayout;

    .line 124
    iput v5, v3, Lk5/d;->G:I

    .line 125
    iput v8, v3, Lk5/d;->H:I

    .line 126
    iput v1, v3, Lk5/d;->I:I

    goto/16 :goto_1a

    :cond_28
    move/from16 v42, v0

    move/from16 v26, v2

    move/from16 v27, v7

    move/from16 v41, v10

    move/from16 v43, v11

    move/from16 v40, v12

    move/from16 v39, v13

    move/from16 v38, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 127
    iget-object v0, v3, Lk5/d;->k:Landroid/graphics/Bitmap;

    .line 128
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, v3, Lk5/d;->k:Landroid/graphics/Bitmap;

    .line 130
    iget v1, v3, Lk5/d;->C:I

    iget v2, v3, Lk5/d;->A:I

    sub-int/2addr v1, v2

    .line 131
    iget v4, v3, Lk5/d;->D:I

    iget v5, v3, Lk5/d;->B:I

    sub-int/2addr v4, v5

    int-to-float v2, v2

    int-to-float v1, v1

    .line 132
    iget v7, v3, Lk5/d;->o:F

    mul-float/2addr v7, v1

    add-float/2addr v7, v2

    int-to-float v2, v5

    int-to-float v4, v4

    .line 133
    iget v5, v3, Lk5/d;->l:F

    mul-float/2addr v5, v4

    add-float/2addr v5, v2

    .line 134
    iget v2, v3, Lk5/d;->q:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 135
    iget v2, v3, Lk5/d;->r:F

    const v8, -0x800001

    cmpl-float v8, v2, v8

    if-eqz v8, :cond_29

    mul-float/2addr v4, v2

    .line 136
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_17

    :cond_29
    int-to-float v2, v1

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 138
    :goto_17
    iget v2, v3, Lk5/d;->p:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2a

    int-to-float v2, v1

    goto :goto_18

    :cond_2a
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2b

    .line 139
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    :goto_18
    sub-float/2addr v7, v2

    .line 140
    :cond_2b
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 141
    iget v4, v3, Lk5/d;->n:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2c

    int-to-float v4, v0

    goto :goto_19

    :cond_2c
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2d

    .line 142
    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    :goto_19
    sub-float/2addr v5, v4

    .line 143
    :cond_2d
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 144
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v4

    invoke-direct {v5, v2, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v3, Lk5/d;->J:Landroid/graphics/Rect;

    :goto_1a
    move-object/from16 v13, p1

    .line 145
    :goto_1b
    invoke-virtual {v3, v13, v6}, Lk5/d;->a(Landroid/graphics/Canvas;Z)V

    :goto_1c
    add-int/lit8 v0, v43, 0x1

    move v9, v12

    move/from16 v2, v26

    move/from16 v7, v27

    move-object/from16 v1, v35

    move/from16 v10, v36

    move/from16 v6, v38

    move/from16 v5, v39

    move/from16 v4, v40

    move/from16 v3, v41

    move/from16 v8, v42

    move v12, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2e
    :goto_1d
    return-void
.end method
