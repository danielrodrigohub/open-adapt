.class public Lyd/k;
.super Landroidx/lifecycle/o;
.source "Indent.kt"


# direct methods
.method public static final T()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lqd/l<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lyd/i;->h:Lyd/i;

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Lyd/j;

    invoke-direct {v0}, Lyd/j;-><init>()V

    :goto_1
    return-object v0
.end method

.method public static U(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "<this>"

    .line 1
    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "|"

    .line 2
    invoke-static {v0}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 3
    invoke-static {p0}, Lyd/s;->t0(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    mul-int/2addr v2, v3

    add-int/2addr v2, p0

    invoke-static {}, Lyd/k;->T()Lqd/l;

    move-result-object p0

    .line 5
    invoke-static {v1}, Landroidx/lifecycle/o;->p(Ljava/util/List;)I

    move-result v4

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v6, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x0

    if-ltz v6, :cond_9

    .line 8
    check-cast v7, Ljava/lang/String;

    if-eqz v6, :cond_0

    if-ne v6, v4, :cond_1

    .line 9
    :cond_0
    invoke-static {v7}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_4

    .line 10
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    move v10, v3

    :goto_1
    const/4 v11, -0x1

    if-ge v10, v6, :cond_3

    .line 11
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 12
    invoke-static {v12}, Ld3/e;->m(C)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v11

    :goto_2
    if-ne v10, v11, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    invoke-static {v7, v0, v10, v3}, Lyd/o;->f0(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v6, "this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    .line 15
    invoke-interface {p0, v9}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 16
    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_7

    :cond_6
    move-object v9, v7

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    .line 17
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v6, v8

    goto :goto_0

    .line 18
    :cond_9
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    throw v9

    .line 19
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v5, p0}, Lgd/n;->c0(Ljava/lang/Iterable;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 21
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "marginPrefix must be non-blank string."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
