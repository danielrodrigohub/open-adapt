.class public final Lya/d$z;
.super Lya/d$b;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->o(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$b<",
        "Lmc/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/d$z$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Lya/d;

.field public final synthetic q:Lv9/a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;)V
    .locals 2

    iput-object p1, p0, Lya/d$z;->p:Lya/d;

    iput-object p2, p0, Lya/d$z;->q:Lv9/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$b;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tgetLaceEngineStats"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/d$z;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$z;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/d$z$a;

    invoke-direct {p2, p1, p0}, Lya/d$z$a;-><init>(Lya/d;Lya/d$z;)V

    .line 7
    iput-object p2, p0, Lya/d$z;->o:Lya/d$z$a;

    return-void
.end method


# virtual methods
.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$z;->n:Lv9/a;

    return-object v0
.end method

.method public final o()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lya/d$z;->o:Lya/d$z$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$z;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$z;->p:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/a4;

    .line 4
    iget-object v3, p0, Lya/d$z;->p:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/d$z;->q:Lv9/a;

    .line 7
    invoke-direct {v2, v3, v4, p1}, Lv9/a4;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 9
    sget-object p1, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 10
    new-instance v5, Leb/b;

    invoke-direct {v5, v2}, Leb/b;-><init>(Leb/d;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Leb/f;->a([Leb/g;)V

    new-array p1, v6, [Lv9/p0;

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast p1, [Lv9/p0;

    .line 13
    array-length v1, p1

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v4, p1, v6

    .line 14
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, v2}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 16
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_7

    .line 17
    iget-object p1, v2, Lv9/a4;->o:Lv9/a;

    .line 18
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    instance-of p1, v2, Lv9/m4;

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    .line 20
    :cond_1
    instance-of p1, v2, Lv9/z1;

    :goto_1
    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    .line 21
    :cond_2
    instance-of p1, v2, Lv9/u4;

    :goto_2
    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_3

    .line 22
    :cond_3
    instance-of p1, v2, Lv9/d4;

    :goto_3
    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_4

    .line 23
    :cond_4
    instance-of p1, v2, Lv9/x3;

    :goto_4
    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_5

    .line 24
    :cond_5
    instance-of p1, v2, Lv9/u3;

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    .line 25
    :cond_6
    instance-of v3, v2, Lv9/w1;

    :goto_6
    if-eqz v3, :cond_7

    .line 26
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v0, v2}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_7
    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lmc/f;

    const-string v2, "result"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lya/d$z;->p:Lya/d;

    .line 4
    iget-object v3, v2, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v4, Lv9/c4;

    .line 6
    iget-object v5, v2, Lya/d;->f:Ljava/lang/String;

    .line 7
    iget-object v6, v0, Lya/d$z;->q:Lv9/a;

    .line 8
    new-instance v15, Lba/i;

    .line 9
    new-instance v8, Lba/m;

    .line 10
    iget-object v7, v1, Lmc/f;->h:Lmc/d;

    .line 11
    iget v9, v7, Lmc/d;->h:I

    .line 12
    iget v10, v7, Lmc/d;->i:I

    .line 13
    iget v11, v7, Lmc/d;->j:I

    .line 14
    iget v12, v7, Lmc/d;->k:I

    .line 15
    iget v13, v7, Lmc/d;->l:I

    .line 16
    iget v14, v7, Lmc/d;->m:I

    .line 17
    iget v0, v7, Lmc/d;->n:I

    move-object/from16 p1, v3

    .line 18
    iget v3, v7, Lmc/d;->o:I

    .line 19
    iget v7, v7, Lmc/d;->p:I

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v7

    .line 20
    invoke-direct/range {v16 .. v25}, Lba/m;-><init>(IIIIIIIII)V

    .line 21
    new-instance v9, Lba/n;

    .line 22
    iget-object v0, v1, Lmc/f;->i:Lmc/g;

    .line 23
    iget v3, v0, Lmc/g;->h:I

    .line 24
    iget v0, v0, Lmc/g;->i:I

    .line 25
    invoke-direct {v9, v3, v0}, Lba/n;-><init>(II)V

    .line 26
    new-instance v10, Lba/r;

    .line 27
    iget-object v0, v1, Lmc/f;->j:Lmc/i;

    .line 28
    iget v3, v0, Lmc/i;->h:I

    .line 29
    iget v7, v0, Lmc/i;->i:I

    .line 30
    iget v11, v0, Lmc/i;->j:I

    .line 31
    iget v12, v0, Lmc/i;->k:I

    .line 32
    iget v13, v0, Lmc/i;->l:I

    .line 33
    iget v14, v0, Lmc/i;->m:I

    move-object/from16 v26, v2

    .line 34
    iget v2, v0, Lmc/i;->n:I

    move-object/from16 v27, v4

    .line 35
    iget v4, v0, Lmc/i;->o:I

    .line 36
    iget v0, v0, Lmc/i;->p:I

    move-object/from16 v16, v10

    move/from16 v17, v3

    move/from16 v18, v7

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v2

    move/from16 v24, v4

    move/from16 v25, v0

    .line 37
    invoke-direct/range {v16 .. v25}, Lba/r;-><init>(IIIIIIIII)V

    .line 38
    new-instance v11, Lba/i0;

    .line 39
    iget-object v0, v1, Lmc/f;->k:Lmc/u;

    .line 40
    iget v2, v0, Lmc/u;->h:I

    .line 41
    iget v3, v0, Lmc/u;->i:I

    .line 42
    iget v4, v0, Lmc/u;->j:I

    .line 43
    iget v7, v0, Lmc/u;->k:I

    .line 44
    iget v12, v0, Lmc/u;->l:I

    .line 45
    iget v13, v0, Lmc/u;->m:I

    .line 46
    iget v14, v0, Lmc/u;->n:I

    move-object/from16 v28, v5

    .line 47
    iget v5, v0, Lmc/u;->o:I

    .line 48
    iget v0, v0, Lmc/u;->p:I

    move-object/from16 v16, v11

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v7

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v5

    move/from16 v25, v0

    .line 49
    invoke-direct/range {v16 .. v25}, Lba/i0;-><init>(IIIIIIIII)V

    .line 50
    new-instance v12, Lba/k0;

    .line 51
    iget-object v0, v1, Lmc/f;->l:Lmc/f0;

    .line 52
    iget v2, v0, Lmc/f0;->h:I

    .line 53
    iget v3, v0, Lmc/f0;->i:I

    .line 54
    iget v4, v0, Lmc/f0;->j:I

    .line 55
    iget v0, v0, Lmc/f0;->k:I

    .line 56
    invoke-direct {v12, v2, v3, v4, v0}, Lba/k0;-><init>(IIII)V

    .line 57
    new-instance v13, Lba/o0;

    .line 58
    iget-object v0, v1, Lmc/f;->m:Lmc/i0;

    .line 59
    iget v2, v0, Lmc/i0;->h:I

    .line 60
    iget v3, v0, Lmc/i0;->i:I

    .line 61
    iget v4, v0, Lmc/i0;->j:I

    .line 62
    iget v0, v0, Lmc/i0;->k:I

    .line 63
    invoke-direct {v13, v2, v3, v4, v0}, Lba/o0;-><init>(IIII)V

    .line 64
    new-instance v14, Lba/w;

    .line 65
    iget-object v0, v1, Lmc/f;->n:Lmc/q;

    .line 66
    iget v1, v0, Lmc/q;->h:I

    .line 67
    iget v0, v0, Lmc/q;->i:I

    .line 68
    invoke-direct {v14, v1, v0}, Lba/w;-><init>(II)V

    move-object v7, v15

    .line 69
    invoke-direct/range {v7 .. v14}, Lba/i;-><init>(Lba/m;Lba/n;Lba/r;Lba/i0;Lba/k0;Lba/o0;Lba/w;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    .line 70
    invoke-direct {v0, v1, v6, v15}, Lv9/c4;-><init>(Ljava/lang/String;Lv9/a;Lba/i;)V

    .line 71
    instance-of v1, v0, Lv9/p2;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 72
    :cond_0
    instance-of v1, v0, Lv9/a1;

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 73
    :cond_1
    instance-of v1, v0, Lv9/w0;

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 74
    :cond_2
    instance-of v1, v0, Lv9/e1;

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 75
    :cond_3
    instance-of v1, v0, Lv9/p6;

    if-eqz v1, :cond_4

    goto/16 :goto_1

    .line 76
    :cond_4
    instance-of v1, v0, Lv9/f6;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 77
    :cond_5
    instance-of v1, v0, Lv9/x6;

    if-eqz v1, :cond_6

    goto/16 :goto_1

    .line 78
    :cond_6
    instance-of v1, v0, Lv9/m6;

    if-eqz v1, :cond_7

    goto/16 :goto_1

    .line 79
    :cond_7
    instance-of v1, v0, Lv9/j6;

    if-eqz v1, :cond_8

    goto :goto_1

    .line 80
    :cond_8
    instance-of v1, v0, Lv9/t6;

    if-eqz v1, :cond_9

    goto :goto_1

    .line 81
    :cond_9
    instance-of v1, v0, Lv9/q5;

    if-eqz v1, :cond_a

    goto :goto_1

    .line 82
    :cond_a
    instance-of v1, v0, Lv9/x5;

    if-eqz v1, :cond_b

    goto :goto_1

    .line 83
    :cond_b
    instance-of v1, v0, Lv9/a6;

    if-eqz v1, :cond_c

    goto :goto_1

    .line 84
    :cond_c
    instance-of v1, v0, Lv9/t5;

    if-eqz v1, :cond_d

    goto :goto_1

    .line 85
    :cond_d
    instance-of v1, v0, Lv9/u5;

    if-eqz v1, :cond_e

    goto :goto_0

    .line 86
    :cond_e
    instance-of v1, v0, Lv9/c6;

    if-eqz v1, :cond_f

    goto :goto_1

    .line 87
    :cond_f
    instance-of v1, v0, Lv9/q6;

    if-eqz v1, :cond_10

    goto :goto_0

    .line 88
    :cond_10
    instance-of v1, v0, Lv9/o5;

    if-eqz v1, :cond_11

    goto :goto_0

    .line 89
    :cond_11
    instance-of v1, v0, Lv9/g6;

    if-eqz v1, :cond_12

    goto :goto_0

    .line 90
    :cond_12
    instance-of v1, v0, Lv9/p5;

    if-eqz v1, :cond_13

    :goto_0
    move v1, v2

    goto :goto_2

    .line 91
    :cond_13
    instance-of v1, v0, Lv9/c1;

    if-eqz v1, :cond_14

    goto :goto_1

    .line 92
    :cond_14
    instance-of v1, v0, Lv9/t4;

    if-eqz v1, :cond_15

    goto :goto_1

    .line 93
    :cond_15
    instance-of v1, v0, Lv9/l4;

    if-eqz v1, :cond_16

    goto :goto_1

    .line 94
    :cond_16
    instance-of v1, v0, Lv9/y1;

    :goto_1
    const/4 v1, 0x2

    .line 95
    :goto_2
    new-instance v3, Leb/c;

    invoke-direct {v3, v0}, Leb/c;-><init>(Leb/d;)V

    .line 96
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_18

    if-eq v1, v2, :cond_17

    goto :goto_3

    .line 97
    :cond_17
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 98
    sget-object v1, Lv9/t;->i:Leb/f;

    new-array v5, v2, [Leb/g;

    aput-object v3, v5, v4

    .line 99
    invoke-virtual {v1, v5}, Leb/f;->a([Leb/g;)V

    goto :goto_3

    .line 100
    :cond_18
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 101
    sget-object v1, Lv9/t;->i:Leb/f;

    .line 102
    invoke-virtual {v1, v3}, Leb/f;->c(Leb/g;)V

    :goto_3
    move-object/from16 v1, v26

    .line 103
    iget-object v3, v1, Lya/d;->m:Lv9/p0;

    if-eqz v3, :cond_19

    .line 104
    invoke-interface {v3, v0}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_19
    new-array v3, v4, [Lv9/p0;

    move-object/from16 v5, p1

    .line 105
    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    check-cast v3, [Lv9/p0;

    .line 107
    array-length v5, v3

    :goto_4
    if-ge v4, v5, :cond_1a

    aget-object v6, v3, v4

    .line 108
    sget-object v7, Lz9/a;->j:Lz9/a;

    new-instance v8, Lya/u;

    invoke-direct {v8, v6, v0}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v7, v8}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 109
    :cond_1a
    iget-object v3, v1, Lya/d;->A:Lhc/l0;

    .line 110
    instance-of v3, v3, Lza/a;

    if-nez v3, :cond_22

    .line 111
    iget-object v3, v0, Lv9/c4;->m:Lv9/a;

    .line 112
    invoke-virtual {v3}, Lv9/a;->b()Z

    move-result v3

    if-nez v3, :cond_22

    .line 113
    instance-of v3, v0, Lv9/n4;

    if-eqz v3, :cond_1b

    move v3, v2

    goto :goto_5

    .line 114
    :cond_1b
    instance-of v3, v0, Lv9/a2;

    :goto_5
    if-eqz v3, :cond_1c

    move v3, v2

    goto :goto_6

    .line 115
    :cond_1c
    instance-of v3, v0, Lv9/f2;

    :goto_6
    if-eqz v3, :cond_1d

    move v3, v2

    goto :goto_7

    .line 116
    :cond_1d
    instance-of v3, v0, Lv9/w4;

    :goto_7
    if-eqz v3, :cond_1e

    move v3, v2

    goto :goto_8

    .line 117
    :cond_1e
    instance-of v3, v0, Lv9/f4;

    :goto_8
    if-eqz v3, :cond_1f

    move v3, v2

    goto :goto_9

    .line 118
    :cond_1f
    instance-of v3, v0, Lv9/z3;

    :goto_9
    if-eqz v3, :cond_20

    move v3, v2

    goto :goto_a

    .line 119
    :cond_20
    instance-of v3, v0, Lv9/w3;

    :goto_a
    if-eqz v3, :cond_21

    goto :goto_b

    .line 120
    :cond_21
    instance-of v2, v0, Lv9/y1;

    :goto_b
    if-eqz v2, :cond_22

    .line 121
    sget-object v2, Lz9/a;->j:Lz9/a;

    new-instance v3, Lya/w;

    invoke-direct {v3, v0, v1}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v2, v3}, Lz9/a;->b(Lqd/a;)V

    :cond_22
    return-void
.end method
