.class public final Lu1/d;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public final h:Ll1/g;

.field public final i:Ll1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu1/d;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ll1/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu1/d;->h:Ll1/g;

    .line 3
    new-instance p1, Ll1/c;

    invoke-direct {p1}, Ll1/c;-><init>()V

    iput-object p1, p0, Lu1/d;->i:Ll1/c;

    return-void
.end method

.method public static a(Ll1/g;)Z
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ll1/g;->g:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll1/g;

    .line 3
    iget-boolean v6, v5, Ll1/g;->h:Z

    if-nez v6, :cond_0

    .line 4
    invoke-static {v5}, Lu1/d;->a(Ll1/g;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v6

    sget-object v7, Lu1/d;->j:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    .line 6
    iget-object v5, v5, Ll1/g;->e:Ljava/util/ArrayList;

    const-string v9, ", "

    .line 7
    invoke-static {v9, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v5, "Already enqueued work ids (%s)."

    .line 8
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v5, v8}, Lk1/l;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v4, v2

    .line 9
    :cond_2
    invoke-static/range {p0 .. p0}, Ll1/g;->e(Ll1/g;)Ljava/util/Set;

    move-result-object v1

    .line 10
    iget-object v5, v0, Ll1/g;->a:Ll1/k;

    .line 11
    iget-object v6, v0, Ll1/g;->d:Ljava/util/List;

    new-array v7, v2, [Ljava/lang/String;

    .line 12
    invoke-interface {v1, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 13
    iget-object v7, v0, Ll1/g;->b:Ljava/lang/String;

    .line 14
    iget v8, v0, Ll1/g;->c:I

    .line 15
    sget-object v9, Lk1/p;->h:Lk1/p;

    sget-object v11, Lk1/p;->j:Lk1/p;

    sget-object v12, Lk1/p;->m:Lk1/p;

    sget-object v13, Lk1/p;->k:Lk1/p;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 17
    iget-object v10, v5, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_3

    .line 18
    array-length v2, v1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    .line 19
    array-length v3, v1

    move/from16 v17, v4

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_2
    if-ge v4, v3, :cond_9

    move/from16 v21, v3

    aget-object v3, v1, v4

    .line 20
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lt1/q;

    invoke-virtual {v0, v3}, Lt1/q;->h(Ljava/lang/String;)Lt1/o;

    move-result-object v0

    if-nez v0, :cond_4

    .line 21
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Lu1/d;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v4, v2

    const-string v3, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 22
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v0, v1, v3, v4}, Lk1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 24
    :cond_4
    iget-object v0, v0, Lt1/o;->b:Lk1/p;

    if-ne v0, v11, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    and-int v20, v20, v3

    if-ne v0, v13, :cond_6

    const/16 v19, 0x1

    goto :goto_4

    :cond_6
    if-ne v0, v12, :cond_7

    const/16 v18, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v21

    goto :goto_2

    :cond_8
    move/from16 v17, v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 25
    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_a

    if-nez v2, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_1d

    .line 26
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v3

    check-cast v3, Lt1/q;

    invoke-virtual {v3, v7}, Lt1/q;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x3

    if-eq v8, v4, :cond_10

    const/4 v4, 0x4

    if-ne v8, v4, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x2

    if-ne v8, v4, :cond_e

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt1/o$a;

    .line 29
    iget-object v8, v8, Lt1/o$a;->b:Lk1/p;

    if-eq v8, v9, :cond_d

    sget-object v11, Lk1/p;->i:Lk1/p;

    if-ne v8, v11, :cond_c

    :cond_d
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_17

    .line 30
    :cond_e
    new-instance v4, Lu1/b;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v7, v8}, Lu1/b;-><init>(Ll1/k;Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {v4}, Lu1/c;->run()V

    .line 32
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v4

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt1/o$a;

    .line 34
    iget-object v5, v5, Lt1/o$a;->a:Ljava/lang/String;

    move-object v8, v4

    check-cast v8, Lt1/q;

    invoke-virtual {v8, v5}, Lt1/q;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move/from16 v22, v0

    move v3, v2

    move-object/from16 v24, v9

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto/16 :goto_11

    .line 35
    :cond_10
    :goto_8
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->r()Lt1/b;

    move-result-object v2

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt1/o$a;

    move-object/from16 v21, v3

    .line 38
    iget-object v3, v5, Lt1/o$a;->a:Ljava/lang/String;

    move/from16 v22, v0

    move-object v0, v2

    check-cast v0, Lt1/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v2

    const-string v2, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v24, v9

    const/4 v9, 0x1

    .line 39
    invoke-static {v2, v9}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v2

    if-nez v3, :cond_11

    .line 40
    invoke-virtual {v2, v9}, Ly0/f0;->t(I)V

    goto :goto_a

    .line 41
    :cond_11
    invoke-virtual {v2, v9, v3}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 42
    :goto_a
    iget-object v3, v0, Lt1/c;->a:Ly0/d0;

    invoke-virtual {v3}, Ly0/d0;->b()V

    .line 43
    iget-object v0, v0, Lt1/c;->a:Ly0/d0;

    .line 44
    invoke-virtual {v0, v2}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object v3

    .line 45
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 46
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    :cond_13
    move v9, v0

    .line 47
    :goto_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {v2}, Ly0/f0;->g0()V

    if-nez v9, :cond_17

    .line 49
    iget-object v2, v5, Lt1/o$a;->b:Lk1/p;

    if-ne v2, v11, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    move v3, v0

    :goto_c
    and-int v3, v20, v3

    if-ne v2, v13, :cond_15

    move/from16 v2, v18

    const/16 v19, 0x1

    goto :goto_d

    :cond_15
    if-ne v2, v12, :cond_16

    const/4 v2, 0x1

    goto :goto_d

    :cond_16
    move/from16 v2, v18

    .line 50
    :goto_d
    iget-object v5, v5, Lt1/o$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v2

    move/from16 v20, v3

    :cond_17
    move-object/from16 v3, v21

    move/from16 v0, v22

    move-object/from16 v2, v23

    move-object/from16 v9, v24

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 51
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 52
    invoke-virtual {v2}, Ly0/f0;->g0()V

    .line 53
    throw v0

    :cond_18
    move/from16 v22, v0

    move-object/from16 v24, v9

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-ne v8, v2, :cond_1b

    if-nez v18, :cond_19

    if-eqz v19, :cond_1b

    .line 54
    :cond_19
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v2

    .line 55
    check-cast v2, Lt1/q;

    invoke-virtual {v2, v7}, Lt1/q;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 56
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt1/o$a;

    .line 57
    iget-object v4, v4, Lt1/o$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lt1/q;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 58
    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move v2, v0

    move/from16 v19, v2

    goto :goto_f

    :cond_1b
    move/from16 v2, v18

    .line 59
    :goto_f
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 60
    array-length v3, v1

    move/from16 v18, v2

    if-lez v3, :cond_1c

    const/4 v2, 0x1

    goto :goto_10

    :cond_1c
    move v2, v0

    goto :goto_10

    :cond_1d
    move/from16 v22, v0

    move-object/from16 v24, v9

    const/4 v0, 0x0

    :goto_10
    move v3, v2

    move v2, v0

    .line 61
    :goto_11
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk1/r;

    .line 62
    iget-object v6, v5, Lk1/r;->b:Lt1/o;

    if-eqz v3, :cond_20

    if-nez v20, :cond_20

    if-eqz v19, :cond_1e

    .line 63
    iput-object v13, v6, Lt1/o;->b:Lk1/p;

    goto :goto_13

    :cond_1e
    if-eqz v18, :cond_1f

    .line 64
    iput-object v12, v6, Lt1/o;->b:Lk1/p;

    goto :goto_13

    .line 65
    :cond_1f
    sget-object v8, Lk1/p;->l:Lk1/p;

    iput-object v8, v6, Lt1/o;->b:Lk1/p;

    goto :goto_13

    .line 66
    :cond_20
    invoke-virtual {v6}, Lt1/o;->c()Z

    move-result v8

    if-nez v8, :cond_21

    .line 67
    iput-wide v14, v6, Lt1/o;->n:J

    goto :goto_13

    :cond_21
    const-wide/16 v8, 0x0

    .line 68
    iput-wide v8, v6, Lt1/o;->n:J

    .line 69
    :goto_13
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x19

    if-gt v8, v9, :cond_22

    .line 70
    invoke-static {v6}, Lu1/d;->b(Lt1/o;)V

    .line 71
    :cond_22
    iget-object v8, v6, Lt1/o;->b:Lk1/p;

    move-object/from16 v9, v24

    if-ne v8, v9, :cond_23

    const/4 v2, 0x1

    .line 72
    :cond_23
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v8

    check-cast v8, Lt1/q;

    .line 73
    iget-object v11, v8, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v11}, Ly0/d0;->b()V

    .line 74
    iget-object v11, v8, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v11}, Ly0/d0;->c()V

    .line 75
    :try_start_1
    iget-object v11, v8, Lt1/q;->b:Lt1/q$a;

    invoke-virtual {v11, v6}, Ly0/q;->f(Ljava/lang/Object;)V

    .line 76
    iget-object v6, v8, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v6}, Ly0/d0;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 77
    iget-object v6, v8, Lt1/q;->a:Ly0/d0;

    .line 78
    invoke-virtual {v6}, Ly0/d0;->l()V

    if-eqz v3, :cond_24

    .line 79
    array-length v6, v1

    move v8, v0

    :goto_14
    if-ge v8, v6, :cond_24

    aget-object v11, v1, v8

    .line 80
    new-instance v0, Lt1/a;

    move-object/from16 v16, v1

    invoke-virtual {v5}, Lk1/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lt1/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->r()Lt1/b;

    move-result-object v1

    check-cast v1, Lt1/c;

    .line 82
    iget-object v11, v1, Lt1/c;->a:Ly0/d0;

    invoke-virtual {v11}, Ly0/d0;->b()V

    .line 83
    iget-object v11, v1, Lt1/c;->a:Ly0/d0;

    invoke-virtual {v11}, Ly0/d0;->c()V

    .line 84
    :try_start_2
    iget-object v11, v1, Lt1/c;->b:Lt1/c$a;

    invoke-virtual {v11, v0}, Ly0/q;->f(Ljava/lang/Object;)V

    .line 85
    iget-object v0, v1, Lt1/c;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    iget-object v0, v1, Lt1/c;->a:Ly0/d0;

    .line 87
    invoke-virtual {v0}, Ly0/d0;->l()V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    const/4 v0, 0x0

    goto :goto_14

    :catchall_1
    move-exception v0

    .line 88
    iget-object v1, v1, Lt1/c;->a:Ly0/d0;

    .line 89
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 90
    throw v0

    :cond_24
    move-object/from16 v16, v1

    .line 91
    iget-object v0, v5, Lk1/r;->c:Ljava/util/Set;

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->x()Lt1/s;

    move-result-object v6

    new-instance v8, Lt1/r;

    invoke-virtual {v5}, Lk1/r;->a()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v1, v11}, Lt1/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v6, Lt1/t;

    .line 94
    iget-object v1, v6, Lt1/t;->a:Ly0/d0;

    invoke-virtual {v1}, Ly0/d0;->b()V

    .line 95
    iget-object v1, v6, Lt1/t;->a:Ly0/d0;

    invoke-virtual {v1}, Ly0/d0;->c()V

    .line 96
    :try_start_3
    iget-object v1, v6, Lt1/t;->b:Lt1/t$a;

    invoke-virtual {v1, v8}, Ly0/q;->f(Ljava/lang/Object;)V

    .line 97
    iget-object v1, v6, Lt1/t;->a:Ly0/d0;

    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 98
    iget-object v1, v6, Lt1/t;->a:Ly0/d0;

    .line 99
    invoke-virtual {v1}, Ly0/d0;->l()V

    goto :goto_15

    :catchall_2
    move-exception v0

    .line 100
    iget-object v1, v6, Lt1/t;->a:Ly0/d0;

    .line 101
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 102
    throw v0

    :cond_25
    if-eqz v22, :cond_26

    .line 103
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->u()Lt1/k;

    move-result-object v0

    new-instance v1, Lt1/j;

    invoke-virtual {v5}, Lk1/r;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v7, v5}, Lt1/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lt1/l;

    .line 104
    iget-object v0, v5, Lt1/l;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 105
    iget-object v0, v5, Lt1/l;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 106
    :try_start_4
    iget-object v0, v5, Lt1/l;->b:Lt1/l$a;

    invoke-virtual {v0, v1}, Ly0/q;->f(Ljava/lang/Object;)V

    .line 107
    iget-object v0, v5, Lt1/l;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->p()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 108
    iget-object v0, v5, Lt1/l;->a:Ly0/d0;

    .line 109
    invoke-virtual {v0}, Ly0/d0;->l()V

    goto :goto_16

    :catchall_3
    move-exception v0

    .line 110
    iget-object v1, v5, Lt1/l;->a:Ly0/d0;

    .line 111
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 112
    throw v0

    :cond_26
    :goto_16
    move-object/from16 v24, v9

    move-object/from16 v1, v16

    const/4 v0, 0x0

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    .line 113
    iget-object v1, v8, Lt1/q;->a:Ly0/d0;

    .line 114
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 115
    throw v0

    :cond_27
    :goto_17
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 116
    iput-boolean v1, v0, Ll1/g;->h:Z

    or-int v0, v17, v2

    return v0
