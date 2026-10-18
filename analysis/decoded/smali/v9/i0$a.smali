.class public final Lv9/i0$a;
.super Ljava/lang/Object;
.source "AdaptKitPairing.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/i0;-><init>(Lv9/k0;)V
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
.field public final synthetic a:Lv9/i0;


# direct methods
.method public constructor <init>(Lv9/i0;)V
    .locals 0

    iput-object p1, p0, Lv9/i0$a;->a:Lv9/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lv9/g;

    const-string v2, "result"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v2, v1, Lv9/j5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 4
    iget-boolean v1, v1, Lda/g;->i:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 6
    iput-boolean v3, v1, Lv9/i0;->l:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 8
    iput-boolean v3, v1, Lv9/i0;->m:Z

    .line 9
    :goto_0
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 10
    iget-boolean v2, v1, Lv9/i0;->l:Z

    if-eqz v2, :cond_27

    .line 11
    iget-boolean v2, v1, Lv9/i0;->m:Z

    if-eqz v2, :cond_27

    .line 12
    iput-boolean v4, v1, Lv9/i0;->l:Z

    .line 13
    iput-boolean v4, v1, Lv9/i0;->m:Z

    .line 14
    invoke-virtual {v1, v4}, Lv9/i0;->g(Z)V

    goto/16 :goto_e

    .line 15
    :cond_1
    instance-of v2, v1, Lv9/f2;

    const/4 v5, 0x0

    if-eqz v2, :cond_17

    .line 16
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 17
    iget-object v2, v2, Lv9/i0;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_e

    .line 19
    :cond_2
    iget-boolean v2, v1, Lda/g;->i:Z

    if-eqz v2, :cond_3

    .line 20
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 21
    iget-object v2, v2, Lv9/i0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_e

    .line 23
    :cond_3
    iget-boolean v2, v1, Lda/g;->j:Z

    if-eqz v2, :cond_4

    .line 24
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 25
    iget-object v2, v2, Lv9/i0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_e

    .line 27
    :cond_4
    move-object v2, v1

    check-cast v2, Lv9/f2;

    .line 28
    iget-object v6, v2, Lv9/f2;->m:Lv9/e;

    .line 29
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 30
    new-instance v1, Lj2/a;

    invoke-direct {v1}, Lj2/a;-><init>()V

    throw v1

    .line 31
    :pswitch_0
    iget-boolean v1, v1, Lda/g;->i:Z

    if-eqz v1, :cond_5

    .line 32
    sget-object v5, Lha/c;->h:Lha/c;

    goto/16 :goto_5

    :cond_5
    sget-object v5, Lha/d;->h:Lha/d;

    goto/16 :goto_5

    .line 33
    :pswitch_1
    iget-boolean v1, v1, Lda/g;->i:Z

    if-eqz v1, :cond_6

    .line 34
    sget-object v5, Lha/e;->h:Lha/e;

    goto/16 :goto_5

    :cond_6
    sget-object v5, Lha/f;->h:Lha/f;

    goto/16 :goto_5

    .line 35
    :pswitch_2
    iget-boolean v1, v1, Lda/g;->i:Z

    if-eqz v1, :cond_7

    .line 36
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 37
    iget-object v1, v1, Lv9/i0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39
    sget-object v1, Lha/h;->h:Lha/h;

    goto :goto_1

    .line 40
    :cond_7
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 41
    iget-object v1, v1, Lv9/i0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    sget-object v1, Lha/i;->h:Lha/i;

    :goto_1
    move-object v5, v1

    .line 44
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 45
    invoke-virtual {v1, v5}, Lv9/i0;->d(Lha/u;)V

    goto/16 :goto_5

    .line 46
    :pswitch_3
    iget-boolean v1, v1, Lda/g;->i:Z

    if-eqz v1, :cond_8

    .line 47
    sget-object v5, Lha/j;->h:Lha/j;

    goto/16 :goto_5

    :cond_8
    sget-object v5, Lha/k;->h:Lha/k;

    goto/16 :goto_5

    .line 48
    :pswitch_4
    iget-object v6, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 49
    iget-object v7, v6, Lv9/i0;->t:Lya/b;

    .line 50
    iget-object v8, v6, Lv9/i0;->u:Lya/b;

    if-eqz v7, :cond_9

    .line 51
    iget-boolean v9, v1, Lda/g;->i:Z

    if-eqz v9, :cond_9

    .line 52
    iget-object v6, v6, Lv9/i0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    iget-object v9, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 54
    iget v9, v9, Lv9/i0;->g:I

    if-gt v6, v9, :cond_9

    .line 55
    sget-object v2, Lz9/a;->j:Lz9/a;

    new-instance v3, Lv9/g0;

    invoke-direct {v3, v7, v1}, Lv9/g0;-><init>(Lya/b;Lv9/g;)V

    invoke-virtual {v2, v3}, Lz9/a;->b(Lqd/a;)V

    .line 56
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 57
    iget-object v5, v1, Lv9/i0;->p:Lha/u;

    goto/16 :goto_5

    :cond_9
    if-eqz v8, :cond_a

    .line 58
    iget-boolean v6, v1, Lda/g;->j:Z

    if-eqz v6, :cond_a

    .line 59
    iget-object v6, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 60
    iget-object v6, v6, Lv9/i0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    iget-object v7, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 62
    iget v7, v7, Lv9/i0;->g:I

    if-gt v6, v7, :cond_a

    .line 63
    sget-object v2, Lz9/a;->j:Lz9/a;

    new-instance v3, Lv9/h0;

    invoke-direct {v3, v8, v1}, Lv9/h0;-><init>(Lya/b;Lv9/g;)V

    invoke-virtual {v2, v3}, Lz9/a;->b(Lqd/a;)V

    .line 64
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 65
    iget-object v5, v1, Lv9/i0;->p:Lha/u;

    goto/16 :goto_5

    .line 66
    :cond_a
    iget-object v2, v2, Lv9/f2;->m:Lv9/e;

    .line 67
    sget-object v6, Lv9/e;->l:Lv9/e;

    if-ne v2, v6, :cond_b

    goto :goto_2

    :cond_b
    move v3, v4

    .line 68
    :goto_2
    iget-boolean v2, v1, Lda/g;->i:Z

    if-eqz v2, :cond_10

    .line 69
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 70
    iget-object v2, v2, Lv9/i0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 72
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 73
    iget-object v2, v2, Lv9/i0;->t:Lya/b;

    if-eqz v2, :cond_c

    .line 74
    invoke-virtual {v1}, Lv9/g;->a()Lv9/a;

    move-result-object v1

    invoke-interface {v2, v1}, Lya/b;->f(Lv9/a;)V

    .line 75
    :cond_c
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 76
    iget-object v1, v1, Lv9/i0;->t:Lya/b;

    if-eqz v1, :cond_d

    .line 77
    invoke-interface {v1, v0}, Lya/b;->h(Lv9/p0;)V

    .line 78
    :cond_d
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 79
    iput-object v5, v1, Lv9/i0;->t:Lya/b;

    .line 80
    iput-object v5, v1, Lv9/i0;->q:Lea/b;

    if-eqz v3, :cond_e

    .line 81
    sget-object v2, Lha/p;->h:Lha/p;

    goto :goto_3

    :cond_e
    sget-object v2, Lha/l;->h:Lha/l;

    .line 82
    :goto_3
    invoke-virtual {v1, v2}, Lv9/i0;->d(Lha/u;)V

    .line 83
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 84
    iget-object v1, v1, Lv9/i0;->r:Lea/b;

    if-nez v1, :cond_f

    .line 85
    sget-object v5, Lha/w;->h:Lha/w;

    goto :goto_5

    :cond_f
    sget-object v5, Lha/x;->h:Lha/x;

    goto :goto_5

    .line 86
    :cond_10
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 87
    iget-object v2, v2, Lv9/i0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 89
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 90
    iget-object v2, v2, Lv9/i0;->u:Lya/b;

    if-eqz v2, :cond_11

    .line 91
    invoke-virtual {v1}, Lv9/g;->a()Lv9/a;

    move-result-object v1

    invoke-interface {v2, v1}, Lya/b;->f(Lv9/a;)V

    .line 92
    :cond_11
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 93
    iget-object v1, v1, Lv9/i0;->u:Lya/b;

    if-eqz v1, :cond_12

    .line 94
    invoke-interface {v1, v0}, Lya/b;->h(Lv9/p0;)V

    .line 95
    :cond_12
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 96
    iput-object v5, v1, Lv9/i0;->u:Lya/b;

    .line 97
    iput-object v5, v1, Lv9/i0;->r:Lea/b;

    if-eqz v3, :cond_13

    .line 98
    sget-object v2, Lha/q;->h:Lha/q;

    goto :goto_4

    :cond_13
    sget-object v2, Lha/m;->h:Lha/m;

    .line 99
    :goto_4
    invoke-virtual {v1, v2}, Lv9/i0;->d(Lha/u;)V

    .line 100
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 101
    iget-object v1, v1, Lv9/i0;->q:Lea/b;

    if-nez v1, :cond_14

    .line 102
    sget-object v5, Lha/w;->h:Lha/w;

    goto :goto_5

    :cond_14
    sget-object v5, Lha/y;->h:Lha/y;

    :goto_5
    :pswitch_5
    if-eqz v5, :cond_27

    .line 103
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 104
    sget-object v2, Lha/i;->h:Lha/i;

    invoke-static {v5, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 105
    iget-object v2, v1, Lv9/i0;->q:Lea/b;

    if-nez v2, :cond_15

    .line 106
    sget-object v5, Lha/x;->h:Lha/x;

    goto :goto_6

    .line 107
    :cond_15
    sget-object v2, Lha/h;->h:Lha/h;

    invoke-static {v5, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 108
    iget-object v2, v1, Lv9/i0;->r:Lea/b;

    if-nez v2, :cond_16

    .line 109
    sget-object v5, Lha/y;->h:Lha/y;

    .line 110
    :cond_16
    :goto_6
    invoke-virtual {v1, v5}, Lv9/i0;->d(Lha/u;)V

    goto/16 :goto_e

    .line 111
    :cond_17
    instance-of v2, v1, Lv9/w3;

    if-eqz v2, :cond_19

    .line 112
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 113
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-boolean v3, v1, Lda/g;->i:Z

    if-eqz v3, :cond_18

    .line 115
    iget-object v2, v2, Lv9/i0;->t:Lya/b;

    goto :goto_7

    :cond_18
    iget-object v2, v2, Lv9/i0;->u:Lya/b;

    :goto_7
    if-eqz v2, :cond_27

    .line 116
    invoke-virtual {v1}, Lv9/g;->a()Lv9/a;

    move-result-object v1

    .line 117
    new-instance v3, Lea/d;

    const/16 v5, 0x3c

    const/16 v6, 0xff

    const/4 v7, 0x5

    invoke-direct {v3, v4, v5, v6, v7}, Lea/d;-><init>(IIII)V

    .line 118
    invoke-interface {v2, v1, v3}, Lya/b;->d(Lv9/a;Lea/d;)V

    goto/16 :goto_e

    .line 119
    :cond_19
    instance-of v2, v1, Lv9/g1;

    if-eqz v2, :cond_1b

    .line 120
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 121
    iget-boolean v1, v1, Lda/g;->i:Z

    if-eqz v1, :cond_1a

    .line 122
    sget-object v1, Lha/a0;->h:Lha/a0;

    goto :goto_8

    :cond_1a
    sget-object v1, Lha/b0;->h:Lha/b0;

    .line 123
    :goto_8
    invoke-virtual {v2, v1}, Lv9/i0;->d(Lha/u;)V

    goto/16 :goto_e

    .line 124
    :cond_1b
    instance-of v2, v1, Lv9/h1;

    if-eqz v2, :cond_27

    .line 125
    move-object v2, v1

    check-cast v2, Lv9/h1;

    .line 126
    iget-object v6, v2, Lv9/h1;->l:Lea/b;

    .line 127
    iget-boolean v6, v6, Lea/b;->o:Z

    if-eqz v6, :cond_1f

    .line 128
    iget-boolean v2, v1, Lda/g;->i:Z

    if-eqz v2, :cond_1d

    .line 129
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 130
    iget-object v2, v2, Lv9/i0;->t:Lya/b;

    if-eqz v2, :cond_1c

    .line 131
    invoke-virtual {v1}, Lv9/g;->a()Lv9/a;

    move-result-object v1

    invoke-interface {v2, v1}, Lya/b;->f(Lv9/a;)V

    .line 132
    :cond_1c
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 133
    iget-object v1, v1, Lv9/i0;->t:Lya/b;

    if-eqz v1, :cond_27

    .line 134
    invoke-interface {v1, v0}, Lya/b;->h(Lv9/p0;)V

    goto/16 :goto_e

    .line 135
    :cond_1d
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 136
    iget-object v2, v2, Lv9/i0;->u:Lya/b;

    if-eqz v2, :cond_1e

    .line 137
    invoke-virtual {v1}, Lv9/g;->a()Lv9/a;

    move-result-object v1

    invoke-interface {v2, v1}, Lya/b;->f(Lv9/a;)V

    .line 138
    :cond_1e
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 139
    iget-object v1, v1, Lv9/i0;->u:Lya/b;

    if-eqz v1, :cond_27

    .line 140
    invoke-interface {v1, v0}, Lya/b;->h(Lv9/p0;)V

    goto/16 :goto_e

    .line 141
    :cond_1f
    iget-boolean v6, v1, Lda/g;->i:Z

    if-eqz v6, :cond_20

    .line 142
    sget-object v6, Lha/h;->h:Lha/h;

    goto :goto_9

    :cond_20
    sget-object v6, Lha/i;->h:Lha/i;

    :goto_9
    iget-object v7, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 143
    invoke-virtual {v7, v6}, Lv9/i0;->d(Lha/u;)V

    .line 144
    iget-boolean v1, v1, Lda/g;->i:Z

    if-eqz v1, :cond_21

    .line 145
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 146
    iget-object v2, v2, Lv9/h1;->l:Lea/b;

    .line 147
    iput-object v2, v1, Lv9/i0;->q:Lea/b;

    goto :goto_a

    .line 148
    :cond_21
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 149
    iget-object v2, v2, Lv9/h1;->l:Lea/b;

    .line 150
    iput-object v2, v1, Lv9/i0;->r:Lea/b;

    .line 151
    :goto_a
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 152
    iget-object v10, v1, Lv9/i0;->q:Lea/b;

    .line 153
    iget-object v11, v1, Lv9/i0;->r:Lea/b;

    if-eqz v10, :cond_27

    if-eqz v11, :cond_27

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v6, 0x1

    sub-long v17, v1, v6

    add-long v20, v17, v6

    .line 155
    iget-object v1, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 156
    iget-object v7, v1, Lv9/i0;->n:Ljava/lang/String;

    .line 157
    iget-object v1, v10, Lea/b;->h:Ljava/lang/String;

    const-string v2, "compile(pattern)"

    const-string v6, "^[a-zA-Z0-9]{3}-[a-zA-Z0-9]{6}-[a-zA-Z0-9]{3}$"

    if-eqz v1, :cond_22

    .line 158
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-static {v8, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-ne v1, v3, :cond_22

    move v1, v3

    goto :goto_b

    :cond_22
    move v1, v4

    .line 160
    :goto_b
    iget-object v8, v11, Lea/b;->h:Ljava/lang/String;

    if-eqz v8, :cond_23

    .line 161
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-static {v6, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-ne v2, v3, :cond_23

    goto :goto_c

    :cond_23
    move v3, v4

    :goto_c
    if-eqz v1, :cond_24

    if-eqz v3, :cond_24

    .line 163
    iget-object v5, v10, Lea/b;->h:Ljava/lang/String;

    goto :goto_d

    :cond_24
    if-eqz v1, :cond_25

    .line 164
    iget-object v5, v10, Lea/b;->h:Ljava/lang/String;

    goto :goto_d

    :cond_25
    if-eqz v3, :cond_26

    .line 165
    iget-object v5, v11, Lea/b;->h:Ljava/lang/String;

    :cond_26
    :goto_d
    move-object v13, v5

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    move-object v14, v1

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    sget-object v19, Lea/f;->i:Lea/f;

    .line 168
    new-instance v1, Lea/m;

    move-object v6, v1

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/16 v22, 0x1000

    const-string v8, "Nike Adapt BB"

    move-wide/from16 v15, v17

    invoke-direct/range {v6 .. v22}, Lea/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLea/f;JI)V

    .line 169
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    .line 170
    iget-object v2, v2, Lv9/i0;->d:Lfd/d;

    invoke-interface {v2}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lab/a;

    .line 171
    sget-object v3, Lv9/a;->i:Lv9/a$a;

    .line 172
    sget-object v3, Lv9/a;->l:Lv9/a;

    .line 173
    new-instance v4, Lv9/f0;

    invoke-direct {v4}, Lv9/f0;-><init>()V

    .line 174
    invoke-interface {v2, v3, v1, v4}, Lab/a;->d(Lv9/a;Lea/m;Lv9/p0;)V

    .line 175
    iget-object v2, v0, Lv9/i0$a;->a:Lv9/i0;

    new-instance v3, Lha/g;

    invoke-direct {v3, v1}, Lha/g;-><init>(Lea/m;)V

    .line 176
    invoke-virtual {v2, v3}, Lv9/i0;->d(Lha/u;)V

    :cond_27
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lv9/m;)V
    .locals 1

    .line 1
    check-cast p1, Lv9/f;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
