.class public final Lya/d$x;
.super Lya/d$b;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->U(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$b<",
        "Ljava/util/List<",
        "+",
        "Lmc/n;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final m:Lya/d$x$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/lang/String;

.field public final o:Lv9/a;

.field public final synthetic p:Lya/d;

.field public final synthetic q:Lv9/a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;)V
    .locals 1

    iput-object p1, p0, Lya/d$x;->p:Lya/d;

    iput-object p2, p0, Lya/d$x;->q:Lv9/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$b;-><init>(Lya/d;)V

    new-instance v0, Lya/d$x$a;

    invoke-direct {v0, p1, p0}, Lya/d$x$a;-><init>(Lya/d;Lya/d$x;)V

    .line 2
    iput-object v0, p0, Lya/d$x;->m:Lya/d$x$a;

    .line 3
    iget-object p1, p1, Lya/d;->f:Ljava/lang/String;

    const-string v0, "\tgetGestureConfiguration"

    .line 4
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lya/d$x;->n:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lya/d$x;->o:Lv9/a;

    return-void
.end method


# virtual methods
.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$x;->o:Lv9/a;

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

    iget-object v0, p0, Lya/d$x;->m:Lya/d$x$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$x;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$x;->p:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/e3;

    .line 4
    iget-object v3, p0, Lya/d$x;->p:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/d$x;->q:Lv9/a;

    .line 7
    invoke-direct {v2, p1, v3, v4}, Lv9/e3;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Lv9/a;)V

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
    iget-object p1, v2, Lv9/e3;->p:Lv9/a;

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
    .locals 8

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/d$x;->p:Lya/d;

    .line 4
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lmc/n;

    .line 8
    sget-object v4, Lga/a;->j:Lga/a$a;

    invoke-virtual {v4, v3}, Lga/a$a;->a(Lmc/n;)Lga/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lya/d$x;->p:Lya/d;

    .line 10
    iget-object p1, p1, Lya/d;->f:Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lya/d$x;->q:Lv9/a;

    .line 12
    new-instance v4, Lv9/g3;

    invoke-direct {v4, v2, p1, v3}, Lv9/g3;-><init>(Ljava/util/List;Ljava/lang/String;Lv9/a;)V

    .line 13
    instance-of p1, v4, Lv9/p2;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 14
    :cond_1
    instance-of p1, v4, Lv9/a1;

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 15
    :cond_2
    instance-of p1, v4, Lv9/w0;

    if-eqz p1, :cond_3

    goto/16 :goto_2

    .line 16
    :cond_3
    instance-of p1, v4, Lv9/e1;

    if-eqz p1, :cond_4

    goto/16 :goto_2

    .line 17
    :cond_4
    instance-of p1, v4, Lv9/p6;

    if-eqz p1, :cond_5

    goto/16 :goto_2

    .line 18
    :cond_5
    instance-of p1, v4, Lv9/f6;

    if-eqz p1, :cond_6

    goto :goto_1

    .line 19
    :cond_6
    instance-of p1, v4, Lv9/x6;

    if-eqz p1, :cond_7

    goto/16 :goto_2

    .line 20
    :cond_7
    instance-of p1, v4, Lv9/m6;

    if-eqz p1, :cond_8

    goto/16 :goto_2

    .line 21
    :cond_8
    instance-of p1, v4, Lv9/j6;

    if-eqz p1, :cond_9

    goto/16 :goto_2

    .line 22
    :cond_9
    instance-of p1, v4, Lv9/t6;

    if-eqz p1, :cond_a

    goto/16 :goto_2

    .line 23
    :cond_a
    instance-of p1, v4, Lv9/q5;

    if-eqz p1, :cond_b

    goto/16 :goto_2

    .line 24
    :cond_b
    instance-of p1, v4, Lv9/x5;

    if-eqz p1, :cond_c

    goto/16 :goto_2

    .line 25
    :cond_c
    instance-of p1, v4, Lv9/a6;

    if-eqz p1, :cond_d

    goto/16 :goto_2

    .line 26
    :cond_d
    instance-of p1, v4, Lv9/t5;

    if-eqz p1, :cond_e

    goto/16 :goto_2

    .line 27
    :cond_e
    instance-of p1, v4, Lv9/u5;

    if-eqz p1, :cond_f

    goto :goto_1

    .line 28
    :cond_f
    instance-of p1, v4, Lv9/c6;

    if-eqz p1, :cond_10

    goto/16 :goto_2

    .line 29
    :cond_10
    instance-of p1, v4, Lv9/q6;

    if-eqz p1, :cond_11

    goto :goto_1

    .line 30
    :cond_11
    instance-of p1, v4, Lv9/o5;

    if-eqz p1, :cond_12

    goto :goto_1

    .line 31
    :cond_12
    instance-of p1, v4, Lv9/g6;

    if-eqz p1, :cond_13

    goto :goto_1

    .line 32
    :cond_13
    instance-of p1, v4, Lv9/p5;

    if-eqz p1, :cond_14

    :goto_1
    move p1, v2

    goto/16 :goto_3

    .line 33
    :cond_14
    instance-of p1, v4, Lv9/c1;

    if-eqz p1, :cond_15

    goto/16 :goto_2

    .line 34
    :cond_15
    instance-of p1, v4, Lv9/t4;

    if-eqz p1, :cond_16

    goto/16 :goto_2

    .line 35
    :cond_16
    instance-of p1, v4, Lv9/l4;

    if-eqz p1, :cond_17

    goto/16 :goto_2

    .line 36
    :cond_17
    instance-of p1, v4, Lv9/y1;

    if-eqz p1, :cond_18

    goto/16 :goto_2

    .line 37
    :cond_18
    instance-of p1, v4, Lv9/c4;

    if-eqz p1, :cond_19

    goto/16 :goto_2

    .line 38
    :cond_19
    instance-of p1, v4, Lv9/y4;

    if-eqz p1, :cond_1a

    goto/16 :goto_2

    .line 39
    :cond_1a
    instance-of p1, v4, Lv9/w4;

    if-eqz p1, :cond_1b

    goto/16 :goto_2

    .line 40
    :cond_1b
    instance-of p1, v4, Lv9/t3;

    if-eqz p1, :cond_1c

    goto/16 :goto_2

    .line 41
    :cond_1c
    instance-of p1, v4, Lv9/n5;

    if-eqz p1, :cond_1d

    goto/16 :goto_2

    .line 42
    :cond_1d
    instance-of p1, v4, Lv9/e5;

    if-eqz p1, :cond_1e

    goto/16 :goto_2

    .line 43
    :cond_1e
    instance-of p1, v4, Lv9/h5;

    if-eqz p1, :cond_1f

    goto/16 :goto_2

    .line 44
    :cond_1f
    instance-of p1, v4, Lv9/i4;

    if-eqz p1, :cond_20

    goto/16 :goto_2

    .line 45
    :cond_20
    instance-of p1, v4, Lv9/q4;

    if-eqz p1, :cond_21

    goto/16 :goto_2

    .line 46
    :cond_21
    instance-of p1, v4, Lv9/j5;

    if-eqz p1, :cond_22

    goto/16 :goto_2

    .line 47
    :cond_22
    instance-of p1, v4, Lv9/z3;

    if-eqz p1, :cond_23

    goto/16 :goto_2

    .line 48
    :cond_23
    instance-of p1, v4, Lv9/f4;

    if-eqz p1, :cond_24

    goto/16 :goto_2

    .line 49
    :cond_24
    instance-of p1, v4, Lv9/f2;

    if-eqz p1, :cond_25

    goto :goto_2

    .line 50
    :cond_25
    instance-of p1, v4, Lv9/w3;

    if-eqz p1, :cond_26

    goto :goto_2

    .line 51
    :cond_26
    instance-of p1, v4, Lv9/n4;

    if-eqz p1, :cond_27

    goto :goto_2

    .line 52
    :cond_27
    instance-of p1, v4, Lv9/a2;

    if-eqz p1, :cond_28

    goto :goto_2

    .line 53
    :cond_28
    instance-of p1, v4, Lv9/g1;

    if-eqz p1, :cond_29

    goto :goto_2

    .line 54
    :cond_29
    instance-of p1, v4, Lv9/s2;

    if-eqz p1, :cond_2a

    goto :goto_2

    .line 55
    :cond_2a
    instance-of p1, v4, Lv9/h1;

    if-eqz p1, :cond_2b

    goto :goto_2

    .line 56
    :cond_2b
    instance-of p1, v4, Lv9/d3;

    if-eqz p1, :cond_2c

    goto :goto_2

    .line 57
    :cond_2c
    instance-of p1, v4, Lv9/a3;

    if-eqz p1, :cond_2d

    goto :goto_2

    .line 58
    :cond_2d
    instance-of p1, v4, Lv9/k5;

    if-eqz p1, :cond_2e

    goto :goto_2

    .line 59
    :cond_2e
    instance-of p1, v4, Lv9/k2;

    if-eqz p1, :cond_2f

    goto :goto_2

    .line 60
    :cond_2f
    instance-of p1, v4, Lv9/s1;

    if-eqz p1, :cond_30

    goto :goto_2

    .line 61
    :cond_30
    instance-of p1, v4, Lv9/v1;

    if-eqz p1, :cond_31

    goto :goto_2

    .line 62
    :cond_31
    instance-of p1, v4, Lv9/p1;

    if-eqz p1, :cond_32

    goto :goto_2

    .line 63
    :cond_32
    instance-of p1, v4, Lv9/n1;

    if-eqz p1, :cond_33

    goto :goto_2

    .line 64
    :cond_33
    instance-of p1, v4, Lv9/l1;

    if-eqz p1, :cond_34

    goto :goto_2

    .line 65
    :cond_34
    instance-of p1, v4, Lv9/j1;

    :goto_2
    const/4 p1, 0x2

    .line 66
    :goto_3
    new-instance v3, Leb/c;

    invoke-direct {v3, v4}, Leb/c;-><init>(Leb/d;)V

    .line 67
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_36

    if-eq p1, v2, :cond_35

    goto :goto_4

    .line 68
    :cond_35
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 69
    sget-object p1, Lv9/t;->i:Leb/f;

    new-array v6, v2, [Leb/g;

    aput-object v3, v6, v5

    .line 70
    invoke-virtual {p1, v6}, Leb/f;->a([Leb/g;)V

    goto :goto_4

    .line 71
    :cond_36
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 72
    sget-object p1, Lv9/t;->i:Leb/f;

    .line 73
    invoke-virtual {p1, v3}, Leb/f;->c(Leb/g;)V

    .line 74
    :goto_4
    iget-object p1, v0, Lya/d;->m:Lv9/p0;

    if-eqz p1, :cond_37

    .line 75
    invoke-interface {p1, v4}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_37
    new-array p1, v5, [Lv9/p0;

    .line 76
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    check-cast p1, [Lv9/p0;

    .line 78
    array-length v1, p1

    :goto_5
    if-ge v5, v1, :cond_38

    aget-object v3, p1, v5

    .line 79
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v3, v4}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 80
    :cond_38
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 81
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_40

    .line 82
    iget-object p1, v4, Lv9/g3;->n:Lv9/a;

    .line 83
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-nez p1, :cond_40

    .line 84
    instance-of p1, v4, Lv9/n4;

    if-eqz p1, :cond_39

    move p1, v2

    goto :goto_6

    .line 85
    :cond_39
    instance-of p1, v4, Lv9/a2;

    :goto_6
    if-eqz p1, :cond_3a

    move p1, v2

    goto :goto_7

    .line 86
    :cond_3a
    instance-of p1, v4, Lv9/f2;

    :goto_7
    if-eqz p1, :cond_3b

    move p1, v2

    goto :goto_8

    .line 87
    :cond_3b
    instance-of p1, v4, Lv9/w4;

    :goto_8
    if-eqz p1, :cond_3c

    move p1, v2

    goto :goto_9

    .line 88
    :cond_3c
    instance-of p1, v4, Lv9/f4;

    :goto_9
    if-eqz p1, :cond_3d

    move p1, v2

    goto :goto_a

    .line 89
    :cond_3d
    instance-of p1, v4, Lv9/z3;

    :goto_a
    if-eqz p1, :cond_3e

    move p1, v2

    goto :goto_b

    .line 90
    :cond_3e
    instance-of p1, v4, Lv9/w3;

    :goto_b
    if-eqz p1, :cond_3f

    goto :goto_c

    .line 91
    :cond_3f
    instance-of v2, v4, Lv9/y1;

    :goto_c
    if-eqz v2, :cond_40

    .line 92
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/w;

    invoke-direct {v1, v4, v0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_40
    return-void
.end method
