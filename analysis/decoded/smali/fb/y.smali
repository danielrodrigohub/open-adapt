.class public final Lfb/y;
.super Ljava/lang/Object;
.source "SessionDownload.kt"

# interfaces
.implements Lfb/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfb/c0<",
        "Lfd/e<",
        "+",
        "Lmc/b0;",
        "+[B>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lfb/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfb/c0<",
            "Lla/a;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lfb/s;


# direct methods
.method public constructor <init>(Lfb/c0;Lfb/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfb/c0<",
            "Lla/a;",
            ">;",
            "Lfb/s;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lfb/y;->a:Lfb/c0;

    iput-object p2, p0, Lfb/y;->b:Lfb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfd/e;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd/e<",
            "Lmc/b0;",
            "[B>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "result"

    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lfd/e;->h:Ljava/lang/Object;

    .line 2
    check-cast v2, Lmc/b0;

    .line 3
    iget-object v0, v0, Lfd/e;->i:Ljava/lang/Object;

    .line 4
    check-cast v0, [B

    .line 5
    iget-object v3, v1, Lfb/y;->b:Lfb/s;

    invoke-static {v3, v2}, Lfb/s;->c(Lfb/s;Lmc/b0;)Z

    move-result v3

    if-eqz v3, :cond_1f

    array-length v3, v0

    .line 6
    iget v4, v2, Lmc/b0;->c:I

    if-lt v3, v4, :cond_1f

    .line 7
    iget-object v3, v2, Lmc/b0;->a:Lmc/a0;

    .line 8
    iget v3, v3, Lmc/a0;->a:I

    .line 9
    iget v3, v2, Lmc/b0;->d:I

    .line 10
    iget v5, v2, Lmc/b0;->e:I

    .line 11
    invoke-static {v5}, Lq/g;->a(I)I

    .line 12
    array-length v5, v0

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    array-length v5, v0

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 14
    invoke-virtual {v4, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 15
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    int-to-long v7, v3

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    cmp-long v3, v4, v7

    if-nez v3, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1e

    .line 16
    iget-object v2, v1, Lfb/y;->a:Lfb/c0;

    const/16 v3, 0xa

    .line 17
    :try_start_0
    invoke-static {v0}, Lfc/w;->G([B)Lfc/w;

    move-result-object v0

    .line 18
    invoke-static {}, Lfc/k;->L()Lfc/k$a;

    move-result-object v4

    .line 19
    invoke-virtual {v0}, Lfc/w;->C()Lfc/b0;

    move-result-object v5

    .line 20
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 21
    iget-object v7, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v7, Lfc/k;

    invoke-static {v7, v5}, Lfc/k;->E(Lfc/k;Lfc/b0;)V

    .line 22
    invoke-virtual {v0}, Lfc/w;->E()Ljava/util/List;

    move-result-object v5

    .line 23
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 24
    iget-object v7, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v7, Lfc/k;

    invoke-static {v7, v5}, Lfc/k;->y(Lfc/k;Ljava/lang/Iterable;)V

    .line 25
    invoke-virtual {v0}, Lfc/w;->F()Ljava/util/List;

    move-result-object v5

    .line 26
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 27
    iget-object v7, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v7, Lfc/k;

    invoke-static {v7, v5}, Lfc/k;->z(Lfc/k;Ljava/lang/Iterable;)V

    .line 28
    invoke-virtual {v0}, Lfc/w;->y()Ljava/util/List;

    move-result-object v5

    .line 29
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 30
    iget-object v7, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v7, Lfc/k;

    invoke-static {v7, v5}, Lfc/k;->x(Lfc/k;Ljava/lang/Iterable;)V

    .line 31
    invoke-static {}, Lfc/q;->A()Lfc/q$a;

    move-result-object v5

    .line 32
    invoke-virtual {v0}, Lfc/w;->B()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfc/r;

    .line 33
    invoke-virtual {v8}, Lfc/r;->z()I

    move-result v10

    .line 34
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 35
    iget-object v11, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v11, Lfc/q;

    invoke-static {v11, v10}, Lfc/q;->y(Lfc/q;I)V

    .line 36
    invoke-virtual {v8}, Lfc/r;->y()Lm7/i;

    move-result-object v10

    invoke-virtual {v10}, Lm7/i;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x6

    if-lez v10, :cond_3

    goto/16 :goto_8

    .line 37
    :cond_3
    invoke-virtual {v8}, Lfc/r;->y()Lm7/i;

    move-result-object v10

    invoke-virtual {v10}, Lm7/i;->size()I

    move-result v10

    div-int/2addr v10, v9

    new-array v9, v10, [S

    .line 38
    invoke-virtual {v8}, Lfc/r;->y()Lm7/i;

    move-result-object v8

    invoke-virtual {v8}, Lm7/i;->r()[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 39
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v8

    .line 40
    invoke-virtual {v8, v9}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_4

    .line 41
    invoke-static {}, Lfc/i;->F()Lfc/i$a;

    move-result-object v11

    .line 42
    aget-short v12, v9, v8

    invoke-virtual {v11, v12}, Lfc/i$a;->m(I)Lfc/i$a;

    add-int/lit8 v12, v8, 0x1

    .line 43
    aget-short v12, v9, v12

    invoke-virtual {v11, v12}, Lfc/i$a;->n(I)Lfc/i$a;

    add-int/lit8 v12, v8, 0x2

    .line 44
    aget-short v12, v9, v12

    invoke-virtual {v11, v12}, Lfc/i$a;->o(I)Lfc/i$a;

    .line 45
    invoke-virtual {v11}, Lm7/w$a;->h()Lm7/w;

    move-result-object v11

    check-cast v11, Lfc/i;

    .line 46
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 47
    iget-object v12, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v12, Lfc/q;

    invoke-static {v12, v11}, Lfc/q;->x(Lfc/q;Lfc/i;)V

    add-int/lit8 v8, v8, 0x3

    goto :goto_4

    .line 48
    :cond_4
    invoke-virtual {v5}, Lm7/w$a;->h()Lm7/w;

    move-result-object v8

    check-cast v8, Lfc/q;

    .line 49
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 50
    iget-object v9, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v9, Lfc/k;

    invoke-static {v9, v8}, Lfc/k;->B(Lfc/k;Lfc/q;)V

    .line 51
    invoke-virtual {v5}, Lm7/w$a;->j()Lm7/w$a;

    goto/16 :goto_3

    .line 52
    :cond_5
    invoke-static {}, Lfc/n;->D()Lfc/n$a;

    move-result-object v5

    .line 53
    invoke-virtual {v0}, Lfc/w;->z()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfc/o;

    .line 54
    invoke-virtual {v8}, Lfc/o;->z()I

    move-result v10

    .line 55
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 56
    iget-object v11, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v11, Lfc/n;

    invoke-static {v11, v10}, Lfc/n;->y(Lfc/n;I)V

    .line 57
    invoke-virtual {v8}, Lfc/o;->A()I

    move-result v10

    .line 58
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 59
    iget-object v11, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v11, Lfc/n;

    invoke-static {v11, v10}, Lfc/n;->z(Lfc/n;I)V

    .line 60
    invoke-virtual {v8}, Lfc/o;->y()Lm7/i;

    move-result-object v10

    invoke-virtual {v10}, Lm7/i;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x6

    if-lez v10, :cond_6

    goto/16 :goto_8

    .line 61
    :cond_6
    invoke-virtual {v8}, Lfc/o;->y()Lm7/i;

    move-result-object v10

    invoke-virtual {v10}, Lm7/i;->size()I

    move-result v10

    div-int/2addr v10, v9

    new-array v11, v10, [S

    .line 62
    invoke-virtual {v8}, Lfc/o;->y()Lm7/i;

    move-result-object v8

    invoke-virtual {v8}, Lm7/i;->r()[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 63
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v8

    .line 64
    invoke-virtual {v8, v11}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 65
    invoke-static {}, Lfc/b;->F()Lfc/b$a;

    move-result-object v8

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_7

    .line 66
    aget-short v13, v11, v12

    .line 67
    invoke-virtual {v8}, Lm7/w$a;->k()V

    .line 68
    iget-object v14, v8, Lm7/w$a;->i:Lm7/w;

    check-cast v14, Lfc/b;

    invoke-static {v14, v13}, Lfc/b;->z(Lfc/b;I)V

    add-int/lit8 v13, v12, 0x1

    .line 69
    aget-short v13, v11, v13

    .line 70
    invoke-virtual {v8}, Lm7/w$a;->k()V

    .line 71
    iget-object v14, v8, Lm7/w$a;->i:Lm7/w;

    check-cast v14, Lfc/b;

    invoke-static {v14, v13}, Lfc/b;->y(Lfc/b;I)V

    add-int/lit8 v13, v12, 0x2

    .line 72
    aget-short v13, v11, v13

    .line 73
    invoke-virtual {v8}, Lm7/w$a;->k()V

    .line 74
    iget-object v14, v8, Lm7/w$a;->i:Lm7/w;

    check-cast v14, Lfc/b;

    invoke-static {v14, v13}, Lfc/b;->x(Lfc/b;I)V

    add-int/lit8 v12, v12, 0x3

    .line 75
    invoke-virtual {v8}, Lm7/w$a;->h()Lm7/w;

    move-result-object v13

    check-cast v13, Lfc/b;

    .line 76
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 77
    iget-object v14, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v14, Lfc/n;

    invoke-static {v14, v13}, Lfc/n;->x(Lfc/n;Lfc/b;)V

    goto :goto_6

    .line 78
    :cond_7
    invoke-virtual {v8}, Lm7/w$a;->j()Lm7/w$a;

    .line 79
    invoke-virtual {v5}, Lm7/w$a;->h()Lm7/w;

    move-result-object v8

    check-cast v8, Lfc/n;

    .line 80
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 81
    iget-object v10, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v10, Lfc/k;

    invoke-static {v10, v8}, Lfc/k;->A(Lfc/k;Lfc/n;)V

    .line 82
    invoke-virtual {v5}, Lm7/w$a;->j()Lm7/w$a;

    goto/16 :goto_5

    .line 83
    :cond_8
    invoke-static {}, Lfc/s;->D()Lfc/s$a;

    move-result-object v7

    .line 84
    invoke-virtual {v0}, Lfc/w;->D()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfc/t;

    .line 85
    invoke-virtual {v10}, Lfc/t;->z()I

    move-result v11

    .line 86
    invoke-virtual {v7}, Lm7/w$a;->k()V

    .line 87
    iget-object v12, v7, Lm7/w$a;->i:Lm7/w;

    check-cast v12, Lfc/s;

    invoke-static {v12, v11}, Lfc/s;->y(Lfc/s;I)V

    .line 88
    invoke-virtual {v10}, Lfc/t;->A()I

    move-result v11

    .line 89
    invoke-virtual {v7}, Lm7/w$a;->k()V

    .line 90
    iget-object v12, v7, Lm7/w$a;->i:Lm7/w;

    check-cast v12, Lfc/s;

    invoke-static {v12, v11}, Lfc/s;->z(Lfc/s;I)V

    .line 91
    invoke-virtual {v10}, Lfc/t;->y()Lm7/i;

    move-result-object v11

    invoke-virtual {v11}, Lm7/i;->size()I

    move-result v11

    rem-int/lit8 v11, v11, 0xc

    if-lez v11, :cond_9

    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 92
    :cond_9
    invoke-virtual {v10}, Lfc/t;->y()Lm7/i;

    move-result-object v11

    invoke-virtual {v11}, Lm7/i;->size()I

    move-result v11

    div-int/2addr v11, v9

    new-array v9, v11, [S

    .line 93
    invoke-virtual {v10}, Lfc/t;->y()Lm7/i;

    move-result-object v10

    invoke-virtual {v10}, Lm7/i;->r()[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 94
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 95
    invoke-virtual {v10, v9}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 96
    invoke-static {}, Lfc/h;->D()Lfc/h$a;

    move-result-object v10

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_a

    .line 97
    invoke-static {}, Lfc/i;->F()Lfc/i$a;

    move-result-object v13

    .line 98
    aget-short v14, v9, v12

    invoke-virtual {v13, v14}, Lfc/i$a;->m(I)Lfc/i$a;

    add-int/lit8 v14, v12, 0x1

    .line 99
    aget-short v14, v9, v14

    invoke-virtual {v13, v14}, Lfc/i$a;->n(I)Lfc/i$a;

    add-int/lit8 v14, v12, 0x2

    .line 100
    aget-short v14, v9, v14

    invoke-virtual {v13, v14}, Lfc/i$a;->o(I)Lfc/i$a;

    .line 101
    invoke-virtual {v13}, Lm7/w$a;->h()Lm7/w;

    move-result-object v13

    check-cast v13, Lfc/i;

    .line 102
    invoke-static {}, Lfc/i;->F()Lfc/i$a;

    move-result-object v14

    add-int/lit8 v15, v12, 0x3

    .line 103
    aget-short v15, v9, v15

    invoke-virtual {v14, v15}, Lfc/i$a;->m(I)Lfc/i$a;

    add-int/lit8 v15, v12, 0x4

    .line 104
    aget-short v15, v9, v15

    invoke-virtual {v14, v15}, Lfc/i$a;->n(I)Lfc/i$a;

    add-int/lit8 v15, v12, 0x5

    .line 105
    aget-short v15, v9, v15

    invoke-virtual {v14, v15}, Lfc/i$a;->o(I)Lfc/i$a;

    .line 106
    invoke-virtual {v14}, Lm7/w$a;->h()Lm7/w;

    move-result-object v14

    check-cast v14, Lfc/i;

    .line 107
    invoke-virtual {v10}, Lm7/w$a;->k()V

    .line 108
    iget-object v15, v10, Lm7/w$a;->i:Lm7/w;

    check-cast v15, Lfc/h;

    invoke-static {v15, v14}, Lfc/h;->x(Lfc/h;Lfc/i;)V

    .line 109
    invoke-virtual {v10}, Lm7/w$a;->k()V

    .line 110
    iget-object v14, v10, Lm7/w$a;->i:Lm7/w;

    check-cast v14, Lfc/h;

    invoke-static {v14, v13}, Lfc/h;->y(Lfc/h;Lfc/i;)V

    .line 111
    invoke-virtual {v10}, Lm7/w$a;->h()Lm7/w;

    move-result-object v13

    check-cast v13, Lfc/h;

    .line 112
    invoke-virtual {v7}, Lm7/w$a;->k()V

    .line 113
    iget-object v14, v7, Lm7/w$a;->i:Lm7/w;

    check-cast v14, Lfc/s;

    invoke-static {v14, v13}, Lfc/s;->x(Lfc/s;Lfc/h;)V

    add-int/lit8 v12, v12, 0x6

    goto :goto_9

    .line 114
    :cond_a
    invoke-virtual {v10}, Lm7/w$a;->j()Lm7/w$a;

    .line 115
    invoke-virtual {v7}, Lm7/w$a;->h()Lm7/w;

    move-result-object v9

    check-cast v9, Lfc/s;

    .line 116
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 117
    iget-object v10, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v10, Lfc/k;

    invoke-static {v10, v9}, Lfc/k;->C(Lfc/k;Lfc/s;)V

    .line 118
    invoke-virtual {v7}, Lm7/w$a;->j()Lm7/w$a;

    const/4 v9, 0x2

    goto/16 :goto_7

    .line 119
    :cond_b
    invoke-virtual {v0}, Lfc/w;->A()Lfc/c0;

    move-result-object v0

    .line 120
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 121
    iget-object v7, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v7, Lfc/k;

    invoke-static {v7, v0}, Lfc/k;->D(Lfc/k;Lfc/c0;)V

    .line 122
    invoke-virtual {v4}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lfc/k;

    .line 123
    iget-object v7, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v7, Lfc/k;

    .line 124
    invoke-virtual {v7}, Lfc/k;->K()Ljava/util/List;

    move-result-object v7

    .line 125
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const-string v8, "steps"

    .line 126
    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v7, v3}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 129
    check-cast v7, Lfc/v;

    .line 130
    new-instance v8, Lmc/y;

    .line 131
    invoke-virtual {v7}, Lfc/v;->I()I

    move-result v9

    int-to-long v9, v9

    .line 132
    invoke-virtual {v7}, Lfc/v;->B()Lfc/v$b;

    move-result-object v11

    invoke-virtual {v11}, Lfc/v$b;->a()I

    move-result v11

    const/4 v12, 0x4

    const/4 v14, 0x3

    if-eq v11, v6, :cond_e

    const/4 v15, 0x2

    if-eq v11, v15, :cond_d

    if-eq v11, v14, :cond_c

    move/from16 v17, v6

    goto :goto_b

    :cond_c
    move/from16 v17, v12

    goto :goto_b

    :cond_d
    move/from16 v17, v14

    goto :goto_b

    :cond_e
    const/4 v11, 0x2

    move/from16 v17, v11

    .line 133
    :goto_b
    invoke-virtual {v7}, Lfc/v;->C()I

    move-result v18

    .line 134
    invoke-virtual {v7}, Lfc/v;->D()I

    move-result v19

    .line 135
    invoke-virtual {v7}, Lfc/v;->y()I

    move-result v20

    .line 136
    invoke-virtual {v7}, Lfc/v;->H()I

    move-result v21

    .line 137
    invoke-virtual {v7}, Lfc/v;->G()I

    move-result v22

    .line 138
    invoke-virtual {v7}, Lfc/v;->F()I

    move-result v23

    .line 139
    invoke-virtual {v7}, Lfc/v;->A()I

    move-result v11

    if-eq v11, v6, :cond_12

    const/4 v15, 0x2

    if-eq v11, v15, :cond_11

    if-eq v11, v14, :cond_10

    if-eq v11, v12, :cond_f

    move/from16 v24, v6

    goto :goto_d

    :cond_f
    const/4 v11, 0x5

    goto :goto_c

    :cond_10
    move/from16 v24, v12

    goto :goto_d

    :cond_11
    move/from16 v24, v14

    goto :goto_d

    :cond_12
    const/4 v11, 0x2

    :goto_c
    move/from16 v24, v11

    .line 140
    :goto_d
    invoke-virtual {v7}, Lfc/v;->E()I

    move-result v25

    move-object v14, v8

    move-wide v15, v9

    .line 141
    invoke-direct/range {v14 .. v25}, Lmc/y;-><init>(JIIIIIIIII)V

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 142
    :cond_13
    iget-object v3, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lfc/k;

    .line 143
    invoke-virtual {v3}, Lfc/k;->J()Ljava/util/List;

    move-result-object v3

    .line 144
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v6, "fixedSession.memsList"

    .line 145
    invoke-static {v3, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 148
    check-cast v6, Lfc/s;

    .line 149
    invoke-virtual {v6}, Lfc/s;->B()Ljava/util/List;

    move-result-object v7

    const-string v8, "mem.dataList"

    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 152
    check-cast v9, Lfc/h;

    .line 153
    new-instance v10, Lmc/c0;

    .line 154
    invoke-virtual {v6}, Lfc/s;->C()I

    move-result v11

    int-to-long v11, v11

    .line 155
    invoke-virtual {v9}, Lfc/h;->C()Lfc/i;

    move-result-object v14

    invoke-virtual {v14}, Lfc/i;->C()I

    move-result v19

    .line 156
    invoke-virtual {v9}, Lfc/h;->C()Lfc/i;

    move-result-object v14

    invoke-virtual {v14}, Lfc/i;->D()I

    move-result v20

    .line 157
    invoke-virtual {v9}, Lfc/h;->C()Lfc/i;

    move-result-object v14

    invoke-virtual {v14}, Lfc/i;->E()I

    move-result v21

    .line 158
    invoke-virtual {v9}, Lfc/h;->A()Lfc/i;

    move-result-object v14

    invoke-virtual {v14}, Lfc/i;->C()I

    move-result v22

    .line 159
    invoke-virtual {v9}, Lfc/h;->A()Lfc/i;

    move-result-object v14

    invoke-virtual {v14}, Lfc/i;->D()I

    move-result v23

    .line 160
    invoke-virtual {v9}, Lfc/h;->A()Lfc/i;

    move-result-object v9

    invoke-virtual {v9}, Lfc/i;->E()I

    move-result v24

    move-object/from16 v16, v10

    move-wide/from16 v17, v11

    .line 161
    invoke-direct/range {v16 .. v24}, Lmc/c0;-><init>(JIIIIII)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 162
    :cond_14
    invoke-static {v15, v8}, Lgd/l;->X(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_e

    .line 163
    :cond_15
    iget-object v3, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lfc/k;

    .line 164
    invoke-virtual {v3}, Lfc/k;->H()Ljava/util/List;

    move-result-object v3

    .line 165
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v6, "fixedSession.csList"

    .line 166
    invoke-static {v3, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 169
    check-cast v6, Lfc/n;

    .line 170
    invoke-virtual {v6}, Lfc/n;->B()Ljava/util/List;

    move-result-object v6

    const-string v7, "cs.dataList"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 173
    check-cast v8, Lfc/b;

    .line 174
    new-instance v9, Lmc/w;

    .line 175
    iget-object v10, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v10, Lfc/n;

    invoke-virtual {v10}, Lfc/n;->C()I

    move-result v10

    int-to-long v10, v10

    .line 176
    invoke-virtual {v8}, Lfc/b;->E()I

    move-result v19

    .line 177
    invoke-virtual {v8}, Lfc/b;->D()I

    move-result v20

    .line 178
    invoke-virtual {v8}, Lfc/b;->B()I

    move-result v21

    move-object/from16 v16, v9

    move-wide/from16 v17, v10

    .line 179
    invoke-direct/range {v16 .. v21}, Lmc/w;-><init>(JIII)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 180
    :cond_16
    invoke-static {v14, v7}, Lgd/l;->X(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_10

    .line 181
    :cond_17
    iget-object v3, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lfc/k;

    .line 182
    invoke-virtual {v3}, Lfc/k;->G()Ljava/util/List;

    move-result-object v3

    .line 183
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v4, "fixedSession.batteryTempList"

    .line 184
    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 187
    check-cast v5, Lfc/m;

    .line 188
    new-instance v6, Lmc/d0;

    .line 189
    invoke-virtual {v5}, Lfc/m;->z()I

    move-result v7

    int-to-long v7, v7

    .line 190
    invoke-virtual {v5}, Lfc/m;->y()D

    move-result-wide v9

    .line 191
    invoke-direct {v6, v7, v8, v9, v10}, Lmc/d0;-><init>(JD)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 192
    :cond_18
    new-instance v3, Lmc/x;

    .line 193
    invoke-virtual {v0}, Lfc/k;->I()Lfc/b0;

    move-result-object v5

    invoke-virtual {v5}, Lfc/b0;->z()Lfc/z;

    move-result-object v5

    invoke-virtual {v5}, Lfc/z;->A()I

    move-result v10

    .line 194
    invoke-virtual {v0}, Lfc/k;->I()Lfc/b0;

    move-result-object v0

    invoke-virtual {v0}, Lfc/b0;->A()J

    move-result-wide v11

    move-object v9, v3

    move-object/from16 v16, v4

    .line 195
    invoke-direct/range {v9 .. v16}, Lmc/x;-><init>(IJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_13
    const/4 v3, 0x0

    goto :goto_14

    :catch_0
    move-exception v0

    .line 196
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    const-string v4, "proto error: "

    .line 197
    invoke-static {v4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SessionUtil.Decode"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v0, v5, v6, v4}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    move-object v0, v5

    move-object v3, v0

    :goto_14
    if-eqz v0, :cond_1d

    .line 199
    new-instance v5, Lla/b;

    .line 200
    iget v3, v0, Lmc/x;->h:I

    .line 201
    invoke-direct {v5, v3}, Lla/b;-><init>(I)V

    .line 202
    iget-wide v6, v0, Lmc/x;->i:J

    .line 203
    iget-object v3, v0, Lmc/x;->j:Ljava/util/List;

    .line 204
    new-instance v8, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 206
    check-cast v4, Lmc/y;

    .line 207
    sget-object v9, Lla/i;->r:Lla/i$a;

    .line 208
    iget-wide v10, v0, Lmc/x;->i:J

    .line 209
    invoke-virtual {v9, v4, v10, v11}, Lla/i$a;->a(Lmc/y;J)Lla/i;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 210
    :cond_19
    iget-object v3, v0, Lmc/x;->k:Ljava/util/List;

    .line 211
    new-instance v9, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 213
    check-cast v4, Lmc/w;

    .line 214
    iget-wide v10, v0, Lmc/x;->i:J

    const-string v12, "coreRFSessionCapSenseData"

    .line 215
    invoke-static {v4, v12}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v12, Lla/f;

    .line 217
    iget-wide v13, v4, Lmc/w;->h:J

    add-long v14, v13, v10

    .line 218
    iget v10, v4, Lmc/w;->i:I

    .line 219
    iget v11, v4, Lmc/w;->j:I

    .line 220
    iget v4, v4, Lmc/w;->k:I

    move-object v13, v12

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v4

    .line 221
    invoke-direct/range {v13 .. v18}, Lla/f;-><init>(JIII)V

    .line 222
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 223
    :cond_1a
    iget-object v3, v0, Lmc/x;->l:Ljava/util/List;

    .line 224
    new-instance v10, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 226
    check-cast v4, Lmc/c0;

    const-string v11, "sessionRawData"

    .line 227
    invoke-static {v4, v11}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v11, Lla/h;

    .line 229
    iget-wide v12, v4, Lmc/c0;->h:J

    .line 230
    new-instance v14, Lla/h$b;

    .line 231
    iget v15, v4, Lmc/c0;->l:I

    move-object/from16 p1, v3

    .line 232
    iget v3, v4, Lmc/c0;->m:I

    .line 233
    iget v1, v4, Lmc/c0;->n:I

    .line 234
    invoke-direct {v14, v15, v3, v1}, Lla/h$b;-><init>(III)V

    .line 235
    new-instance v1, Lla/h$b;

    .line 236
    iget v3, v4, Lmc/c0;->i:I

    .line 237
    iget v15, v4, Lmc/c0;->j:I

    .line 238
    iget v4, v4, Lmc/c0;->k:I

    .line 239
    invoke-direct {v1, v3, v15, v4}, Lla/h$b;-><init>(III)V

    .line 240
    invoke-direct {v11, v12, v13, v14, v1}, Lla/h;-><init>(JLla/h$b;Lla/h$b;)V

    .line 241
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    goto :goto_17

    .line 242
    :cond_1b
    iget-object v0, v0, Lmc/x;->m:Ljava/util/List;

    .line 243
    new-instance v11, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 245
    check-cast v1, Lmc/d0;

    .line 246
    new-instance v3, Lla/d;

    .line 247
    iget-wide v12, v1, Lmc/d0;->h:J

    .line 248
    iget-wide v14, v1, Lmc/d0;->i:D

    .line 249
    invoke-direct {v3, v12, v13, v14, v15}, Lla/d;-><init>(JD)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 250
    :cond_1c
    new-instance v3, Lla/a;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lla/a;-><init>(Lla/b;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 251
    :cond_1d
    invoke-interface {v2, v3}, Lfb/c0;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    .line 252
    iget-object v0, v1, Lfb/y;->b:Lfb/s;

    const/4 v2, 0x0

    .line 253
    iput-boolean v2, v0, Lfb/s;->k:Z

    goto :goto_19

    :cond_1e
    const/4 v0, 0x0

    .line 254
    iget-object v3, v1, Lfb/y;->b:Lfb/s;

    .line 255
    iget-object v4, v3, Lfb/s;->i:Ljava/lang/Object;

    .line 256
    monitor-enter v4

    .line 257
    :try_start_1
    iget-object v3, v3, Lfb/s;->h:Ljava/io/File;

    new-array v5, v0, [B

    .line 258
    invoke-static {v3, v5}, Lc3/d;->s(Ljava/io/File;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 259
    sget-object v3, Lla/c;->n:Lla/c$a;

    invoke-virtual {v3, v2, v0}, Lla/c$a;->a(Lmc/b0;I)Lla/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfb/y;->c(Lla/c;)V

    .line 260
    new-instance v0, Ly9/f;

    .line 261
    iget-object v2, v1, Lfb/y;->b:Lfb/s;

    .line 262
    iget-object v3, v2, Lfb/s;->b:Ljava/lang/String;

    .line 263
    iget-object v2, v2, Lfb/s;->c:Lla/b;

    .line 264
    sget-object v4, Lv9/a;->i:Lv9/a$a;

    .line 265
    sget-object v4, Lv9/a;->j:Lv9/a;

    .line 266
    invoke-direct {v0, v3, v2, v4}, Ly9/f;-><init>(Ljava/lang/String;Lla/b;Lv9/a;)V

    .line 267
    invoke-virtual {v1, v0}, Lfb/y;->d(Ljava/lang/Throwable;)V

    goto :goto_19

    :catchall_0
    move-exception v0

    .line 268
    monitor-exit v4

    throw v0

    :cond_1f
    :goto_19
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lfd/e;

    invoke-virtual {p0, p1}, Lfb/y;->a(Lfd/e;)V

    return-void
.end method

.method public final c(Lla/c;)V
    .locals 1

    const-string v0, "sessionInformation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfb/y;->a:Lfb/c0;

    invoke-interface {v0, p1}, Lfb/c0;->c(Lla/c;)V

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ly9/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lfb/y;->b:Lfb/s;

    invoke-virtual {v1}, Lfb/s;->d()Z

    .line 3
    :cond_0
    iget-object v1, p0, Lfb/y;->b:Lfb/s;

    invoke-virtual {v1, v0}, Lfb/s;->j(Z)V

    .line 4
    iget-object v0, p0, Lfb/y;->a:Lfb/c0;

    invoke-interface {v0, p1}, Lfb/c0;->d(Ljava/lang/Throwable;)V

    return-void
.end method
