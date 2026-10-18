.class public final Lya/d$k;
.super Ljava/lang/Object;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lic/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;-><init>(Ljava/lang/String;Lea/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$k;->a:Lya/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lf8/b;)V
    .locals 11

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authKey"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "coreRFConnectionState"

    invoke-static {p3, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v0

    iget-object p2, p0, Lya/d$k;->a:Lya/d;

    invoke-virtual {p2}, Lya/d;->j0()Z

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lya/d$k;->a:Lya/d;

    .line 3
    iget-object p2, p2, Lya/d;->f:Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 5
    instance-of p2, p3, Lic/b;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lya/d$k;->a:Lya/d;

    .line 7
    iget-object p2, p2, Lya/d;->n:Lfa/c;

    .line 8
    iget-object p2, p2, Lfa/c;->j:Lfa/k;

    .line 9
    sget-object v2, Lfa/k$n;->h:Lfa/k$n;

    invoke-static {p2, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lya/d$k;->a:Lya/d;

    sget-object v2, Lfa/k$u;->h:Lfa/k$u;

    invoke-virtual {p2, v2}, Lya/d;->i(Lfa/k;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lya/d$k;->a:Lya/d;

    .line 12
    iget-object v2, p2, Lya/d;->n:Lfa/c;

    .line 13
    new-instance v3, Lfb/c;

    .line 14
    move-object v4, p3

    check-cast v4, Lic/b;

    .line 15
    iget-object v4, v4, Lic/b;->c:Ljava/lang/String;

    .line 16
    invoke-direct {v3, v4}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 17
    sget-object v4, Lfa/k$r;->h:Lfa/k$r;

    .line 18
    invoke-static {v2, v3, v1, v4, v0}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v2

    .line 19
    iput-object v2, p2, Lya/d;->n:Lfa/c;

    .line 20
    :cond_1
    :goto_0
    iget-object p2, p0, Lya/d$k;->a:Lya/d;

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p2, p3, v2}, Lya/d;->r0(Lf8/b;Z)Lda/d;

    move-result-object p2

    .line 22
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 23
    sget-object v3, Lda/d;->o:Lda/d;

    if-ne p2, v3, :cond_2

    .line 24
    iget-object v3, p3, Lya/d;->A:Lhc/l0;

    .line 25
    instance-of v3, v3, Lza/a;

    if-eqz v3, :cond_2

    .line 26
    sget-object p2, Lda/d;->p:Lda/d;

    .line 27
    :cond_2
    sget-object v3, Lda/d;->s:Lda/d;

    if-ne p2, v3, :cond_5

    .line 28
    iget-object p3, p3, Lya/d;->n:Lfa/c;

    .line 29
    iget-object p3, p3, Lfa/c;->j:Lfa/k;

    .line 30
    invoke-interface {p3}, Lfa/k;->h()Lfa/k$c0;

    move-result-object p3

    sget-object v3, Lfa/k$c0;->n:Lfa/k$c0;

    if-ne p3, v3, :cond_3

    .line 31
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 32
    iget-object v3, p3, Lya/d;->n:Lfa/c;

    .line 33
    new-instance v4, Lfa/k$h;

    invoke-direct {v4, v3}, Lfa/k$h;-><init>(Lfa/c;)V

    const/4 v5, 0x3

    invoke-static {v3, v1, v1, v4, v5}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v3

    .line 34
    iput-object v3, p3, Lya/d;->n:Lfa/c;

    .line 35
    :cond_3
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 36
    iget-object v3, p3, Lya/d;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 37
    iget-object v3, p3, Lya/d;->w:Lya/h0;

    if-eqz v3, :cond_4

    sget-object v4, Lya/d$e;->h:Lya/d$e;

    invoke-virtual {v3, v4}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 38
    :cond_4
    invoke-virtual {p3}, Lya/d;->p0()V

    .line 39
    :cond_5
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    if-eq v3, v0, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    move v3, v4

    .line 40
    :goto_1
    iput-boolean v3, p3, Lya/d;->x:Z

    .line 41
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    invoke-virtual {p3}, Lya/d;->j0()Z

    move-result p3

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    if-eqz p3, :cond_33

    .line 42
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_32

    const/4 v5, 0x4

    if-eq p3, v5, :cond_30

    const/4 v5, 0x7

    if-eq p3, v5, :cond_2f

    packed-switch p3, :pswitch_data_0

    .line 43
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 44
    invoke-virtual {p3}, Lya/d;->q0()V

    .line 45
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 46
    iget-object v1, p3, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    new-instance v5, Lv9/f2;

    .line 48
    invoke-static {p2}, Lda/e;->j(Lda/d;)Lv9/e;

    move-result-object v6

    .line 49
    invoke-direct {v5, p1, v6}, Lv9/f2;-><init>(Ljava/lang/String;Lv9/e;)V

    .line 50
    instance-of v6, v5, Lv9/p2;

    if-eqz v6, :cond_7

    goto/16 :goto_3

    .line 51
    :cond_7
    instance-of v6, v5, Lv9/a1;

    if-eqz v6, :cond_8

    goto/16 :goto_3

    .line 52
    :cond_8
    instance-of v6, v5, Lv9/w0;

    if-eqz v6, :cond_9

    goto/16 :goto_3

    .line 53
    :cond_9
    instance-of v6, v5, Lv9/e1;

    if-eqz v6, :cond_a

    goto/16 :goto_3

    .line 54
    :cond_a
    instance-of v6, v5, Lv9/p6;

    if-eqz v6, :cond_b

    goto/16 :goto_3

    .line 55
    :cond_b
    instance-of v6, v5, Lv9/f6;

    if-eqz v6, :cond_c

    goto :goto_2

    .line 56
    :cond_c
    instance-of v6, v5, Lv9/x6;

    if-eqz v6, :cond_d

    goto/16 :goto_3

    .line 57
    :cond_d
    instance-of v6, v5, Lv9/m6;

    if-eqz v6, :cond_e

    goto/16 :goto_3

    .line 58
    :cond_e
    instance-of v6, v5, Lv9/j6;

    if-eqz v6, :cond_f

    goto/16 :goto_3

    .line 59
    :cond_f
    instance-of v6, v5, Lv9/t6;

    if-eqz v6, :cond_10

    goto/16 :goto_3

    .line 60
    :cond_10
    instance-of v6, v5, Lv9/q5;

    if-eqz v6, :cond_11

    goto/16 :goto_3

    .line 61
    :cond_11
    instance-of v6, v5, Lv9/x5;

    if-eqz v6, :cond_12

    goto/16 :goto_3

    .line 62
    :cond_12
    instance-of v6, v5, Lv9/a6;

    if-eqz v6, :cond_13

    goto/16 :goto_3

    .line 63
    :cond_13
    instance-of v6, v5, Lv9/t5;

    if-eqz v6, :cond_14

    goto/16 :goto_3

    .line 64
    :cond_14
    instance-of v6, v5, Lv9/u5;

    if-eqz v6, :cond_15

    goto :goto_2

    .line 65
    :cond_15
    instance-of v6, v5, Lv9/c6;

    if-eqz v6, :cond_16

    goto/16 :goto_3

    .line 66
    :cond_16
    instance-of v6, v5, Lv9/q6;

    if-eqz v6, :cond_17

    goto :goto_2

    .line 67
    :cond_17
    instance-of v6, v5, Lv9/o5;

    if-eqz v6, :cond_18

    goto :goto_2

    .line 68
    :cond_18
    instance-of v6, v5, Lv9/g6;

    if-eqz v6, :cond_19

    goto :goto_2

    .line 69
    :cond_19
    instance-of v6, v5, Lv9/p5;

    if-eqz v6, :cond_1a

    :goto_2
    move v6, v4

    goto/16 :goto_4

    .line 70
    :cond_1a
    instance-of v6, v5, Lv9/c1;

    if-eqz v6, :cond_1b

    goto :goto_3

    .line 71
    :cond_1b
    instance-of v6, v5, Lv9/t4;

    if-eqz v6, :cond_1c

    goto :goto_3

    .line 72
    :cond_1c
    instance-of v6, v5, Lv9/l4;

    if-eqz v6, :cond_1d

    goto :goto_3

    .line 73
    :cond_1d
    instance-of v6, v5, Lv9/y1;

    if-eqz v6, :cond_1e

    goto :goto_3

    .line 74
    :cond_1e
    instance-of v6, v5, Lv9/c4;

    if-eqz v6, :cond_1f

    goto :goto_3

    .line 75
    :cond_1f
    instance-of v6, v5, Lv9/y4;

    if-eqz v6, :cond_20

    goto :goto_3

    .line 76
    :cond_20
    instance-of v6, v5, Lv9/w4;

    if-eqz v6, :cond_21

    goto :goto_3

    .line 77
    :cond_21
    instance-of v6, v5, Lv9/t3;

    if-eqz v6, :cond_22

    goto :goto_3

    .line 78
    :cond_22
    instance-of v6, v5, Lv9/n5;

    if-eqz v6, :cond_23

    goto :goto_3

    .line 79
    :cond_23
    instance-of v6, v5, Lv9/e5;

    if-eqz v6, :cond_24

    goto :goto_3

    .line 80
    :cond_24
    instance-of v6, v5, Lv9/h5;

    if-eqz v6, :cond_25

    goto :goto_3

    .line 81
    :cond_25
    instance-of v6, v5, Lv9/i4;

    if-eqz v6, :cond_26

    goto :goto_3

    .line 82
    :cond_26
    instance-of v6, v5, Lv9/q4;

    if-eqz v6, :cond_27

    goto :goto_3

    .line 83
    :cond_27
    instance-of v6, v5, Lv9/j5;

    if-eqz v6, :cond_28

    goto :goto_3

    .line 84
    :cond_28
    instance-of v6, v5, Lv9/z3;

    if-eqz v6, :cond_29

    goto :goto_3

    .line 85
    :cond_29
    instance-of v6, v5, Lv9/f4;

    :goto_3
    move v6, v0

    .line 86
    :goto_4
    new-instance v7, Leb/c;

    invoke-direct {v7, v5}, Leb/c;-><init>(Leb/d;)V

    .line 87
    invoke-static {v6}, Lq/g;->a(I)I

    move-result v6

    if-eqz v6, :cond_2b

    if-eq v6, v4, :cond_2a

    goto :goto_5

    .line 88
    :cond_2a
    sget-object v6, Lv9/t;->a:Lv9/t;

    .line 89
    sget-object v6, Lv9/t;->i:Leb/f;

    new-array v8, v4, [Leb/g;

    aput-object v7, v8, v2

    .line 90
    invoke-virtual {v6, v8}, Leb/f;->a([Leb/g;)V

    goto :goto_5

    .line 91
    :cond_2b
    sget-object v6, Lv9/t;->a:Lv9/t;

    .line 92
    sget-object v6, Lv9/t;->i:Leb/f;

    .line 93
    invoke-virtual {v6, v7}, Leb/f;->c(Leb/g;)V

    .line 94
    :goto_5
    iget-object v6, p3, Lya/d;->m:Lv9/p0;

    if-eqz v6, :cond_2c

    .line 95
    invoke-interface {v6, v5}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_2c
    new-array v6, v2, [Lv9/p0;

    .line 96
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    check-cast v1, [Lv9/p0;

    .line 98
    array-length v6, v1

    move v7, v2

    :goto_6
    if-ge v7, v6, :cond_2d

    aget-object v8, v1, v7

    .line 99
    sget-object v9, Lz9/a;->j:Lz9/a;

    new-instance v10, Lya/u;

    invoke-direct {v10, v8, v5}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v9, v10}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 100
    :cond_2d
    iget-object v1, p3, Lya/d;->A:Lhc/l0;

    .line 101
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_33

    .line 102
    iget-object v1, v5, Lv9/g;->k:Lv9/a;

    .line 103
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-nez v1, :cond_33

    .line 104
    instance-of v1, v5, Lv9/n4;

    if-eqz v1, :cond_2e

    goto :goto_7

    .line 105
    :cond_2e
    instance-of v1, v5, Lv9/a2;

    .line 106
    :goto_7
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v6, Lya/w;

    invoke-direct {v6, v5, p3}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v1, v6}, Lz9/a;->b(Lqd/a;)V

    goto :goto_9

    .line 107
    :cond_2f
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 108
    iput v2, p3, Lya/d;->j:I

    .line 109
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v5, Lya/d$k$b;

    invoke-direct {v5, p3, p1, p2}, Lya/d$k$b;-><init>(Lya/d;Ljava/lang/String;Lda/d;)V

    invoke-virtual {v1, v5}, Lz9/a;->b(Lqd/a;)V

    goto :goto_9

    .line 110
    :cond_30
    :pswitch_0
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 111
    iput-object v1, p3, Lya/d;->l:Lla/c;

    .line 112
    invoke-virtual {p3}, Lya/d;->q0()V

    .line 113
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 114
    iget v1, p3, Lya/d;->j:I

    if-ge v1, v0, :cond_31

    .line 115
    sget-object v1, Lv9/a;->i:Lv9/a$a;

    .line 116
    sget-object v1, Lv9/a;->l:Lv9/a;

    goto :goto_8

    .line 117
    :cond_31
    sget-object v1, Lv9/a;->i:Lv9/a$a;

    .line 118
    sget-object v1, Lv9/a;->j:Lv9/a;

    .line 119
    :goto_8
    invoke-virtual {p3, v1}, Lya/d;->f(Lv9/a;)V

    .line 120
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 121
    iget v1, p3, Lya/d;->j:I

    add-int/2addr v1, v4

    .line 122
    iput v1, p3, Lya/d;->j:I

    goto :goto_9

    .line 123
    :cond_32
    :pswitch_1
    sget-object p3, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/d$k$a;

    iget-object v5, p0, Lya/d$k;->a:Lya/d;

    invoke-direct {v1, v5}, Lya/d$k$a;-><init>(Lya/d;)V

    invoke-virtual {p3, v1}, Lz9/a;->b(Lqd/a;)V

    .line 124
    :cond_33
    :goto_9
    invoke-static {p2}, Lda/e;->j(Lda/d;)Lv9/e;

    move-result-object p3

    sget-object v1, Lv9/e;->o:Lv9/e;

    if-eq p3, v1, :cond_5c

    .line 125
    iget-object p3, p0, Lya/d$k;->a:Lya/d;

    .line 126
    iget-object v1, p3, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 127
    new-instance v5, Lv9/f2;

    .line 128
    invoke-static {p2}, Lda/e;->j(Lda/d;)Lv9/e;

    move-result-object p2

    .line 129
    invoke-direct {v5, p1, p2}, Lv9/f2;-><init>(Ljava/lang/String;Lv9/e;)V

    .line 130
    instance-of p1, v5, Lv9/p2;

    if-eqz p1, :cond_34

    goto/16 :goto_b

    .line 131
    :cond_34
    instance-of p1, v5, Lv9/a1;

    if-eqz p1, :cond_35

    goto/16 :goto_b

    .line 132
    :cond_35
    instance-of p1, v5, Lv9/w0;

    if-eqz p1, :cond_36

    goto/16 :goto_b

    .line 133
    :cond_36
    instance-of p1, v5, Lv9/e1;

    if-eqz p1, :cond_37

    goto/16 :goto_b

    .line 134
    :cond_37
    instance-of p1, v5, Lv9/p6;

    if-eqz p1, :cond_38

    goto/16 :goto_b

    .line 135
    :cond_38
    instance-of p1, v5, Lv9/f6;

    if-eqz p1, :cond_39

    goto :goto_a

    .line 136
    :cond_39
    instance-of p1, v5, Lv9/x6;

    if-eqz p1, :cond_3a

    goto/16 :goto_b

    .line 137
    :cond_3a
    instance-of p1, v5, Lv9/m6;

    if-eqz p1, :cond_3b

    goto/16 :goto_b

    .line 138
    :cond_3b
    instance-of p1, v5, Lv9/j6;

    if-eqz p1, :cond_3c

    goto/16 :goto_b

    .line 139
    :cond_3c
    instance-of p1, v5, Lv9/t6;

    if-eqz p1, :cond_3d

    goto/16 :goto_b

    .line 140
    :cond_3d
    instance-of p1, v5, Lv9/q5;

    if-eqz p1, :cond_3e

    goto/16 :goto_b

    .line 141
    :cond_3e
    instance-of p1, v5, Lv9/x5;

    if-eqz p1, :cond_3f

    goto/16 :goto_b

    .line 142
    :cond_3f
    instance-of p1, v5, Lv9/a6;

    if-eqz p1, :cond_40

    goto/16 :goto_b

    .line 143
    :cond_40
    instance-of p1, v5, Lv9/t5;

    if-eqz p1, :cond_41

    goto/16 :goto_b

    .line 144
    :cond_41
    instance-of p1, v5, Lv9/u5;

    if-eqz p1, :cond_42

    goto :goto_a

    .line 145
    :cond_42
    instance-of p1, v5, Lv9/c6;

    if-eqz p1, :cond_43

    goto/16 :goto_b

    .line 146
    :cond_43
    instance-of p1, v5, Lv9/q6;

    if-eqz p1, :cond_44

    goto :goto_a

    .line 147
    :cond_44
    instance-of p1, v5, Lv9/o5;

    if-eqz p1, :cond_45

    goto :goto_a

    .line 148
    :cond_45
    instance-of p1, v5, Lv9/g6;

    if-eqz p1, :cond_46

    goto :goto_a

    .line 149
    :cond_46
    instance-of p1, v5, Lv9/p5;

    if-eqz p1, :cond_47

    :goto_a
    move v0, v4

    goto :goto_b

    .line 150
    :cond_47
    instance-of p1, v5, Lv9/c1;

    if-eqz p1, :cond_48

    goto :goto_b

    .line 151
    :cond_48
    instance-of p1, v5, Lv9/t4;

    if-eqz p1, :cond_49

    goto :goto_b

    .line 152
    :cond_49
    instance-of p1, v5, Lv9/l4;

    if-eqz p1, :cond_4a

    goto :goto_b

    .line 153
    :cond_4a
    instance-of p1, v5, Lv9/y1;

    if-eqz p1, :cond_4b

    goto :goto_b

    .line 154
    :cond_4b
    instance-of p1, v5, Lv9/c4;

    if-eqz p1, :cond_4c

    goto :goto_b

    .line 155
    :cond_4c
    instance-of p1, v5, Lv9/y4;

    if-eqz p1, :cond_4d

    goto :goto_b

    .line 156
    :cond_4d
    instance-of p1, v5, Lv9/w4;

    if-eqz p1, :cond_4e

    goto :goto_b

    .line 157
    :cond_4e
    instance-of p1, v5, Lv9/t3;

    if-eqz p1, :cond_4f

    goto :goto_b

    .line 158
    :cond_4f
    instance-of p1, v5, Lv9/n5;

    if-eqz p1, :cond_50

    goto :goto_b

    .line 159
    :cond_50
    instance-of p1, v5, Lv9/e5;

    if-eqz p1, :cond_51

    goto :goto_b

    .line 160
    :cond_51
    instance-of p1, v5, Lv9/h5;

    if-eqz p1, :cond_52

    goto :goto_b

    .line 161
    :cond_52
    instance-of p1, v5, Lv9/i4;

    if-eqz p1, :cond_53

    goto :goto_b

    .line 162
    :cond_53
    instance-of p1, v5, Lv9/q4;

    if-eqz p1, :cond_54

    goto :goto_b

    .line 163
    :cond_54
    instance-of p1, v5, Lv9/j5;

    if-eqz p1, :cond_55

    goto :goto_b

    .line 164
    :cond_55
    instance-of p1, v5, Lv9/z3;

    if-eqz p1, :cond_56

    goto :goto_b

    .line 165
    :cond_56
    instance-of p1, v5, Lv9/f4;

    .line 166
    :goto_b
    new-instance p1, Leb/c;

    invoke-direct {p1, v5}, Leb/c;-><init>(Leb/d;)V

    .line 167
    invoke-static {v0}, Lq/g;->a(I)I

    move-result p2

    if-eqz p2, :cond_58

    if-eq p2, v4, :cond_57

    goto :goto_c

    .line 168
    :cond_57
    sget-object p2, Lv9/t;->a:Lv9/t;

    .line 169
    sget-object p2, Lv9/t;->i:Leb/f;

    new-array v0, v4, [Leb/g;

    aput-object p1, v0, v2

    .line 170
    invoke-virtual {p2, v0}, Leb/f;->a([Leb/g;)V

    goto :goto_c

    .line 171
    :cond_58
    sget-object p2, Lv9/t;->a:Lv9/t;

    .line 172
    sget-object p2, Lv9/t;->i:Leb/f;

    .line 173
    invoke-virtual {p2, p1}, Leb/f;->c(Leb/g;)V

    .line 174
    :goto_c
    iget-object p1, p3, Lya/d;->m:Lv9/p0;

    if-eqz p1, :cond_59

    .line 175
    invoke-interface {p1, v5}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_59
    new-array p1, v2, [Lv9/p0;

    .line 176
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    check-cast p1, [Lv9/p0;

    .line 178
    array-length p2, p1

    :goto_d
    if-ge v2, p2, :cond_5a

    aget-object v0, p1, v2

    .line 179
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v3, Lya/u;

    invoke-direct {v3, v0, v5}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v1, v3}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 180
    :cond_5a
    iget-object p1, p3, Lya/d;->A:Lhc/l0;

    .line 181
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_5c

    .line 182
    iget-object p1, v5, Lv9/g;->k:Lv9/a;

    .line 183
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 184
    instance-of p1, v5, Lv9/n4;

    if-eqz p1, :cond_5b

    goto :goto_e

    .line 185
    :cond_5b
    instance-of p1, v5, Lv9/a2;

    .line 186
    :goto_e
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lya/w;

    invoke-direct {p2, v5, p3}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    :cond_5c
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
