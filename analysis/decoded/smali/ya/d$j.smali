.class public final Lya/d$j;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->s(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroid/os/Bundle;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;

.field public final synthetic i:Lv9/a;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lya/d$j;->h:Lya/d;

    iput-object p2, p0, Lya/d$j;->i:Lv9/a;

    iput-object p3, p0, Lya/d$j;->j:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 2
    iget-object v2, v0, Lya/d$j;->h:Lya/d;

    .line 3
    iget-object v2, v2, Lya/d;->o:Lxa/b;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, "EXTRA_CONNECTION_APPLICATION_IDS"

    .line 5
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    array-length v5, v4

    move v6, v2

    move-object v7, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    .line 7
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v10, "EXTRA_REQUEST_CURRENT_CONNECTION"

    .line 8
    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 9
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "left"

    .line 10
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lxa/c;->a(Lorg/json/JSONObject;)Lda/b;

    move-result-object v10

    const-string v12, "right"

    .line 11
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lxa/c;->a(Lorg/json/JSONObject;)Lda/b;

    move-result-object v11

    .line 12
    new-instance v12, Lda/f;

    invoke-direct {v12, v10, v11}, Lda/f;-><init>(Lda/b;Lda/b;)V

    const-string v10, "EXTRA_CONTROLLER_RECEIVER_ACTION_TOKEN"

    .line 13
    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    if-eqz v7, :cond_0

    .line 14
    iget-object v10, v7, Lda/h;->h:Lda/f;

    .line 15
    iget-object v10, v10, Lda/f;->h:Lda/b;

    .line 16
    iget-object v10, v10, Lda/b;->h:Lv9/e;

    .line 17
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    .line 18
    iget-object v11, v12, Lda/f;->h:Lda/b;

    .line 19
    iget-object v11, v11, Lda/b;->h:Lv9/e;

    .line 20
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-lt v10, v11, :cond_0

    .line 21
    iget-object v10, v7, Lda/h;->h:Lda/f;

    .line 22
    iget-object v10, v10, Lda/f;->i:Lda/b;

    .line 23
    iget-object v10, v10, Lda/b;->h:Lv9/e;

    .line 24
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    .line 25
    iget-object v11, v12, Lda/f;->i:Lda/b;

    .line 26
    iget-object v11, v11, Lda/b;->h:Lv9/e;

    .line 27
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 28
    :cond_0
    new-instance v7, Lda/h;

    const-string v10, "applicationId"

    .line 29
    invoke-static {v8, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {v7, v12, v8, v9}, Lda/h;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v3

    :cond_3
    const/4 v1, 0x1

    if-eqz v7, :cond_38

    .line 31
    iget-object v4, v7, Lda/h;->h:Lda/f;

    .line 32
    iget-object v4, v4, Lda/f;->h:Lda/b;

    .line 33
    iget-object v4, v4, Lda/b;->h:Lv9/e;

    const/4 v5, 0x3

    new-array v6, v5, [Lv9/e;

    .line 34
    sget-object v8, Lv9/e;->j:Lv9/e;

    aput-object v8, v6, v2

    .line 35
    sget-object v9, Lv9/e;->i:Lv9/e;

    aput-object v9, v6, v1

    .line 36
    sget-object v10, Lv9/e;->p:Lv9/e;

    const/4 v11, 0x2

    aput-object v10, v6, v11

    .line 37
    invoke-static {v4, v6}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 38
    iget-object v4, v7, Lda/h;->h:Lda/f;

    .line 39
    iget-object v4, v4, Lda/f;->i:Lda/b;

    .line 40
    iget-object v4, v4, Lda/b;->h:Lv9/e;

    new-array v5, v5, [Lv9/e;

    aput-object v8, v5, v2

    aput-object v9, v5, v1

    aput-object v10, v5, v11

    .line 41
    invoke-static {v4, v5}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_10

    .line 42
    :cond_4
    iget-object v3, v0, Lya/d$j;->h:Lya/d;

    .line 43
    iput-boolean v2, v3, Lya/d;->g:Z

    .line 44
    iget-object v3, v0, Lya/d$j;->h:Lya/d;

    new-instance v4, Lza/a;

    .line 45
    sget-object v5, Lv9/t;->a:Lv9/t;

    invoke-virtual {v5}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v13

    .line 46
    iget-object v5, v0, Lya/d$j;->h:Lya/d;

    .line 47
    iget-object v14, v5, Lya/d;->a:Ljava/lang/String;

    .line 48
    iget-object v15, v5, Lya/d;->f:Ljava/lang/String;

    .line 49
    iget-object v5, v7, Lda/h;->i:Ljava/lang/String;

    .line 50
    iget-object v6, v7, Lda/h;->j:Ljava/lang/String;

    move-object v12, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 51
    invoke-direct/range {v12 .. v17}, Lza/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object v4, v3, Lya/d;->A:Lhc/l0;

    .line 53
    iget-object v3, v0, Lya/d$j;->h:Lya/d;

    .line 54
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    const/16 v4, 0x4c

    .line 55
    invoke-static {v3, v4, v1}, Lyd/s;->j0(Ljava/lang/CharSequence;CZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 56
    iget-object v3, v7, Lda/h;->h:Lda/f;

    .line 57
    iget-object v3, v3, Lda/f;->h:Lda/b;

    .line 58
    iget-object v3, v3, Lda/b;->h:Lv9/e;

    .line 59
    invoke-virtual {v3}, Lv9/e;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 60
    :cond_5
    iget-object v3, v7, Lda/h;->h:Lda/f;

    .line 61
    iget-object v3, v3, Lda/f;->h:Lda/b;

    .line 62
    iget-object v3, v3, Lda/b;->h:Lv9/e;

    goto :goto_2

    .line 63
    :cond_6
    iget-object v3, v7, Lda/h;->h:Lda/f;

    .line 64
    iget-object v3, v3, Lda/f;->i:Lda/b;

    .line 65
    iget-object v3, v3, Lda/b;->h:Lv9/e;

    .line 66
    invoke-virtual {v3}, Lv9/e;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    move-object v3, v10

    goto :goto_2

    .line 67
    :cond_7
    iget-object v3, v7, Lda/h;->h:Lda/f;

    .line 68
    iget-object v3, v3, Lda/f;->i:Lda/b;

    .line 69
    iget-object v3, v3, Lda/b;->h:Lv9/e;

    .line 70
    :goto_2
    iget-object v4, v0, Lya/d$j;->h:Lya/d;

    .line 71
    iput-object v3, v4, Lya/d;->v:Lv9/e;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    if-eq v3, v10, :cond_f

    .line 72
    iget-object v6, v4, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    new-instance v8, Lv9/b2;

    .line 74
    iget-object v9, v0, Lya/d$j;->h:Lya/d;

    .line 75
    iget-object v9, v9, Lya/d;->f:Ljava/lang/String;

    .line 76
    iget-object v10, v0, Lya/d$j;->i:Lv9/a;

    new-instance v12, Ljava/lang/IllegalStateException;

    .line 77
    iget-object v7, v7, Lda/h;->h:Lda/f;

    .line 78
    iget-object v13, v7, Lda/f;->h:Lda/b;

    .line 79
    iget-object v13, v13, Lda/b;->h:Lv9/e;

    .line 80
    iget-object v13, v13, Lv9/e;->h:Ljava/lang/String;

    .line 81
    iget-object v7, v7, Lda/f;->i:Lda/b;

    .line 82
    iget-object v7, v7, Lda/b;->h:Lv9/e;

    .line 83
    iget-object v7, v7, Lv9/e;->h:Ljava/lang/String;

    const-string v14, "State of one (or both device) in other app is in some connection process. Other application needs to disconnect from both before: left: "

    const-string v15, ", right: "

    const-string v11, " is "

    .line 84
    invoke-static {v14, v13, v15, v7, v11}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-direct {v12, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-direct {v8, v9, v10, v12}, Lv9/b2;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 87
    sget-object v7, Lv9/t;->i:Leb/f;

    new-array v9, v1, [Leb/g;

    .line 88
    new-instance v10, Leb/b;

    invoke-direct {v10, v8}, Leb/b;-><init>(Leb/d;)V

    aput-object v10, v9, v2

    invoke-virtual {v7, v9}, Leb/f;->a([Leb/g;)V

    new-array v7, v2, [Lv9/p0;

    .line 89
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    check-cast v6, [Lv9/p0;

    .line 91
    array-length v7, v6

    move v9, v2

    :goto_3
    if-ge v9, v7, :cond_8

    aget-object v10, v6, v9

    .line 92
    sget-object v11, Lz9/a;->j:Lz9/a;

    new-instance v12, Lya/r;

    invoke-direct {v12, v10, v8}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v11, v12}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 93
    :cond_8
    iget-object v6, v4, Lya/d;->A:Lhc/l0;

    .line 94
    instance-of v6, v6, Lza/a;

    if-nez v6, :cond_f

    .line 95
    iget-object v6, v8, Lv9/b2;->o:Lv9/a;

    .line 96
    invoke-virtual {v6}, Lv9/a;->b()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 97
    instance-of v6, v8, Lv9/m4;

    if-eqz v6, :cond_9

    move v6, v1

    goto :goto_4

    .line 98
    :cond_9
    instance-of v6, v8, Lv9/z1;

    :goto_4
    if-eqz v6, :cond_a

    move v6, v1

    goto :goto_5

    .line 99
    :cond_a
    instance-of v6, v8, Lv9/u4;

    :goto_5
    if-eqz v6, :cond_b

    move v6, v1

    goto :goto_6

    .line 100
    :cond_b
    instance-of v6, v8, Lv9/d4;

    :goto_6
    if-eqz v6, :cond_c

    move v6, v1

    goto :goto_7

    .line 101
    :cond_c
    instance-of v6, v8, Lv9/x3;

    :goto_7
    if-eqz v6, :cond_d

    move v6, v1

    goto :goto_8

    .line 102
    :cond_d
    instance-of v6, v8, Lv9/u3;

    :goto_8
    if-eqz v6, :cond_e

    move v6, v1

    goto :goto_9

    .line 103
    :cond_e
    instance-of v6, v8, Lv9/w1;

    :goto_9
    if-eqz v6, :cond_f

    .line 104
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/t;

    invoke-direct {v7, v4, v8}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    .line 105
    :cond_f
    iget-object v4, v0, Lya/d$j;->h:Lya/d;

    .line 106
    iget-object v6, v4, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    new-instance v7, Lv9/f2;

    .line 108
    iget-object v8, v4, Lya/d;->f:Ljava/lang/String;

    .line 109
    invoke-direct {v7, v8, v3}, Lv9/f2;-><init>(Ljava/lang/String;Lv9/e;)V

    .line 110
    instance-of v3, v7, Lv9/p2;

    if-eqz v3, :cond_10

    goto/16 :goto_b

    .line 111
    :cond_10
    instance-of v3, v7, Lv9/a1;

    if-eqz v3, :cond_11

    goto/16 :goto_b

    .line 112
    :cond_11
    instance-of v3, v7, Lv9/w0;

    if-eqz v3, :cond_12

    goto/16 :goto_b

    .line 113
    :cond_12
    instance-of v3, v7, Lv9/e1;

    if-eqz v3, :cond_13

    goto/16 :goto_b

    .line 114
    :cond_13
    instance-of v3, v7, Lv9/p6;

    if-eqz v3, :cond_14

    goto/16 :goto_b

    .line 115
    :cond_14
    instance-of v3, v7, Lv9/f6;

    if-eqz v3, :cond_15

    goto :goto_a

    .line 116
    :cond_15
    instance-of v3, v7, Lv9/x6;

    if-eqz v3, :cond_16

    goto/16 :goto_b

    .line 117
    :cond_16
    instance-of v3, v7, Lv9/m6;

    if-eqz v3, :cond_17

    goto/16 :goto_b

    .line 118
    :cond_17
    instance-of v3, v7, Lv9/j6;

    if-eqz v3, :cond_18

    goto/16 :goto_b

    .line 119
    :cond_18
    instance-of v3, v7, Lv9/t6;

    if-eqz v3, :cond_19

    goto/16 :goto_b

    .line 120
    :cond_19
    instance-of v3, v7, Lv9/q5;

    if-eqz v3, :cond_1a

    goto/16 :goto_b

    .line 121
    :cond_1a
    instance-of v3, v7, Lv9/x5;

    if-eqz v3, :cond_1b

    goto/16 :goto_b

    .line 122
    :cond_1b
    instance-of v3, v7, Lv9/a6;

    if-eqz v3, :cond_1c

    goto/16 :goto_b

    .line 123
    :cond_1c
    instance-of v3, v7, Lv9/t5;

    if-eqz v3, :cond_1d

    goto/16 :goto_b

    .line 124
    :cond_1d
    instance-of v3, v7, Lv9/u5;

    if-eqz v3, :cond_1e

    goto :goto_a

    .line 125
    :cond_1e
    instance-of v3, v7, Lv9/c6;

    if-eqz v3, :cond_1f

    goto/16 :goto_b

    .line 126
    :cond_1f
    instance-of v3, v7, Lv9/q6;

    if-eqz v3, :cond_20

    goto :goto_a

    .line 127
    :cond_20
    instance-of v3, v7, Lv9/o5;

    if-eqz v3, :cond_21

    goto :goto_a

    .line 128
    :cond_21
    instance-of v3, v7, Lv9/g6;

    if-eqz v3, :cond_22

    goto :goto_a

    .line 129
    :cond_22
    instance-of v3, v7, Lv9/p5;

    if-eqz v3, :cond_23

    :goto_a
    move v11, v1

    goto :goto_c

    .line 130
    :cond_23
    instance-of v3, v7, Lv9/c1;

    if-eqz v3, :cond_24

    goto :goto_b

    .line 131
    :cond_24
    instance-of v3, v7, Lv9/t4;

    if-eqz v3, :cond_25

    goto :goto_b

    .line 132
    :cond_25
    instance-of v3, v7, Lv9/l4;

    if-eqz v3, :cond_26

    goto :goto_b

    .line 133
    :cond_26
    instance-of v3, v7, Lv9/y1;

    if-eqz v3, :cond_27

    goto :goto_b

    .line 134
    :cond_27
    instance-of v3, v7, Lv9/c4;

    if-eqz v3, :cond_28

    goto :goto_b

    .line 135
    :cond_28
    instance-of v3, v7, Lv9/y4;

    if-eqz v3, :cond_29

    goto :goto_b

    .line 136
    :cond_29
    instance-of v3, v7, Lv9/w4;

    if-eqz v3, :cond_2a

    goto :goto_b

    .line 137
    :cond_2a
    instance-of v3, v7, Lv9/t3;

    if-eqz v3, :cond_2b

    goto :goto_b

    .line 138
    :cond_2b
    instance-of v3, v7, Lv9/n5;

    if-eqz v3, :cond_2c

    goto :goto_b

    .line 139
    :cond_2c
    instance-of v3, v7, Lv9/e5;

    if-eqz v3, :cond_2d

    goto :goto_b

    .line 140
    :cond_2d
    instance-of v3, v7, Lv9/h5;

    if-eqz v3, :cond_2e

    goto :goto_b

    .line 141
    :cond_2e
    instance-of v3, v7, Lv9/i4;

    if-eqz v3, :cond_2f

    goto :goto_b

    .line 142
    :cond_2f
    instance-of v3, v7, Lv9/q4;

    if-eqz v3, :cond_30

    goto :goto_b

    .line 143
    :cond_30
    instance-of v3, v7, Lv9/j5;

    if-eqz v3, :cond_31

    goto :goto_b

    .line 144
    :cond_31
    instance-of v3, v7, Lv9/z3;

    if-eqz v3, :cond_32

    goto :goto_b

    .line 145
    :cond_32
    instance-of v3, v7, Lv9/f4;

    :goto_b
    const/4 v11, 0x2

    .line 146
    :goto_c
    new-instance v3, Leb/c;

    invoke-direct {v3, v7}, Leb/c;-><init>(Leb/d;)V

    .line 147
    invoke-static {v11}, Lq/g;->a(I)I

    move-result v8

    if-eqz v8, :cond_34

    if-eq v8, v1, :cond_33

    goto :goto_d

    .line 148
    :cond_33
    sget-object v8, Lv9/t;->a:Lv9/t;

    .line 149
    sget-object v8, Lv9/t;->i:Leb/f;

    new-array v1, v1, [Leb/g;

    aput-object v3, v1, v2

    .line 150
    invoke-virtual {v8, v1}, Leb/f;->a([Leb/g;)V

    goto :goto_d

    .line 151
    :cond_34
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 152
    sget-object v1, Lv9/t;->i:Leb/f;

    .line 153
    invoke-virtual {v1, v3}, Leb/f;->c(Leb/g;)V

    .line 154
    :goto_d
    iget-object v1, v4, Lya/d;->m:Lv9/p0;

    if-eqz v1, :cond_35

    .line 155
    invoke-interface {v1, v7}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_35
    new-array v1, v2, [Lv9/p0;

    .line 156
    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    check-cast v1, [Lv9/p0;

    .line 158
    array-length v3, v1

    :goto_e
    if-ge v2, v3, :cond_36

    aget-object v5, v1, v2

    .line 159
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v8, Lya/u;

    invoke-direct {v8, v5, v7}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v8}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 160
    :cond_36
    iget-object v1, v4, Lya/d;->A:Lhc/l0;

    .line 161
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_3a

    .line 162
    iget-object v1, v7, Lv9/g;->k:Lv9/a;

    .line 163
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 164
    instance-of v1, v7, Lv9/n4;

    if-eqz v1, :cond_37

    goto :goto_f

    .line 165
    :cond_37
    instance-of v1, v7, Lv9/a2;

    .line 166
    :goto_f
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lya/w;

    invoke-direct {v2, v7, v4}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v1, v2}, Lz9/a;->b(Lqd/a;)V

    goto :goto_11

    .line 167
    :cond_38
    :goto_10
    iget-object v2, v0, Lya/d$j;->h:Lya/d;

    .line 168
    iput-object v3, v2, Lya/d;->v:Lv9/e;

    .line 169
    iget-object v3, v2, Lya/d;->A:Lhc/l0;

    .line 170
    instance-of v3, v3, Lza/a;

    if-eqz v3, :cond_39

    .line 171
    iget-object v3, v2, Lya/d;->f:Ljava/lang/String;

    const-string v4, "deviceId"

    .line 172
    invoke-static {v3, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v4, Lhc/l;

    invoke-direct {v4, v3}, Lhc/l;-><init>(Ljava/lang/String;)V

    .line 174
    iput-object v4, v2, Lya/d;->A:Lhc/l0;

    .line 175
    :cond_39
    iget-object v2, v0, Lya/d$j;->h:Lya/d;

    .line 176
    invoke-virtual {v2}, Lya/d;->g0()Lda/d;

    move-result-object v2

    .line 177
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lya/d$j;->h:Lya/d;

    .line 178
    iget-object v6, v5, Lya/d;->f:Ljava/lang/String;

    .line 179
    iget-boolean v5, v5, Lya/d;->x:Z

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect called "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " currentState: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " connectionInFlight "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 181
    invoke-virtual {v2}, Lda/d;->g()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lya/d$j;->h:Lya/d;

    .line 182
    iget-boolean v3, v2, Lya/d;->x:Z

    if-nez v3, :cond_3a

    .line 183
    iput-boolean v1, v2, Lya/d;->x:Z

    .line 184
    invoke-virtual {v2}, Lya/d;->k0()Lic/s;

    move-result-object v1

    .line 185
    iget-object v2, v0, Lya/d$j;->h:Lya/d;

    .line 186
    iget-object v3, v2, Lya/d;->f:Ljava/lang/String;

    .line 187
    iget-object v2, v2, Lya/d;->C:Lya/d$k;

    .line 188
    invoke-interface {v1, v3, v2}, Lic/s;->d(Ljava/lang/String;Lic/o;)V

    .line 189
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lya/e;

    iget-object v3, v0, Lya/d$j;->h:Lya/d;

    iget-object v4, v0, Lya/d$j;->j:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lya/e;-><init>(Lya/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lz9/a;->b(Lqd/a;)V

    .line 190
    :cond_3a
    :goto_11
    sget-object v1, Lfd/o;->a:Lfd/o;

    return-object v1
.end method
