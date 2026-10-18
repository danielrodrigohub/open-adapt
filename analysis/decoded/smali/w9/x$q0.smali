.class public final Lw9/x$q0;
.super Ljava/lang/Object;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;-><init>(Lea/m;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lv9/g;",
        "Lv9/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/x$q0;->a:Lw9/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Lv9/g;

    invoke-virtual {p0, p1}, Lw9/x$q0;->d(Lv9/g;)V

    return-void
.end method

.method public final bridge synthetic b(Lv9/m;)V
    .locals 0

    check-cast p1, Lv9/f;

    invoke-virtual {p0, p1}, Lw9/x$q0;->c(Lv9/f;)V

    return-void
.end method

.method public final c(Lv9/f;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lw9/x$q0;->a:Lw9/x;

    .line 2
    iget-object v0, v0, Lw9/x;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lv9/i;

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, [Lv9/i;

    .line 5
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 6
    invoke-virtual {v3, p1}, Lv9/i;->d(Lv9/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lv9/g;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "result"

    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    const-string v4, "Result"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 2
    iget-object v2, v1, Lw9/x$q0;->a:Lw9/x;

    .line 3
    iget-object v2, v2, Lw9/x;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    new-array v4, v3, [Lv9/i;

    .line 4
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast v2, [Lv9/i;

    .line 6
    instance-of v4, v0, Lv9/u2;

    if-eqz v4, :cond_7

    .line 7
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    invoke-virtual {v4}, Lw9/x;->t()Lfa/d;

    move-result-object v4

    .line 8
    iget-object v5, v4, Lfa/d;->k:Lfa/i;

    .line 9
    instance-of v6, v5, Lfa/i$f;

    if-eqz v6, :cond_1

    .line 10
    iget-object v5, v4, Lfa/d;->h:Lfa/c;

    .line 11
    iget-object v5, v5, Lfa/c;->j:Lfa/k;

    .line 12
    invoke-interface {v5}, Lfa/k;->h()Lfa/k$c0;

    move-result-object v5

    sget-object v6, Lfa/k$c0;->p:Lfa/k$c0;

    if-ne v5, v6, :cond_0

    .line 13
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 14
    new-instance v7, Lw9/a;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lv9/g;->a()Lv9/a;

    move-result-object v8

    .line 16
    sget-object v9, Lw9/u1;->j:Lw9/u1;

    .line 17
    invoke-direct {v7, v8, v9}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 18
    invoke-static {v5, v7}, Lw9/x;->m0(Lw9/x;Lw9/a;)V

    .line 19
    :cond_0
    iget-object v5, v4, Lfa/d;->i:Lfa/c;

    .line 20
    iget-object v5, v5, Lfa/c;->j:Lfa/k;

    .line 21
    invoke-interface {v5}, Lfa/k;->h()Lfa/k$c0;

    move-result-object v5

    if-ne v5, v6, :cond_5

    .line 22
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 23
    new-instance v6, Lw9/a;

    .line 24
    invoke-virtual/range {p1 .. p1}, Lv9/g;->a()Lv9/a;

    move-result-object v7

    .line 25
    sget-object v8, Lw9/u1;->k:Lw9/u1;

    .line 26
    invoke-direct {v6, v7, v8}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 27
    invoke-static {v5, v6}, Lw9/x;->m0(Lw9/x;Lw9/a;)V

    goto :goto_0

    .line 28
    :cond_1
    instance-of v6, v5, Lfa/i$e;

    if-eqz v6, :cond_4

    .line 29
    iget-object v5, v4, Lfa/d;->h:Lfa/c;

    .line 30
    iget-object v6, v4, Lfa/d;->i:Lfa/c;

    .line 31
    iget-object v7, v5, Lfa/c;->j:Lfa/k;

    .line 32
    instance-of v8, v7, Lfa/k$v;

    if-eqz v8, :cond_2

    .line 33
    iget-object v8, v6, Lfa/c;->j:Lfa/k;

    .line 34
    invoke-static {v7, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 35
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 36
    invoke-virtual {v5}, Lw9/x;->A0()Lya/b;

    move-result-object v5

    .line 37
    sget-object v6, Lfa/k$a;->h:Lfa/k$a;

    .line 38
    invoke-interface {v5, v6}, Lya/b;->i(Lfa/k;)V

    .line 39
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 40
    invoke-virtual {v5}, Lw9/x;->B0()Lya/b;

    move-result-object v5

    .line 41
    invoke-interface {v5, v6}, Lya/b;->i(Lfa/k;)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v5, v5, Lfa/c;->j:Lfa/k;

    .line 43
    instance-of v5, v5, Lfa/k$v;

    if-eqz v5, :cond_3

    .line 44
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 45
    invoke-virtual {v5}, Lw9/x;->A0()Lya/b;

    move-result-object v5

    .line 46
    sget-object v7, Lfa/k$a;->h:Lfa/k$a;

    .line 47
    invoke-interface {v5, v7}, Lya/b;->i(Lfa/k;)V

    .line 48
    :cond_3
    iget-object v5, v6, Lfa/c;->j:Lfa/k;

    .line 49
    instance-of v5, v5, Lfa/k$v;

    if-eqz v5, :cond_5

    .line 50
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 51
    invoke-virtual {v5}, Lw9/x;->B0()Lya/b;

    move-result-object v5

    .line 52
    sget-object v6, Lfa/k$a;->h:Lfa/k$a;

    .line 53
    invoke-interface {v5, v6}, Lya/b;->i(Lfa/k;)V

    goto :goto_0

    .line 54
    :cond_4
    instance-of v5, v5, Lfa/i$j;

    .line 55
    :cond_5
    :goto_0
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 56
    iget-object v6, v5, Lw9/x;->C:Ljava/lang/Object;

    monitor-enter v6

    .line 57
    :try_start_0
    iget-object v7, v5, Lw9/x;->h:Lfb/m;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v8, v7, Lfb/m;->l:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    sget-object v9, Lw9/u1;->l:Lw9/u1;

    invoke-virtual {v7, v9, v4}, Lfb/m;->d(Lw9/u1;Lfa/d;)V

    .line 60
    iput-object v4, v7, Lfb/m;->k:Lfa/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    monitor-exit v8

    .line 62
    iget-object v5, v5, Lw9/x;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v7, v3, [Lv9/o;

    .line 63
    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v5, v7}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    array-length v7, v5

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v9, v5, v8

    check-cast v9, Lv9/o;

    .line 65
    sget-object v10, Lz9/a;->j:Lz9/a;

    new-instance v11, Lw9/c1;

    invoke-direct {v11, v9, v4}, Lw9/c1;-><init>(Lv9/o;Lfa/d;)V

    invoke-virtual {v10, v11}, Lz9/a;->b(Lqd/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 66
    :cond_6
    monitor-exit v6

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    .line 67
    :try_start_3
    monitor-exit v8

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 68
    monitor-exit v6

    throw v0

    .line 69
    :cond_7
    instance-of v4, v0, Lv9/a2;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_b

    .line 70
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    invoke-virtual {v4}, Lw9/x;->t()Lfa/d;

    move-result-object v4

    .line 71
    iget-object v7, v4, Lfa/d;->k:Lfa/i;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 72
    const-class v9, Lfa/i$e;

    invoke-static {v9}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v9

    aput-object v9, v8, v3

    const-class v9, Lfa/i$g;

    invoke-static {v9}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v9

    aput-object v9, v8, v6

    const-class v6, Lfa/i$f;

    invoke-static {v6}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v6

    aput-object v6, v8, v5

    const/4 v5, 0x3

    const-class v6, Lfa/i$j;

    invoke-static {v6}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v6

    aput-object v6, v8, v5

    .line 73
    invoke-static {v7, v8}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 74
    iget-boolean v5, v0, Lda/g;->i:Z

    if-eqz v5, :cond_8

    .line 75
    sget-object v5, Lw9/u1;->j:Lw9/u1;

    goto :goto_2

    :cond_8
    sget-object v5, Lw9/u1;->k:Lw9/u1;

    .line 76
    :goto_2
    iget-object v6, v1, Lw9/x$q0;->a:Lw9/x;

    .line 77
    iget-object v6, v6, Lw9/x;->h:Lfb/m;

    .line 78
    move-object v7, v0

    check-cast v7, Lv9/a2;

    .line 79
    iget-object v7, v7, Lv9/a2;->m:Lba/e;

    .line 80
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "shoe"

    .line 81
    invoke-static {v5, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "battery"

    invoke-static {v7, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v8, v6, Lfb/m;->l:Ljava/lang/Object;

    monitor-enter v8

    .line 83
    :try_start_4
    iget-object v9, v4, Lfa/d;->k:Lfa/i;

    .line 84
    instance-of v10, v9, Lfa/i$e;

    if-nez v10, :cond_9

    instance-of v9, v9, Lfa/i$g;

    if-eqz v9, :cond_a

    .line 85
    :cond_9
    invoke-virtual {v6, v5, v4}, Lfb/m;->b(Lw9/u1;Lfa/d;)Ljava/util/Map;

    move-result-object v9

    const-string v10, "FW_BATTERY_STATE_CHANGED"

    const-string v11, "FW_UPGRADE_TELEMETRY"

    .line 86
    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget v10, v7, Lba/e;->h:I

    .line 88
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "BATTERY_PERCENT"

    .line 89
    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v7, v7, Lba/e;->i:Lba/e$b;

    .line 91
    iget-object v7, v7, Lba/e$b;->h:Ljava/lang/String;

    const-string v10, "BATTERY_STATE"

    .line 92
    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v7, Lw9/u1;->j:Lw9/u1;

    invoke-virtual {v6, v7, v4}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "FW_STATE_LEFT"

    .line 94
    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v7, Lw9/u1;->k:Lw9/u1;

    invoke-virtual {v6, v7, v4}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "FW_STATE_LEFT"

    .line 96
    invoke-interface {v9, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v4, v6, Lfb/m;->a:Lea/m;

    invoke-virtual {v6, v9, v5, v4}, Lfb/m;->g(Ljava/util/Map;Lw9/u1;Lea/m;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 98
    :cond_a
    monitor-exit v8

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    monitor-exit v8

    throw v0

    .line 99
    :cond_b
    instance-of v4, v0, Lv9/k2;

    if-eqz v4, :cond_c

    .line 100
    array-length v4, v2

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_21

    aget-object v6, v2, v5

    .line 101
    invoke-virtual {v6, v0}, Lv9/i;->e(Lv9/g;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 102
    :cond_c
    instance-of v4, v0, Lv9/j5;

    if-eqz v4, :cond_f

    .line 103
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 104
    iget-object v5, v4, Lw9/x;->l:Lea/m;

    .line 105
    iget-boolean v6, v5, Lea/m;->t:Z

    if-eqz v6, :cond_d

    return-void

    .line 106
    :cond_d
    iget-boolean v6, v0, Lda/g;->i:Z

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 107
    iget-object v8, v5, Lea/m;->k:Lea/b;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 108
    sget-object v9, Lhc/b;->j:[B

    const-string v10, "DEFAULT_KEY"

    invoke-static {v9, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x6f

    const/4 v9, 0x0

    .line 109
    invoke-static/range {v8 .. v13}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v8

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1ff7

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-wide/from16 v13, v18

    move/from16 v15, v20

    move/from16 v16, v21

    .line 110
    invoke-static/range {v5 .. v16}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v5

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 111
    iget-object v9, v5, Lea/m;->l:Lea/b;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v10, 0x0

    .line 112
    sget-object v11, Lhc/b;->j:[B

    const-string v12, "DEFAULT_KEY"

    invoke-static {v11, v12}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6f

    .line 113
    invoke-static/range {v9 .. v14}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v9

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1fef

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v15, v18

    move/from16 v16, v19

    .line 114
    invoke-static/range {v5 .. v16}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v5

    .line 115
    :goto_4
    invoke-virtual {v4, v5}, Lw9/x;->G0(Lea/m;)V

    .line 116
    sget-object v4, Lya/a;->a:Lya/a;

    .line 117
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 118
    iget-object v5, v5, Lw9/x;->l:Lea/m;

    .line 119
    iget-object v6, v5, Lea/m;->h:Ljava/lang/String;

    .line 120
    iget-object v5, v5, Lea/m;->k:Lea/b;

    .line 121
    invoke-virtual {v4, v6, v5}, Lya/a;->b(Ljava/lang/String;Lea/b;)Lya/b;

    goto/16 :goto_e

    .line 122
    :cond_f
    instance-of v4, v0, Lv9/h1;

    if-eqz v4, :cond_13

    .line 123
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 124
    iget-object v5, v4, Lw9/x;->l:Lea/m;

    .line 125
    iget-boolean v6, v5, Lea/m;->t:Z

    if-eqz v6, :cond_10

    return-void

    .line 126
    :cond_10
    iget-boolean v6, v0, Lda/g;->i:Z

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 127
    move-object v8, v0

    check-cast v8, Lv9/h1;

    .line 128
    iget-object v8, v8, Lv9/h1;->l:Lea/b;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ff7

    .line 129
    invoke-static/range {v5 .. v16}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v5

    goto :goto_5

    :cond_11
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 130
    move-object v9, v0

    check-cast v9, Lv9/h1;

    .line 131
    iget-object v9, v9, Lv9/h1;->l:Lea/b;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1fef

    .line 132
    invoke-static/range {v5 .. v16}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v5

    .line 133
    :goto_5
    invoke-virtual {v4, v5}, Lw9/x;->G0(Lea/m;)V

    .line 134
    iget-boolean v4, v0, Lda/g;->i:Z

    if-eqz v4, :cond_12

    .line 135
    sget-object v4, Lya/a;->a:Lya/a;

    .line 136
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 137
    iget-object v5, v5, Lw9/x;->l:Lea/m;

    .line 138
    iget-object v6, v5, Lea/m;->h:Ljava/lang/String;

    .line 139
    iget-object v5, v5, Lea/m;->k:Lea/b;

    .line 140
    invoke-virtual {v4, v6, v5}, Lya/a;->b(Ljava/lang/String;Lea/b;)Lya/b;

    goto/16 :goto_e

    .line 141
    :cond_12
    sget-object v4, Lya/a;->a:Lya/a;

    .line 142
    iget-object v5, v1, Lw9/x$q0;->a:Lw9/x;

    .line 143
    iget-object v5, v5, Lw9/x;->l:Lea/m;

    .line 144
    iget-object v6, v5, Lea/m;->h:Ljava/lang/String;

    .line 145
    iget-object v5, v5, Lea/m;->l:Lea/b;

    .line 146
    invoke-virtual {v4, v6, v5}, Lya/a;->b(Ljava/lang/String;Lea/b;)Lya/b;

    goto/16 :goto_e

    .line 147
    :cond_13
    instance-of v4, v0, Lv9/f4;

    if-eqz v4, :cond_15

    .line 148
    iget-boolean v4, v0, Lda/g;->j:Z

    if-eqz v4, :cond_14

    .line 149
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 150
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 151
    move-object v5, v0

    check-cast v5, Lv9/f4;

    .line 152
    iget-object v5, v5, Lv9/f4;->n:Lea/i;

    .line 153
    iput-object v5, v4, Lea/g;->d:Lea/i;

    goto :goto_6

    .line 154
    :cond_14
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 155
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 156
    move-object v5, v0

    check-cast v5, Lv9/f4;

    .line 157
    iget-object v5, v5, Lv9/f4;->n:Lea/i;

    .line 158
    iput-object v5, v4, Lea/g;->c:Lea/i;

    .line 159
    :goto_6
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    invoke-virtual {v4}, Lw9/x;->D0()Lea/a;

    move-result-object v5

    invoke-static {v4, v5}, Lw9/x;->r0(Lw9/x;Lea/a;)V

    goto/16 :goto_e

    .line 160
    :cond_15
    instance-of v4, v0, Lv9/n4;

    if-eqz v4, :cond_17

    .line 161
    iget-boolean v4, v0, Lda/g;->j:Z

    if-eqz v4, :cond_16

    .line 162
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 163
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 164
    move-object v5, v0

    check-cast v5, Lv9/n4;

    .line 165
    iget-object v5, v5, Lv9/n4;->m:Lea/i;

    .line 166
    iput-object v5, v4, Lea/g;->d:Lea/i;

    goto :goto_7

    .line 167
    :cond_16
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 168
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 169
    move-object v5, v0

    check-cast v5, Lv9/n4;

    .line 170
    iget-object v5, v5, Lv9/n4;->m:Lea/i;

    .line 171
    iput-object v5, v4, Lea/g;->c:Lea/i;

    .line 172
    :goto_7
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    invoke-virtual {v4}, Lw9/x;->D0()Lea/a;

    move-result-object v5

    invoke-static {v4, v5}, Lw9/x;->r0(Lw9/x;Lea/a;)V

    goto/16 :goto_e

    .line 173
    :cond_17
    instance-of v4, v0, Lv9/w3;

    if-eqz v4, :cond_19

    .line 174
    iget-boolean v4, v0, Lda/g;->j:Z

    if-eqz v4, :cond_18

    .line 175
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 176
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 177
    move-object v5, v0

    check-cast v5, Lv9/w3;

    .line 178
    iget-object v5, v5, Lv9/w3;->n:Lea/d;

    .line 179
    iput-object v5, v4, Lea/g;->f:Lea/d;

    goto :goto_8

    .line 180
    :cond_18
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 181
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 182
    move-object v5, v0

    check-cast v5, Lv9/w3;

    .line 183
    iget-object v5, v5, Lv9/w3;->n:Lea/d;

    .line 184
    iput-object v5, v4, Lea/g;->e:Lea/d;

    .line 185
    :goto_8
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    invoke-virtual {v4}, Lw9/x;->D0()Lea/a;

    move-result-object v5

    invoke-static {v4, v5}, Lw9/x;->r0(Lw9/x;Lea/a;)V

    goto/16 :goto_e

    .line 186
    :cond_19
    instance-of v4, v0, Lv9/z3;

    if-eqz v4, :cond_1b

    .line 187
    iget-boolean v4, v0, Lda/g;->j:Z

    if-eqz v4, :cond_1a

    .line 188
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 189
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 190
    move-object v5, v0

    check-cast v5, Lv9/z3;

    .line 191
    iget-object v5, v5, Lv9/z3;->n:Lea/d;

    .line 192
    iput-object v5, v4, Lea/g;->f:Lea/d;

    goto :goto_9

    .line 193
    :cond_1a
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 194
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 195
    move-object v5, v0

    check-cast v5, Lv9/z3;

    .line 196
    iget-object v5, v5, Lv9/z3;->n:Lea/d;

    .line 197
    iput-object v5, v4, Lea/g;->e:Lea/d;

    .line 198
    :goto_9
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    invoke-virtual {v4}, Lw9/x;->D0()Lea/a;

    move-result-object v5

    invoke-static {v4, v5}, Lw9/x;->r0(Lw9/x;Lea/a;)V

    goto/16 :goto_e

    .line 199
    :cond_1b
    instance-of v4, v0, Lv9/f2;

    if-eqz v4, :cond_1d

    .line 200
    move-object v4, v0

    check-cast v4, Lv9/f2;

    .line 201
    iget-object v4, v4, Lv9/f2;->m:Lv9/e;

    .line 202
    sget-object v5, Lv9/e;->o:Lv9/e;

    if-eq v4, v5, :cond_21

    .line 203
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 204
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-boolean v4, v0, Lda/g;->i:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    .line 206
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 207
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 208
    iput-object v5, v4, Lea/g;->e:Lea/d;

    goto :goto_a

    .line 209
    :cond_1c
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 210
    iget-object v4, v4, Lw9/x;->d:Lea/g;

    .line 211
    iput-object v5, v4, Lea/g;->f:Lea/d;

    .line 212
    :goto_a
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    invoke-virtual {v4}, Lw9/x;->D0()Lea/a;

    move-result-object v5

    invoke-static {v4, v5}, Lw9/x;->r0(Lw9/x;Lea/a;)V

    goto/16 :goto_e

    .line 213
    :cond_1d
    instance-of v4, v0, Lv9/o5;

    if-eqz v4, :cond_21

    .line 214
    iget-boolean v4, v0, Lda/g;->i:Z

    if-eqz v4, :cond_1e

    .line 215
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 216
    iget-object v4, v4, Lw9/x;->e:Lfb/d0;

    .line 217
    move-object v7, v0

    check-cast v7, Lv9/o5;

    .line 218
    iget-object v7, v7, Lv9/o5;->m:Lla/e;

    .line 219
    iget v7, v7, Lla/e;->i:I

    .line 220
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {v3, v7}, Ljava/lang/Integer;->max(II)I

    move-result v7

    iput v7, v4, Lfb/d0;->a:I

    goto :goto_b

    .line 222
    :cond_1e
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 223
    iget-object v4, v4, Lw9/x;->e:Lfb/d0;

    .line 224
    move-object v7, v0

    check-cast v7, Lv9/o5;

    .line 225
    iget-object v7, v7, Lv9/o5;->m:Lla/e;

    .line 226
    iget v7, v7, Lla/e;->i:I

    .line 227
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {v3, v7}, Ljava/lang/Integer;->max(II)I

    .line 229
    :goto_b
    iget-object v4, v1, Lw9/x$q0;->a:Lw9/x;

    .line 230
    iget-object v7, v4, Lw9/x;->y:Ljava/lang/Object;

    .line 231
    monitor-enter v7

    .line 232
    :try_start_5
    iget-object v8, v4, Lw9/x;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v9, v3, [Lv9/t0;

    .line 233
    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v8, v9}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    array-length v9, v8

    move v10, v3

    :goto_c
    if-ge v10, v9, :cond_20

    aget-object v11, v8, v10

    check-cast v11, Lv9/t0;

    .line 235
    iget-object v12, v4, Lw9/x;->e:Lfb/d0;

    .line 236
    iget v12, v12, Lfb/d0;->a:I

    .line 237
    iget-object v12, v4, Lw9/x;->f:Lfb/k;

    .line 238
    move-object v13, v0

    check-cast v13, Lv9/o5;

    .line 239
    iget-object v13, v13, Lv9/o5;->m:Lla/e;

    .line 240
    iget v13, v13, Lla/e;->j:I

    .line 241
    iget-boolean v14, v12, Lfb/k;->a:Z

    const/4 v15, 0x0

    if-eqz v14, :cond_1f

    mul-int/lit8 v13, v13, 0x2

    const/high16 v12, 0x3f400000    # 0.75f

    int-to-float v14, v6

    sub-float/2addr v14, v12

    int-to-float v12, v13

    mul-float/2addr v14, v12

    .line 242
    invoke-static {v15, v14}, Ljava/lang/Float;->max(FF)F

    goto :goto_d

    .line 243
    :cond_1f
    iput-boolean v6, v12, Lfb/k;->a:Z

    int-to-float v12, v13

    int-to-float v13, v5

    mul-float/2addr v12, v13

    .line 244
    invoke-static {v15, v12}, Ljava/lang/Float;->max(FF)F

    .line 245
    :goto_d
    move-object v12, v0

    check-cast v12, Lv9/o5;

    .line 246
    iget-object v12, v12, Lv9/o5;->m:Lla/e;

    .line 247
    iget-wide v12, v12, Lla/e;->h:J

    .line 248
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 249
    :cond_20
    monitor-exit v7

    goto :goto_e

    :catchall_3
    move-exception v0

    monitor-exit v7

    throw v0

    .line 250
    :cond_21
    :goto_e
    array-length v4, v2

    :goto_f
    if-ge v3, v4, :cond_22

    aget-object v5, v2, v3

    .line 251
    invoke-virtual {v5, v0}, Lv9/i;->e(Lv9/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method