.end method

.method public static b(Lt1/o;)V
    .locals 5

    .line 1
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v1, p0, Lt1/o;->j:Lk1/c;

    .line 2
    iget-object v2, p0, Lt1/o;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    iget-boolean v3, v1, Lk1/c;->d:Z

    if-nez v3, :cond_0

    .line 5
    iget-boolean v1, v1, Lk1/c;->e:Z

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    .line 7
    iget-object v3, p0, Lt1/o;->e:Landroidx/work/b;

    .line 8
    iget-object v3, v3, Landroidx/work/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Landroidx/work/b$a;->b(Ljava/util/Map;)Landroidx/work/b$a;

    .line 9
    iget-object v3, v1, Landroidx/work/b$a;->a:Ljava/util/HashMap;

    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt1/o;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v0

    iput-object v0, p0, Lt1/o;->e:Landroidx/work/b;

    :cond_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lu1/d;->h:Ll1/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Ll1/g;->d(Ll1/g;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lu1/d;->h:Ll1/g;

    .line 4
    iget-object v0, v0, Ll1/g;->a:Ll1/k;

    .line 5
    iget-object v0, v0, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {v0}, Ly0/d0;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lu1/d;->h:Ll1/g;

    invoke-static {v2}, Lu1/d;->a(Ll1/g;)Z

    move-result v2

    .line 8
    invoke-virtual {v0}, Ly0/d0;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ly0/d0;->l()V

    if-eqz v2, :cond_0

    .line 10
    iget-object v0, p0, Lu1/d;->h:Ll1/g;

    .line 11
    iget-object v0, v0, Ll1/g;->a:Ll1/k;

    .line 12
    iget-object v0, v0, Ll1/k;->a:Landroid/content/Context;

    .line 13
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Lu1/f;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 14
    iget-object v0, p0, Lu1/d;->h:Ll1/g;

    .line 15
    iget-object v0, v0, Ll1/g;->a:Ll1/k;

    .line 16
    iget-object v1, v0, Ll1/k;->b:Landroidx/work/a;

    .line 17
    iget-object v2, v0, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 18
    iget-object v0, v0, Ll1/k;->e:Ljava/util/List;

    .line 19
    invoke-static {v1, v2, v0}, Ll1/f;->a(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lu1/d;->i:Ll1/c;

    sget-object v1, Lk1/o;->a:Lk1/o$b$c;

    invoke-virtual {v0, v1}, Ll1/c;->a(Lk1/o$b;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 21
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 22
    throw v1

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lu1/d;->h:Ll1/g;

    aput-object v4, v1, v3

    .line 24
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 25
    iget-object v1, p0, Lu1/d;->i:Ll1/c;

    new-instance v2, Lk1/o$b$a;

    invoke-direct {v2, v0}, Lk1/o$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ll1/c;->a(Lk1/o$b;)V

    :goto_0
    return-void
.end method
