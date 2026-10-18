.class public final Lh5/a;
.super Lz4/f;
.source "Tx3gDecoder.java"


# instance fields
.field public final m:Lm5/w;

.field public final n:Z

.field public final o:I

.field public final p:I

.field public final q:Ljava/lang/String;

.field public final r:F

.field public final s:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lz4/f;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    invoke-direct {v0}, Lm5/w;-><init>()V

    iput-object v0, p0, Lh5/a;->m:Lm5/w;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a

    const-string v2, "sans-serif"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    .line 4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    .line 5
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    .line 6
    aget-byte v5, p1, v0

    iput v5, p0, Lh5/a;->o:I

    const/16 v5, 0x1a

    .line 7
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Lh5/a;->p:I

    .line 8
    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    .line 9
    invoke-static {p1, v5, v0}, Lm5/g0;->o([BII)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Serif"

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Lh5/a;->q:Ljava/lang/String;

    const/16 v0, 0x19

    .line 11
    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lh5/a;->s:I

    .line 12
    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lh5/a;->n:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    .line 13
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v1, 0x3f733333

    .line 14
    invoke-static {p1, v0, v1}, Lm5/g0;->h(FFF)F

    move-result p1

    iput p1, p0, Lh5/a;->r:F

    goto :goto_1

    .line 15
    :cond_3
    iput v1, p0, Lh5/a;->r:F

    goto :goto_1

    .line 16
    :cond_4
    iput v4, p0, Lh5/a;->o:I

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lh5/a;->p:I

    .line 18
    iput-object v2, p0, Lh5/a;->q:Ljava/lang/String;

    .line 19
    iput-boolean v4, p0, Lh5/a;->n:Z

    .line 20
    iput v1, p0, Lh5/a;->r:F

    .line 21
    iput p1, p0, Lh5/a;->s:I

    :goto_1
    return-void
.end method

.method public static l(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lz4/i;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 1
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 2
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 3
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    .line 4
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 5
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final k([BIZ)Lz4/g;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lh5/a;->m:Lm5/w;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lm5/w;->B([BI)V

    .line 2
    iget-object v1, v0, Lh5/a;->m:Lm5/w;

    .line 3
    iget v2, v1, Lm5/w;->c:I

    iget v3, v1, Lm5/w;->b:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v2, v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4
    :goto_0
    invoke-static {v2}, Lh5/a;->l(Z)V

    .line 5
    invoke-virtual {v1}, Lm5/w;->y()I

    move-result v2

    const/16 v6, 0x8

    if-nez v2, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 6
    :cond_1
    iget v7, v1, Lm5/w;->c:I

    iget v8, v1, Lm5/w;->b:I

    sub-int/2addr v7, v8

    if-lt v7, v4, :cond_3

    .line 7
    iget-object v7, v1, Lm5/w;->a:[B

    aget-byte v9, v7, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    add-int/2addr v8, v5

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    const v8, 0xfeff

    if-eq v7, v8, :cond_2

    const v8, 0xfffe

    if-ne v7, v8, :cond_3

    .line 8
    :cond_2
    sget-object v7, Lt6/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v7}, Lm5/w;->r(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_3
    sget-object v7, Lt6/c;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v7}, Lm5/w;->r(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    sget-object v1, Lh5/b;->i:Lh5/b;

    return-object v1

    .line 12
    :cond_4
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    iget v8, v0, Lh5/a;->o:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 14
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/high16 v12, 0xff0000

    move-object v7, v15

    .line 15
    invoke-static/range {v7 .. v12}, Lh5/a;->m(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 16
    iget v1, v0, Lh5/a;->p:I

    const/4 v2, -0x1

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const v8, 0xff0021

    if-eq v1, v2, :cond_5

    and-int/lit16 v2, v1, 0xff

    shl-int/lit8 v2, v2, 0x18

    ushr-int/2addr v1, v6

    or-int/2addr v1, v2

    .line 17
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v15, v2, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18
    :cond_5
    iget-object v1, v0, Lh5/a;->q:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v7, "sans-serif"

    if-eq v1, v7, :cond_6

    .line 19
    new-instance v7, Landroid/text/style/TypefaceSpan;

    invoke-direct {v7, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7, v3, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 20
    :cond_6
    iget v1, v0, Lh5/a;->r:F

    .line 21
    :goto_2
    iget-object v2, v0, Lh5/a;->m:Lm5/w;

    .line 22
    iget v7, v2, Lm5/w;->c:I

    iget v8, v2, Lm5/w;->b:I

    sub-int/2addr v7, v8

    if-lt v7, v6, :cond_10

    .line 23
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v9

    .line 24
    iget-object v2, v0, Lh5/a;->m:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v2

    const v6, 0x7374796c

    if-ne v2, v6, :cond_c

    .line 25
    iget-object v2, v0, Lh5/a;->m:Lm5/w;

    .line 26
    iget v6, v2, Lm5/w;->c:I

    iget v2, v2, Lm5/w;->b:I

    sub-int/2addr v6, v2

    if-lt v6, v4, :cond_7

    move v2, v5

    goto :goto_3

    :cond_7
    move v2, v3

    .line 27
    :goto_3
    invoke-static {v2}, Lh5/a;->l(Z)V

    .line 28
    iget-object v2, v0, Lh5/a;->m:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v10

    move v11, v3

    :goto_4
    if-ge v11, v10, :cond_f

    .line 29
    iget-object v2, v0, Lh5/a;->m:Lm5/w;

    .line 30
    iget v6, v2, Lm5/w;->c:I

    iget v7, v2, Lm5/w;->b:I

    sub-int/2addr v6, v7

    const/16 v7, 0xc

    if-lt v6, v7, :cond_8

    move v3, v5

    .line 31
    :cond_8
    invoke-static {v3}, Lh5/a;->l(Z)V

    .line 32
    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v12

    .line 33
    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v3

    .line 34
    invoke-virtual {v2, v4}, Lm5/w;->E(I)V

    .line 35
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v4

    .line 36
    invoke-virtual {v2, v5}, Lm5/w;->E(I)V

    .line 37
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v13

    .line 38
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v5, ")."

    const-string v6, "Tx3gDecoder"

    if-le v3, v2, :cond_9

    const-string v2, "Truncating styl end ("

    const-string v7, ") to cueText.length() ("

    .line 39
    invoke-static {v2, v3, v7}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v6, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    :cond_9
    move v14, v3

    if-lt v12, v14, :cond_a

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring styl with start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") >= end ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 44
    :cond_a
    iget v5, v0, Lh5/a;->o:I

    const/4 v7, 0x0

    move-object v2, v15

    move v3, v4

    move v4, v5

    move v5, v12

    move v6, v14

    invoke-static/range {v2 .. v7}, Lh5/a;->m(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 45
    iget v2, v0, Lh5/a;->p:I

    if-eq v13, v2, :cond_b

    and-int/lit16 v2, v13, 0xff

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v3, v13, 0x8

    or-int/2addr v2, v3

    .line 46
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v15, v3, v12, v14, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_c
    const v3, 0x74626f78

    if-ne v2, v3, :cond_e

    .line 47
    iget-boolean v2, v0, Lh5/a;->n:Z

    if-eqz v2, :cond_e

    .line 48
    iget-object v1, v0, Lh5/a;->m:Lm5/w;

    .line 49
    iget v2, v1, Lm5/w;->c:I

    iget v1, v1, Lm5/w;->b:I

    sub-int/2addr v2, v1

    const/4 v1, 0x2

    if-lt v2, v1, :cond_d

    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    .line 50
    :goto_6
    invoke-static {v2}, Lh5/a;->l(Z)V

    .line 51
    iget-object v2, v0, Lh5/a;->m:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v2

    int-to-float v2, v2

    .line 52
    iget v3, v0, Lh5/a;->s:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const v4, 0x3f733333

    .line 53
    invoke-static {v2, v3, v4}, Lm5/g0;->h(FFF)F

    move-result v2

    move v4, v1

    move v1, v2

    goto :goto_7

    :cond_e
    const/4 v2, 0x2

    move v4, v2

    .line 54
    :cond_f
    :goto_7
    iget-object v2, v0, Lh5/a;->m:Lm5/w;

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Lm5/w;->D(I)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    goto/16 :goto_2

    .line 55
    :cond_10
    new-instance v7, Lh5/b;

    const/16 v19, 0x0

    const/4 v5, 0x0

    move-object v4, v5

    move-object v6, v5

    const v10, -0x800001

    move v13, v10

    move v14, v10

    move-object v3, v15

    move v15, v10

    const/high16 v18, -0x80000000

    move/from16 v11, v18

    move/from16 v12, v18

    const/16 v16, 0x0

    const/high16 v17, -0x1000000

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 56
    new-instance v2, Lz4/a;

    move-object/from16 p1, v2

    move-object v0, v7

    move v7, v1

    invoke-direct/range {v2 .. v19}, Lz4/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v1, p1

    .line 57
    invoke-direct {v0, v1}, Lh5/b;-><init>(Lz4/a;)V

    return-object v0
.end method
