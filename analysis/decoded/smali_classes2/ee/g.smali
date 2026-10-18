.class public final Lee/g;
.super Ljava/lang/Object;
.source "zip.kt"


# direct methods
.method public static final a(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lee/f;",
            ">;)",
            "Ljava/util/Map<",
            "Lde/a0;",
            "Lee/f;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lde/a0;->i:Lde/a0$a;

    const-string v1, "/"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lde/a0$a;->a(Ljava/lang/String;Z)Lde/a0;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lfd/e;

    .line 3
    new-instance v3, Lee/f;

    invoke-direct {v3, v0}, Lee/f;-><init>(Lde/a0;)V

    .line 4
    new-instance v4, Lfd/e;

    invoke-direct {v4, v0, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    .line 5
    invoke-static {v1}, Lgd/z;->A([Lfd/e;)Ljava/util/Map;

    move-result-object v0

    .line 6
    new-instance v1, Lee/g$a;

    invoke-direct {v1}, Lee/g$a;-><init>()V

    invoke-static {p0, v1}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lee/f;

    .line 8
    iget-object v2, v1, Lee/f;->a:Lde/a0;

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lee/f;

    if-nez v2, :cond_0

    .line 10
    :goto_1
    iget-object v2, v1, Lee/f;->a:Lde/a0;

    .line 11
    invoke-virtual {v2}, Lde/a0;->i()Lde/a0;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lee/f;

    if-eqz v3, :cond_2

    .line 13
    iget-object v2, v3, Lee/f;->h:Ljava/util/ArrayList;

    .line 14
    iget-object v1, v1, Lee/f;->a:Lde/a0;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    new-instance v3, Lee/f;

    invoke-direct {v3, v2}, Lee/f;-><init>(Lde/a0;)V

    .line 17
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v2, v3, Lee/f;->h:Ljava/util/ArrayList;

    .line 19
    iget-object v1, v1, Lee/f;->a:Lde/a0;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static final b(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Ld3/e;->c(I)I

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {p0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lde/f;)Lee/f;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    move-object v9, v8

    check-cast v9, Lde/d0;

    invoke-virtual {v9}, Lde/d0;->y()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_8

    const-wide/16 v0, 0x4

    .line 2
    invoke-virtual {v9, v0, v1}, Lde/d0;->a(J)V

    .line 3
    invoke-virtual {v9}, Lde/d0;->Y()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_7

    .line 4
    invoke-virtual {v9}, Lde/d0;->Y()S

    move-result v0

    and-int v18, v0, v1

    .line 5
    invoke-virtual {v9}, Lde/d0;->Y()S

    move-result v0

    and-int/2addr v0, v1

    .line 6
    invoke-virtual {v9}, Lde/d0;->Y()S

    move-result v2

    and-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v5, 0xe

    .line 8
    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    shr-int/lit8 v5, v2, 0x9

    and-int/lit8 v5, v5, 0x7f

    add-int/lit16 v11, v5, 0x7bc

    shr-int/lit8 v5, v2, 0x5

    and-int/lit8 v5, v5, 0xf

    and-int/lit8 v13, v2, 0x1f

    shr-int/lit8 v2, v0, 0xb

    and-int/lit8 v14, v2, 0x1f

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v15, v2, 0x3f

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v16, v0, 0x1

    add-int/lit8 v12, v5, -0x1

    move-object v10, v4

    .line 9
    invoke-virtual/range {v10 .. v16}, Ljava/util/Calendar;->set(IIIIII)V

    .line 10
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    move-object/from16 v19, v0

    .line 11
    invoke-virtual {v9}, Lde/d0;->y()I

    const-wide v4, 0xffffffffL

    .line 12
    new-instance v10, Lrd/v;

    invoke-direct {v10}, Lrd/v;-><init>()V

    invoke-virtual {v9}, Lde/d0;->y()I

    move-result v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    iput-wide v6, v10, Lrd/v;->h:J

    .line 13
    new-instance v11, Lrd/v;

    invoke-direct {v11}, Lrd/v;-><init>()V

    invoke-virtual {v9}, Lde/d0;->y()I

    move-result v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    iput-wide v6, v11, Lrd/v;->h:J

    .line 14
    invoke-virtual {v9}, Lde/d0;->Y()S

    move-result v0

    and-int/2addr v0, v1

    .line 15
    invoke-virtual {v9}, Lde/d0;->Y()S

    move-result v2

    and-int v12, v2, v1

    .line 16
    invoke-virtual {v9}, Lde/d0;->Y()S

    move-result v2

    and-int v13, v2, v1

    const-wide/16 v1, 0x8

    .line 17
    invoke-virtual {v9, v1, v2}, Lde/d0;->a(J)V

    .line 18
    new-instance v14, Lrd/v;

    invoke-direct {v14}, Lrd/v;-><init>()V

    invoke-virtual {v9}, Lde/d0;->y()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    iput-wide v1, v14, Lrd/v;->h:J

    int-to-long v0, v0

    .line 19
    invoke-virtual {v9, v0, v1}, Lde/d0;->f0(J)Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-static {v15, v3}, Lyd/s;->h0(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-nez v0, :cond_6

    .line 21
    iget-wide v0, v11, Lrd/v;->h:J

    cmp-long v0, v0, v4

    const-wide/16 v16, 0x0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    int-to-long v2, v1

    add-long v2, v2, v16

    goto :goto_1

    :cond_1
    move-wide/from16 v2, v16

    .line 22
    :goto_1
    iget-wide v6, v10, Lrd/v;->h:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 23
    :cond_2
    iget-wide v6, v14, Lrd/v;->h:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    int-to-long v0, v1

    add-long/2addr v2, v0

    :cond_3
    move-wide/from16 v20, v2

    .line 24
    new-instance v7, Lrd/u;

    invoke-direct {v7}, Lrd/u;-><init>()V

    .line 25
    new-instance v6, Lee/g$b;

    move-object v0, v6

    move-object v1, v7

    move-wide/from16 v2, v20

    move-object v4, v11

    move-object/from16 v5, p0

    move-object/from16 v22, v11

    move-object v11, v6

    move-object v6, v10

    move-object/from16 v23, v10

    move-object v10, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lee/g$b;-><init>(Lrd/u;JLrd/v;Lde/f;Lrd/v;Lrd/v;)V

    invoke-static {v8, v12, v11}, Lee/g;->d(Lde/f;ILqd/p;)V

    cmp-long v0, v20, v16

    if-lez v0, :cond_5

    .line 26
    iget-boolean v0, v10, Lrd/u;->h:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    int-to-long v0, v13

    .line 28
    invoke-virtual {v9, v0, v1}, Lde/d0;->f0(J)Ljava/lang/String;

    move-result-object v13

    .line 29
    sget-object v0, Lde/a0;->i:Lde/a0$a;

    const-string v1, "/"

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Lde/a0$a;->a(Ljava/lang/String;Z)Lde/a0;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v15}, Lde/a0;->j(Ljava/lang/String;)Lde/a0;

    move-result-object v11

    .line 32
    invoke-static {v15, v1, v2}, Lyd/o;->Y(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 33
    new-instance v0, Lee/f;

    move-object/from16 v1, v23

    .line 34
    iget-wide v1, v1, Lrd/v;->h:J

    move-object/from16 v3, v22

    .line 35
    iget-wide v3, v3, Lrd/v;->h:J

    .line 36
    iget-wide v5, v14, Lrd/v;->h:J

    move-object v10, v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v20, v5

    .line 37
    invoke-direct/range {v10 .. v21}, Lee/f;-><init>(Lde/a0;ZLjava/lang/String;JJILjava/lang/Long;J)V

    return-object v0

    .line 38
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unsupported zip: general purpose bit flag="

    .line 40
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    invoke-static {v0}, Lee/g;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_8
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bad zip: expected "

    .line 43
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 44
    invoke-static {v1}, Lee/g;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lee/g;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final d(Lde/f;ILqd/p;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/f;",
            "I",
            "Lqd/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    int-to-long v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_3

    .line 1
    move-object p1, p0

    check-cast p1, Lde/d0;

    invoke-virtual {p1}, Lde/d0;->Y()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 2
    invoke-virtual {p1}, Lde/d0;->Y()S

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0xffff

    and-long/2addr v5, v7

    const/4 v7, 0x4

    int-to-long v7, v7

    sub-long/2addr v0, v7

    cmp-long v7, v0, v5

    if-ltz v7, :cond_2

    .line 3
    invoke-virtual {p1, v5, v6}, Lde/d0;->T(J)V

    .line 4
    iget-object v7, p1, Lde/d0;->i:Lde/c;

    .line 5
    iget-wide v7, v7, Lde/c;->i:J

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p1, Lde/d0;->i:Lde/c;

    .line 8
    iget-wide v9, p1, Lde/c;->i:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v7

    cmp-long v2, v9, v2

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    .line 9
    invoke-virtual {p1, v9, v10}, Lde/c;->a(J)V

    :cond_0
    sub-long/2addr v0, v5

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported zip: too many bytes processed for "

    .line 11
    invoke-static {p1, v4}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static final e(Lde/f;Lde/j;)Lde/j;
    .locals 14

    .line 1
    new-instance v0, Lrd/w;

    invoke-direct {v0}, Lrd/w;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p1, Lde/j;->f:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 3
    :goto_0
    iput-object v2, v0, Lrd/w;->h:Ljava/lang/Object;

    .line 4
    new-instance v2, Lrd/w;

    invoke-direct {v2}, Lrd/w;-><init>()V

    .line 5
    new-instance v3, Lrd/w;

    invoke-direct {v3}, Lrd/w;-><init>()V

    .line 6
    move-object v4, p0

    check-cast v4, Lde/d0;

    invoke-virtual {v4}, Lde/d0;->y()I

    move-result v5

    const v6, 0x4034b50

    if-ne v5, v6, :cond_3

    const-wide/16 v5, 0x2

    .line 7
    invoke-virtual {v4, v5, v6}, Lde/d0;->a(J)V

    .line 8
    invoke-virtual {v4}, Lde/d0;->Y()S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_2

    const-wide/16 v7, 0x12

    .line 9
    invoke-virtual {v4, v7, v8}, Lde/d0;->a(J)V

    .line 10
    invoke-virtual {v4}, Lde/d0;->Y()S

    move-result v5

    int-to-long v7, v5

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    .line 11
    invoke-virtual {v4}, Lde/d0;->Y()S

    move-result v5

    and-int/2addr v5, v6

    .line 12
    invoke-virtual {v4, v7, v8}, Lde/d0;->a(J)V

    if-nez p1, :cond_1

    int-to-long p0, v5

    .line 13
    invoke-virtual {v4, p0, p1}, Lde/d0;->a(J)V

    return-object v1

    .line 14
    :cond_1
    new-instance v1, Lee/g$c;

    invoke-direct {v1, p0, v0, v2, v3}, Lee/g$c;-><init>(Lde/f;Lrd/w;Lrd/w;Lrd/w;)V

    invoke-static {p0, v5, v1}, Lee/g;->d(Lde/f;ILqd/p;)V

    .line 15
    new-instance p0, Lde/j;

    .line 16
    iget-boolean v7, p1, Lde/j;->a:Z

    .line 17
    iget-boolean v8, p1, Lde/j;->b:Z

    const/4 v9, 0x0

    .line 18
    iget-object v10, p1, Lde/j;->d:Ljava/lang/Long;

    .line 19
    iget-object p1, v3, Lrd/w;->h:Ljava/lang/Object;

    move-object v11, p1

    check-cast v11, Ljava/lang/Long;

    .line 20
    iget-object p1, v0, Lrd/w;->h:Ljava/lang/Object;

    move-object v12, p1

    check-cast v12, Ljava/lang/Long;

    .line 21
    iget-object p1, v2, Lrd/w;->h:Ljava/lang/Object;

    move-object v13, p1

    check-cast v13, Ljava/lang/Long;

    move-object v6, p0

    .line 22
    invoke-direct/range {v6 .. v13}, Lde/j;-><init>(ZZLde/a0;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p0

    .line 23
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported zip: general purpose bit flag="

    .line 24
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 25
    invoke-static {v5}, Lee/g;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: expected "

    .line 27
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 28
    invoke-static {v6}, Lee/g;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lee/g;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
