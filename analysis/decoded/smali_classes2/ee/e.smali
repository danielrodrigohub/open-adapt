.class public final Lee/e;
.super Lrd/o;
.source "ResourceFileSystem.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/util/List<",
        "+",
        "Lfd/e<",
        "+",
        "Lde/k;",
        "+",
        "Lde/a0;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lee/e;->h:Ljava/lang/ClassLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 32

    .line 1
    sget-object v0, Lee/d;->b:Lee/d$a;

    sget-object v0, Lee/d;->b:Lee/d$a;

    move-object/from16 v1, p0

    iget-object v0, v1, Lee/e;->h:Ljava/lang/ClassLoader;

    const-string v2, "<this>"

    .line 2
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    const-string v3, "getResources(\"\")"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "list(this)"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "it"

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Ljava/net/URL;

    .line 7
    sget-object v8, Lee/d;->b:Lee/d$a;

    sget-object v8, Lee/d;->b:Lee/d$a;

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v8, "file"

    invoke-static {v6, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    .line 9
    :cond_1
    sget-object v6, Lde/k;->SYSTEM:Lde/k;

    sget-object v7, Lde/a0;->i:Lde/a0$a;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v7}, Lde/a0$a;->b(Ljava/io/File;)Lde/a0;

    move-result-object v5

    .line 10
    new-instance v7, Lfd/e;

    invoke-direct {v7, v6, v5}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz v7, :cond_0

    .line 11
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "META-INF/MANIFEST.MF"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    const-string v2, "getResources(\"META-INF/MANIFEST.MF\")"

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 15
    check-cast v5, Ljava/net/URL;

    .line 16
    sget-object v8, Lee/d;->b:Lee/d$a;

    sget-object v8, Lee/d;->b:Lee/d$a;

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "toString()"

    invoke-static {v5, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "jar:file:"

    .line 18
    invoke-static {v5, v8, v3}, Lyd/o;->g0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x6

    const-string v8, "!"

    .line 19
    invoke-static {v5, v8, v3}, Lyd/s;->s0(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_4

    :goto_3
    move-object/from16 v25, v0

    move-object v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_8

    .line 20
    :cond_4
    sget-object v8, Lde/a0;->i:Lde/a0$a;

    new-instance v8, Ljava/io/File;

    const/4 v9, 0x4

    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v8}, Lde/a0$a;->b(Ljava/io/File;)Lde/a0;

    move-result-object v3

    .line 21
    sget-object v5, Lde/k;->SYSTEM:Lde/k;

    .line 22
    sget-object v8, Lee/c;->h:Lee/c;

    const-string v9, "fileSystem"

    .line 23
    invoke-static {v5, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "predicate"

    invoke-static {v8, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, v3}, Lde/k;->openReadOnly(Lde/a0;)Lde/i;

    move-result-object v9

    .line 25
    :try_start_0
    invoke-virtual {v9}, Lde/i;->g0()J

    move-result-wide v10

    const/16 v12, 0x16

    int-to-long v12, v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-ltz v14, :cond_11

    const-wide/32 v14, 0x10000

    sub-long v14, v10, v14

    .line 26
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 27
    :goto_4
    invoke-virtual {v9, v10, v11}, Lde/i;->h0(J)Lde/j0;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 28
    :try_start_1
    move-object/from16 v7, v16

    check-cast v7, Lde/d0;

    invoke-virtual {v7}, Lde/d0;->y()I

    move-result v12

    const v13, 0x6054b50

    if-ne v12, v13, :cond_f

    .line 29
    invoke-virtual {v7}, Lde/d0;->Y()S

    move-result v12

    const v13, 0xffff

    and-int/2addr v12, v13

    .line 30
    invoke-virtual {v7}, Lde/d0;->Y()S

    move-result v14

    and-int/2addr v14, v13

    .line 31
    invoke-virtual {v7}, Lde/d0;->Y()S

    move-result v15

    and-int/2addr v15, v13

    move/from16 v20, v14

    int-to-long v13, v15

    .line 32
    invoke-virtual {v7}, Lde/d0;->Y()S

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const v19, 0xffff

    and-int v15, v15, v19

    move-object/from16 v25, v0

    int-to-long v0, v15

    cmp-long v0, v13, v0

    const-string v1, "unsupported zip: spanned"

    if-nez v0, :cond_e

    if-nez v12, :cond_e

    if-nez v20, :cond_e

    move-object v0, v2

    move-object v12, v3

    const-wide/16 v2, 0x4

    .line 33
    :try_start_2
    invoke-virtual {v7, v2, v3}, Lde/d0;->a(J)V

    .line 34
    invoke-virtual {v7}, Lde/d0;->y()I

    move-result v2

    int-to-long v2, v2

    const-wide v20, 0xffffffffL

    and-long v22, v2, v20

    .line 35
    invoke-virtual {v7}, Lde/d0;->Y()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 36
    new-instance v3, Lee/a;

    move-object/from16 v19, v3

    move-wide/from16 v20, v13

    move/from16 v24, v2

    invoke-direct/range {v19 .. v24}, Lee/a;-><init>(JJI)V

    int-to-long v13, v2

    .line 37
    move-object/from16 v7, v16

    check-cast v7, Lde/d0;

    invoke-virtual {v7, v13, v14}, Lde/d0;->f0(J)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 38
    :try_start_3
    invoke-virtual {v7}, Lde/d0;->close()V

    const/16 v7, 0x14

    int-to-long v13, v7

    sub-long/2addr v10, v13

    const-wide/16 v17, 0x0

    cmp-long v7, v10, v17

    if-lez v7, :cond_9

    .line 39
    invoke-virtual {v9, v10, v11}, Lde/i;->h0(J)Lde/j0;

    move-result-object v7

    invoke-static {v7}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 40
    :try_start_4
    move-object v10, v7

    check-cast v10, Lde/d0;

    invoke-virtual {v10}, Lde/d0;->y()I

    move-result v11

    const v13, 0x7064b50

    if-ne v11, v13, :cond_8

    .line 41
    invoke-virtual {v10}, Lde/d0;->y()I

    move-result v3

    .line 42
    invoke-virtual {v10}, Lde/d0;->I()J

    move-result-wide v13

    .line 43
    invoke-virtual {v10}, Lde/d0;->y()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    if-nez v3, :cond_7

    .line 44
    invoke-virtual {v9, v13, v14}, Lde/i;->h0(J)Lde/j0;

    move-result-object v3

    invoke-static {v3}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 45
    :try_start_5
    move-object v10, v3

    check-cast v10, Lde/d0;

    invoke-virtual {v10}, Lde/d0;->y()I

    move-result v11

    const v13, 0x6064b50

    if-ne v11, v13, :cond_6

    const-wide/16 v13, 0xc

    .line 46
    invoke-virtual {v10, v13, v14}, Lde/d0;->a(J)V

    .line 47
    invoke-virtual {v10}, Lde/d0;->y()I

    move-result v11

    .line 48
    invoke-virtual {v10}, Lde/d0;->y()I

    move-result v13

    .line 49
    invoke-virtual {v10}, Lde/d0;->I()J

    move-result-wide v27

    .line 50
    invoke-virtual {v10}, Lde/d0;->I()J

    move-result-wide v14

    cmp-long v14, v27, v14

    if-nez v14, :cond_5

    if-nez v11, :cond_5

    if-nez v13, :cond_5

    const-wide/16 v13, 0x8

    .line 51
    invoke-virtual {v10, v13, v14}, Lde/d0;->a(J)V

    .line 52
    invoke-virtual {v10}, Lde/d0;->I()J

    move-result-wide v29

    .line 53
    new-instance v1, Lee/a;

    move-object/from16 v26, v1

    move/from16 v31, v2

    invoke-direct/range {v26 .. v31}, Lee/a;-><init>(JJI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x0

    .line 54
    :try_start_6
    invoke-static {v3, v2}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v3, v1

    goto :goto_5

    .line 55
    :cond_5
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lee/g;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v11}, Lee/g;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 61
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-static {v3, v1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 62
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    :goto_5
    const/4 v1, 0x0

    .line 63
    :try_start_a
    invoke-static {v7, v1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-static {v7, v1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 64
    :cond_9
    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-wide v10, v3, Lee/a;->b:J

    .line 66
    invoke-virtual {v9, v10, v11}, Lde/i;->h0(J)Lde/j0;

    move-result-object v2

    invoke-static {v2}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 67
    :try_start_d
    iget-wide v10, v3, Lee/a;->a:J

    :goto_7
    cmp-long v7, v17, v10

    if-gez v7, :cond_c

    .line 68
    invoke-static {v2}, Lee/g;->c(Lde/f;)Lee/f;

    move-result-object v7

    .line 69
    iget-wide v13, v7, Lee/f;->g:J

    move-wide v15, v10

    .line 70
    iget-wide v10, v3, Lee/a;->b:J

    cmp-long v10, v13, v10

    if-gez v10, :cond_b

    .line 71
    invoke-virtual {v8, v7}, Lee/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 72
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-wide/16 v10, 0x1

    add-long v17, v17, v10

    move-wide v10, v15

    goto :goto_7

    .line 73
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :cond_c
    const/4 v3, 0x0

    .line 74
    :try_start_e
    invoke-static {v2, v3}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 75
    invoke-static {v1}, Lee/g;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 76
    new-instance v2, Lde/l0;

    invoke-direct {v2, v12, v5, v1}, Lde/l0;-><init>(Lde/a0;Lde/k;Ljava/util/Map;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    invoke-static {v9, v3}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 77
    sget-object v1, Lee/d;->c:Lde/a0;

    .line 78
    new-instance v5, Lfd/e;

    invoke-direct {v5, v2, v1}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v5

    :goto_8
    if-eqz v2, :cond_d

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v0, v25

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 80
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_10
    invoke-static {v2, v1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 81
    :cond_e
    :try_start_11
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_f
    move-object/from16 v25, v0

    move-object v0, v2

    move-object v12, v3

    const/4 v3, 0x0

    const-wide/16 v17, 0x0

    .line 82
    :try_start_12
    invoke-virtual {v7}, Lde/d0;->close()V

    const-wide/16 v1, -0x1

    add-long/2addr v10, v1

    cmp-long v1, v10, v14

    if-ltz v1, :cond_10

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v12

    move-wide/from16 v12, v17

    move-object/from16 v0, v25

    goto/16 :goto_4

    .line 83
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6
    move-exception v0

    .line 84
    check-cast v16, Lde/d0;

    invoke-virtual/range {v16 .. v16}, Lde/d0;->close()V

    throw v0

    .line 85
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a zip: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lde/i;->g0()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 86
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    invoke-static {v9, v1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_12
    move-object v0, v2

    .line 87
    invoke-static {v4, v0}, Lgd/n;->g0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
