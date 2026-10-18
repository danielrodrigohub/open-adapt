.class public final Lya/d$c0;
.super Lya/d$c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->V(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$c<",
        "Ljava/lang/String;",
        "Lhc/n0;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/d$c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lhc/n0;

.field public final synthetic q:Lya/d;

.field public final synthetic r:Lv9/a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;)V
    .locals 2

    iput-object p1, p0, Lya/d$c0;->q:Lya/d;

    iput-object p2, p0, Lya/d$c0;->r:Lv9/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$c;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tserialNumber"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/d$c0;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$c0;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/d$c0$a;

    invoke-direct {p2, p1, p0}, Lya/d$c0$a;-><init>(Lya/d;Lya/d$c0;)V

    .line 7
    iput-object p2, p0, Lya/d$c0;->o:Lya/d$c0$a;

    .line 8
    sget-object p1, Lhc/n0;->i:Lhc/n0;

    iput-object p1, p0, Lya/d$c0;->p:Lhc/n0;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lya/d$c0;->p:Lhc/n0;

    return-object v0
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$c0;->n:Lv9/a;

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

    iget-object v0, p0, Lya/d$c0;->o:Lya/d$c0$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$c0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$c0;->q:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/l5;

    .line 4
    iget-object v3, p0, Lya/d$c0;->q:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/d$c0;->r:Lv9/a;

    .line 7
    invoke-direct {v2, v3, v4, p1}, Lv9/l5;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

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
    iget-object p1, v2, Lv9/l5;->o:Lv9/a;

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
    check-cast p1, Ljava/lang/String;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/d$c0;->q:Lya/d;

    .line 4
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v2, Lv9/n5;

    .line 6
    iget-object v3, v0, Lya/d;->f:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lya/d$c0;->r:Lv9/a;

    .line 8
    invoke-direct {v2, v3, v4, p1}, Lv9/n5;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/String;)V

    .line 9
    instance-of p1, v2, Lv9/p2;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 10
    :cond_0
    instance-of p1, v2, Lv9/a1;

    if-eqz p1, :cond_1

    goto/16 :goto_1

    .line 11
    :cond_1
    instance-of p1, v2, Lv9/w0;

    if-eqz p1, :cond_2

    goto/16 :goto_1

    .line 12
    :cond_2
    instance-of p1, v2, Lv9/e1;

    if-eqz p1, :cond_3

    goto/16 :goto_1

    .line 13
    :cond_3
    instance-of p1, v2, Lv9/p6;

    if-eqz p1, :cond_4

    goto/16 :goto_1

    .line 14
    :cond_4
    instance-of p1, v2, Lv9/f6;

    if-eqz p1, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    instance-of p1, v2, Lv9/x6;

    if-eqz p1, :cond_6

    goto/16 :goto_1

    .line 16
    :cond_6
    instance-of p1, v2, Lv9/m6;

    if-eqz p1, :cond_7

    goto/16 :goto_1

    .line 17
    :cond_7
    instance-of p1, v2, Lv9/j6;

    if-eqz p1, :cond_8

    goto/16 :goto_1

    .line 18
    :cond_8
    instance-of p1, v2, Lv9/t6;

    if-eqz p1, :cond_9

    goto/16 :goto_1

    .line 19
    :cond_9
    instance-of p1, v2, Lv9/q5;

    if-eqz p1, :cond_a

    goto/16 :goto_1

    .line 20
    :cond_a
    instance-of p1, v2, Lv9/x5;

    if-eqz p1, :cond_b

    goto/16 :goto_1

    .line 21
    :cond_b
    instance-of p1, v2, Lv9/a6;

    if-eqz p1, :cond_c

    goto :goto_1

    .line 22
    :cond_c
    instance-of p1, v2, Lv9/t5;

    if-eqz p1, :cond_d

    goto :goto_1

    .line 23
    :cond_d
    instance-of p1, v2, Lv9/u5;

    if-eqz p1, :cond_e

    goto :goto_0

    .line 24
    :cond_e
    instance-of p1, v2, Lv9/c6;

    if-eqz p1, :cond_f

    goto :goto_1

    .line 25
    :cond_f
    instance-of p1, v2, Lv9/q6;

    if-eqz p1, :cond_10

    goto :goto_0

    .line 26
    :cond_10
    instance-of p1, v2, Lv9/o5;

    if-eqz p1, :cond_11

    goto :goto_0

    .line 27
    :cond_11
    instance-of p1, v2, Lv9/g6;

    if-eqz p1, :cond_12

    goto :goto_0

    .line 28
    :cond_12
    instance-of p1, v2, Lv9/p5;

    if-eqz p1, :cond_13

    :goto_0
    move p1, v3

    goto :goto_2

    .line 29
    :cond_13
    instance-of p1, v2, Lv9/c1;

    if-eqz p1, :cond_14

    goto :goto_1

    .line 30
    :cond_14
    instance-of p1, v2, Lv9/t4;

    if-eqz p1, :cond_15

    goto :goto_1

    .line 31
    :cond_15
    instance-of p1, v2, Lv9/l4;

    if-eqz p1, :cond_16

    goto :goto_1

    .line 32
    :cond_16
    instance-of p1, v2, Lv9/y1;

    if-eqz p1, :cond_17

    goto :goto_1

    .line 33
    :cond_17
    instance-of p1, v2, Lv9/c4;

    if-eqz p1, :cond_18

    goto :goto_1

    .line 34
    :cond_18
    instance-of p1, v2, Lv9/y4;

    if-eqz p1, :cond_19

    goto :goto_1

    .line 35
    :cond_19
    instance-of p1, v2, Lv9/w4;

    if-eqz p1, :cond_1a

    goto :goto_1

    .line 36
    :cond_1a
    instance-of p1, v2, Lv9/t3;

    :goto_1
    const/4 p1, 0x2

    .line 37
    :goto_2
    new-instance v4, Leb/c;

    invoke-direct {v4, v2}, Leb/c;-><init>(Leb/d;)V

    .line 38
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_1c

    if-eq p1, v3, :cond_1b

    goto :goto_3

    .line 39
    :cond_1b
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 40
    sget-object p1, Lv9/t;->i:Leb/f;

    new-array v6, v3, [Leb/g;

    aput-object v4, v6, v5

    .line 41
    invoke-virtual {p1, v6}, Leb/f;->a([Leb/g;)V

    goto :goto_3

    .line 42
    :cond_1c
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 43
    sget-object p1, Lv9/t;->i:Leb/f;

    .line 44
    invoke-virtual {p1, v4}, Leb/f;->c(Leb/g;)V

    .line 45
    :goto_3
    iget-object p1, v0, Lya/d;->m:Lv9/p0;

    if-eqz p1, :cond_1d

    .line 46
    invoke-interface {p1, v2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_1d
    new-array p1, v5, [Lv9/p0;

    .line 47
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast p1, [Lv9/p0;

    .line 49
    array-length v1, p1

    :goto_4
    if-ge v5, v1, :cond_1e

    aget-object v4, p1, v5

    .line 50
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v4, v2}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 51
    :cond_1e
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 52
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_26

    .line 53
    iget-object p1, v2, Lv9/n5;->m:Lv9/a;

    .line 54
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-nez p1, :cond_26

    .line 55
    instance-of p1, v2, Lv9/n4;

    if-eqz p1, :cond_1f

    move p1, v3

    goto :goto_5

    .line 56
    :cond_1f
    instance-of p1, v2, Lv9/a2;

    :goto_5
    if-eqz p1, :cond_20

    move p1, v3

    goto :goto_6

    .line 57
    :cond_20
    instance-of p1, v2, Lv9/f2;

    :goto_6
    if-eqz p1, :cond_21

    move p1, v3

    goto :goto_7

    .line 58
    :cond_21
    instance-of p1, v2, Lv9/w4;

    :goto_7
    if-eqz p1, :cond_22

    move p1, v3

    goto :goto_8

    .line 59
    :cond_22
    instance-of p1, v2, Lv9/f4;

    :goto_8
    if-eqz p1, :cond_23

    move p1, v3

    goto :goto_9

    .line 60
    :cond_23
    instance-of p1, v2, Lv9/z3;

    :goto_9
    if-eqz p1, :cond_24

    move p1, v3

    goto :goto_a

    .line 61
    :cond_24
    instance-of p1, v2, Lv9/w3;

    :goto_a
    if-eqz p1, :cond_25

    goto :goto_b

    .line 62
    :cond_25
    instance-of v3, v2, Lv9/y1;

    :goto_b
    if-eqz v3, :cond_26

    .line 63
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/w;

    invoke-direct {v1, v2, v0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_26
    return-void
.end method
