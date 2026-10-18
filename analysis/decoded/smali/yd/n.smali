.class public Lyd/n;
.super Lyd/m;
.source "StringNumberConversions.kt"


# direct methods
.method public static final V(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    const-string v0, "input"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number format: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final W(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Ld3/e;->c(I)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 4
    invoke-static {v4, v5}, Lp4/h;->l(II)I

    move-result v5

    const v6, -0x7fffffff

    const/4 v7, 0x1

    if-gez v5, :cond_3

    if-ne v1, v7, :cond_1

    goto :goto_3

    :cond_1
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    const/high16 v6, -0x80000000

    move v4, v7

    goto :goto_0

    :cond_2
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_9

    move v4, v7

    move v7, v3

    goto :goto_0

    :cond_3
    move v4, v3

    move v7, v4

    :goto_0
    const v5, -0x38e38e3

    move v8, v5

    :goto_1
    if-ge v4, v1, :cond_7

    .line 5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 6
    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    move-result v9

    if-gez v9, :cond_4

    goto :goto_3

    :cond_4
    if-ge v3, v8, :cond_5

    if-ne v8, v5, :cond_9

    .line 7
    div-int/lit8 v8, v6, 0xa

    if-ge v3, v8, :cond_5

    goto :goto_3

    :cond_5
    mul-int/lit8 v3, v3, 0xa

    add-int v10, v6, v9

    if-ge v3, v10, :cond_6

    goto :goto_3

    :cond_6
    sub-int/2addr v3, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_8

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_8
    neg-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_2
    move-object v2, p0

    :cond_9
    :goto_3
    return-object v2
.end method

.method public static final X(Ljava/lang/String;)Ljava/lang/Long;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 1
    invoke-static {v1}, Ld3/e;->c(I)I

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 4
    invoke-static {v5, v6}, Lp4/h;->l(II)I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x1

    if-gez v6, :cond_3

    if-ne v2, v9, :cond_1

    goto :goto_3

    :cond_1
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    const-wide/high16 v7, -0x8000000000000000L

    move v4, v9

    goto :goto_0

    :cond_2
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_9

    move/from16 v18, v9

    move v9, v4

    move/from16 v4, v18

    goto :goto_0

    :cond_3
    move v9, v4

    :goto_0
    const-wide/16 v5, 0x0

    const-wide v10, -0x38e38e38e38e38eL

    move-wide v12, v10

    :goto_1
    if-ge v4, v2, :cond_7

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 6
    invoke-static {v14, v1}, Ljava/lang/Character;->digit(II)I

    move-result v14

    if-gez v14, :cond_4

    goto :goto_3

    :cond_4
    cmp-long v15, v5, v12

    if-gez v15, :cond_5

    cmp-long v12, v12, v10

    if-nez v12, :cond_9

    int-to-long v12, v1

    .line 7
    div-long v12, v7, v12

    cmp-long v15, v5, v12

    if-gez v15, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v10, v1

    mul-long/2addr v5, v10

    int-to-long v10, v14

    add-long v16, v7, v10

    cmp-long v14, v5, v16

    if-gez v14, :cond_6

    goto :goto_3

    :cond_6
    sub-long/2addr v5, v10

    add-int/lit8 v4, v4, 0x1

    const-wide v10, -0x38e38e38e38e38eL

    goto :goto_1

    :cond_7
    if-eqz v9, :cond_8

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_8
    neg-long v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    move-object v3, v0

    :cond_9
    :goto_3
    return-object v3
.end method
