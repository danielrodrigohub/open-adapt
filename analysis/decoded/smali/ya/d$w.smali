.class public final Lya/d$w;
.super Lya/d$b;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->H(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$b<",
        "Lmc/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/d$w$a;
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

    iput-object p1, p0, Lya/d$w;->p:Lya/d;

    iput-object p2, p0, Lya/d$w;->q:Lv9/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$b;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tcolorCurrent"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/d$w;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$w;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/d$w$a;

    invoke-direct {p2, p1, p0}, Lya/d$w$a;-><init>(Lya/d;Lya/d$w;)V

    .line 7
    iput-object p2, p0, Lya/d$w;->o:Lya/d$w$a;

    return-void
.end method


# virtual methods
.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$w;->n:Lv9/a;

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

    iget-object v0, p0, Lya/d$w;->o:Lya/d$w$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$w;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$w;->p:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/u3;

    .line 4
    iget-object v3, p0, Lya/d$w;->p:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/d$w;->q:Lv9/a;

    .line 7
    invoke-direct {v2, v3, v4, p1}, Lv9/u3;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

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

    if-nez p1, :cond_5

    .line 17
    iget-object p1, v2, Lv9/u3;->o:Lv9/a;

    .line 18
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_5

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

    goto :goto_3

    .line 22
    :cond_3
    instance-of v3, v2, Lv9/d4;

    :goto_3
    if-eqz v3, :cond_4

    goto :goto_4

    .line 23
    :cond_4
    instance-of p1, v2, Lv9/x3;

    .line 24
    :goto_4
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v0, v2}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_5
    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lmc/e0;

    const-string v2, "result"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lya/d$w;->p:Lya/d;

    .line 4
    iget-object v3, v2, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v4, Lv9/w3;

    .line 6
    iget-object v5, v2, Lya/d;->f:Ljava/lang/String;

    .line 7
    iget-object v6, v0, Lya/d$w;->q:Lv9/a;

    new-instance v7, Lea/d;

    .line 8
    iget v8, v1, Lmc/e0;->a:I

    .line 9
    iget v9, v1, Lmc/e0;->b:I

    .line 10
    iget v10, v1, Lmc/e0;->c:I

    .line 11
    iget v1, v1, Lmc/e0;->d:I

    const/4 v11, 0x5

    .line 12
    invoke-static {v11}, Lq/g;->b(I)[I

    move-result-object v12

    .line 13
    array-length v13, v12

    const/4 v15, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v15, v13, :cond_2

    aget v16, v12, v15

    .line 14
    invoke-static/range {v16 .. v16}, Lq/g;->a(I)I

    move-result v14

    if-ne v14, v1, :cond_0

    move v14, v11

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_2
    if-nez v16, :cond_3

    const/4 v1, 0x5

    goto :goto_3

    :cond_3
    move/from16 v1, v16

    .line 15
    :goto_3
    invoke-direct {v7, v8, v9, v10, v1}, Lea/d;-><init>(IIII)V

    .line 16
    invoke-direct {v4, v5, v6, v7}, Lv9/w3;-><init>(Ljava/lang/String;Lv9/a;Lea/d;)V

    .line 17
    instance-of v1, v4, Lv9/p2;

    if-eqz v1, :cond_4

    goto/16 :goto_5

    .line 18
    :cond_4
    instance-of v1, v4, Lv9/a1;

    if-eqz v1, :cond_5

    goto/16 :goto_5

    .line 19
    :cond_5
    instance-of v1, v4, Lv9/w0;

    if-eqz v1, :cond_6

    goto/16 :goto_5

    .line 20
    :cond_6
    instance-of v1, v4, Lv9/e1;

    if-eqz v1, :cond_7

    goto/16 :goto_5

    .line 21
    :cond_7
    instance-of v1, v4, Lv9/p6;

    if-eqz v1, :cond_8

    goto/16 :goto_5

    .line 22
    :cond_8
    instance-of v1, v4, Lv9/f6;

    if-eqz v1, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    instance-of v1, v4, Lv9/x6;

    if-eqz v1, :cond_a

    goto/16 :goto_5

    .line 24
    :cond_a
    instance-of v1, v4, Lv9/m6;

    if-eqz v1, :cond_b

    goto/16 :goto_5

    .line 25
    :cond_b
    instance-of v1, v4, Lv9/j6;

    if-eqz v1, :cond_c

    goto/16 :goto_5

    .line 26
    :cond_c
    instance-of v1, v4, Lv9/t6;

    if-eqz v1, :cond_d

    goto/16 :goto_5

    .line 27
    :cond_d
    instance-of v1, v4, Lv9/q5;

    if-eqz v1, :cond_e

    goto/16 :goto_5

    .line 28
    :cond_e
    instance-of v1, v4, Lv9/x5;

    if-eqz v1, :cond_f

    goto/16 :goto_5

    .line 29
    :cond_f
    instance-of v1, v4, Lv9/a6;

    if-eqz v1, :cond_10

    goto/16 :goto_5

    .line 30
    :cond_10
    instance-of v1, v4, Lv9/t5;

    if-eqz v1, :cond_11

    goto/16 :goto_5

    .line 31
    :cond_11
    instance-of v1, v4, Lv9/u5;

    if-eqz v1, :cond_12

    goto :goto_4

    .line 32
    :cond_12
    instance-of v1, v4, Lv9/c6;

    if-eqz v1, :cond_13

    goto/16 :goto_5

    .line 33
    :cond_13
    instance-of v1, v4, Lv9/q6;

    if-eqz v1, :cond_14

    goto :goto_4

    .line 34
    :cond_14
    instance-of v1, v4, Lv9/o5;

    if-eqz v1, :cond_15

    goto :goto_4

    .line 35
    :cond_15
    instance-of v1, v4, Lv9/g6;

    if-eqz v1, :cond_16

    goto :goto_4

    .line 36
    :cond_16
    instance-of v1, v4, Lv9/p5;

    if-eqz v1, :cond_17

    :goto_4
    move v1, v11

    goto/16 :goto_6

    .line 37
    :cond_17
    instance-of v1, v4, Lv9/c1;

    if-eqz v1, :cond_18

    goto :goto_5

    .line 38
    :cond_18
    instance-of v1, v4, Lv9/t4;

    if-eqz v1, :cond_19

    goto :goto_5

    .line 39
    :cond_19
    instance-of v1, v4, Lv9/l4;

    if-eqz v1, :cond_1a

    goto :goto_5

    .line 40
    :cond_1a
    instance-of v1, v4, Lv9/y1;

    if-eqz v1, :cond_1b

    goto :goto_5

    .line 41
    :cond_1b
    instance-of v1, v4, Lv9/c4;

    if-eqz v1, :cond_1c

    goto :goto_5

    .line 42
    :cond_1c
    instance-of v1, v4, Lv9/y4;

    if-eqz v1, :cond_1d

    goto :goto_5

    .line 43
    :cond_1d
    instance-of v1, v4, Lv9/w4;

    if-eqz v1, :cond_1e

    goto :goto_5

    .line 44
    :cond_1e
    instance-of v1, v4, Lv9/t3;

    if-eqz v1, :cond_1f

    goto :goto_5

    .line 45
    :cond_1f
    instance-of v1, v4, Lv9/n5;

    if-eqz v1, :cond_20

    goto :goto_5

    .line 46
    :cond_20
    instance-of v1, v4, Lv9/e5;

    if-eqz v1, :cond_21

    goto :goto_5

    .line 47
    :cond_21
    instance-of v1, v4, Lv9/h5;

    if-eqz v1, :cond_22

    goto :goto_5

    .line 48
    :cond_22
    instance-of v1, v4, Lv9/i4;

    if-eqz v1, :cond_23

    goto :goto_5

    .line 49
    :cond_23
    instance-of v1, v4, Lv9/q4;

    if-eqz v1, :cond_24

    goto :goto_5

    .line 50
    :cond_24
    instance-of v1, v4, Lv9/j5;

    if-eqz v1, :cond_25

    goto :goto_5

    .line 51
    :cond_25
    instance-of v1, v4, Lv9/z3;

    if-eqz v1, :cond_26

    goto :goto_5

    .line 52
    :cond_26
    instance-of v1, v4, Lv9/f4;

    if-eqz v1, :cond_27

    goto :goto_5

    .line 53
    :cond_27
    instance-of v1, v4, Lv9/f2;

    :goto_5
    const/4 v1, 0x2

    .line 54
    :goto_6
    new-instance v5, Leb/c;

    invoke-direct {v5, v4}, Leb/c;-><init>(Leb/d;)V

    .line 55
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    if-eqz v1, :cond_29

    if-eq v1, v11, :cond_28

    goto :goto_7

    .line 56
    :cond_28
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 57
    sget-object v1, Lv9/t;->i:Leb/f;

    new-array v6, v11, [Leb/g;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 58
    invoke-virtual {v1, v6}, Leb/f;->a([Leb/g;)V

    goto :goto_7

    .line 59
    :cond_29
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 60
    sget-object v1, Lv9/t;->i:Leb/f;

    .line 61
    invoke-virtual {v1, v5}, Leb/f;->c(Leb/g;)V

    .line 62
    :goto_7
    iget-object v1, v2, Lya/d;->m:Lv9/p0;

    if-eqz v1, :cond_2a

    .line 63
    invoke-interface {v1, v4}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_2a
    const/4 v1, 0x0

    new-array v5, v1, [Lv9/p0;

    .line 64
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    check-cast v3, [Lv9/p0;

    .line 66
    array-length v5, v3

    move v14, v1

    :goto_8
    if-ge v14, v5, :cond_2b

    aget-object v1, v3, v14

    .line 67
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v1, v4}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 68
    :cond_2b
    iget-object v1, v2, Lya/d;->A:Lhc/l0;

    .line 69
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_31

    .line 70
    iget-object v1, v4, Lv9/w3;->m:Lv9/a;

    .line 71
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-nez v1, :cond_31

    .line 72
    instance-of v1, v4, Lv9/n4;

    if-eqz v1, :cond_2c

    move v1, v11

    goto :goto_9

    .line 73
    :cond_2c
    instance-of v1, v4, Lv9/a2;

    :goto_9
    if-eqz v1, :cond_2d

    move v1, v11

    goto :goto_a

    .line 74
    :cond_2d
    instance-of v1, v4, Lv9/f2;

    :goto_a
    if-eqz v1, :cond_2e

    move v1, v11

    goto :goto_b

    .line 75
    :cond_2e
    instance-of v1, v4, Lv9/w4;

    :goto_b
    if-eqz v1, :cond_2f

    goto :goto_c

    .line 76
    :cond_2f
    instance-of v11, v4, Lv9/f4;

    :goto_c
    if-eqz v11, :cond_30

    goto :goto_d

    .line 77
    :cond_30
    instance-of v1, v4, Lv9/z3;

    .line 78
    :goto_d
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v3, Lya/w;

    invoke-direct {v3, v4, v2}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v1, v3}, Lz9/a;->b(Lqd/a;)V

    :cond_31
    return-void
.end method
