.class public final Lya/d$r;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->h0(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$r;->h:Lya/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lya/d$r;->h:Lya/d;

    .line 2
    invoke-virtual {v0}, Lya/d;->k0()Lic/s;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lya/d$r;->h:Lya/d;

    .line 4
    iget-object v1, v1, Lya/d;->f:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Lic/s;->b(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lya/d$r;->h:Lya/d;

    .line 7
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    new-instance v2, Lv9/f2;

    .line 9
    iget-object v3, v0, Lya/d;->f:Ljava/lang/String;

    .line 10
    sget-object v4, Lv9/e;->j:Lv9/e;

    .line 11
    invoke-direct {v2, v3, v4}, Lv9/f2;-><init>(Ljava/lang/String;Lv9/e;)V

    .line 12
    instance-of v3, v2, Lv9/p2;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_0
    instance-of v3, v2, Lv9/a1;

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 14
    :cond_1
    instance-of v3, v2, Lv9/w0;

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 15
    :cond_2
    instance-of v3, v2, Lv9/e1;

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 16
    :cond_3
    instance-of v3, v2, Lv9/p6;

    if-eqz v3, :cond_4

    goto/16 :goto_1

    .line 17
    :cond_4
    instance-of v3, v2, Lv9/f6;

    if-eqz v3, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    instance-of v3, v2, Lv9/x6;

    if-eqz v3, :cond_6

    goto/16 :goto_1

    .line 19
    :cond_6
    instance-of v3, v2, Lv9/m6;

    if-eqz v3, :cond_7

    goto/16 :goto_1

    .line 20
    :cond_7
    instance-of v3, v2, Lv9/j6;

    if-eqz v3, :cond_8

    goto/16 :goto_1

    .line 21
    :cond_8
    instance-of v3, v2, Lv9/t6;

    if-eqz v3, :cond_9

    goto/16 :goto_1

    .line 22
    :cond_9
    instance-of v3, v2, Lv9/q5;

    if-eqz v3, :cond_a

    goto/16 :goto_1

    .line 23
    :cond_a
    instance-of v3, v2, Lv9/x5;

    if-eqz v3, :cond_b

    goto/16 :goto_1

    .line 24
    :cond_b
    instance-of v3, v2, Lv9/a6;

    if-eqz v3, :cond_c

    goto/16 :goto_1

    .line 25
    :cond_c
    instance-of v3, v2, Lv9/t5;

    if-eqz v3, :cond_d

    goto/16 :goto_1

    .line 26
    :cond_d
    instance-of v3, v2, Lv9/u5;

    if-eqz v3, :cond_e

    goto :goto_0

    .line 27
    :cond_e
    instance-of v3, v2, Lv9/c6;

    if-eqz v3, :cond_f

    goto/16 :goto_1

    .line 28
    :cond_f
    instance-of v3, v2, Lv9/q6;

    if-eqz v3, :cond_10

    goto :goto_0

    .line 29
    :cond_10
    instance-of v3, v2, Lv9/o5;

    if-eqz v3, :cond_11

    goto :goto_0

    .line 30
    :cond_11
    instance-of v3, v2, Lv9/g6;

    if-eqz v3, :cond_12

    goto :goto_0

    .line 31
    :cond_12
    instance-of v3, v2, Lv9/p5;

    if-eqz v3, :cond_13

    :goto_0
    move v3, v4

    goto :goto_2

    .line 32
    :cond_13
    instance-of v3, v2, Lv9/c1;

    if-eqz v3, :cond_14

    goto :goto_1

    .line 33
    :cond_14
    instance-of v3, v2, Lv9/t4;

    if-eqz v3, :cond_15

    goto :goto_1

    .line 34
    :cond_15
    instance-of v3, v2, Lv9/l4;

    if-eqz v3, :cond_16

    goto :goto_1

    .line 35
    :cond_16
    instance-of v3, v2, Lv9/y1;

    if-eqz v3, :cond_17

    goto :goto_1

    .line 36
    :cond_17
    instance-of v3, v2, Lv9/c4;

    if-eqz v3, :cond_18

    goto :goto_1

    .line 37
    :cond_18
    instance-of v3, v2, Lv9/y4;

    if-eqz v3, :cond_19

    goto :goto_1

    .line 38
    :cond_19
    instance-of v3, v2, Lv9/w4;

    if-eqz v3, :cond_1a

    goto :goto_1

    .line 39
    :cond_1a
    instance-of v3, v2, Lv9/t3;

    if-eqz v3, :cond_1b

    goto :goto_1

    .line 40
    :cond_1b
    instance-of v3, v2, Lv9/n5;

    if-eqz v3, :cond_1c

    goto :goto_1

    .line 41
    :cond_1c
    instance-of v3, v2, Lv9/e5;

    if-eqz v3, :cond_1d

    goto :goto_1

    .line 42
    :cond_1d
    instance-of v3, v2, Lv9/h5;

    if-eqz v3, :cond_1e

    goto :goto_1

    .line 43
    :cond_1e
    instance-of v3, v2, Lv9/i4;

    if-eqz v3, :cond_1f

    goto :goto_1

    .line 44
    :cond_1f
    instance-of v3, v2, Lv9/q4;

    if-eqz v3, :cond_20

    goto :goto_1

    .line 45
    :cond_20
    instance-of v3, v2, Lv9/j5;

    if-eqz v3, :cond_21

    goto :goto_1

    .line 46
    :cond_21
    instance-of v3, v2, Lv9/z3;

    if-eqz v3, :cond_22

    goto :goto_1

    .line 47
    :cond_22
    instance-of v3, v2, Lv9/f4;

    :goto_1
    const/4 v3, 0x2

    .line 48
    :goto_2
    new-instance v5, Leb/c;

    invoke-direct {v5, v2}, Leb/c;-><init>(Leb/d;)V

    .line 49
    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_24

    if-eq v3, v4, :cond_23

    goto :goto_3

    .line 50
    :cond_23
    sget-object v3, Lv9/t;->a:Lv9/t;

    .line 51
    sget-object v3, Lv9/t;->i:Leb/f;

    new-array v4, v4, [Leb/g;

    aput-object v5, v4, v6

    .line 52
    invoke-virtual {v3, v4}, Leb/f;->a([Leb/g;)V

    goto :goto_3

    .line 53
    :cond_24
    sget-object v3, Lv9/t;->a:Lv9/t;

    .line 54
    sget-object v3, Lv9/t;->i:Leb/f;

    .line 55
    invoke-virtual {v3, v5}, Leb/f;->c(Leb/g;)V

    .line 56
    :goto_3
    iget-object v3, v0, Lya/d;->m:Lv9/p0;

    if-eqz v3, :cond_25

    .line 57
    invoke-interface {v3, v2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_25
    new-array v3, v6, [Lv9/p0;

    .line 58
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    check-cast v1, [Lv9/p0;

    .line 60
    array-length v3, v1

    :goto_4
    if-ge v6, v3, :cond_26

    aget-object v4, v1, v6

    .line 61
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v4, v2}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 62
    :cond_26
    iget-object v1, v0, Lya/d;->A:Lhc/l0;

    .line 63
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_28

    .line 64
    iget-object v1, v2, Lv9/g;->k:Lv9/a;

    .line 65
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-nez v1, :cond_28

    .line 66
    instance-of v1, v2, Lv9/n4;

    if-eqz v1, :cond_27

    goto :goto_5

    .line 67
    :cond_27
    instance-of v1, v2, Lv9/a2;

    .line 68
    :goto_5
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v3, Lya/w;

    invoke-direct {v3, v2, v0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v1, v3}, Lz9/a;->b(Lqd/a;)V

    .line 69
    :cond_28
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
