.class public final Lab/d;
.super Lrd/o;
.source "AdaptKitPairedDevicesRepository.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/util/List<",
        "+",
        "Lva/d;",
        ">;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lv9/a;

.field public final synthetic j:Lv9/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lv9/a;Lv9/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Lv9/a;",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lab/d;->h:Ljava/util/List;

    iput-object p2, p0, Lab/d;->i:Lv9/a;

    iput-object p3, p0, Lab/d;->j:Lv9/p0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    const-string v2, "networkDevices"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    .line 4
    iget-object v2, v0, Lab/d;->h:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPairedDevices local devices before merge "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "AdaptKitPairedDevicesRepositoryImpl"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 5
    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 6
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v9

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network devices before merge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v10, "AdaptKitPairedDevicesRepositoryImpl"

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 8
    invoke-static/range {v9 .. v14}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 9
    iget-object v2, v0, Lab/d;->h:Ljava/util/List;

    const-string v3, "<this>"

    .line 10
    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lea/m;

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lva/d;

    .line 14
    iget-object v10, v5, Lea/m;->h:Ljava/lang/String;

    .line 15
    iget-object v9, v9, Lva/d;->q:Ljava/lang/String;

    .line 16
    invoke-static {v10, v9}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v8

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lva/d;

    .line 19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lea/m;

    .line 20
    iget-object v10, v5, Lva/d;->q:Ljava/lang/String;

    .line 21
    iget-object v9, v9, Lea/m;->h:Ljava/lang/String;

    .line 22
    invoke-static {v10, v9}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lea/m;

    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lva/d;

    .line 27
    iget-object v14, v8, Lea/m;->h:Ljava/lang/String;

    .line 28
    iget-object v15, v13, Lva/d;->q:Ljava/lang/String;

    .line 29
    invoke-static {v14, v15}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 30
    iget-wide v14, v8, Lea/m;->s:J

    move-object/from16 v16, v7

    .line 31
    iget-wide v6, v13, Lva/d;->x:J

    cmp-long v6, v14, v6

    if-lez v6, :cond_9

    move v6, v9

    goto :goto_6

    :cond_8
    move-object/from16 v16, v7

    :cond_9
    move v6, v10

    :goto_6
    if-eqz v6, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v7, v16

    goto :goto_5

    :cond_b
    move-object/from16 v16, v7

    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_d

    .line 32
    iget-boolean v6, v8, Lea/m;->t:Z

    if-eqz v6, :cond_c

    .line 33
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 34
    :cond_c
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_8
    move-object/from16 v7, v16

    goto :goto_4

    .line 35
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lea/m;

    .line 37
    iget-boolean v7, v6, Lea/m;->t:Z

    if-eqz v7, :cond_12

    .line 38
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lea/m;

    .line 39
    iget-object v11, v11, Lea/m;->h:Ljava/lang/String;

    iget-object v12, v6, Lea/m;->h:Ljava/lang/String;

    .line 40
    invoke-static {v11, v12}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_a

    :cond_11
    const/4 v8, 0x0

    :goto_a
    if-nez v8, :cond_f

    .line 41
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 42
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lea/m;

    .line 43
    iget-object v11, v11, Lea/m;->h:Ljava/lang/String;

    iget-object v12, v6, Lea/m;->h:Ljava/lang/String;

    .line 44
    invoke-static {v11, v12}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_b

    :cond_14
    const/4 v8, 0x0

    :goto_b
    if-nez v8, :cond_f

    .line 45
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 46
    :cond_15
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    sget-object v6, Lua/a;->h:Lua/a;

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 50
    check-cast v8, Lva/d;

    .line 51
    invoke-static {v8}, Landroidx/lifecycle/o;->A(Lva/d;)Lea/m;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 52
    :cond_16
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v3, Lua/a;->i:Lua/a;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v4, Lua/a;->j:Lua/a;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lua/a;->k:Lua/a;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v11

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all devices after merge "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "AdaptKitPairedDevicesRepositoryImpl"

    .line 58
    invoke-static/range {v11 .. v16}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v4, v0, Lab/d;->i:Lv9/a;

    iget-object v5, v0, Lab/d;->j:Lv9/p0;

    .line 60
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v9

    if-eqz v6, :cond_17

    .line 61
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v11

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPairedDevices about to delete "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from service"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "AdaptKitPairedDevicesRepositoryImpl"

    .line 63
    invoke-static/range {v11 .. v16}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 64
    sget-object v3, Lab/b;->b:Lab/b;

    .line 65
    new-instance v6, Lab/c;

    invoke-direct {v6, v2, v4, v5}, Lab/c;-><init>(Ljava/util/Map;Lv9/a;Lv9/p0;)V

    .line 66
    invoke-virtual {v3, v4, v1, v6}, Lab/b;->b(Lv9/a;Ljava/util/List;Lv9/p0;)V

    goto :goto_d

    .line 67
    :cond_17
    sget-object v1, Lab/b;->b:Lab/b;

    invoke-static {v2, v4, v5}, Lab/b;->f(Ljava/util/Map;Lv9/a;Lv9/p0;)V

    .line 68
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_18

    .line 69
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 70
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "AdaptKitPairedDevicesRepositoryImpl"

    const-string v13, "getPairedDevices about to send onResult pushedChanges=false"

    invoke-static/range {v11 .. v16}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 71
    new-instance v2, Lea/x;

    .line 72
    invoke-virtual {v1}, Lab/b;->h()Ldb/a;

    move-result-object v1

    .line 73
    invoke-interface {v1, v10}, Ldb/a;->c(Z)Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lp4/h;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-direct {v2, v4, v1}, Lea/x;-><init>(Lv9/a;Ljava/util/List;)V

    .line 76
    invoke-interface {v5, v2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    .line 77
    :cond_18
    :goto_d
    sget-object v1, Lfd/o;->a:Lfd/o;

    return-object v1
.end method
