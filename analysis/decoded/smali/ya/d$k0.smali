.class public final Lya/d$k0;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;-><init>(Ljava/lang/String;Lea/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Lv9/g;",
        "Lv9/f;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$k0;->h:Lya/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lv9/g;

    check-cast p2, Lv9/f;

    const/4 v0, 0x1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    const/4 v2, 0x0

    if-eqz p1, :cond_48

    .line 2
    instance-of p2, p1, Lv9/f2;

    if-eqz p2, :cond_0

    .line 3
    iget-object v3, p0, Lya/d$k0;->h:Lya/d;

    move-object v4, p1

    check-cast v4, Lv9/f2;

    .line 4
    iget-object v4, v4, Lv9/f2;->m:Lv9/e;

    .line 5
    iput-object v4, v3, Lya/d;->v:Lv9/e;

    .line 6
    :cond_0
    iget-object v3, p0, Lya/d$k0;->h:Lya/d;

    .line 7
    iget-object v4, v3, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    instance-of v5, p1, Lv9/p2;

    if-eqz v5, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    instance-of v5, p1, Lv9/a1;

    if-eqz v5, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    instance-of v5, p1, Lv9/w0;

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 11
    :cond_3
    instance-of v5, p1, Lv9/e1;

    if-eqz v5, :cond_4

    goto/16 :goto_0

    .line 12
    :cond_4
    instance-of v5, p1, Lv9/p6;

    if-eqz v5, :cond_5

    goto/16 :goto_0

    .line 13
    :cond_5
    instance-of v5, p1, Lv9/f6;

    if-eqz v5, :cond_6

    goto/16 :goto_1

    .line 14
    :cond_6
    instance-of v5, p1, Lv9/x6;

    if-eqz v5, :cond_7

    goto/16 :goto_0

    .line 15
    :cond_7
    instance-of v5, p1, Lv9/m6;

    if-eqz v5, :cond_8

    goto/16 :goto_0

    .line 16
    :cond_8
    instance-of v5, p1, Lv9/j6;

    if-eqz v5, :cond_9

    goto/16 :goto_0

    .line 17
    :cond_9
    instance-of v5, p1, Lv9/t6;

    if-eqz v5, :cond_a

    goto/16 :goto_0

    .line 18
    :cond_a
    instance-of v5, p1, Lv9/q5;

    if-eqz v5, :cond_b

    goto/16 :goto_0

    .line 19
    :cond_b
    instance-of v5, p1, Lv9/x5;

    if-eqz v5, :cond_c

    goto/16 :goto_0

    .line 20
    :cond_c
    instance-of v5, p1, Lv9/a6;

    if-eqz v5, :cond_d

    goto/16 :goto_0

    .line 21
    :cond_d
    instance-of v5, p1, Lv9/t5;

    if-eqz v5, :cond_e

    goto/16 :goto_0

    .line 22
    :cond_e
    instance-of v5, p1, Lv9/u5;

    if-eqz v5, :cond_f

    goto/16 :goto_1

    .line 23
    :cond_f
    instance-of v5, p1, Lv9/c6;

    if-eqz v5, :cond_10

    goto/16 :goto_0

    .line 24
    :cond_10
    instance-of v5, p1, Lv9/q6;

    if-eqz v5, :cond_11

    goto/16 :goto_1

    .line 25
    :cond_11
    instance-of v5, p1, Lv9/o5;

    if-eqz v5, :cond_12

    goto/16 :goto_1

    .line 26
    :cond_12
    instance-of v5, p1, Lv9/g6;

    if-eqz v5, :cond_13

    goto/16 :goto_1

    .line 27
    :cond_13
    instance-of v5, p1, Lv9/p5;

    if-eqz v5, :cond_14

    goto/16 :goto_1

    .line 28
    :cond_14
    instance-of v5, p1, Lv9/c1;

    if-eqz v5, :cond_15

    goto/16 :goto_0

    .line 29
    :cond_15
    instance-of v5, p1, Lv9/t4;

    if-eqz v5, :cond_16

    goto/16 :goto_0

    .line 30
    :cond_16
    instance-of v5, p1, Lv9/l4;

    if-eqz v5, :cond_17

    goto/16 :goto_0

    .line 31
    :cond_17
    instance-of v5, p1, Lv9/y1;

    if-eqz v5, :cond_18

    goto/16 :goto_0

    .line 32
    :cond_18
    instance-of v5, p1, Lv9/c4;

    if-eqz v5, :cond_19

    goto/16 :goto_0

    .line 33
    :cond_19
    instance-of v5, p1, Lv9/y4;

    if-eqz v5, :cond_1a

    goto/16 :goto_0

    .line 34
    :cond_1a
    instance-of v5, p1, Lv9/w4;

    if-eqz v5, :cond_1b

    goto/16 :goto_0

    .line 35
    :cond_1b
    instance-of v5, p1, Lv9/t3;

    if-eqz v5, :cond_1c

    goto/16 :goto_0

    .line 36
    :cond_1c
    instance-of v5, p1, Lv9/n5;

    if-eqz v5, :cond_1d

    goto/16 :goto_0

    .line 37
    :cond_1d
    instance-of v5, p1, Lv9/e5;

    if-eqz v5, :cond_1e

    goto/16 :goto_0

    .line 38
    :cond_1e
    instance-of v5, p1, Lv9/h5;

    if-eqz v5, :cond_1f

    goto/16 :goto_0

    .line 39
    :cond_1f
    instance-of v5, p1, Lv9/i4;

    if-eqz v5, :cond_20

    goto/16 :goto_0

    .line 40
    :cond_20
    instance-of v5, p1, Lv9/q4;

    if-eqz v5, :cond_21

    goto/16 :goto_0

    .line 41
    :cond_21
    instance-of v5, p1, Lv9/j5;

    if-eqz v5, :cond_22

    goto/16 :goto_0

    .line 42
    :cond_22
    instance-of v5, p1, Lv9/z3;

    if-eqz v5, :cond_23

    goto/16 :goto_0

    .line 43
    :cond_23
    instance-of v5, p1, Lv9/f4;

    if-eqz v5, :cond_24

    goto/16 :goto_0

    :cond_24
    if-eqz p2, :cond_25

    goto/16 :goto_0

    .line 44
    :cond_25
    instance-of v5, p1, Lv9/w3;

    if-eqz v5, :cond_26

    goto/16 :goto_0

    .line 45
    :cond_26
    instance-of v5, p1, Lv9/n4;

    if-eqz v5, :cond_27

    goto/16 :goto_0

    .line 46
    :cond_27
    instance-of v5, p1, Lv9/a2;

    if-eqz v5, :cond_28

    goto/16 :goto_0

    .line 47
    :cond_28
    instance-of v5, p1, Lv9/g1;

    if-eqz v5, :cond_29

    goto/16 :goto_0

    .line 48
    :cond_29
    instance-of v5, p1, Lv9/s2;

    if-eqz v5, :cond_2a

    goto/16 :goto_0

    .line 49
    :cond_2a
    instance-of v5, p1, Lv9/h1;

    if-eqz v5, :cond_2b

    goto :goto_0

    .line 50
    :cond_2b
    instance-of v5, p1, Lv9/d3;

    if-eqz v5, :cond_2c

    goto :goto_0

    .line 51
    :cond_2c
    instance-of v5, p1, Lv9/a3;

    if-eqz v5, :cond_2d

    goto :goto_0

    .line 52
    :cond_2d
    instance-of v5, p1, Lv9/k5;

    if-eqz v5, :cond_2e

    goto :goto_0

    .line 53
    :cond_2e
    instance-of v5, p1, Lv9/k2;

    if-eqz v5, :cond_2f

    goto :goto_0

    .line 54
    :cond_2f
    instance-of v5, p1, Lv9/s1;

    if-eqz v5, :cond_30

    goto :goto_0

    .line 55
    :cond_30
    instance-of v5, p1, Lv9/v1;

    if-eqz v5, :cond_31

    goto :goto_0

    .line 56
    :cond_31
    instance-of v5, p1, Lv9/p1;

    if-eqz v5, :cond_32

    goto :goto_0

    .line 57
    :cond_32
    instance-of v5, p1, Lv9/n1;

    if-eqz v5, :cond_33

    goto :goto_0

    .line 58
    :cond_33
    instance-of v5, p1, Lv9/l1;

    if-eqz v5, :cond_34

    goto :goto_0

    .line 59
    :cond_34
    instance-of v5, p1, Lv9/j1;

    if-eqz v5, :cond_35

    goto :goto_0

    .line 60
    :cond_35
    instance-of v5, p1, Lv9/g3;

    if-eqz v5, :cond_36

    goto :goto_0

    .line 61
    :cond_36
    instance-of v5, p1, Lv9/j3;

    if-eqz v5, :cond_37

    goto :goto_0

    .line 62
    :cond_37
    instance-of v5, p1, Lv9/n3;

    if-eqz v5, :cond_38

    goto :goto_0

    .line 63
    :cond_38
    instance-of v5, p1, Lv9/q3;

    if-eqz v5, :cond_39

    goto :goto_0

    .line 64
    :cond_39
    instance-of v5, p1, Lv9/k3;

    if-eqz v5, :cond_3a

    :goto_0
    const/4 v5, 0x2

    goto :goto_2

    .line 65
    :cond_3a
    instance-of v5, p1, Lv9/u2;

    if-eqz v5, :cond_3b

    goto :goto_1

    .line 66
    :cond_3b
    instance-of v5, p1, Lv9/y6;

    if-eqz v5, :cond_47

    :goto_1
    move v5, v0

    .line 67
    :goto_2
    new-instance v6, Leb/c;

    invoke-direct {v6, p1}, Leb/c;-><init>(Leb/d;)V

    .line 68
    invoke-static {v5}, Lq/g;->a(I)I

    move-result v5

    if-eqz v5, :cond_3d

    if-eq v5, v0, :cond_3c

    goto :goto_3

    .line 69
    :cond_3c
    sget-object v5, Lv9/t;->a:Lv9/t;

    .line 70
    sget-object v5, Lv9/t;->i:Leb/f;

    new-array v7, v0, [Leb/g;

    aput-object v6, v7, v2

    .line 71
    invoke-virtual {v5, v7}, Leb/f;->a([Leb/g;)V

    goto :goto_3

    .line 72
    :cond_3d
    sget-object v5, Lv9/t;->a:Lv9/t;

    .line 73
    sget-object v5, Lv9/t;->i:Leb/f;

    .line 74
    invoke-virtual {v5, v6}, Leb/f;->c(Leb/g;)V

    .line 75
    :goto_3
    iget-object v5, v3, Lya/d;->m:Lv9/p0;

    if-eqz v5, :cond_3e

    .line 76
    invoke-interface {v5, p1}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_3e
    new-array v5, v2, [Lv9/p0;

    .line 77
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    check-cast v4, [Lv9/p0;

    .line 79
    array-length v1, v4

    :goto_4
    if-ge v2, v1, :cond_3f

    aget-object v5, v4, v2

    .line 80
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v5, p1}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 81
    :cond_3f
    iget-object v1, v3, Lya/d;->A:Lhc/l0;

    .line 82
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_50

    invoke-virtual {p1}, Lv9/g;->a()Lv9/a;

    move-result-object v1

    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-nez v1, :cond_50

    .line 83
    instance-of v1, p1, Lv9/n4;

    if-eqz v1, :cond_40

    move v1, v0

    goto :goto_5

    .line 84
    :cond_40
    instance-of v1, p1, Lv9/a2;

    :goto_5
    if-eqz v1, :cond_41

    move p2, v0

    :cond_41
    if-eqz p2, :cond_42

    move p2, v0

    goto :goto_6

    .line 85
    :cond_42
    instance-of p2, p1, Lv9/w4;

    :goto_6
    if-eqz p2, :cond_43

    move p2, v0

    goto :goto_7

    .line 86
    :cond_43
    instance-of p2, p1, Lv9/f4;

    :goto_7
    if-eqz p2, :cond_44

    move p2, v0

    goto :goto_8

    .line 87
    :cond_44
    instance-of p2, p1, Lv9/z3;

    :goto_8
    if-eqz p2, :cond_45

    move p2, v0

    goto :goto_9

    .line 88
    :cond_45
    instance-of p2, p1, Lv9/w3;

    :goto_9
    if-eqz p2, :cond_46

    goto :goto_a

    .line 89
    :cond_46
    instance-of v0, p1, Lv9/y1;

    :goto_a
    if-eqz v0, :cond_50

    .line 90
    sget-object p2, Lz9/a;->j:Lz9/a;

    new-instance v0, Lya/w;

    invoke-direct {v0, p1, v3}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p2, v0}, Lz9/a;->b(Lqd/a;)V

    goto/16 :goto_12

    .line 91
    :cond_47
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_48
    if-eqz p2, :cond_50

    .line 92
    iget-object p1, p0, Lya/d$k0;->h:Lya/d;

    .line 93
    iget-object v3, p1, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    sget-object v4, Lv9/t;->a:Lv9/t;

    .line 95
    sget-object v4, Lv9/t;->i:Leb/f;

    new-array v5, v0, [Leb/g;

    .line 96
    new-instance v6, Leb/b;

    invoke-direct {v6, p2}, Leb/b;-><init>(Leb/d;)V

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Leb/f;->a([Leb/g;)V

    new-array v4, v2, [Lv9/p0;

    .line 97
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    check-cast v3, [Lv9/p0;

    .line 99
    array-length v1, v3

    :goto_b
    if-ge v2, v1, :cond_49

    aget-object v4, v3, v2

    .line 100
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v6, Lya/r;

    invoke-direct {v6, v4, p2}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v6}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 101
    :cond_49
    iget-object v1, p1, Lya/d;->A:Lhc/l0;

    .line 102
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_50

    invoke-virtual {p2}, Lv9/f;->a()Lv9/a;

    move-result-object v1

    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 103
    instance-of v1, p2, Lv9/m4;

    if-eqz v1, :cond_4a

    move v1, v0

    goto :goto_c

    .line 104
    :cond_4a
    instance-of v1, p2, Lv9/z1;

    :goto_c
    if-eqz v1, :cond_4b

    move v1, v0

    goto :goto_d

    .line 105
    :cond_4b
    instance-of v1, p2, Lv9/u4;

    :goto_d
    if-eqz v1, :cond_4c

    move v1, v0

    goto :goto_e

    .line 106
    :cond_4c
    instance-of v1, p2, Lv9/d4;

    :goto_e
    if-eqz v1, :cond_4d

    move v1, v0

    goto :goto_f

    .line 107
    :cond_4d
    instance-of v1, p2, Lv9/x3;

    :goto_f
    if-eqz v1, :cond_4e

    move v1, v0

    goto :goto_10

    .line 108
    :cond_4e
    instance-of v1, p2, Lv9/u3;

    :goto_10
    if-eqz v1, :cond_4f

    goto :goto_11

    .line 109
    :cond_4f
    instance-of v0, p2, Lv9/w1;

    :goto_11
    if-eqz v0, :cond_50

    .line 110
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, p1, p2}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    .line 111
    :cond_50
    :goto_12
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
