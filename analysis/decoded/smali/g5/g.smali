.class public final Lg5/g;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lz4/g;


# instance fields
.field public final h:Lg5/d;

.field public final i:[J

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg5/f;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg5/e;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/d;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg5/f;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg5/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg5/g;->h:Lg5/d;

    .line 3
    iput-object p3, p0, Lg5/g;->k:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Lg5/g;->l:Ljava/util/Map;

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lg5/g;->j:Ljava/util/Map;

    .line 6
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1, p2, p3}, Lg5/d;->e(Ljava/util/TreeSet;Z)V

    .line 8
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 9
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    .line 10
    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lg5/g;->i:[J

    return-void
.end method


# virtual methods
.method public final b(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lg5/g;->i:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lm5/g0;->b([JJZ)I

    move-result p1

    .line 2
    iget-object p2, p0, Lg5/g;->i:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final g(I)J
    .locals 3

    iget-object v0, p0, Lg5/g;->i:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final i(J)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lz4/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v7, v0, Lg5/g;->h:Lg5/d;

    iget-object v8, v0, Lg5/g;->j:Ljava/util/Map;

    iget-object v9, v0, Lg5/g;->k:Ljava/util/Map;

    iget-object v10, v0, Lg5/g;->l:Ljava/util/Map;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, v7, Lg5/d;->h:Ljava/lang/String;

    move-wide/from16 v12, p1

    invoke-virtual {v7, v12, v13, v1, v11}, Lg5/d;->h(JLjava/lang/String;Ljava/util/List;)V

    .line 4
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14}, Ljava/util/TreeMap;-><init>()V

    .line 5
    iget-object v5, v7, Lg5/d;->h:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, v7

    move-wide/from16 v2, p1

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lg5/d;->j(JZLjava/lang/String;Ljava/util/Map;)V

    .line 6
    iget-object v6, v7, Lg5/d;->h:Ljava/lang/String;

    move-object v4, v8

    move-object v5, v9

    move-object v7, v14

    invoke-virtual/range {v1 .. v7}, Lg5/d;->i(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 9
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 11
    array-length v6, v5

    invoke-static {v5, v4, v6}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 12
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/e;

    .line 13
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v32, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v17

    move-object/from16 v18, v17

    const v26, -0x800001

    const/high16 v25, -0x80000000

    const/16 v29, 0x0

    const/high16 v30, -0x1000000

    .line 14
    iget v4, v3, Lg5/e;->b:F

    move/from16 v23, v4

    const/16 v24, 0x0

    .line 15
    iget v4, v3, Lg5/e;->c:F

    move/from16 v20, v4

    const/16 v21, 0x0

    .line 16
    iget v4, v3, Lg5/e;->e:I

    move/from16 v22, v4

    .line 17
    iget v4, v3, Lg5/e;->f:F

    move/from16 v27, v4

    .line 18
    iget v4, v3, Lg5/e;->g:F

    move/from16 v28, v4

    .line 19
    iget v3, v3, Lg5/e;->j:I

    move/from16 v31, v3

    .line 20
    new-instance v3, Lz4/a;

    move-object v15, v3

    invoke-direct/range {v15 .. v32}, Lz4/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg5/e;

    .line 24
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz4/a$a;

    .line 26
    iget-object v6, v3, Lz4/a$a;->a:Ljava/lang/CharSequence;

    .line 27
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    check-cast v6, Landroid/text/SpannableStringBuilder;

    .line 29
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Lg5/a;

    invoke-virtual {v6, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lg5/a;

    .line 30
    array-length v8, v7

    move v10, v4

    :goto_2
    if-ge v10, v8, :cond_2

    aget-object v11, v7, v10

    .line 31
    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const-string v13, ""

    invoke-virtual {v6, v12, v11, v13}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    move v7, v4

    .line 32
    :goto_3
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v10, 0x20

    if-ge v7, v8, :cond_5

    .line 33
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    add-int/lit8 v8, v7, 0x1

    move v11, v8

    .line 34
    :goto_4
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    sub-int/2addr v11, v8

    if-lez v11, :cond_4

    add-int/2addr v11, v7

    .line 35
    invoke-virtual {v6, v7, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 36
    :cond_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_6

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_6

    .line 37
    invoke-virtual {v6, v4, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    move v7, v4

    .line 38
    :goto_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v8

    const/16 v12, 0xa

    if-ge v7, v11, :cond_8

    .line 39
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_7

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_7

    add-int/lit8 v12, v7, 0x2

    .line 40
    invoke-virtual {v6, v11, v12}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 41
    :cond_8
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_9

    .line 42
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v6, v7, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    move v7, v4

    .line 43
    :goto_6
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v8

    if-ge v7, v11, :cond_b

    .line 44
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_a

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v13

    if-ne v13, v12, :cond_a

    .line 45
    invoke-virtual {v6, v7, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 46
    :cond_b
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_c

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_c

    .line 47
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 48
    :cond_c
    iget v6, v5, Lg5/e;->c:F

    iget v7, v5, Lg5/e;->d:I

    .line 49
    iput v6, v3, Lz4/a$a;->e:F

    .line 50
    iput v7, v3, Lz4/a$a;->f:I

    .line 51
    iget v6, v5, Lg5/e;->e:I

    .line 52
    iput v6, v3, Lz4/a$a;->g:I

    .line 53
    iget v6, v5, Lg5/e;->b:F

    .line 54
    iput v6, v3, Lz4/a$a;->h:F

    .line 55
    iget v6, v5, Lg5/e;->f:F

    .line 56
    iput v6, v3, Lz4/a$a;->l:F

    .line 57
    iget v6, v5, Lg5/e;->i:F

    iget v7, v5, Lg5/e;->h:I

    .line 58
    iput v6, v3, Lz4/a$a;->k:F

    .line 59
    iput v7, v3, Lz4/a$a;->j:I

    .line 60
    iget v5, v5, Lg5/e;->j:I

    .line 61
    iput v5, v3, Lz4/a$a;->p:I

    .line 62
    invoke-virtual {v3}, Lz4/a$a;->a()Lz4/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-object v1
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lg5/g;->i:[J

    array-length v0, v0

    return v0
.end method
