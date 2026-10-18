.class public final Lu3/f;
.super Ljava/lang/Object;
.source "ListChunk.java"

# interfaces
.implements Lu3/a;


# instance fields
.field public final a:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Lu3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(ILu6/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lu6/v<",
            "Lu3/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lu3/f;->b:I

    .line 3
    iput-object p2, p0, Lu3/f;->a:Lu6/v;

    return-void
.end method

.method public static b(ILm5/w;)Lu3/f;
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x4

    const-string v2, "initialCapacity"

    .line 1
    invoke-static {v1, v2}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    iget v3, v0, Lm5/w;->c:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    move v6, v5

    move v5, v4

    .line 3
    :goto_0
    iget v7, v0, Lm5/w;->c:I

    iget v8, v0, Lm5/w;->b:I

    sub-int/2addr v7, v8

    const/16 v8, 0x8

    if-le v7, v8, :cond_12

    .line 4
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v9

    .line 6
    iget v10, v0, Lm5/w;->b:I

    add-int/2addr v10, v9

    .line 7
    invoke-virtual {v0, v10}, Lm5/w;->C(I)V

    const v9, 0x5453494c

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v7, v9, :cond_0

    .line 8
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v1

    .line 9
    invoke-static {v1, v0}, Lu3/f;->b(ILm5/w;)Lu3/f;

    move-result-object v1

    goto/16 :goto_4

    :cond_0
    const/16 v9, 0xc

    const/4 v13, 0x0

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_3

    .line 10
    :sswitch_0
    new-instance v1, Lu3/h;

    .line 11
    iget v5, v0, Lm5/w;->c:I

    iget v7, v0, Lm5/w;->b:I

    sub-int/2addr v5, v7

    .line 12
    invoke-virtual {v0, v5}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lu3/h;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 13
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v14

    .line 14
    invoke-virtual {v0, v9}, Lm5/w;->E(I)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    .line 16
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v15

    .line 17
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v16

    .line 18
    invoke-virtual {v0, v1}, Lm5/w;->E(I)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v17

    .line 20
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v18

    .line 21
    invoke-virtual {v0, v8}, Lm5/w;->E(I)V

    .line 22
    new-instance v1, Lu3/d;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lu3/d;-><init>(IIIII)V

    goto/16 :goto_4

    .line 23
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v5

    .line 24
    invoke-virtual {v0, v8}, Lm5/w;->E(I)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v7

    .line 26
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v8

    .line 27
    invoke-virtual {v0, v1}, Lm5/w;->E(I)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    .line 29
    invoke-virtual {v0, v9}, Lm5/w;->E(I)V

    .line 30
    new-instance v1, Lu3/c;

    invoke-direct {v1, v5, v7, v8}, Lu3/c;-><init>(III)V

    goto/16 :goto_4

    :sswitch_3
    const-string v7, "StreamFormatChunk"

    if-ne v6, v11, :cond_2

    .line 31
    invoke-virtual {v0, v1}, Lm5/w;->E(I)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v5

    .line 33
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v8

    .line 34
    invoke-virtual {v0, v1}, Lm5/w;->E(I)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    move-object v9, v13

    goto :goto_1

    :sswitch_4
    const-string v9, "video/mjpeg"

    goto :goto_1

    :sswitch_5
    const-string v9, "video/mp43"

    goto :goto_1

    :sswitch_6
    const-string v9, "video/mp42"

    goto :goto_1

    :sswitch_7
    const-string v9, "video/avc"

    goto :goto_1

    :sswitch_8
    const-string v9, "video/mp4v-es"

    :goto_1
    if-nez v9, :cond_1

    const-string v5, "Ignoring track with unsupported compression "

    .line 36
    invoke-static {v5, v1, v7}, Lda/c;->b(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 37
    :cond_1
    new-instance v1, Ln3/s0$a;

    invoke-direct {v1}, Ln3/s0$a;-><init>()V

    .line 38
    iput v5, v1, Ln3/s0$a;->p:I

    .line 39
    iput v8, v1, Ln3/s0$a;->q:I

    .line 40
    iput-object v9, v1, Ln3/s0$a;->k:Ljava/lang/String;

    .line 41
    new-instance v5, Lu3/g;

    .line 42
    new-instance v7, Ln3/s0;

    invoke-direct {v7, v1}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 43
    invoke-direct {v5, v7}, Lu3/g;-><init>(Ln3/s0;)V

    move-object v1, v5

    goto/16 :goto_4

    :cond_2
    if-ne v6, v12, :cond_b

    .line 44
    invoke-virtual/range {p1 .. p1}, Lm5/w;->l()I

    move-result v1

    const-string v8, "audio/mp4a-latm"

    const-string v9, "audio/raw"

    if-eq v1, v12, :cond_7

    const/16 v11, 0x55

    if-eq v1, v11, :cond_6

    const/16 v11, 0xff

    if-eq v1, v11, :cond_5

    const/16 v11, 0x2000

    if-eq v1, v11, :cond_4

    const/16 v11, 0x2001

    if-eq v1, v11, :cond_3

    move-object v11, v13

    goto :goto_2

    :cond_3
    const-string v11, "audio/vnd.dts"

    goto :goto_2

    :cond_4
    const-string v11, "audio/ac3"

    goto :goto_2

    :cond_5
    move-object v11, v8

    goto :goto_2

    :cond_6
    const-string v11, "audio/mpeg"

    goto :goto_2

    :cond_7
    move-object v11, v9

    :goto_2
    if-nez v11, :cond_8

    const-string v5, "Ignoring track with unsupported format tag "

    .line 45
    invoke-static {v5, v1, v7}, Lda/c;->b(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 46
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lm5/w;->l()I

    move-result v1

    .line 47
    invoke-virtual/range {p1 .. p1}, Lm5/w;->g()I

    move-result v7

    const/4 v13, 0x6

    .line 48
    invoke-virtual {v0, v13}, Lm5/w;->E(I)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Lm5/w;->y()I

    move-result v13

    .line 50
    invoke-static {v13}, Lm5/g0;->y(I)I

    move-result v13

    .line 51
    invoke-virtual/range {p1 .. p1}, Lm5/w;->l()I

    move-result v14

    .line 52
    new-array v15, v14, [B

    .line 53
    invoke-virtual {v0, v15, v5, v14}, Lm5/w;->d([BII)V

    .line 54
    new-instance v5, Ln3/s0$a;

    invoke-direct {v5}, Ln3/s0$a;-><init>()V

    .line 55
    iput-object v11, v5, Ln3/s0$a;->k:Ljava/lang/String;

    .line 56
    iput v1, v5, Ln3/s0$a;->x:I

    .line 57
    iput v7, v5, Ln3/s0$a;->y:I

    .line 58
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v13, :cond_9

    .line 59
    iput v13, v5, Ln3/s0$a;->z:I

    .line 60
    :cond_9
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-lez v14, :cond_a

    .line 61
    invoke-static {v15}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v1

    .line 62
    iput-object v1, v5, Ln3/s0$a;->m:Ljava/util/List;

    .line 63
    :cond_a
    new-instance v1, Lu3/g;

    .line 64
    new-instance v7, Ln3/s0;

    invoke-direct {v7, v5}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 65
    invoke-direct {v1, v7}, Lu3/g;-><init>(Ln3/s0;)V

    goto :goto_4

    :cond_b
    const-string v1, "Ignoring strf box for unsupported track type: "

    .line 66
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-static {v6}, Lm5/g0;->E(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v7, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v1, v13

    :goto_4
    if-eqz v1, :cond_11

    .line 69
    invoke-interface {v1}, Lu3/a;->getType()I

    move-result v5

    const v7, 0x68727473

    if-ne v5, v7, :cond_f

    .line 70
    move-object v5, v1

    check-cast v5, Lu3/d;

    .line 71
    iget v6, v5, Lu3/d;->a:I

    const v7, 0x73646976

    if-eq v6, v7, :cond_e

    const v7, 0x73647561

    if-eq v6, v7, :cond_d

    const v7, 0x73747874

    if-eq v6, v7, :cond_c

    const-string v6, "Found unsupported streamType fourCC: "

    .line 72
    invoke-static {v6}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    iget v5, v5, Lu3/d;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AviStreamHeaderChunk"

    invoke-static {v6, v5}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x3

    :goto_5
    move v6, v5

    goto :goto_6

    :cond_d
    move v6, v12

    goto :goto_6

    :cond_e
    const/4 v6, 0x2

    :cond_f
    :goto_6
    add-int/lit8 v5, v4, 0x1

    .line 74
    array-length v7, v2

    if-ge v7, v5, :cond_10

    .line 75
    array-length v7, v2

    .line 76
    invoke-static {v7, v5}, Lu6/t$b;->a(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 77
    :cond_10
    aput-object v1, v2, v4

    move v4, v5

    .line 78
    :cond_11
    invoke-virtual {v0, v10}, Lm5/w;->D(I)V

    .line 79
    invoke-virtual {v0, v3}, Lm5/w;->C(I)V

    const/4 v1, 0x4

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 80
    :cond_12
    new-instance v0, Lu3/f;

    .line 81
    invoke-static {v2, v4}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v1

    move/from16 v2, p0

    .line 82
    invoke-direct {v0, v2, v1}, Lu3/f;-><init>(ILu6/v;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lu3/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lu3/a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/f;->a:Lu6/v;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lu6/v;->u(I)Lu6/a;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lu6/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lu6/a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/a;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lu3/f;->b:I

    return v0
.end method
