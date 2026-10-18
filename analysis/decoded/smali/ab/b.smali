.class public final Lab/b;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesRepository.kt"

# interfaces
.implements Lab/a;


# static fields
.field public static final b:Lab/b;

.field public static final c:Lfd/h;

.field public static final d:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lab/b;

    invoke-direct {v0}, Lab/b;-><init>()V

    sput-object v0, Lab/b;->b:Lab/b;

    .line 1
    sget-object v0, Lab/b$a;->h:Lab/b$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lab/b;->c:Lfd/h;

    const/4 v0, 0x1

    .line 2
    new-instance v1, Lab/b$c;

    invoke-direct {v1}, Lab/b$c;-><init>()V

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    .line 3
    sput-object v0, Lab/b;->d:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final f(Ljava/util/Map;Lv9/a;Lv9/p0;)V
    .locals 2

    sget-object v0, Lab/b;->b:Lab/b;

    .line 1
    sget-object v1, Lua/a;->i:Lua/a;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lab/k;

    invoke-direct {v1, p2, p1}, Lab/k;-><init>(Lv9/p0;Lv9/a;)V

    .line 4
    invoke-virtual {v0, p1, p0, v1}, Lab/b;->i(Lv9/a;Ljava/util/List;Lv9/p0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lv9/a;Lv9/p0;)Ljava/util/List;
    .locals 1
    invoke-static {p0, p1, p2}, Lcom/openadapt/OfflinePairs;->list(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    return-object v0
.end method

.method public final b(Lv9/a;Ljava/util/List;Lv9/p0;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "adaptIdentifier"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lab/b;->h()Ldb/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ldb/a;->c(Z)Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    move-object v6, v4

    check-cast v6, Lea/m;

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lea/m;

    .line 6
    iget-object v9, v6, Lea/m;->h:Ljava/lang/String;

    iget-object v8, v8, Lea/m;->h:Ljava/lang/String;

    .line 7
    invoke-static {v9, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    move/from16 v16, v2

    goto :goto_2

    :cond_2
    move/from16 v16, v5

    .line 8
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x7ff

    .line 9
    invoke-static/range {v6 .. v17}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lab/b;->h()Ldb/a;

    move-result-object v1

    invoke-interface {v1, v5, v3}, Ldb/a;->b(ZLjava/util/List;)V

    # Open Adapt: notify from the actual local device list after local deletion.
    invoke-virtual/range {p0 .. p0}, Lab/b;->c()Ljava/util/List;
    move-result-object v1
    move-object/from16 v2, p3
    move-object/from16 v3, p1
    invoke-static {v3, v2, v1}, Lcom/openadapt/OfflinePairs;->notifyDeleted(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lab/b;->h()Ldb/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ldb/a;->c(Z)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lea/m;

    .line 4
    iget-boolean v4, v4, Lea/m;->t:Z

    xor-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final d(Lv9/a;Lea/m;Lv9/p0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Lea/m;",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lea/m;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lab/b;->i(Lv9/a;Ljava/util/List;Lv9/p0;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lab/b;->h()Ldb/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ldb/a;->b(ZLjava/util/List;)V

    return-void
.end method

.method public final g()Lpa/e;
    .locals 1

    sget-object v0, Lab/b;->c:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpa/e;

    return-object v0
.end method

.method public final h()Ldb/a;
    .locals 1

    sget-object v0, Lab/b;->d:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb/a;

    return-object v0
.end method

.method public final i(Lv9/a;Ljava/util/List;Lv9/p0;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 1
    invoke-static/range {p2 .. p2}, Lgd/n;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 2
    sget-object v3, Lab/b;->b:Lab/b;

    invoke-virtual {v3}, Lab/b;->h()Ldb/a;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ldb/a;->c(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {v2}, Lgd/n;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lp4/h;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_3

    .line 8
    move-object v9, v7

    check-cast v9, Lea/m;

    if-lez v6, :cond_0

    .line 9
    iget-boolean v7, v9, Lea/m;->j:Z

    if-eqz v7, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    const/16 v20, 0x17fb

    .line 11
    invoke-static/range {v9 .. v20}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v9

    goto :goto_1

    :cond_0
    if-nez v6, :cond_1

    .line 12
    iget-boolean v7, v9, Lea/m;->j:Z

    if-eqz v7, :cond_1

    .line 13
    iget-boolean v7, v9, Lea/m;->t:Z

    if-eqz v7, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    const/16 v20, 0x17fb

    .line 15
    invoke-static/range {v9 .. v20}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v9

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    .line 16
    iget-boolean v6, v9, Lea/m;->j:Z

    if-nez v6, :cond_2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    const/16 v20, 0x17fb

    .line 18
    invoke-static/range {v9 .. v20}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v9

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v8

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 v0, 0x0

    throw v0

    .line 21
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lea/m;

    .line 23
    iget-wide v8, v7, Lea/m;->s:J

    .line 24
    iget-wide v10, v7, Lea/m;->q:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    move v7, v4

    goto :goto_3

    :cond_6
    move v7, v5

    :goto_3
    if-eqz v7, :cond_5

    .line 25
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lab/b;->h()Ldb/a;

    move-result-object v3

    invoke-interface {v3, v5, v2}, Ldb/a;->b(ZLjava/util/List;)V

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lea/m;

    .line 29
    iget-boolean v7, v7, Lea/m;->t:Z

    xor-int/2addr v7, v4

    if-eqz v7, :cond_8

    .line 30
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-static {v3}, Lp4/h;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 31
    new-instance v4, Lea/y;

    invoke-direct {v4, v0, v3}, Lea/y;-><init>(Lv9/a;Ljava/util/List;)V

    .line 32
    invoke-interface {v1, v4}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    # Open Adapt: local upsert is already published; skip Nike sync.
    return-void
.end method
