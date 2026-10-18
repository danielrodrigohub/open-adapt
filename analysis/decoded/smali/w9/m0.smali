.class public final Lw9/m0;
.super Lld/i;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareUpdateStart$1$1"
    f = "AdaptKitPairDevicesController.kt"
    l = {
        0x8e6,
        0x8e7,
        0x911,
        0x912,
        0x921,
        0x935,
        0x936,
        0x940,
        0x947
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Lfb/c;

.field public j:Lba/e;

.field public k:I

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lw9/x;

.field public final synthetic n:Lw9/a;


# direct methods
.method public constructor <init>(Lw9/x;Lw9/a;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/x;",
            "Lw9/a;",
            "Ljd/d<",
            "-",
            "Lw9/m0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/m0;->m:Lw9/x;

    iput-object p2, p0, Lw9/m0;->n:Lw9/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw9/m0;

    iget-object v1, p0, Lw9/m0;->m:Lw9/x;

    iget-object v2, p0, Lw9/m0;->n:Lw9/a;

    invoke-direct {v0, v1, v2, p2}, Lw9/m0;-><init>(Lw9/x;Lw9/a;Ljd/d;)V

    iput-object p1, v0, Lw9/m0;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lw9/m0;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lw9/m0;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lw9/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v1, Lw9/m0;->k:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_1
    iget-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    check-cast v2, Lfa/g;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v4, v0

    goto/16 :goto_e

    :pswitch_2
    iget-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    check-cast v2, Lfa/g;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v0, v2

    move-object/from16 v2, p1

    goto/16 :goto_c

    :pswitch_3
    iget-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Deferred;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v4, v0

    move-object/from16 v0, p1

    goto/16 :goto_a

    :pswitch_4
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v4, v0

    move-object/from16 v0, p1

    goto/16 :goto_7

    :pswitch_5
    iget-object v2, v1, Lw9/m0;->h:Ljava/lang/Object;

    check-cast v2, Lfa/b;

    iget-object v3, v1, Lw9/m0;->l:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v0, v3

    move-object v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_6

    :pswitch_6
    iget-object v2, v1, Lw9/m0;->h:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Deferred;

    iget-object v3, v1, Lw9/m0;->l:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v0, v3

    move-object/from16 v3, p1

    goto/16 :goto_5

    :pswitch_7
    iget-object v2, v1, Lw9/m0;->j:Lba/e;

    iget-object v6, v1, Lw9/m0;->i:Lfb/c;

    iget-object v7, v1, Lw9/m0;->h:Ljava/lang/Object;

    check-cast v7, Lfb/c;

    iget-object v8, v1, Lw9/m0;->l:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto :goto_1

    :pswitch_8
    iget-object v2, v1, Lw9/m0;->i:Lfb/c;

    iget-object v6, v1, Lw9/m0;->h:Ljava/lang/Object;

    check-cast v6, Lfb/c;

    iget-object v7, v1, Lw9/m0;->l:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move-object/from16 v19, v6

    move-object v6, v2

    move-object v2, v7

    move-object/from16 v7, v19

    goto :goto_0

    :pswitch_9
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    iget-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v6, v1, Lw9/m0;->m:Lw9/x;

    .line 5
    invoke-virtual {v6}, Lw9/x;->A0()Lya/b;

    move-result-object v6

    .line 6
    invoke-interface {v6}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, v1, Lw9/m0;->m:Lw9/x;

    .line 8
    invoke-virtual {v7}, Lw9/x;->B0()Lya/b;

    move-result-object v7

    .line 9
    invoke-interface {v7}, Lya/b;->a()Lfb/c;

    move-result-object v7

    .line 10
    iget-object v8, v1, Lw9/m0;->m:Lw9/x;

    .line 11
    invoke-virtual {v8}, Lw9/x;->A0()Lya/b;

    move-result-object v9

    .line 12
    iput-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    iput-object v6, v1, Lw9/m0;->h:Ljava/lang/Object;

    iput-object v7, v1, Lw9/m0;->i:Lfb/c;

    iput v4, v1, Lw9/m0;->k:I

    invoke-static {v8, v9, v1}, Lw9/x;->s0(Lw9/x;Lya/b;Ljd/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_0

    return-object v0

    :cond_0
    move-object/from16 v19, v7

    move-object v7, v6

    move-object/from16 v6, v19

    .line 13
    :goto_0
    check-cast v8, Lba/e;

    .line 14
    iget-object v9, v1, Lw9/m0;->m:Lw9/x;

    .line 15
    invoke-virtual {v9}, Lw9/x;->B0()Lya/b;

    move-result-object v10

    .line 16
    iput-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    iput-object v7, v1, Lw9/m0;->h:Ljava/lang/Object;

    iput-object v6, v1, Lw9/m0;->i:Lfb/c;

    iput-object v8, v1, Lw9/m0;->j:Lba/e;

    iput v3, v1, Lw9/m0;->k:I

    invoke-static {v9, v10, v1}, Lw9/x;->s0(Lw9/x;Lya/b;Ljd/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_1

    return-object v0

    :cond_1
    move-object/from16 v19, v8

    move-object v8, v2

    move-object/from16 v2, v19

    .line 17
    :goto_1
    check-cast v9, Lba/e;

    if-eqz v2, :cond_16

    if-nez v9, :cond_2

    goto/16 :goto_10

    .line 18
    :cond_2
    iget-object v11, v1, Lw9/m0;->m:Lw9/x;

    .line 19
    iget-object v11, v11, Lw9/x;->h:Lfb/m;

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "randomUUID().toString()"

    invoke-static {v12, v13}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v3, "randomUUID().toString()"

    invoke-static {v15, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "randomUUID().toString()"

    invoke-static {v3, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-enter v11

    .line 26
    :try_start_0
    iput v4, v11, Lfb/m;->h:I

    .line 27
    new-instance v10, Lfa/d;

    .line 28
    iget-object v4, v11, Lfb/m;->j:Lfa/c;

    .line 29
    invoke-direct {v10, v4, v4}, Lfa/d;-><init>(Lfa/c;Lfa/c;)V

    iput-object v10, v11, Lfb/m;->k:Lfa/d;

    .line 30
    new-instance v4, Lfa/d;

    .line 31
    iget-object v10, v11, Lfb/m;->j:Lfa/c;

    .line 32
    new-instance v5, Lfa/k$o;

    invoke-direct {v5, v2}, Lfa/k$o;-><init>(Lba/e;)V

    move-object/from16 v16, v0

    const/4 v0, 0x3

    move-object/from16 v17, v6

    const/4 v6, 0x0

    .line 33
    invoke-static {v10, v6, v6, v5, v0}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v5

    .line 34
    iget-object v10, v11, Lfb/m;->j:Lfa/c;

    .line 35
    new-instance v0, Lfa/k$o;

    invoke-direct {v0, v9}, Lfa/k$o;-><init>(Lba/e;)V

    move-object/from16 v18, v8

    const/4 v8, 0x3

    .line 36
    invoke-static {v10, v6, v6, v0, v8}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v0

    .line 37
    invoke-direct {v4, v5, v0}, Lfa/d;-><init>(Lfa/c;Lfa/c;)V

    const/4 v0, 0x0

    .line 38
    iput v0, v11, Lfb/m;->f:I

    .line 39
    iput v0, v11, Lfb/m;->g:I

    .line 40
    iput-object v12, v11, Lfb/m;->e:Ljava/lang/String;

    .line 41
    iput-wide v13, v11, Lfb/m;->i:J

    .line 42
    iput-object v15, v11, Lfb/m;->c:Ljava/lang/String;

    .line 43
    iput-object v3, v11, Lfb/m;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    invoke-virtual {v11, v0, v4}, Lfb/m;->b(Lw9/u1;Lfa/d;)Ljava/util/Map;

    move-result-object v3

    const-string v0, "FW_UPGRADE_OVERALL_START"

    const-string v5, "FW_UPGRADE_TELEMETRY"

    .line 45
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FW_STATE_LEFT"

    .line 46
    sget-object v5, Lw9/u1;->j:Lw9/u1;

    invoke-virtual {v11, v5, v4}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FW_STATE_RIGHT"

    .line 47
    sget-object v6, Lw9/u1;->k:Lw9/u1;

    invoke-virtual {v11, v6, v4}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v11, v3}, Lfb/m;->e(Ljava/util/Map;)V

    .line 49
    sget-object v0, Lw9/u1;->l:Lw9/u1;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v8, 0x2

    if-eq v0, v8, :cond_3

    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {v11, v5, v4}, Lfb/m;->f(Lw9/u1;Lfa/d;)V

    :cond_4
    invoke-virtual {v11, v6, v4}, Lfb/m;->f(Lw9/u1;Lfa/d;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    invoke-virtual {v11, v5, v4}, Lfb/m;->f(Lw9/u1;Lfa/d;)V

    .line 52
    :goto_2
    iput-object v4, v11, Lfb/m;->k:Lfa/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v11

    .line 54
    iget v0, v2, Lba/e;->h:I

    const/16 v4, 0x1e

    if-ge v0, v4, :cond_6

    .line 55
    iget-object v0, v1, Lw9/m0;->m:Lw9/x;

    .line 56
    invoke-virtual {v0}, Lw9/x;->A0()Lya/b;

    move-result-object v0

    .line 57
    new-instance v5, Lfa/k$b;

    invoke-direct {v5, v2}, Lfa/k$b;-><init>(Lba/e;)V

    .line 58
    invoke-interface {v0, v5}, Lya/b;->i(Lfa/k;)V

    move v10, v3

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    .line 59
    :goto_3
    iget v0, v9, Lba/e;->h:I

    if-ge v0, v4, :cond_7

    .line 60
    iget-object v0, v1, Lw9/m0;->m:Lw9/x;

    .line 61
    invoke-virtual {v0}, Lw9/x;->B0()Lya/b;

    move-result-object v0

    .line 62
    new-instance v2, Lfa/k$b;

    invoke-direct {v2, v9}, Lfa/k$b;-><init>(Lba/e;)V

    .line 63
    invoke-interface {v0, v2}, Lya/b;->i(Lfa/k;)V

    move v4, v3

    goto :goto_4

    :cond_7
    move v4, v10

    :goto_4
    if-eqz v4, :cond_8

    .line 64
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 65
    new-instance v13, Lw9/m0$c;

    iget-object v3, v1, Lw9/m0;->m:Lw9/x;

    const/4 v4, 0x0

    invoke-direct {v13, v3, v7, v4}, Lw9/m0$c;-><init>(Lw9/x;Lfb/c;Ljd/d;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v5

    .line 66
    new-instance v13, Lw9/m0$d;

    iget-object v6, v1, Lw9/m0;->m:Lw9/x;

    move-object/from16 v7, v17

    const/4 v8, 0x0

    invoke-direct {v13, v6, v7, v8}, Lw9/m0$d;-><init>(Lw9/x;Lfb/c;Ljd/d;)V

    move-object v11, v0

    move-object v12, v2

    move v14, v3

    move-object v15, v4

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    move-object/from16 v0, v18

    .line 67
    iput-object v0, v1, Lw9/m0;->l:Ljava/lang/Object;

    iput-object v2, v1, Lw9/m0;->h:Ljava/lang/Object;

    iput-object v8, v1, Lw9/m0;->i:Lfb/c;

    iput-object v8, v1, Lw9/m0;->j:Lba/e;

    const/4 v3, 0x3

    iput v3, v1, Lw9/m0;->k:I

    invoke-interface {v5, v1}, Lkotlinx/coroutines/Deferred;->await(Ljd/d;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, v16

    if-ne v3, v4, :cond_9

    return-object v4

    .line 68
    :cond_9
    :goto_5
    check-cast v3, Lfa/b;

    .line 69
    iput-object v0, v1, Lw9/m0;->l:Ljava/lang/Object;

    iput-object v3, v1, Lw9/m0;->h:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v1, Lw9/m0;->k:I

    invoke-interface {v2, v1}, Lkotlinx/coroutines/Deferred;->await(Ljd/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_a

    return-object v4

    .line 70
    :cond_a
    :goto_6
    check-cast v2, Lfa/b;

    .line 71
    iget-object v5, v1, Lw9/m0;->m:Lw9/x;

    .line 72
    invoke-virtual {v5}, Lw9/x;->A0()Lya/b;

    move-result-object v6

    .line 73
    invoke-static {v5, v6, v3}, Lw9/x;->u0(Lw9/x;Lya/b;Lfa/b;)V

    .line 74
    iget-object v5, v1, Lw9/m0;->m:Lw9/x;

    .line 75
    invoke-virtual {v5}, Lw9/x;->B0()Lya/b;

    move-result-object v6

    .line 76
    invoke-static {v5, v6, v2}, Lw9/x;->u0(Lw9/x;Lya/b;Lfa/b;)V

    .line 77
    instance-of v5, v3, Lfa/b$c;

    if-eqz v5, :cond_c

    .line 78
    instance-of v6, v2, Lfa/b$c;

    if-eqz v6, :cond_c

    .line 79
    move-object v6, v3

    check-cast v6, Lfa/b$c;

    .line 80
    iget-object v7, v6, Lfa/b$c;->m:Ljava/lang/String;

    .line 81
    move-object v8, v2

    check-cast v8, Lfa/b$c;

    .line 82
    iget-object v8, v8, Lfa/b$c;->m:Ljava/lang/String;

    .line 83
    invoke-static {v7, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 84
    iget-object v0, v1, Lw9/m0;->m:Lw9/x;

    .line 85
    invoke-virtual {v0}, Lw9/x;->A0()Lya/b;

    move-result-object v0

    .line 86
    sget-object v2, Lfa/k$l;->h:Lfa/k$l;

    .line 87
    invoke-interface {v0, v2}, Lya/b;->i(Lfa/k;)V

    .line 88
    iget-object v0, v1, Lw9/m0;->m:Lw9/x;

    .line 89
    invoke-virtual {v0}, Lw9/x;->B0()Lya/b;

    move-result-object v0

    .line 90
    invoke-interface {v0, v2}, Lya/b;->i(Lfa/k;)V

    .line 91
    iget-object v0, v1, Lw9/m0;->m:Lw9/x;

    invoke-static {v0}, Lw9/x;->n0(Lw9/x;)Lbb/a;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    iput-object v2, v1, Lw9/m0;->h:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v1, Lw9/m0;->k:I

    invoke-interface {v0, v6, v1}, Lbb/a;->b(Lfa/b$c;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    return-object v4

    .line 92
    :cond_b
    :goto_7
    check-cast v0, Lfa/g;

    move-object v2, v0

    goto/16 :goto_d

    :cond_c
    if-eqz v5, :cond_d

    .line 93
    iget-object v5, v1, Lw9/m0;->m:Lw9/x;

    .line 94
    invoke-virtual {v5}, Lw9/x;->A0()Lya/b;

    move-result-object v5

    .line 95
    sget-object v6, Lfa/k$l;->h:Lfa/k$l;

    .line 96
    invoke-interface {v5, v6}, Lya/b;->i(Lfa/k;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 97
    new-instance v8, Lw9/m0$a;

    iget-object v5, v1, Lw9/m0;->m:Lw9/x;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v3, v9}, Lw9/m0$a;-><init>(Lw9/x;Lfa/b;Ljd/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    .line 98
    :goto_8
    instance-of v5, v2, Lfa/b$c;

    if-eqz v5, :cond_e

    .line 99
    iget-object v5, v1, Lw9/m0;->m:Lw9/x;

    .line 100
    invoke-virtual {v5}, Lw9/x;->B0()Lya/b;

    move-result-object v5

    .line 101
    sget-object v6, Lfa/k$l;->h:Lfa/k$l;

    .line 102
    invoke-interface {v5, v6}, Lya/b;->i(Lfa/k;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 103
    new-instance v8, Lw9/m0$b;

    iget-object v5, v1, Lw9/m0;->m:Lw9/x;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v2, v9}, Lw9/m0$b;-><init>(Lw9/x;Lfa/b;Ljd/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    move-object v2, v0

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :goto_9
    if-eqz v3, :cond_10

    .line 104
    iput-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v1, Lw9/m0;->h:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v1, Lw9/m0;->k:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/Deferred;->await(Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_f

    return-object v4

    :cond_f
    :goto_a
    check-cast v0, Lfa/g;

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    :goto_b
    if-eqz v2, :cond_12

    .line 105
    iput-object v0, v1, Lw9/m0;->l:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v1, Lw9/m0;->h:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, v1, Lw9/m0;->k:I

    invoke-interface {v2, v1}, Lkotlinx/coroutines/Deferred;->await(Ljd/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_11

    return-object v4

    :cond_11
    :goto_c
    check-cast v2, Lfa/g;

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    .line 106
    :goto_d
    iget-object v3, v1, Lw9/m0;->m:Lw9/x;

    .line 107
    invoke-virtual {v3}, Lw9/x;->A0()Lya/b;

    move-result-object v5

    .line 108
    invoke-static {v3, v0, v5}, Lw9/x;->t0(Lw9/x;Lfa/g;Lya/b;)Z

    move-result v3

    .line 109
    iget-object v5, v1, Lw9/m0;->m:Lw9/x;

    .line 110
    invoke-virtual {v5}, Lw9/x;->B0()Lya/b;

    move-result-object v6

    .line 111
    invoke-static {v5, v2, v6}, Lw9/x;->t0(Lw9/x;Lfa/g;Lya/b;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v3, :cond_15

    .line 112
    instance-of v3, v0, Lfa/g$b;

    if-nez v3, :cond_13

    .line 113
    instance-of v5, v2, Lfa/g$b;

    if-eqz v5, :cond_15

    :cond_13
    if-eqz v3, :cond_14

    .line 114
    iget-object v3, v1, Lw9/m0;->m:Lw9/x;

    .line 115
    invoke-virtual {v3}, Lw9/x;->A0()Lya/b;

    move-result-object v3

    .line 116
    iget-object v5, v1, Lw9/m0;->n:Lw9/a;

    .line 117
    iget-object v5, v5, Lw9/a;->h:Lv9/a;

    .line 118
    check-cast v0, Lfa/g$b;

    .line 119
    iput-object v2, v1, Lw9/m0;->l:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lw9/m0;->h:Ljava/lang/Object;

    const/16 v6, 0x8

    iput v6, v1, Lw9/m0;->k:I

    invoke-interface {v3, v5, v0, v1}, Lya/b;->b(Lv9/a;Lfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_14

    return-object v4

    .line 120
    :cond_14
    :goto_e
    instance-of v0, v2, Lfa/g$b;

    if-eqz v0, :cond_15

    .line 121
    iget-object v0, v1, Lw9/m0;->m:Lw9/x;

    .line 122
    invoke-virtual {v0}, Lw9/x;->B0()Lya/b;

    move-result-object v0

    .line 123
    iget-object v3, v1, Lw9/m0;->n:Lw9/a;

    .line 124
    iget-object v3, v3, Lw9/a;->h:Lv9/a;

    .line 125
    check-cast v2, Lfa/g$b;

    const/4 v5, 0x0

    .line 126
    iput-object v5, v1, Lw9/m0;->l:Ljava/lang/Object;

    iput-object v5, v1, Lw9/m0;->h:Ljava/lang/Object;

    const/16 v5, 0x9

    iput v5, v1, Lw9/m0;->k:I

    invoke-interface {v0, v3, v2, v1}, Lya/b;->b(Lv9/a;Lfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_15

    return-object v4

    .line 127
    :cond_15
    :goto_f
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :catchall_0
    move-exception v0

    .line 128
    monitor-exit v11

    throw v0

    .line 129
    :cond_16
    :goto_10
    iget-object v0, v1, Lw9/m0;->m:Lw9/x;

    .line 130
    invoke-virtual {v0}, Lw9/x;->A0()Lya/b;

    move-result-object v0

    .line 131
    new-instance v2, Lfa/k$b;

    .line 132
    new-instance v3, Lba/e;

    sget-object v4, Lba/e$b;->p:Lba/e$b;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lba/e;-><init>(ILba/e$b;)V

    .line 133
    invoke-direct {v2, v3}, Lfa/k$b;-><init>(Lba/e;)V

    .line 134
    invoke-interface {v0, v2}, Lya/b;->i(Lfa/k;)V

    .line 135
    iget-object v0, v1, Lw9/m0;->m:Lw9/x;

    .line 136
    invoke-virtual {v0}, Lw9/x;->B0()Lya/b;

    move-result-object v0

    .line 137
    new-instance v2, Lfa/k$b;

    .line 138
    new-instance v3, Lba/e;

    invoke-direct {v3, v5, v4}, Lba/e;-><init>(ILba/e$b;)V

    .line 139
    invoke-direct {v2, v3}, Lfa/k$b;-><init>(Lba/e;)V

    .line 140
    invoke-interface {v0, v2}, Lya/b;->i(Lfa/k;)V

    .line 141
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
