.class public final La4/b;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/b$f;,
        La4/b$e;,
        La4/b$c;,
        La4/b$b;,
        La4/b$d;,
        La4/b$a;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    invoke-static {v0}, Lm5/g0;->F(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, La4/b;->a:[B

    return-void
.end method

.method public static a(Lm5/w;)V
    .locals 3

    .line 1
    iget v0, p0, Lm5/w;->b:I

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p0, v1}, Lm5/w;->E(I)V

    .line 3
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v1

    const v2, 0x68646c72

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lm5/w;->D(I)V

    return-void
.end method

.method public static b(Lm5/w;I)La4/b$b;
    .locals 13

    add-int/lit8 p1, p1, 0x8

    const/4 v0, 0x4

    add-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lm5/w;->D(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lm5/w;->E(I)V

    .line 3
    invoke-static {p0}, La4/b;->c(Lm5/w;)I

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lm5/w;->E(I)V

    .line 5
    invoke-virtual {p0}, Lm5/w;->t()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lm5/w;->E(I)V

    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lm5/w;->t()I

    move-result v3

    invoke-virtual {p0, v3}, Lm5/w;->E(I)V

    :cond_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lm5/w;->E(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lm5/w;->E(I)V

    .line 10
    invoke-static {p0}, La4/b;->c(Lm5/w;)I

    .line 11
    invoke-virtual {p0}, Lm5/w;->t()I

    move-result v1

    .line 12
    invoke-static {v1}, Lm5/s;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "audio/mpeg"

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "audio/vnd.dts"

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p0, v0}, Lm5/w;->E(I)V

    .line 17
    invoke-virtual {p0}, Lm5/w;->u()J

    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Lm5/w;->u()J

    move-result-wide v4

    .line 19
    invoke-virtual {p0, p1}, Lm5/w;->E(I)V

    .line 20
    invoke-static {p0}, La4/b;->c(Lm5/w;)I

    move-result p1

    .line 21
    new-array v6, p1, [B

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v6, v2, p1}, Lm5/w;->d([BII)V

    .line 23
    new-instance p0, La4/b$b;

    const-wide/16 v7, 0x0

    cmp-long p1, v4, v7

    const-wide/16 v9, -0x1

    if-lez p1, :cond_4

    move-wide v11, v4

    goto :goto_0

    :cond_4
    move-wide v11, v9

    :goto_0
    cmp-long p1, v0, v7

    if-lez p1, :cond_5

    move-wide v7, v0

    goto :goto_1

    :cond_5
    move-wide v7, v9

    :goto_1
    move-object v2, p0

    move-object v4, v6

    move-wide v5, v11

    .line 24
    invoke-direct/range {v2 .. v8}, La4/b$b;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 25
    :cond_6
    :goto_2
    new-instance p0, La4/b$b;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, La4/b$b;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method public static c(Lm5/w;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm5/w;->t()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lm5/w;->t()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static d(Lm5/w;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/w;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "La4/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lm5/w;->b:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    .line 2
    invoke-virtual {v0, v1}, Lm5/w;->D(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 4
    invoke-static {v7, v8}, Ls3/k;->a(ZLjava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 6
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v12

    .line 8
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 10
    invoke-virtual {v0, v13}, Lm5/w;->E(I)V

    .line 11
    invoke-virtual {v0, v13}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 15
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Ls3/k;->a(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 17
    invoke-static {v3, v7}, Ls3/k;->a(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 18
    invoke-virtual {v0, v3}, Lm5/w;->D(I)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v7

    .line 20
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 21
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 22
    invoke-virtual {v0, v5}, Lm5/w;->E(I)V

    if-nez v3, :cond_9

    .line 23
    invoke-virtual {v0, v5}, Lm5/w;->E(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    .line 24
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 25
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    .line 26
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 27
    invoke-virtual {v0, v13, v6, v7}, Lm5/w;->d([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 28
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v7

    .line 29
    new-array v8, v7, [B

    .line 30
    invoke-virtual {v0, v8, v6, v7}, Lm5/w;->d([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    .line 31
    :goto_a
    new-instance v7, La4/m;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, La4/m;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 32
    invoke-static {v5, v6}, Ls3/k;->a(ZLjava/lang/String;)V

    .line 33
    sget v5, Lm5/g0;->a:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static e(Lm5/w;IILjava/lang/String;Lr3/d;Z)La4/b$d;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, 0xc

    .line 1
    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v4

    .line 3
    new-instance v5, La4/b$d;

    invoke-direct {v5, v4}, La4/b$d;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_7b

    .line 4
    iget v7, v0, Lm5/w;->b:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    const-string v10, "childAtomSize must be positive"

    .line 6
    invoke-static {v9, v10}, Ls3/k;->a(ZLjava/lang/String;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v9

    const v11, 0x61766331

    const v12, 0x48323633

    const v13, 0x6d317620

    const v14, 0x656e6376

    if-eq v9, v11, :cond_49

    const v11, 0x61766333

    if-eq v9, v11, :cond_49

    if-eq v9, v14, :cond_49

    if-eq v9, v13, :cond_49

    const v11, 0x6d703476

    if-eq v9, v11, :cond_49

    const v11, 0x68766331

    if-eq v9, v11, :cond_49

    const v11, 0x68657631

    if-eq v9, v11, :cond_49

    const v11, 0x73323633

    if-eq v9, v11, :cond_49

    if-eq v9, v12, :cond_49

    const v11, 0x76703038

    if-eq v9, v11, :cond_49

    const v11, 0x76703039

    if-eq v9, v11, :cond_49

    const v11, 0x61763031

    if-eq v9, v11, :cond_49

    const v11, 0x64766176

    if-eq v9, v11, :cond_49

    const v11, 0x64766131

    if-eq v9, v11, :cond_49

    const v11, 0x64766865

    if-eq v9, v11, :cond_49

    const v11, 0x64766831

    if-ne v9, v11, :cond_1

    goto/16 :goto_22

    :cond_1
    const v11, 0x6d703461

    const v12, 0x656e6361

    const v13, 0x616c6163

    if-eq v9, v11, :cond_c

    if-eq v9, v12, :cond_c

    const v11, 0x61632d33

    if-eq v9, v11, :cond_c

    const v11, 0x65632d33

    if-eq v9, v11, :cond_c

    const v11, 0x61632d34

    if-eq v9, v11, :cond_c

    const v11, 0x6d6c7061

    if-eq v9, v11, :cond_c

    const v11, 0x64747363

    if-eq v9, v11, :cond_c

    const v11, 0x64747365

    if-eq v9, v11, :cond_c

    const v11, 0x64747368

    if-eq v9, v11, :cond_c

    const v11, 0x6474736c

    if-eq v9, v11, :cond_c

    const v11, 0x64747378

    if-eq v9, v11, :cond_c

    const v11, 0x73616d72

    if-eq v9, v11, :cond_c

    const v11, 0x73617762

    if-eq v9, v11, :cond_c

    const v11, 0x6c70636d

    if-eq v9, v11, :cond_c

    const v11, 0x736f7774

    if-eq v9, v11, :cond_c

    const v11, 0x74776f73

    if-eq v9, v11, :cond_c

    const v11, 0x2e6d7032

    if-eq v9, v11, :cond_c

    const v11, 0x2e6d7033

    if-eq v9, v11, :cond_c

    const v11, 0x6d686131

    if-eq v9, v11, :cond_c

    const v11, 0x6d686d31

    if-eq v9, v11, :cond_c

    if-eq v9, v13, :cond_c

    const v11, 0x616c6177

    if-eq v9, v11, :cond_c

    const v11, 0x756c6177

    if-eq v9, v11, :cond_c

    const v11, 0x4f707573

    if-eq v9, v11, :cond_c

    const v11, 0x664c6143

    if-ne v9, v11, :cond_2

    goto/16 :goto_6

    :cond_2
    const v10, 0x54544d4c

    if-eq v9, v10, :cond_5

    const v10, 0x74783367

    if-eq v9, v10, :cond_5

    const v10, 0x77767474

    if-eq v9, v10, :cond_5

    const v10, 0x73747070

    if-eq v9, v10, :cond_5

    const v10, 0x63363038

    if-ne v9, v10, :cond_3

    goto :goto_2

    :cond_3
    const v10, 0x6d657474

    if-ne v9, v10, :cond_4

    add-int/lit8 v10, v7, 0x8

    add-int/lit8 v10, v10, 0x8

    .line 8
    invoke-virtual {v0, v10}, Lm5/w;->D(I)V

    const v10, 0x6d657474

    if-ne v9, v10, :cond_a

    .line 9
    invoke-virtual/range {p0 .. p0}, Lm5/w;->n()Ljava/lang/String;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lm5/w;->n()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 11
    new-instance v10, Ln3/s0$a;

    invoke-direct {v10}, Ln3/s0$a;-><init>()V

    invoke-virtual {v10, v1}, Ln3/s0$a;->b(I)Ln3/s0$a;

    .line 12
    iput-object v9, v10, Ln3/s0$a;->k:Ljava/lang/String;

    .line 13
    invoke-virtual {v10}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v9

    iput-object v9, v5, La4/b$d;->b:Ln3/s0;

    goto/16 :goto_5

    :cond_4
    const v10, 0x63616d6d

    if-ne v9, v10, :cond_a

    .line 14
    new-instance v9, Ln3/s0$a;

    invoke-direct {v9}, Ln3/s0$a;-><init>()V

    .line 15
    invoke-virtual {v9, v1}, Ln3/s0$a;->b(I)Ln3/s0$a;

    const-string v10, "application/x-camera-motion"

    .line 16
    iput-object v10, v9, Ln3/s0$a;->k:Ljava/lang/String;

    .line 17
    invoke-virtual {v9}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v9

    iput-object v9, v5, La4/b$d;->b:Ln3/s0;

    goto :goto_5

    :cond_5
    :goto_2
    add-int/lit8 v10, v7, 0x8

    add-int/lit8 v10, v10, 0x8

    .line 18
    invoke-virtual {v0, v10}, Lm5/w;->D(I)V

    const-wide v10, 0x7fffffffffffffffL

    const v12, 0x54544d4c

    const-string v13, "application/ttml+xml"

    if-ne v9, v12, :cond_6

    goto :goto_3

    :cond_6
    const v12, 0x74783367

    if-ne v9, v12, :cond_7

    add-int/lit8 v9, v8, -0x8

    add-int/lit8 v9, v9, -0x8

    .line 19
    new-array v12, v9, [B

    const/4 v13, 0x0

    .line 20
    invoke-virtual {v0, v12, v13, v9}, Lm5/w;->d([BII)V

    .line 21
    invoke-static {v12}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v9

    const-string v12, "application/x-quicktime-tx3g"

    goto :goto_4

    :cond_7
    const v12, 0x77767474

    if-ne v9, v12, :cond_8

    const-string v13, "application/x-mp4-vtt"

    goto :goto_3

    :cond_8
    const v12, 0x73747070

    if-ne v9, v12, :cond_9

    const-wide/16 v9, 0x0

    move-wide v10, v9

    goto :goto_3

    :cond_9
    const v12, 0x63363038

    if-ne v9, v12, :cond_b

    const/4 v9, 0x1

    .line 22
    iput v9, v5, La4/b$d;->d:I

    const-string v13, "application/x-mp4-cea-608"

    :goto_3
    const/4 v9, 0x0

    move-object v12, v13

    .line 23
    :goto_4
    new-instance v13, Ln3/s0$a;

    invoke-direct {v13}, Ln3/s0$a;-><init>()V

    .line 24
    invoke-virtual {v13, v1}, Ln3/s0$a;->b(I)Ln3/s0$a;

    .line 25
    iput-object v12, v13, Ln3/s0$a;->k:Ljava/lang/String;

    .line 26
    iput-object v2, v13, Ln3/s0$a;->c:Ljava/lang/String;

    .line 27
    iput-wide v10, v13, Ln3/s0$a;->o:J

    .line 28
    iput-object v9, v13, Ln3/s0$a;->m:Ljava/util/List;

    .line 29
    invoke-virtual {v13}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v9

    iput-object v9, v5, La4/b$d;->b:Ln3/s0;

    :cond_a
    :goto_5
    move/from16 v2, p2

    move/from16 v16, v4

    move-object v4, v5

    move/from16 v17, v6

    move/from16 v31, v7

    move/from16 v32, v8

    goto/16 :goto_43

    .line 30
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_6
    add-int/lit8 v11, v7, 0x8

    const/16 v12, 0x8

    add-int/2addr v11, v12

    .line 31
    invoke-virtual {v0, v11}, Lm5/w;->D(I)V

    const/4 v11, 0x6

    if-eqz p5, :cond_d

    .line 32
    invoke-virtual/range {p0 .. p0}, Lm5/w;->y()I

    move-result v12

    .line 33
    invoke-virtual {v0, v11}, Lm5/w;->E(I)V

    goto :goto_7

    .line 34
    :cond_d
    invoke-virtual {v0, v12}, Lm5/w;->E(I)V

    const/4 v12, 0x0

    :goto_7
    const/16 v11, 0x14

    if-eqz v12, :cond_10

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    goto :goto_8

    :cond_e
    const/4 v13, 0x2

    if-ne v12, v13, :cond_f

    const/16 v12, 0x10

    .line 35
    invoke-virtual {v0, v12}, Lm5/w;->E(I)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lm5/w;->m()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    .line 37
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    .line 38
    invoke-virtual/range {p0 .. p0}, Lm5/w;->w()I

    move-result v13

    .line 39
    invoke-virtual {v0, v11}, Lm5/w;->E(I)V

    const/4 v11, 0x0

    move/from16 v16, v4

    goto :goto_9

    :cond_f
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v22, v7

    move/from16 v24, v8

    goto/16 :goto_21

    .line 40
    :cond_10
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lm5/w;->y()I

    move-result v13

    const/4 v11, 0x6

    .line 41
    invoke-virtual {v0, v11}, Lm5/w;->E(I)V

    .line 42
    iget-object v11, v0, Lm5/w;->a:[B

    iget v14, v0, Lm5/w;->b:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lm5/w;->b:I

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    move/from16 v16, v4

    add-int/lit8 v4, v15, 0x1

    iput v4, v0, Lm5/w;->b:I

    aget-byte v11, v11, v15

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v11, v14

    add-int/lit8 v4, v4, 0x2

    .line 43
    iput v4, v0, Lm5/w;->b:I

    add-int/lit8 v4, v4, -0x4

    .line 44
    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v4

    const/4 v14, 0x1

    if-ne v12, v14, :cond_11

    const/16 v12, 0x10

    .line 46
    invoke-virtual {v0, v12}, Lm5/w;->E(I)V

    :cond_11
    move v12, v11

    move v11, v4

    .line 47
    :goto_9
    iget v4, v0, Lm5/w;->b:I

    const v14, 0x656e6361

    if-ne v9, v14, :cond_14

    .line 48
    invoke-static {v0, v7, v8}, La4/b;->d(Lm5/w;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 49
    iget-object v9, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v3, :cond_12

    const/4 v15, 0x0

    goto :goto_a

    .line 50
    :cond_12
    iget-object v15, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, La4/m;

    iget-object v15, v15, La4/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lr3/d;->a(Ljava/lang/String;)Lr3/d;

    move-result-object v15

    :goto_a
    move/from16 v17, v9

    .line 51
    iget-object v9, v5, La4/b$d;->a:[La4/m;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, La4/m;

    aput-object v14, v9, v6

    move/from16 v9, v17

    goto :goto_b

    :cond_13
    move-object v15, v3

    .line 52
    :goto_b
    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    goto :goto_c

    :cond_14
    move-object v15, v3

    :goto_c
    const-string v14, "audio/ac4"

    const-string v18, "audio/eac3"

    move/from16 v19, v4

    const-string v4, "audio/ac3"

    const-string v20, "audio/raw"

    move/from16 v21, v12

    const v12, 0x61632d33

    if-ne v9, v12, :cond_15

    move-object/from16 v20, v4

    goto/16 :goto_11

    :cond_15
    const v12, 0x65632d33

    if-ne v9, v12, :cond_16

    move-object/from16 v20, v18

    goto/16 :goto_11

    :cond_16
    const v12, 0x61632d34

    if-ne v9, v12, :cond_17

    move-object/from16 v20, v14

    goto/16 :goto_11

    :cond_17
    const v12, 0x64747363

    if-ne v9, v12, :cond_18

    const-string v9, "audio/vnd.dts"

    :goto_d
    move-object/from16 v20, v9

    goto/16 :goto_11

    :cond_18
    const v12, 0x64747368

    if-eq v9, v12, :cond_2b

    const v12, 0x6474736c

    if-ne v9, v12, :cond_19

    goto/16 :goto_10

    :cond_19
    const v12, 0x64747365

    if-ne v9, v12, :cond_1a

    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_d

    :cond_1a
    const v12, 0x64747378

    if-ne v9, v12, :cond_1b

    const-string v9, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_d

    :cond_1b
    const v12, 0x73616d72

    if-ne v9, v12, :cond_1c

    const-string v9, "audio/3gpp"

    goto :goto_d

    :cond_1c
    const v12, 0x73617762

    if-ne v9, v12, :cond_1d

    const-string v9, "audio/amr-wb"

    goto :goto_d

    :cond_1d
    const v12, 0x6c70636d

    if-eq v9, v12, :cond_2a

    const v12, 0x736f7774

    if-ne v9, v12, :cond_1e

    goto/16 :goto_f

    :cond_1e
    const v12, 0x74776f73

    if-ne v9, v12, :cond_1f

    const/high16 v9, 0x10000000

    goto :goto_12

    :cond_1f
    const v12, 0x2e6d7032

    if-eq v9, v12, :cond_29

    const v12, 0x2e6d7033

    if-ne v9, v12, :cond_20

    goto :goto_e

    :cond_20
    const v12, 0x6d686131

    if-ne v9, v12, :cond_21

    const-string v9, "audio/mha1"

    goto :goto_d

    :cond_21
    const v12, 0x6d686d31

    if-ne v9, v12, :cond_22

    const-string v9, "audio/mhm1"

    goto :goto_d

    :cond_22
    const v12, 0x616c6163

    if-ne v9, v12, :cond_23

    const-string v9, "audio/alac"

    goto :goto_d

    :cond_23
    const v12, 0x616c6177

    if-ne v9, v12, :cond_24

    const-string v9, "audio/g711-alaw"

    goto :goto_d

    :cond_24
    const v12, 0x756c6177

    if-ne v9, v12, :cond_25

    const-string v9, "audio/g711-mlaw"

    goto :goto_d

    :cond_25
    const v12, 0x4f707573

    if-ne v9, v12, :cond_26

    const-string v9, "audio/opus"

    goto :goto_d

    :cond_26
    const v12, 0x664c6143

    if-ne v9, v12, :cond_27

    const-string v9, "audio/flac"

    goto/16 :goto_d

    :cond_27
    const v12, 0x6d6c7061

    if-ne v9, v12, :cond_28

    const-string v9, "audio/true-hd"

    goto/16 :goto_d

    :cond_28
    const/4 v9, -0x1

    const/16 v20, 0x0

    goto :goto_12

    :cond_29
    :goto_e
    const-string v9, "audio/mpeg"

    goto/16 :goto_d

    :cond_2a
    :goto_f
    const/4 v9, 0x2

    goto :goto_12

    :cond_2b
    :goto_10
    const-string v9, "audio/vnd.dts.hd"

    goto/16 :goto_d

    :goto_11
    const/4 v9, -0x1

    :goto_12
    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    move v3, v13

    move-object/from16 v23, v17

    move/from16 v13, v21

    move-object/from16 v21, v22

    move/from16 v17, v6

    move-object/from16 v6, v20

    move/from16 v20, v9

    move/from16 v41, v19

    move-object/from16 v19, v12

    move/from16 v12, v41

    :goto_13
    sub-int v9, v12, v7

    if-ge v9, v8, :cond_46

    .line 53
    invoke-virtual {v0, v12}, Lm5/w;->D(I)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v9

    if-lez v9, :cond_2c

    const/16 v22, 0x1

    goto :goto_14

    :cond_2c
    const/16 v22, 0x0

    :goto_14
    move/from16 v24, v8

    move/from16 v8, v22

    .line 55
    invoke-static {v8, v10}, Ls3/k;->a(ZLjava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v8

    move/from16 v22, v7

    const v7, 0x6d686143

    if-ne v8, v7, :cond_2d

    add-int/lit8 v7, v9, -0xd

    .line 57
    new-array v8, v7, [B

    move-object/from16 v25, v10

    add-int/lit8 v10, v12, 0xd

    .line 58
    invoke-virtual {v0, v10}, Lm5/w;->D(I)V

    const/4 v10, 0x0

    .line 59
    invoke-virtual {v0, v8, v10, v7}, Lm5/w;->d([BII)V

    .line 60
    invoke-static {v8}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v7

    move-object/from16 v27, v4

    move-object/from16 v19, v7

    move/from16 v26, v9

    goto/16 :goto_18

    :cond_2d
    move-object/from16 v25, v10

    const v7, 0x65736473

    if-eq v8, v7, :cond_3d

    if-eqz p5, :cond_2e

    const v7, 0x77617665

    if-ne v8, v7, :cond_2e

    const v7, 0x65736473

    const/4 v10, 0x0

    move-object/from16 v27, v4

    move/from16 v26, v9

    goto/16 :goto_19

    :cond_2e
    const v7, 0x64616333

    if-ne v8, v7, :cond_30

    add-int/lit8 v7, v12, 0x8

    .line 61
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    .line 62
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v8

    and-int/lit16 v8, v8, 0xc0

    shr-int/lit8 v8, v8, 0x6

    .line 64
    sget-object v10, Lp3/b;->b:[I

    aget v8, v10, v8

    .line 65
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v10

    .line 66
    sget-object v26, Lp3/b;->d:[I

    and-int/lit8 v27, v10, 0x38

    shr-int/lit8 v27, v27, 0x3

    aget v26, v26, v27

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_2f

    add-int/lit8 v26, v26, 0x1

    :cond_2f
    move/from16 v10, v26

    move/from16 v26, v9

    .line 67
    new-instance v9, Ln3/s0$a;

    invoke-direct {v9}, Ln3/s0$a;-><init>()V

    .line 68
    iput-object v7, v9, Ln3/s0$a;->a:Ljava/lang/String;

    .line 69
    iput-object v4, v9, Ln3/s0$a;->k:Ljava/lang/String;

    .line 70
    iput v10, v9, Ln3/s0$a;->x:I

    .line 71
    iput v8, v9, Ln3/s0$a;->y:I

    .line 72
    iput-object v15, v9, Ln3/s0$a;->n:Lr3/d;

    .line 73
    iput-object v2, v9, Ln3/s0$a;->c:Ljava/lang/String;

    .line 74
    invoke-virtual {v9}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v7

    .line 75
    iput-object v7, v5, La4/b$d;->b:Ln3/s0;

    move-object/from16 v27, v4

    goto/16 :goto_18

    :cond_30
    move/from16 v26, v9

    const v7, 0x64656333

    if-ne v8, v7, :cond_34

    add-int/lit8 v7, v12, 0x8

    .line 76
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    .line 77
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 78
    invoke-virtual {v0, v8}, Lm5/w;->E(I)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v8

    and-int/lit16 v8, v8, 0xc0

    shr-int/lit8 v8, v8, 0x6

    .line 80
    sget-object v9, Lp3/b;->b:[I

    aget v8, v9, v8

    .line 81
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v9

    .line 82
    sget-object v10, Lp3/b;->d:[I

    and-int/lit8 v27, v9, 0xe

    shr-int/lit8 v27, v27, 0x1

    aget v10, v10, v27

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_31

    add-int/lit8 v10, v10, 0x1

    .line 83
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v9

    and-int/lit8 v9, v9, 0x1e

    shr-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_32

    .line 84
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_32

    add-int/lit8 v10, v10, 0x2

    .line 85
    :cond_32
    iget v9, v0, Lm5/w;->c:I

    move-object/from16 v27, v4

    iget v4, v0, Lm5/w;->b:I

    sub-int/2addr v9, v4

    if-lez v9, :cond_33

    .line 86
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_33

    const-string v4, "audio/eac3-joc"

    goto :goto_15

    :cond_33
    move-object/from16 v4, v18

    .line 87
    :goto_15
    new-instance v9, Ln3/s0$a;

    invoke-direct {v9}, Ln3/s0$a;-><init>()V

    .line 88
    iput-object v7, v9, Ln3/s0$a;->a:Ljava/lang/String;

    .line 89
    iput-object v4, v9, Ln3/s0$a;->k:Ljava/lang/String;

    .line 90
    iput v10, v9, Ln3/s0$a;->x:I

    .line 91
    iput v8, v9, Ln3/s0$a;->y:I

    .line 92
    iput-object v15, v9, Ln3/s0$a;->n:Lr3/d;

    .line 93
    iput-object v2, v9, Ln3/s0$a;->c:Ljava/lang/String;

    .line 94
    invoke-virtual {v9}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v4

    .line 95
    iput-object v4, v5, La4/b$d;->b:Ln3/s0;

    goto/16 :goto_18

    :cond_34
    move-object/from16 v27, v4

    const v4, 0x64616334

    if-ne v8, v4, :cond_36

    add-int/lit8 v4, v12, 0x8

    .line 96
    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    .line 97
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    .line 98
    invoke-virtual {v0, v7}, Lm5/w;->E(I)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    shr-int/lit8 v8, v8, 0x5

    if-ne v8, v7, :cond_35

    const v7, 0xbb80

    goto :goto_16

    :cond_35
    const v7, 0xac44

    .line 100
    :goto_16
    new-instance v8, Ln3/s0$a;

    invoke-direct {v8}, Ln3/s0$a;-><init>()V

    .line 101
    iput-object v4, v8, Ln3/s0$a;->a:Ljava/lang/String;

    .line 102
    iput-object v14, v8, Ln3/s0$a;->k:Ljava/lang/String;

    const/4 v4, 0x2

    .line 103
    iput v4, v8, Ln3/s0$a;->x:I

    .line 104
    iput v7, v8, Ln3/s0$a;->y:I

    .line 105
    iput-object v15, v8, Ln3/s0$a;->n:Lr3/d;

    .line 106
    iput-object v2, v8, Ln3/s0$a;->c:Ljava/lang/String;

    .line 107
    invoke-virtual {v8}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v4

    .line 108
    iput-object v4, v5, La4/b$d;->b:Ln3/s0;

    goto/16 :goto_18

    :cond_36
    const v4, 0x646d6c70

    if-ne v8, v4, :cond_38

    if-lez v11, :cond_37

    const/4 v3, 0x2

    move v13, v11

    goto/16 :goto_18

    .line 109
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_38
    const v4, 0x64647473

    if-ne v8, v4, :cond_39

    .line 110
    new-instance v4, Ln3/s0$a;

    invoke-direct {v4}, Ln3/s0$a;-><init>()V

    .line 111
    invoke-virtual {v4, v1}, Ln3/s0$a;->b(I)Ln3/s0$a;

    .line 112
    iput-object v6, v4, Ln3/s0$a;->k:Ljava/lang/String;

    .line 113
    iput v3, v4, Ln3/s0$a;->x:I

    .line 114
    iput v13, v4, Ln3/s0$a;->y:I

    .line 115
    iput-object v15, v4, Ln3/s0$a;->n:Lr3/d;

    .line 116
    iput-object v2, v4, Ln3/s0$a;->c:Ljava/lang/String;

    .line 117
    invoke-virtual {v4}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v4

    iput-object v4, v5, La4/b$d;->b:Ln3/s0;

    goto/16 :goto_18

    :cond_39
    const v4, 0x644f7073

    if-ne v8, v4, :cond_3a

    add-int/lit8 v9, v26, -0x8

    .line 118
    sget-object v4, La4/b;->a:[B

    array-length v7, v4

    add-int/2addr v7, v9

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    add-int/lit8 v8, v12, 0x8

    .line 119
    invoke-virtual {v0, v8}, Lm5/w;->D(I)V

    .line 120
    array-length v4, v4

    invoke-virtual {v0, v7, v4, v9}, Lm5/w;->d([BII)V

    .line 121
    invoke-static {v7}, Lp4/h;->d([B)Ljava/util/List;

    move-result-object v4

    goto :goto_17

    :cond_3a
    const v4, 0x64664c61

    if-ne v8, v4, :cond_3b

    add-int/lit8 v9, v26, -0xc

    add-int/lit8 v4, v9, 0x4

    .line 122
    new-array v4, v4, [B

    const/16 v7, 0x66

    const/4 v8, 0x0

    .line 123
    aput-byte v7, v4, v8

    const/16 v7, 0x4c

    const/4 v8, 0x1

    .line 124
    aput-byte v7, v4, v8

    const/16 v7, 0x61

    const/4 v8, 0x2

    .line 125
    aput-byte v7, v4, v8

    const/16 v7, 0x43

    const/4 v8, 0x3

    .line 126
    aput-byte v7, v4, v8

    add-int/lit8 v7, v12, 0xc

    .line 127
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    const/4 v7, 0x4

    .line 128
    invoke-virtual {v0, v4, v7, v9}, Lm5/w;->d([BII)V

    .line 129
    invoke-static {v4}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v4

    :goto_17
    move-object/from16 v19, v4

    goto :goto_18

    :cond_3b
    const v4, 0x616c6163

    if-ne v8, v4, :cond_3c

    add-int/lit8 v9, v26, -0xc

    .line 130
    new-array v3, v9, [B

    add-int/lit8 v4, v12, 0xc

    .line 131
    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    const/4 v4, 0x0

    .line 132
    invoke-virtual {v0, v3, v4, v9}, Lm5/w;->d([BII)V

    .line 133
    new-instance v4, Lm5/w;

    invoke-direct {v4, v3}, Lm5/w;-><init>([B)V

    const/16 v7, 0x9

    .line 134
    invoke-virtual {v4, v7}, Lm5/w;->D(I)V

    .line 135
    invoke-virtual {v4}, Lm5/w;->t()I

    move-result v7

    const/16 v8, 0x14

    .line 136
    invoke-virtual {v4, v8}, Lm5/w;->D(I)V

    .line 137
    invoke-virtual {v4}, Lm5/w;->w()I

    move-result v4

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 139
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 140
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 141
    invoke-static {v3}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v3

    move-object/from16 v19, v3

    move v3, v4

    :cond_3c
    :goto_18
    move/from16 v8, v26

    goto/16 :goto_20

    :cond_3d
    move-object/from16 v27, v4

    move/from16 v26, v9

    const/4 v10, 0x0

    const v7, 0x65736473

    :goto_19
    if-ne v8, v7, :cond_3e

    const/4 v4, -0x1

    move v7, v4

    move v4, v12

    move/from16 v8, v26

    goto :goto_1d

    .line 142
    :cond_3e
    iget v4, v0, Lm5/w;->b:I

    const/4 v7, 0x0

    if-lt v4, v12, :cond_3f

    const/4 v8, 0x1

    goto :goto_1a

    :cond_3f
    move v8, v10

    .line 143
    :goto_1a
    invoke-static {v8, v7}, Ls3/k;->a(ZLjava/lang/String;)V

    :goto_1b
    sub-int v7, v4, v12

    move/from16 v8, v26

    if-ge v7, v8, :cond_42

    .line 144
    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v7

    if-lez v7, :cond_40

    const/4 v10, 0x1

    :cond_40
    move-object/from16 v9, v25

    .line 146
    invoke-static {v10, v9}, Ls3/k;->a(ZLjava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v10

    move-object/from16 v25, v9

    const v9, 0x65736473

    if-ne v10, v9, :cond_41

    goto :goto_1c

    :cond_41
    add-int/2addr v4, v7

    const/4 v10, 0x0

    move/from16 v26, v8

    goto :goto_1b

    :cond_42
    const/4 v4, -0x1

    :goto_1c
    const/4 v7, -0x1

    :goto_1d
    if-eq v4, v7, :cond_45

    .line 148
    invoke-static {v0, v4}, La4/b;->b(Lm5/w;I)La4/b$b;

    move-result-object v4

    .line 149
    iget-object v6, v4, La4/b$b;->a:Ljava/lang/String;

    .line 150
    iget-object v7, v4, La4/b$b;->b:[B

    if-eqz v7, :cond_44

    const-string v9, "audio/mp4a-latm"

    .line 151
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 152
    invoke-static {v7}, Lp3/a;->e([B)Lp3/a$a;

    move-result-object v3

    .line 153
    iget v9, v3, Lp3/a$a;->a:I

    .line 154
    iget v10, v3, Lp3/a$a;->b:I

    .line 155
    iget-object v3, v3, Lp3/a$a;->c:Ljava/lang/String;

    move v13, v9

    move-object v9, v3

    move v3, v10

    goto :goto_1e

    :cond_43
    move-object/from16 v9, v21

    .line 156
    :goto_1e
    invoke-static {v7}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v7

    move-object/from16 v19, v7

    goto :goto_1f

    :cond_44
    move-object/from16 v9, v21

    :goto_1f
    move-object/from16 v23, v4

    move-object/from16 v21, v9

    :cond_45
    :goto_20
    add-int/2addr v12, v8

    move/from16 v7, v22

    move/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v27

    goto/16 :goto_13

    :cond_46
    move/from16 v22, v7

    move/from16 v24, v8

    .line 157
    iget-object v4, v5, La4/b$d;->b:Ln3/s0;

    if-nez v4, :cond_48

    if-eqz v6, :cond_48

    .line 158
    new-instance v4, Ln3/s0$a;

    invoke-direct {v4}, Ln3/s0$a;-><init>()V

    .line 159
    invoke-virtual {v4, v1}, Ln3/s0$a;->b(I)Ln3/s0$a;

    .line 160
    iput-object v6, v4, Ln3/s0$a;->k:Ljava/lang/String;

    move-object/from16 v6, v21

    .line 161
    iput-object v6, v4, Ln3/s0$a;->h:Ljava/lang/String;

    .line 162
    iput v3, v4, Ln3/s0$a;->x:I

    .line 163
    iput v13, v4, Ln3/s0$a;->y:I

    move/from16 v9, v20

    .line 164
    iput v9, v4, Ln3/s0$a;->z:I

    move-object/from16 v12, v19

    .line 165
    iput-object v12, v4, Ln3/s0$a;->m:Ljava/util/List;

    .line 166
    iput-object v15, v4, Ln3/s0$a;->n:Lr3/d;

    .line 167
    iput-object v2, v4, Ln3/s0$a;->c:Ljava/lang/String;

    move-object/from16 v3, v23

    if-eqz v3, :cond_47

    .line 168
    iget-wide v6, v3, La4/b$b;->c:J

    .line 169
    invoke-static {v6, v7}, Lw6/a;->c(J)I

    move-result v6

    .line 170
    iput v6, v4, Ln3/s0$a;->f:I

    .line 171
    iget-wide v6, v3, La4/b$b;->d:J

    .line 172
    invoke-static {v6, v7}, Lw6/a;->c(J)I

    move-result v3

    .line 173
    iput v3, v4, Ln3/s0$a;->g:I

    .line 174
    :cond_47
    invoke-virtual {v4}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v3

    iput-object v3, v5, La4/b$d;->b:Ln3/s0;

    :cond_48
    :goto_21
    move/from16 v2, p2

    move-object v4, v5

    move/from16 v31, v22

    move/from16 v32, v24

    goto/16 :goto_43

    :cond_49
    :goto_22
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v22, v7

    move/from16 v24, v8

    move-object v3, v10

    add-int/lit8 v7, v22, 0x8

    add-int/lit8 v7, v7, 0x8

    .line 175
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    const/16 v4, 0x10

    .line 176
    invoke-virtual {v0, v4}, Lm5/w;->E(I)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lm5/w;->y()I

    move-result v4

    .line 178
    invoke-virtual/range {p0 .. p0}, Lm5/w;->y()I

    move-result v6

    const/16 v7, 0x32

    .line 179
    invoke-virtual {v0, v7}, Lm5/w;->E(I)V

    .line 180
    iget v7, v0, Lm5/w;->b:I

    if-ne v9, v14, :cond_4c

    move/from16 v8, v22

    move/from16 v10, v24

    .line 181
    invoke-static {v0, v8, v10}, La4/b;->d(Lm5/w;II)Landroid/util/Pair;

    move-result-object v11

    if-eqz v11, :cond_4b

    .line 182
    iget-object v9, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v12, p4

    if-nez v12, :cond_4a

    const/4 v14, 0x0

    goto :goto_23

    .line 183
    :cond_4a
    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, La4/m;

    iget-object v14, v14, La4/m;->b:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lr3/d;->a(Ljava/lang/String;)Lr3/d;

    move-result-object v14

    .line 184
    :goto_23
    iget-object v15, v5, La4/b$d;->a:[La4/m;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, La4/m;

    aput-object v11, v15, v17

    goto :goto_24

    :cond_4b
    move-object/from16 v12, p4

    move-object v14, v12

    .line 185
    :goto_24
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    goto :goto_25

    :cond_4c
    move-object/from16 v12, p4

    move/from16 v8, v22

    move/from16 v10, v24

    move-object v14, v12

    :goto_25
    const-string v11, "video/3gpp"

    if-ne v9, v13, :cond_4d

    const-string v13, "video/mpeg"

    goto :goto_26

    :cond_4d
    const v13, 0x48323633

    if-ne v9, v13, :cond_4e

    move-object v13, v11

    goto :goto_26

    :cond_4e
    const/4 v13, 0x0

    :goto_26
    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    move-object/from16 v2, v18

    move/from16 v28, v26

    move-object/from16 v18, v11

    move/from16 v11, v19

    move-object/from16 v19, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move-object/from16 v23, v14

    move-object/from16 v14, v27

    :goto_27
    sub-int v12, v7, v8

    if-ge v12, v10, :cond_75

    .line 186
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    .line 187
    iget v12, v0, Lm5/w;->b:I

    move/from16 v26, v11

    .line 188
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v11

    move-object/from16 v27, v14

    if-nez v11, :cond_4f

    .line 189
    iget v14, v0, Lm5/w;->b:I

    sub-int/2addr v14, v8

    if-ne v14, v10, :cond_4f

    move/from16 v40, v4

    move-object/from16 v33, v5

    move/from16 v35, v6

    move/from16 v31, v8

    move/from16 v32, v10

    goto/16 :goto_42

    :cond_4f
    if-lez v11, :cond_50

    const/4 v14, 0x1

    goto :goto_28

    :cond_50
    const/4 v14, 0x0

    .line 190
    :goto_28
    invoke-static {v14, v3}, Ls3/k;->a(ZLjava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v14

    move-object/from16 v29, v3

    const v3, 0x61766343

    if-ne v14, v3, :cond_53

    if-nez v13, :cond_51

    const/4 v2, 0x1

    goto :goto_29

    :cond_51
    const/4 v2, 0x0

    :goto_29
    const/4 v3, 0x0

    .line 192
    invoke-static {v2, v3}, Ls3/k;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 193
    invoke-virtual {v0, v12}, Lm5/w;->D(I)V

    .line 194
    invoke-static/range {p0 .. p0}, Ln5/a;->b(Lm5/w;)Ln5/a;

    move-result-object v2

    .line 195
    iget-object v3, v2, Ln5/a;->a:Ljava/util/List;

    .line 196
    iget v12, v2, Ln5/a;->b:I

    iput v12, v5, La4/b$d;->c:I

    if-nez v24, :cond_52

    .line 197
    iget v15, v2, Ln5/a;->e:F

    .line 198
    :cond_52
    iget-object v2, v2, Ln5/a;->f:Ljava/lang/String;

    const-string v12, "video/avc"

    goto :goto_2b

    :cond_53
    const v3, 0x68766343

    if-ne v14, v3, :cond_56

    if-nez v13, :cond_54

    const/4 v2, 0x1

    goto :goto_2a

    :cond_54
    const/4 v2, 0x0

    :goto_2a
    const/4 v3, 0x0

    .line 199
    invoke-static {v2, v3}, Ls3/k;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 200
    invoke-virtual {v0, v12}, Lm5/w;->D(I)V

    .line 201
    invoke-static/range {p0 .. p0}, Ln5/e;->a(Lm5/w;)Ln5/e;

    move-result-object v2

    .line 202
    iget-object v3, v2, Ln5/e;->a:Ljava/util/List;

    .line 203
    iget v12, v2, Ln5/e;->b:I

    iput v12, v5, La4/b$d;->c:I

    if-nez v24, :cond_55

    .line 204
    iget v15, v2, Ln5/e;->c:F

    .line 205
    :cond_55
    iget-object v2, v2, Ln5/e;->d:Ljava/lang/String;

    const-string v12, "video/hevc"

    :goto_2b
    move-object v13, v12

    move-object v12, v3

    goto :goto_30

    :cond_56
    const v3, 0x64766343

    if-eq v14, v3, :cond_73

    const v3, 0x64767643

    if-ne v14, v3, :cond_57

    goto/16 :goto_3c

    :cond_57
    const v3, 0x76706343

    if-ne v14, v3, :cond_5a

    if-nez v13, :cond_58

    const/4 v3, 0x1

    goto :goto_2c

    :cond_58
    const/4 v3, 0x0

    :goto_2c
    const/4 v12, 0x0

    .line 206
    invoke-static {v3, v12}, Ls3/k;->a(ZLjava/lang/String;)V

    const v3, 0x76703038

    if-ne v9, v3, :cond_59

    const-string v3, "video/x-vnd.on2.vp8"

    goto :goto_2d

    :cond_59
    const-string v3, "video/x-vnd.on2.vp9"

    :goto_2d
    move-object v13, v3

    goto :goto_2f

    :cond_5a
    const v3, 0x61763143

    if-ne v14, v3, :cond_5c

    if-nez v13, :cond_5b

    const/4 v3, 0x1

    goto :goto_2e

    :cond_5b
    const/4 v3, 0x0

    :goto_2e
    const/4 v12, 0x0

    .line 207
    invoke-static {v3, v12}, Ls3/k;->a(ZLjava/lang/String;)V

    const-string v13, "video/av01"

    goto :goto_2f

    :cond_5c
    const v3, 0x636c6c69

    const/16 v30, 0x19

    if-ne v14, v3, :cond_5e

    if-nez v20, :cond_5d

    .line 208
    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_5d
    move-object/from16 v3, v20

    const/16 v12, 0x15

    .line 209
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 210
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v3

    :goto_2f
    move-object/from16 v12, v25

    :goto_30
    move/from16 v40, v4

    move-object/from16 v33, v5

    move/from16 v35, v6

    move/from16 v31, v8

    move/from16 v30, v9

    move/from16 v32, v10

    goto/16 :goto_31

    :cond_5e
    const v3, 0x6d646376

    if-ne v14, v3, :cond_60

    if-nez v20, :cond_5f

    .line 212
    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_5f
    move-object/from16 v3, v20

    .line 213
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v12

    .line 214
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v14

    move/from16 v30, v9

    .line 215
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v9

    move/from16 v31, v8

    .line 216
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v8

    move/from16 v32, v10

    .line 217
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v10

    move-object/from16 v33, v5

    .line 218
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v5

    move/from16 v34, v15

    .line 219
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v15

    move/from16 v35, v6

    .line 220
    invoke-virtual/range {p0 .. p0}, Lm5/w;->p()S

    move-result v6

    .line 221
    invoke-virtual/range {p0 .. p0}, Lm5/w;->u()J

    move-result-wide v36

    .line 222
    invoke-virtual/range {p0 .. p0}, Lm5/w;->u()J

    move-result-wide v38

    move/from16 v40, v4

    const/4 v4, 0x1

    .line 223
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 231
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x2710

    .line 232
    div-long v8, v36, v4

    long-to-int v6, v8

    int-to-short v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 233
    div-long v4, v38, v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v3

    move-object/from16 v12, v25

    move/from16 v15, v34

    :goto_31
    move-object/from16 v25, v12

    :goto_32
    move-object/from16 v14, v27

    goto/16 :goto_41

    :cond_60
    move/from16 v40, v4

    move-object/from16 v33, v5

    move/from16 v35, v6

    move/from16 v31, v8

    move/from16 v30, v9

    move/from16 v32, v10

    move/from16 v34, v15

    const v3, 0x64323633

    if-ne v14, v3, :cond_62

    const/4 v3, 0x0

    if-nez v13, :cond_61

    const/4 v4, 0x1

    goto :goto_33

    :cond_61
    const/4 v4, 0x0

    .line 234
    :goto_33
    invoke-static {v4, v3}, Ls3/k;->a(ZLjava/lang/String;)V

    move-object/from16 v13, v18

    goto/16 :goto_3d

    :cond_62
    const/4 v3, 0x0

    const v4, 0x65736473

    if-ne v14, v4, :cond_65

    if-nez v13, :cond_63

    const/4 v4, 0x1

    goto :goto_34

    :cond_63
    const/4 v4, 0x0

    .line 235
    :goto_34
    invoke-static {v4, v3}, Ls3/k;->a(ZLjava/lang/String;)V

    .line 236
    invoke-static {v0, v12}, La4/b;->b(Lm5/w;I)La4/b$b;

    move-result-object v3

    .line 237
    iget-object v4, v3, La4/b$b;->a:Ljava/lang/String;

    .line 238
    iget-object v5, v3, La4/b$b;->b:[B

    if-eqz v5, :cond_64

    .line 239
    invoke-static {v5}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v12

    goto :goto_35

    :cond_64
    move-object/from16 v12, v25

    :goto_35
    move-object/from16 v19, v3

    move-object v13, v4

    goto/16 :goto_3f

    :cond_65
    const v4, 0x70617370

    if-ne v14, v4, :cond_66

    add-int/lit8 v12, v12, 0x8

    .line 240
    invoke-virtual {v0, v12}, Lm5/w;->D(I)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lm5/w;->w()I

    move-result v3

    .line 242
    invoke-virtual/range {p0 .. p0}, Lm5/w;->w()I

    move-result v4

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    move v15, v3

    move/from16 v24, v4

    goto :goto_32

    :cond_66
    const v4, 0x73763364

    if-ne v14, v4, :cond_69

    add-int/lit8 v4, v12, 0x8

    :goto_36
    sub-int v5, v4, v12

    if-ge v5, v11, :cond_68

    .line 243
    invoke-virtual {v0, v4}, Lm5/w;->D(I)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v5

    .line 245
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v6

    const v8, 0x70726f6a

    if-ne v6, v8, :cond_67

    .line 246
    iget-object v3, v0, Lm5/w;->a:[B

    add-int/2addr v5, v4

    .line 247
    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    goto :goto_37

    :cond_67
    add-int/2addr v4, v5

    goto :goto_36

    :cond_68
    :goto_37
    move-object v14, v3

    move-object/from16 v12, v25

    goto/16 :goto_40

    :cond_69
    const v3, 0x73743364

    if-ne v14, v3, :cond_6e

    .line 248
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v3

    const/4 v4, 0x3

    .line 249
    invoke-virtual {v0, v4}, Lm5/w;->E(I)V

    if-nez v3, :cond_74

    .line 250
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6d

    if-eq v3, v5, :cond_6c

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6b

    if-eq v3, v4, :cond_6a

    goto/16 :goto_3d

    :cond_6a
    move/from16 v26, v4

    goto/16 :goto_3d

    :cond_6b
    const/4 v3, 0x2

    goto :goto_38

    :cond_6c
    move/from16 v26, v5

    goto/16 :goto_3d

    :cond_6d
    const/4 v3, 0x0

    :goto_38
    move/from16 v26, v3

    goto/16 :goto_3d

    :cond_6e
    const/4 v3, 0x1

    const v4, 0x636f6c72

    if-ne v14, v4, :cond_74

    .line 251
    invoke-virtual/range {p0 .. p0}, Lm5/w;->e()I

    move-result v4

    const v5, 0x6e636c78

    if-eq v4, v5, :cond_70

    const v5, 0x6e636c63

    if-ne v4, v5, :cond_6f

    goto :goto_39

    :cond_6f
    const-string v3, "Unsupported color type: "

    .line 252
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    invoke-static {v4}, La4/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AtomParsers"

    invoke-static {v4, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 254
    :cond_70
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lm5/w;->y()I

    move-result v4

    .line 255
    invoke-virtual/range {p0 .. p0}, Lm5/w;->y()I

    move-result v5

    const/4 v6, 0x2

    .line 256
    invoke-virtual {v0, v6}, Lm5/w;->E(I)V

    const/16 v8, 0x13

    if-ne v11, v8, :cond_71

    .line 257
    invoke-virtual/range {p0 .. p0}, Lm5/w;->t()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_71

    move v8, v3

    goto :goto_3a

    :cond_71
    const/4 v8, 0x0

    .line 258
    :goto_3a
    invoke-static {v4}, Ln5/b;->b(I)I

    move-result v4

    if-eqz v8, :cond_72

    goto :goto_3b

    :cond_72
    move v3, v6

    .line 259
    :goto_3b
    invoke-static {v5}, Ln5/b;->c(I)I

    move-result v5

    move v12, v3

    move/from16 v22, v4

    move/from16 v28, v5

    goto :goto_3e

    :cond_73
    :goto_3c
    move/from16 v40, v4

    move-object/from16 v33, v5

    move/from16 v35, v6

    move/from16 v31, v8

    move/from16 v30, v9

    move/from16 v32, v10

    move/from16 v34, v15

    .line 260
    invoke-static/range {p0 .. p0}, Ln5/c;->a(Lm5/w;)Ln5/c;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 261
    iget-object v2, v3, Ln5/c;->a:Ljava/lang/String;

    const-string v13, "video/dolby-vision"

    :cond_74
    :goto_3d
    move/from16 v12, v21

    :goto_3e
    move/from16 v21, v12

    move-object/from16 v12, v25

    :goto_3f
    move-object/from16 v14, v27

    :goto_40
    move-object/from16 v25, v12

    move/from16 v15, v34

    :goto_41
    add-int/2addr v7, v11

    move/from16 v11, v26

    move-object/from16 v3, v29

    move/from16 v9, v30

    move/from16 v8, v31

    move/from16 v10, v32

    move-object/from16 v5, v33

    move/from16 v6, v35

    move/from16 v4, v40

    goto/16 :goto_27

    :cond_75
    move/from16 v40, v4

    move-object/from16 v33, v5

    move/from16 v35, v6

    move/from16 v31, v8

    move/from16 v32, v10

    move/from16 v26, v11

    move-object/from16 v27, v14

    :goto_42
    move/from16 v34, v15

    const/4 v3, 0x0

    if-nez v13, :cond_76

    move/from16 v2, p2

    move-object/from16 v4, v33

    goto :goto_43

    .line 262
    :cond_76
    new-instance v4, Ln3/s0$a;

    invoke-direct {v4}, Ln3/s0$a;-><init>()V

    .line 263
    invoke-virtual {v4, v1}, Ln3/s0$a;->b(I)Ln3/s0$a;

    .line 264
    iput-object v13, v4, Ln3/s0$a;->k:Ljava/lang/String;

    .line 265
    iput-object v2, v4, Ln3/s0$a;->h:Ljava/lang/String;

    move/from16 v2, v40

    .line 266
    iput v2, v4, Ln3/s0$a;->p:I

    move/from16 v2, v35

    .line 267
    iput v2, v4, Ln3/s0$a;->q:I

    move/from16 v15, v34

    .line 268
    iput v15, v4, Ln3/s0$a;->t:F

    move/from16 v2, p2

    .line 269
    iput v2, v4, Ln3/s0$a;->s:I

    move-object/from16 v14, v27

    .line 270
    iput-object v14, v4, Ln3/s0$a;->u:[B

    move/from16 v5, v26

    .line 271
    iput v5, v4, Ln3/s0$a;->v:I

    move-object/from16 v5, v25

    .line 272
    iput-object v5, v4, Ln3/s0$a;->m:Ljava/util/List;

    move-object/from16 v12, v23

    .line 273
    iput-object v12, v4, Ln3/s0$a;->n:Lr3/d;

    const/4 v5, -0x1

    move/from16 v6, v22

    move/from16 v7, v21

    move/from16 v8, v28

    if-ne v6, v5, :cond_77

    if-ne v7, v5, :cond_77

    if-ne v8, v5, :cond_77

    if-eqz v20, :cond_79

    .line 274
    :cond_77
    new-instance v5, Ln5/b;

    if-eqz v20, :cond_78

    .line 275
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    :cond_78
    invoke-direct {v5, v6, v7, v8, v3}, Ln5/b;-><init>(III[B)V

    .line 276
    iput-object v5, v4, Ln3/s0$a;->w:Ln5/b;

    :cond_79
    if-eqz v19, :cond_7a

    move-object/from16 v3, v19

    .line 277
    iget-wide v5, v3, La4/b$b;->c:J

    .line 278
    invoke-static {v5, v6}, Lw6/a;->c(J)I

    move-result v5

    .line 279
    iput v5, v4, Ln3/s0$a;->f:I

    .line 280
    iget-wide v5, v3, La4/b$b;->d:J

    .line 281
    invoke-static {v5, v6}, Lw6/a;->c(J)I

    move-result v3

    .line 282
    iput v3, v4, Ln3/s0$a;->g:I

    .line 283
    :cond_7a
    invoke-virtual {v4}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v3

    move-object/from16 v4, v33

    iput-object v3, v4, La4/b$d;->b:Ln3/s0;

    :goto_43
    add-int v7, v31, v32

    .line 284
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v4

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_7b
    move-object v4, v5

    return-object v4
.end method

.method public static f(La4/a$a;Ls3/q;JLr3/d;ZZLt6/d;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/a$a;",
            "Ls3/q;",
            "J",
            "Lr3/d;",
            "ZZ",
            "Lt6/d<",
            "La4/l;",
            "La4/l;",
            ">;)",
            "Ljava/util/List<",
            "La4/o;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v0, La4/a$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_53

    .line 3
    iget-object v4, v0, La4/a$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La4/a$a;

    .line 4
    iget v5, v4, La4/a;->a:I

    const v6, 0x7472616b

    if-eq v5, v6, :cond_0

    :goto_1
    move-object v1, v2

    move/from16 v18, v3

    goto/16 :goto_3d

    :cond_0
    const v5, 0x6d766864

    .line 5
    invoke-virtual {v0, v5}, La4/a$a;->c(I)La4/a$b;

    move-result-object v5

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x6d646961

    .line 7
    invoke-virtual {v4, v6}, La4/a$a;->b(I)La4/a$a;

    move-result-object v6

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x68646c72

    .line 9
    invoke-virtual {v6, v7}, La4/a$a;->c(I)La4/a$b;

    move-result-object v7

    .line 10
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v7, v7, La4/a$b;->b:Lm5/w;

    const/16 v8, 0x10

    .line 12
    invoke-virtual {v7, v8}, Lm5/w;->D(I)V

    .line 13
    invoke-virtual {v7}, Lm5/w;->e()I

    move-result v7

    const v9, 0x736f756e

    const/4 v10, -0x1

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_2
    move v13, v7

    goto :goto_4

    :cond_1
    const v9, 0x76696465

    if-ne v7, v9, :cond_2

    const/4 v7, 0x2

    goto :goto_2

    :cond_2
    const v9, 0x74657874

    if-eq v7, v9, :cond_5

    const v9, 0x7362746c

    if-eq v7, v9, :cond_5

    const v9, 0x73756274

    if-eq v7, v9, :cond_5

    const v9, 0x636c6370

    if-ne v7, v9, :cond_3

    goto :goto_3

    :cond_3
    const v9, 0x6d657461

    if-ne v7, v9, :cond_4

    const/4 v7, 0x5

    goto :goto_2

    :cond_4
    move v13, v10

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, 0x3

    goto :goto_2

    :goto_4
    const-string v7, ""

    const/4 v9, 0x4

    if-ne v13, v10, :cond_6

    move-object/from16 v26, v7

    goto/16 :goto_15

    :cond_6
    const v11, 0x746b6864

    .line 14
    invoke-virtual {v4, v11}, La4/a$a;->c(I)La4/a$b;

    move-result-object v11

    .line 15
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v11, v11, La4/a$b;->b:Lm5/w;

    const/16 v12, 0x8

    .line 17
    invoke-virtual {v11, v12}, Lm5/w;->D(I)V

    .line 18
    invoke-virtual {v11}, Lm5/w;->e()I

    move-result v14

    shr-int/lit8 v14, v14, 0x18

    and-int/lit16 v14, v14, 0xff

    if-nez v14, :cond_7

    move v8, v12

    .line 19
    :cond_7
    invoke-virtual {v11, v8}, Lm5/w;->E(I)V

    .line 20
    invoke-virtual {v11}, Lm5/w;->e()I

    move-result v12

    .line 21
    invoke-virtual {v11, v9}, Lm5/w;->E(I)V

    .line 22
    iget v8, v11, Lm5/w;->b:I

    if-nez v14, :cond_8

    const/4 v9, 0x4

    goto :goto_5

    :cond_8
    const/16 v9, 0x8

    :goto_5
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v9, :cond_a

    .line 23
    iget-object v10, v11, Lm5/w;->a:[B

    add-int v17, v8, v15

    .line 24
    aget-byte v10, v10, v17

    const/4 v0, -0x1

    if-eq v10, v0, :cond_9

    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move v10, v0

    move-object/from16 v0, p0

    goto :goto_6

    :cond_a
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_b

    .line 25
    invoke-virtual {v11, v9}, Lm5/w;->E(I)V

    goto :goto_9

    :cond_b
    if-nez v14, :cond_c

    .line 26
    invoke-virtual {v11}, Lm5/w;->u()J

    move-result-wide v8

    goto :goto_8

    :cond_c
    invoke-virtual {v11}, Lm5/w;->x()J

    move-result-wide v8

    :goto_8
    const-wide/16 v17, 0x0

    cmp-long v0, v8, v17

    if-nez v0, :cond_d

    :goto_9
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :cond_d
    const/16 v0, 0x10

    .line 27
    invoke-virtual {v11, v0}, Lm5/w;->E(I)V

    .line 28
    invoke-virtual {v11}, Lm5/w;->e()I

    move-result v0

    .line 29
    invoke-virtual {v11}, Lm5/w;->e()I

    move-result v10

    const/4 v14, 0x4

    .line 30
    invoke-virtual {v11, v14}, Lm5/w;->E(I)V

    .line 31
    invoke-virtual {v11}, Lm5/w;->e()I

    move-result v14

    .line 32
    invoke-virtual {v11}, Lm5/w;->e()I

    move-result v11

    const/high16 v15, 0x10000

    move-wide/from16 v19, v8

    const/high16 v8, -0x10000

    if-nez v0, :cond_e

    if-ne v10, v15, :cond_e

    if-ne v14, v8, :cond_e

    if-nez v11, :cond_e

    const/16 v0, 0x5a

    goto :goto_a

    :cond_e
    if-nez v0, :cond_f

    if-ne v10, v8, :cond_f

    if-ne v14, v15, :cond_f

    if-nez v11, :cond_f

    const/16 v0, 0x10e

    goto :goto_a

    :cond_f
    if-ne v0, v8, :cond_10

    if-nez v10, :cond_10

    if-nez v14, :cond_10

    if-ne v11, v8, :cond_10

    const/16 v0, 0xb4

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, p2, v8

    if-nez v10, :cond_11

    move-wide/from16 v21, v19

    goto :goto_b

    :cond_11
    move-wide/from16 v21, p2

    .line 33
    :goto_b
    iget-object v5, v5, La4/a$b;->b:Lm5/w;

    const/16 v8, 0x8

    .line 34
    invoke-virtual {v5, v8}, Lm5/w;->D(I)V

    .line 35
    invoke-virtual {v5}, Lm5/w;->e()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_12

    const/16 v8, 0x8

    goto :goto_c

    :cond_12
    const/16 v8, 0x10

    .line 36
    :goto_c
    invoke-virtual {v5, v8}, Lm5/w;->E(I)V

    .line 37
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v21, v10

    if-nez v5, :cond_13

    goto :goto_d

    :cond_13
    const-wide/32 v23, 0xf4240

    move-wide/from16 v25, v8

    .line 38
    invoke-static/range {v21 .. v26}, Lm5/g0;->R(JJJ)J

    move-result-wide v10

    :goto_d
    move-wide/from16 v21, v10

    const v5, 0x6d696e66

    .line 39
    invoke-virtual {v6, v5}, La4/a$a;->b(I)La4/a$a;

    move-result-object v5

    .line 40
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x7374626c

    .line 41
    invoke-virtual {v5, v10}, La4/a$a;->b(I)La4/a$a;

    move-result-object v5

    .line 42
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x6d646864

    .line 43
    invoke-virtual {v6, v10}, La4/a$a;->c(I)La4/a$b;

    move-result-object v6

    .line 44
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v6, v6, La4/a$b;->b:Lm5/w;

    const/16 v10, 0x8

    .line 46
    invoke-virtual {v6, v10}, Lm5/w;->D(I)V

    .line 47
    invoke-virtual {v6}, Lm5/w;->e()I

    move-result v10

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    if-nez v10, :cond_14

    const/16 v11, 0x8

    goto :goto_e

    :cond_14
    const/16 v11, 0x10

    .line 48
    :goto_e
    invoke-virtual {v6, v11}, Lm5/w;->E(I)V

    .line 49
    invoke-virtual {v6}, Lm5/w;->u()J

    move-result-wide v14

    if-nez v10, :cond_15

    const/4 v10, 0x4

    goto :goto_f

    :cond_15
    const/16 v10, 0x8

    .line 50
    :goto_f
    invoke-virtual {v6, v10}, Lm5/w;->E(I)V

    .line 51
    invoke-virtual {v6}, Lm5/w;->y()I

    move-result v6

    .line 52
    invoke-static {v7}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    shr-int/lit8 v11, v6, 0xa

    and-int/lit8 v11, v11, 0x1f

    add-int/lit8 v11, v11, 0x60

    int-to-char v11, v11

    .line 53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v11, v6, 0x5

    and-int/lit8 v11, v11, 0x1f

    add-int/lit8 v11, v11, 0x60

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const v10, 0x73747364

    .line 55
    invoke-virtual {v5, v10}, La4/a$a;->c(I)La4/a$b;

    move-result-object v5

    .line 56
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v15, v5, La4/a$b;->b:Lm5/w;

    .line 58
    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    move/from16 v16, v12

    move/from16 v17, v0

    move-object/from16 v19, p4

    move/from16 v20, p6

    .line 59
    invoke-static/range {v15 .. v20}, La4/b;->e(Lm5/w;IILjava/lang/String;Lr3/d;Z)La4/b$d;

    move-result-object v0

    if-nez p5, :cond_1b

    const v5, 0x65647473

    .line 60
    invoke-virtual {v4, v5}, La4/a$a;->b(I)La4/a$a;

    move-result-object v5

    if-eqz v5, :cond_1b

    const v10, 0x656c7374

    .line 61
    invoke-virtual {v5, v10}, La4/a$a;->c(I)La4/a$b;

    move-result-object v5

    if-nez v5, :cond_16

    const/4 v5, 0x0

    move-object/from16 v26, v7

    goto :goto_13

    .line 62
    :cond_16
    iget-object v5, v5, La4/a$b;->b:Lm5/w;

    const/16 v10, 0x8

    .line 63
    invoke-virtual {v5, v10}, Lm5/w;->D(I)V

    .line 64
    invoke-virtual {v5}, Lm5/w;->e()I

    move-result v10

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    .line 65
    invoke-virtual {v5}, Lm5/w;->w()I

    move-result v11

    .line 66
    new-array v14, v11, [J

    .line 67
    new-array v15, v11, [J

    const/16 v16, 0x0

    move-object/from16 v26, v7

    move/from16 v7, v16

    :goto_10
    if-ge v7, v11, :cond_1a

    move/from16 v16, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    .line 68
    invoke-virtual {v5}, Lm5/w;->x()J

    move-result-wide v17

    goto :goto_11

    :cond_17
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v17

    :goto_11
    aput-wide v17, v14, v7

    if-ne v10, v11, :cond_18

    .line 69
    invoke-virtual {v5}, Lm5/w;->m()J

    move-result-wide v17

    move-wide/from16 v38, v17

    move/from16 v17, v10

    move-wide/from16 v10, v38

    goto :goto_12

    :cond_18
    invoke-virtual {v5}, Lm5/w;->e()I

    move-result v11

    move/from16 v17, v10

    int-to-long v10, v11

    :goto_12
    aput-wide v10, v15, v7

    .line 70
    invoke-virtual {v5}, Lm5/w;->p()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_19

    const/4 v10, 0x2

    .line 71
    invoke-virtual {v5, v10}, Lm5/w;->E(I)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v16

    move/from16 v10, v17

    goto :goto_10

    .line 72
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1a
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    :goto_13
    if-eqz v5, :cond_1c

    .line 74
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [J

    .line 75
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [J

    move-object/from16 v25, v5

    move-object/from16 v24, v7

    goto :goto_14

    :cond_1b
    move-object/from16 v26, v7

    :cond_1c
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    .line 76
    :goto_14
    iget-object v5, v0, La4/b$d;->b:Ln3/s0;

    if-nez v5, :cond_1d

    :goto_15
    const/4 v0, 0x0

    const v5, 0x6d696e66

    move-object/from16 v6, p7

    goto :goto_16

    .line 77
    :cond_1d
    new-instance v5, La4/l;

    .line 78
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 79
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v6, v0, La4/b$d;->b:Ln3/s0;

    iget v7, v0, La4/b$d;->d:I

    iget-object v10, v0, La4/b$d;->a:[La4/m;

    iget v0, v0, La4/b$d;->c:I

    const v27, 0x6d696e66

    move-object v11, v5

    move-wide/from16 v16, v8

    move-wide/from16 v18, v21

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v10

    move/from16 v23, v0

    invoke-direct/range {v11 .. v25}, La4/l;-><init>(IIJJJLn3/s0;I[La4/m;I[J[J)V

    move-object/from16 v6, p7

    move-object v0, v5

    move/from16 v5, v27

    .line 80
    :goto_16
    invoke-interface {v6, v0}, Lt6/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, La4/l;

    if-nez v8, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const v0, 0x6d646961

    .line 81
    invoke-virtual {v4, v0}, La4/a$a;->b(I)La4/a$a;

    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v0, v5}, La4/a$a;->b(I)La4/a$a;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7374626c

    .line 85
    invoke-virtual {v0, v4}, La4/a$a;->b(I)La4/a$a;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7374737a

    .line 87
    invoke-virtual {v0, v4}, La4/a$a;->c(I)La4/a$b;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 88
    new-instance v5, La4/b$e;

    iget-object v7, v8, La4/l;->f:Ln3/s0;

    invoke-direct {v5, v4, v7}, La4/b$e;-><init>(La4/a$b;Ln3/s0;)V

    goto :goto_17

    :cond_1f
    const v4, 0x73747a32

    .line 89
    invoke-virtual {v0, v4}, La4/a$a;->c(I)La4/a$b;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 90
    new-instance v5, La4/b$f;

    invoke-direct {v5, v4}, La4/b$f;-><init>(La4/a$b;)V

    .line 91
    :goto_17
    invoke-interface {v5}, La4/b$c;->b()I

    move-result v4

    if-nez v4, :cond_20

    .line 92
    new-instance v0, La4/o;

    const/4 v4, 0x0

    new-array v9, v4, [J

    new-array v10, v4, [I

    const/4 v11, 0x0

    new-array v12, v4, [J

    new-array v13, v4, [I

    const-wide/16 v14, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, La4/o;-><init>(La4/l;[J[II[J[IJ)V

    move-object/from16 v19, v2

    move/from16 v18, v3

    goto/16 :goto_3c

    :cond_20
    const v7, 0x7374636f

    .line 93
    invoke-virtual {v0, v7}, La4/a$a;->c(I)La4/a$b;

    move-result-object v7

    if-nez v7, :cond_21

    const v7, 0x636f3634

    .line 94
    invoke-virtual {v0, v7}, La4/a$a;->c(I)La4/a$b;

    move-result-object v7

    .line 95
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_18

    :cond_21
    const/4 v9, 0x0

    .line 96
    :goto_18
    iget-object v7, v7, La4/a$b;->b:Lm5/w;

    const v10, 0x73747363

    .line 97
    invoke-virtual {v0, v10}, La4/a$a;->c(I)La4/a$b;

    move-result-object v10

    .line 98
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v10, v10, La4/a$b;->b:Lm5/w;

    const v11, 0x73747473

    .line 100
    invoke-virtual {v0, v11}, La4/a$a;->c(I)La4/a$b;

    move-result-object v11

    .line 101
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v11, v11, La4/a$b;->b:Lm5/w;

    const v12, 0x73747373

    .line 103
    invoke-virtual {v0, v12}, La4/a$a;->c(I)La4/a$b;

    move-result-object v12

    if-eqz v12, :cond_22

    .line 104
    iget-object v12, v12, La4/a$b;->b:Lm5/w;

    goto :goto_19

    :cond_22
    const/4 v12, 0x0

    :goto_19
    const v13, 0x63747473

    .line 105
    invoke-virtual {v0, v13}, La4/a$a;->c(I)La4/a$b;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 106
    iget-object v0, v0, La4/a$b;->b:Lm5/w;

    goto :goto_1a

    :cond_23
    const/4 v0, 0x0

    .line 107
    :goto_1a
    new-instance v13, La4/b$a;

    invoke-direct {v13, v10, v7, v9}, La4/b$a;-><init>(Lm5/w;Lm5/w;Z)V

    const/16 v7, 0xc

    .line 108
    invoke-virtual {v11, v7}, Lm5/w;->D(I)V

    .line 109
    invoke-virtual {v11}, Lm5/w;->w()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 110
    invoke-virtual {v11}, Lm5/w;->w()I

    move-result v10

    .line 111
    invoke-virtual {v11}, Lm5/w;->w()I

    move-result v14

    if-eqz v0, :cond_24

    .line 112
    invoke-virtual {v0, v7}, Lm5/w;->D(I)V

    .line 113
    invoke-virtual {v0}, Lm5/w;->w()I

    move-result v15

    goto :goto_1b

    :cond_24
    const/4 v15, 0x0

    :goto_1b
    if-eqz v12, :cond_26

    .line 114
    invoke-virtual {v12, v7}, Lm5/w;->D(I)V

    .line 115
    invoke-virtual {v12}, Lm5/w;->w()I

    move-result v7

    if-lez v7, :cond_25

    .line 116
    invoke-virtual {v12}, Lm5/w;->w()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_1c

    :cond_25
    const/16 v16, -0x1

    const/4 v12, 0x0

    goto :goto_1c

    :cond_26
    const/16 v16, -0x1

    const/4 v7, 0x0

    .line 117
    :goto_1c
    invoke-interface {v5}, La4/b$c;->a()I

    move-result v6

    move/from16 v17, v10

    .line 118
    iget-object v10, v8, La4/l;->f:Ln3/s0;

    iget-object v10, v10, Ln3/s0;->s:Ljava/lang/String;

    move/from16 v18, v3

    const/4 v3, -0x1

    if-eq v6, v3, :cond_28

    const-string v3, "audio/raw"

    .line 119
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "audio/g711-mlaw"

    .line 120
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "audio/g711-alaw"

    .line 121
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_27
    if-nez v9, :cond_28

    if-nez v15, :cond_28

    if-nez v7, :cond_28

    const/4 v3, 0x1

    goto :goto_1d

    :cond_28
    const/4 v3, 0x0

    :goto_1d
    if-eqz v3, :cond_2d

    .line 122
    iget v0, v13, La4/b$a;->a:I

    new-array v3, v0, [J

    .line 123
    new-array v5, v0, [I

    .line 124
    :goto_1e
    invoke-virtual {v13}, La4/b$a;->a()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 125
    iget v7, v13, La4/b$a;->b:I

    iget-wide v9, v13, La4/b$a;->d:J

    aput-wide v9, v3, v7

    .line 126
    iget v9, v13, La4/b$a;->c:I

    aput v9, v5, v7

    goto :goto_1e

    :cond_29
    int-to-long v9, v14

    const/16 v7, 0x2000

    .line 127
    div-int/2addr v7, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1f
    if-ge v11, v0, :cond_2a

    .line 128
    aget v13, v5, v11

    .line 129
    sget v14, Lm5/g0;->a:I

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, -0x1

    .line 130
    div-int/2addr v13, v7

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    .line 131
    :cond_2a
    new-array v11, v12, [J

    .line 132
    new-array v13, v12, [I

    .line 133
    new-array v14, v12, [J

    .line 134
    new-array v12, v12, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v38, v19

    move-object/from16 v19, v2

    move/from16 v2, v16

    move/from16 v16, v38

    :goto_20
    if-ge v15, v0, :cond_2c

    .line 135
    aget v20, v5, v15

    .line 136
    aget-wide v21, v3, v15

    move/from16 v38, v17

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v16, v38

    move/from16 v39, v20

    move-object/from16 v20, v3

    move/from16 v3, v39

    :goto_21
    if-lez v3, :cond_2b

    .line 137
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 138
    aput-wide v21, v11, v16

    mul-int v24, v6, v23

    .line 139
    aput v24, v13, v16

    move-object/from16 v24, v5

    .line 140
    aget v5, v13, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v25, v6

    int-to-long v5, v2

    mul-long/2addr v5, v9

    .line 141
    aput-wide v5, v14, v16

    const/4 v5, 0x1

    .line 142
    aput v5, v12, v16

    .line 143
    aget v5, v13, v16

    int-to-long v5, v5

    add-long v21, v21, v5

    add-int v2, v2, v23

    sub-int v3, v3, v23

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v5, v24

    move/from16 v6, v25

    goto :goto_21

    :cond_2b
    move-object/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v20

    move/from16 v38, v16

    move/from16 v16, v0

    move/from16 v0, v17

    move/from16 v17, v38

    goto :goto_20

    :cond_2c
    int-to-long v2, v2

    mul-long/2addr v9, v2

    move-object v0, v11

    move-object v2, v12

    move-object v1, v14

    move-object v14, v8

    move-wide v11, v9

    goto/16 :goto_2d

    :cond_2d
    move-object/from16 v19, v2

    .line 144
    new-array v2, v4, [J

    .line 145
    new-array v3, v4, [I

    .line 146
    new-array v6, v4, [J

    .line 147
    new-array v10, v4, [I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v1, v16

    move/from16 v30, v27

    move/from16 v31, v28

    move/from16 v27, v9

    move/from16 v16, v15

    move v15, v14

    move/from16 v14, v17

    move-object/from16 v17, v8

    move/from16 v8, v20

    move-object/from16 v20, v11

    move/from16 v11, v29

    :goto_22
    const-string v9, "AtomParsers"

    if-ge v11, v4, :cond_36

    const/16 v28, 0x1

    :goto_23
    if-nez v21, :cond_2e

    .line 148
    invoke-virtual {v13}, La4/b$a;->a()Z

    move-result v28

    if-eqz v28, :cond_2e

    move/from16 v29, v14

    move/from16 v32, v15

    .line 149
    iget-wide v14, v13, La4/b$a;->d:J

    move/from16 v33, v4

    .line 150
    iget v4, v13, La4/b$a;->c:I

    move/from16 v21, v4

    move-wide/from16 v24, v14

    move/from16 v14, v29

    move/from16 v15, v32

    move/from16 v4, v33

    goto :goto_23

    :cond_2e
    move/from16 v33, v4

    move/from16 v29, v14

    move/from16 v32, v15

    if-nez v28, :cond_2f

    const-string v1, "Unexpected end of chunk data"

    .line 151
    invoke-static {v9, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 153
    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 154
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 155
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    move v4, v11

    goto/16 :goto_27

    :cond_2f
    if-eqz v0, :cond_31

    :goto_24
    if-nez v31, :cond_30

    if-lez v16, :cond_30

    .line 156
    invoke-virtual {v0}, Lm5/w;->w()I

    move-result v31

    .line 157
    invoke-virtual {v0}, Lm5/w;->e()I

    move-result v30

    add-int/lit8 v16, v16, -0x1

    goto :goto_24

    :cond_30
    add-int/lit8 v31, v31, -0x1

    :cond_31
    move/from16 v4, v30

    .line 158
    aput-wide v24, v2, v11

    .line 159
    invoke-interface {v5}, La4/b$c;->c()I

    move-result v9

    aput v9, v3, v11

    .line 160
    aget v9, v3, v11

    if-le v9, v8, :cond_32

    .line 161
    aget v8, v3, v11

    :cond_32
    int-to-long v14, v4

    add-long v14, v22, v14

    .line 162
    aput-wide v14, v6, v11

    if-nez v12, :cond_33

    const/4 v9, 0x1

    goto :goto_25

    :cond_33
    const/4 v9, 0x0

    .line 163
    :goto_25
    aput v9, v10, v11

    if-ne v11, v1, :cond_34

    const/4 v9, 0x1

    .line 164
    aput v9, v10, v11

    add-int/lit8 v7, v7, -0x1

    if-lez v7, :cond_34

    .line 165
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v12}, Lm5/w;->w()I

    move-result v1

    sub-int/2addr v1, v9

    :cond_34
    move v9, v1

    move-object v15, v2

    move/from16 v14, v32

    int-to-long v1, v14

    add-long v22, v22, v1

    add-int/lit8 v1, v29, -0x1

    if-nez v1, :cond_35

    if-lez v27, :cond_35

    .line 167
    invoke-virtual/range {v20 .. v20}, Lm5/w;->w()I

    move-result v1

    .line 168
    invoke-virtual/range {v20 .. v20}, Lm5/w;->e()I

    move-result v2

    add-int/lit8 v27, v27, -0x1

    goto :goto_26

    :cond_35
    move v2, v14

    :goto_26
    move v14, v1

    .line 169
    aget v1, v3, v11

    move/from16 v28, v2

    int-to-long v1, v1

    add-long v24, v24, v1

    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v30, v4

    move v1, v9

    move-object v2, v15

    move/from16 v15, v28

    move/from16 v4, v33

    goto/16 :goto_22

    :cond_36
    move-object v15, v2

    move/from16 v33, v4

    move/from16 v29, v14

    :goto_27
    move/from16 v1, v21

    move/from16 v5, v30

    int-to-long v11, v5

    add-long v11, v22, v11

    if-eqz v0, :cond_38

    :goto_28
    if-lez v16, :cond_38

    .line 170
    invoke-virtual {v0}, Lm5/w;->w()I

    move-result v5

    if-eqz v5, :cond_37

    const/4 v0, 0x0

    goto :goto_29

    .line 171
    :cond_37
    invoke-virtual {v0}, Lm5/w;->e()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_28

    :cond_38
    const/4 v0, 0x1

    :goto_29
    if-nez v7, :cond_3a

    if-nez v29, :cond_3a

    if-nez v1, :cond_3a

    if-nez v27, :cond_3a

    move/from16 v5, v31

    if-nez v5, :cond_3b

    if-nez v0, :cond_39

    goto :goto_2a

    :cond_39
    move-object/from16 v16, v2

    move-object/from16 v14, v17

    move-object/from16 v17, v3

    goto :goto_2c

    :cond_3a
    move/from16 v5, v31

    :cond_3b
    :goto_2a
    const-string v13, "Inconsistent stbl box for track "

    .line 172
    invoke-static {v13}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v14, v17

    .line 173
    iget v15, v14, La4/l;->a:I

    move-object/from16 v16, v2

    const-string v2, ": remainingSynchronizationSamples "

    move-object/from16 v17, v3

    const-string v3, ", remainingSamplesAtTimestampDelta "

    .line 174
    invoke-static {v13, v15, v2, v7, v3}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, ", remainingSamplesInChunk "

    const-string v3, ", remainingTimestampDeltaChanges "

    move/from16 v7, v29

    invoke-static {v13, v7, v2, v1, v3}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v1, v27

    .line 175
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3c

    const-string v7, ", ctts invalid"

    goto :goto_2b

    :cond_3c
    move-object/from16 v7, v26

    .line 176
    :goto_2b
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v9, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    move-object v1, v6

    move-object v2, v10

    move-object/from16 v0, v16

    move-object/from16 v13, v17

    move/from16 v16, v8

    .line 178
    :goto_2d
    iget-wide v9, v14, La4/l;->c:J

    const-wide/32 v7, 0xf4240

    move-wide v5, v11

    invoke-static/range {v5 .. v10}, Lm5/g0;->R(JJJ)J

    move-result-wide v5

    .line 179
    iget-object v3, v14, La4/l;->h:[J

    if-nez v3, :cond_3d

    .line 180
    iget-wide v3, v14, La4/l;->c:J

    invoke-static {v1, v3, v4}, Lm5/g0;->S([JJ)V

    .line 181
    new-instance v3, La4/o;

    move-object v7, v3

    move-object v8, v14

    move-object v9, v0

    move-object v10, v13

    move/from16 v11, v16

    move-object v12, v1

    move-object v13, v2

    move-wide v14, v5

    invoke-direct/range {v7 .. v15}, La4/o;-><init>(La4/l;[J[II[J[IJ)V

    move-object v0, v3

    goto/16 :goto_3c

    .line 182
    :cond_3d
    array-length v3, v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_40

    iget v3, v14, La4/l;->b:I

    if-ne v3, v5, :cond_40

    array-length v3, v1

    const/4 v5, 0x2

    if-lt v3, v5, :cond_40

    .line 183
    iget-object v3, v14, La4/l;->i:[J

    .line 184
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 185
    aget-wide v6, v3, v5

    .line 186
    iget-object v3, v14, La4/l;->h:[J

    aget-wide v20, v3, v5

    iget-wide v8, v14, La4/l;->c:J

    move-wide/from16 v26, v6

    iget-wide v5, v14, La4/l;->d:J

    move-wide/from16 v22, v8

    move-wide/from16 v24, v5

    .line 187
    invoke-static/range {v20 .. v25}, Lm5/g0;->R(JJJ)J

    move-result-wide v5

    add-long v5, v5, v26

    .line 188
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x4

    const/4 v3, 0x0

    .line 189
    invoke-static {v8, v3, v7}, Lm5/g0;->i(III)I

    move-result v9

    .line 190
    array-length v10, v1

    sub-int/2addr v10, v8

    .line 191
    invoke-static {v10, v3, v7}, Lm5/g0;->i(III)I

    move-result v7

    .line 192
    aget-wide v20, v1, v3

    cmp-long v3, v20, v26

    if-gtz v3, :cond_3e

    aget-wide v8, v1, v9

    cmp-long v3, v26, v8

    if-gez v3, :cond_3e

    aget-wide v7, v1, v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_3e

    cmp-long v3, v5, v11

    if-gtz v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_2e

    :cond_3e
    const/4 v3, 0x0

    :goto_2e
    if-eqz v3, :cond_40

    sub-long v20, v11, v5

    const/4 v3, 0x0

    .line 193
    aget-wide v5, v1, v3

    sub-long v28, v26, v5

    iget-object v3, v14, La4/l;->f:Ln3/s0;

    iget v3, v3, Ln3/s0;->G:I

    int-to-long v5, v3

    iget-wide v7, v14, La4/l;->c:J

    move-wide/from16 v30, v5

    move-wide/from16 v32, v7

    .line 194
    invoke-static/range {v28 .. v33}, Lm5/g0;->R(JJJ)J

    move-result-wide v5

    .line 195
    iget-object v3, v14, La4/l;->f:Ln3/s0;

    iget v3, v3, Ln3/s0;->G:I

    int-to-long v7, v3

    iget-wide v9, v14, La4/l;->c:J

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    .line 196
    invoke-static/range {v20 .. v25}, Lm5/g0;->R(JJJ)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v5, v9

    if-nez v3, :cond_3f

    cmp-long v3, v7, v9

    if-eqz v3, :cond_40

    :cond_3f
    const-wide/32 v9, 0x7fffffff

    cmp-long v3, v5, v9

    if-gtz v3, :cond_40

    cmp-long v3, v7, v9

    if-gtz v3, :cond_40

    long-to-int v3, v5

    move-object/from16 v5, p1

    .line 197
    iput v3, v5, Ls3/q;->a:I

    long-to-int v3, v7

    .line 198
    iput v3, v5, Ls3/q;->b:I

    .line 199
    iget-wide v3, v14, La4/l;->c:J

    invoke-static {v1, v3, v4}, Lm5/g0;->S([JJ)V

    .line 200
    iget-object v3, v14, La4/l;->h:[J

    const/4 v4, 0x0

    aget-wide v6, v3, v4

    const-wide/32 v8, 0xf4240

    iget-wide v10, v14, La4/l;->d:J

    .line 201
    invoke-static/range {v6 .. v11}, Lm5/g0;->R(JJJ)J

    move-result-wide v3

    .line 202
    new-instance v6, La4/o;

    move-object v7, v6

    move-object v8, v14

    move-object v9, v0

    move-object v10, v13

    move/from16 v11, v16

    move-object v12, v1

    move-object v13, v2

    move-wide v14, v3

    invoke-direct/range {v7 .. v15}, La4/o;-><init>(La4/l;[J[II[J[IJ)V

    goto :goto_30

    :cond_40
    move-object/from16 v5, p1

    .line 203
    iget-object v3, v14, La4/l;->h:[J

    array-length v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_42

    const/4 v6, 0x0

    aget-wide v7, v3, v6

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_43

    .line 204
    iget-object v3, v14, La4/l;->i:[J

    .line 205
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    aget-wide v7, v3, v6

    .line 207
    :goto_2f
    array-length v3, v1

    if-ge v6, v3, :cond_41

    .line 208
    aget-wide v3, v1, v6

    sub-long v20, v3, v7

    const-wide/32 v22, 0xf4240

    iget-wide v3, v14, La4/l;->c:J

    move-wide/from16 v24, v3

    .line 209
    invoke-static/range {v20 .. v25}, Lm5/g0;->R(JJJ)J

    move-result-wide v3

    aput-wide v3, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_41
    sub-long v20, v11, v7

    const-wide/32 v22, 0xf4240

    .line 210
    iget-wide v3, v14, La4/l;->c:J

    move-wide/from16 v24, v3

    .line 211
    invoke-static/range {v20 .. v25}, Lm5/g0;->R(JJJ)J

    move-result-wide v3

    .line 212
    new-instance v6, La4/o;

    move-object v7, v6

    move-object v8, v14

    move-object v9, v0

    move-object v10, v13

    move/from16 v11, v16

    move-object v12, v1

    move-object v13, v2

    move-wide v14, v3

    invoke-direct/range {v7 .. v15}, La4/o;-><init>(La4/l;[J[II[J[IJ)V

    :goto_30
    move-object v0, v6

    goto/16 :goto_3c

    :cond_42
    const/4 v6, 0x0

    .line 213
    :cond_43
    iget v7, v14, La4/l;->b:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_44

    const/4 v7, 0x1

    goto :goto_31

    :cond_44
    move v7, v6

    .line 214
    :goto_31
    array-length v8, v3

    new-array v8, v8, [I

    .line 215
    array-length v3, v3

    new-array v3, v3, [I

    .line 216
    iget-object v9, v14, La4/l;->i:[J

    .line 217
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v6

    move v11, v10

    move v12, v11

    .line 218
    :goto_32
    iget-object v15, v14, La4/l;->h:[J

    array-length v5, v15

    if-ge v6, v5, :cond_48

    move/from16 v17, v4

    .line 219
    aget-wide v4, v9, v6

    const-wide/16 v20, -0x1

    cmp-long v20, v4, v20

    if-eqz v20, :cond_47

    .line 220
    aget-wide v21, v15, v6

    move-object v15, v9

    move/from16 v20, v10

    iget-wide v9, v14, La4/l;->c:J

    move/from16 v28, v12

    move-object/from16 v27, v13

    iget-wide v12, v14, La4/l;->d:J

    move-wide/from16 v23, v9

    move-wide/from16 v25, v12

    .line 221
    invoke-static/range {v21 .. v26}, Lm5/g0;->R(JJJ)J

    move-result-wide v9

    const/4 v12, 0x1

    .line 222
    invoke-static {v1, v4, v5, v12}, Lm5/g0;->f([JJZ)I

    move-result v13

    aput v13, v8, v6

    add-long/2addr v4, v9

    .line 223
    invoke-static {v1, v4, v5, v7}, Lm5/g0;->b([JJZ)I

    move-result v4

    aput v4, v3, v6

    .line 224
    :goto_33
    aget v4, v8, v6

    aget v5, v3, v6

    if-ge v4, v5, :cond_45

    aget v4, v8, v6

    aget v4, v2, v4

    and-int/2addr v4, v12

    if-nez v4, :cond_45

    .line 225
    aget v4, v8, v6

    add-int/2addr v4, v12

    aput v4, v8, v6

    goto :goto_33

    .line 226
    :cond_45
    aget v4, v3, v6

    aget v5, v8, v6

    sub-int/2addr v4, v5

    add-int/2addr v4, v11

    .line 227
    aget v5, v8, v6

    move/from16 v9, v28

    if-eq v9, v5, :cond_46

    goto :goto_34

    :cond_46
    const/4 v12, 0x0

    :goto_34
    or-int v5, v12, v20

    .line 228
    aget v9, v3, v6

    move v11, v4

    move v10, v5

    move v12, v9

    goto :goto_35

    :cond_47
    move-object v15, v9

    move/from16 v20, v10

    move v9, v12

    move-object/from16 v27, v13

    :goto_35
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, p1

    move-object v9, v15

    move/from16 v4, v17

    move-object/from16 v13, v27

    goto :goto_32

    :cond_48
    move/from16 v17, v4

    move/from16 v20, v10

    move-object/from16 v27, v13

    const/4 v4, 0x1

    move/from16 v5, v17

    if-eq v11, v5, :cond_49

    goto :goto_36

    :cond_49
    const/4 v4, 0x0

    :goto_36
    or-int v4, v20, v4

    if-eqz v4, :cond_4a

    .line 229
    new-array v5, v11, [J

    move-object v9, v5

    goto :goto_37

    :cond_4a
    move-object v9, v0

    :goto_37
    if-eqz v4, :cond_4b

    .line 230
    new-array v5, v11, [I

    move-object v10, v5

    goto :goto_38

    :cond_4b
    move-object/from16 v10, v27

    :goto_38
    if-eqz v4, :cond_4c

    const/16 v16, 0x0

    :cond_4c
    if-eqz v4, :cond_4d

    .line 231
    new-array v5, v11, [I

    move-object v13, v5

    goto :goto_39

    :cond_4d
    move-object v13, v2

    .line 232
    :goto_39
    new-array v12, v11, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v20, 0x0

    move/from16 v11, v16

    move-wide/from16 v15, v20

    .line 233
    :goto_3a
    iget-object v7, v14, La4/l;->h:[J

    array-length v7, v7

    if-ge v5, v7, :cond_51

    .line 234
    iget-object v7, v14, La4/l;->i:[J

    aget-wide v28, v7, v5

    .line 235
    aget v7, v8, v5

    move-object/from16 v17, v8

    .line 236
    aget v8, v3, v5

    if-eqz v4, :cond_4e

    move-object/from16 v26, v3

    sub-int v3, v8, v7

    .line 237
    invoke-static {v0, v7, v9, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    .line 238
    invoke-static {v0, v7, v10, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    invoke-static {v2, v7, v13, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3b

    :cond_4e
    move-object/from16 v30, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v27

    :goto_3b
    if-ge v7, v8, :cond_50

    const-wide/32 v22, 0xf4240

    move-object/from16 v27, v2

    .line 240
    iget-wide v2, v14, La4/l;->d:J

    move-wide/from16 v20, v15

    move-wide/from16 v24, v2

    invoke-static/range {v20 .. v25}, Lm5/g0;->R(JJJ)J

    move-result-wide v2

    .line 241
    aget-wide v20, v1, v7

    move/from16 v22, v8

    move-object/from16 v31, v9

    sub-long v8, v20, v28

    move-object/from16 v21, v0

    move-object/from16 v20, v1

    const-wide/16 v0, 0x0

    .line 242
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v32

    const-wide/32 v34, 0xf4240

    iget-wide v0, v14, La4/l;->c:J

    move-wide/from16 v36, v0

    .line 243
    invoke-static/range {v32 .. v37}, Lm5/g0;->R(JJJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 244
    aput-wide v2, v12, v6

    if-eqz v4, :cond_4f

    .line 245
    aget v0, v10, v6

    if-le v0, v11, :cond_4f

    .line 246
    aget v0, v21, v7

    move v11, v0

    :cond_4f
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    move/from16 v8, v22

    move-object/from16 v2, v27

    move-object/from16 v9, v31

    goto :goto_3b

    :cond_50
    move-object/from16 v21, v0

    move-object/from16 v20, v1

    move-object/from16 v27, v2

    move-object/from16 v31, v9

    .line 247
    iget-object v0, v14, La4/l;->h:[J

    aget-wide v1, v0, v5

    add-long/2addr v15, v1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v17

    move-object/from16 v1, v20

    move-object/from16 v3, v26

    move-object/from16 v2, v27

    move-object/from16 v0, v30

    move-object/from16 v27, v21

    goto/16 :goto_3a

    :cond_51
    move-object/from16 v31, v9

    const-wide/32 v22, 0xf4240

    .line 248
    iget-wide v0, v14, La4/l;->d:J

    move-wide/from16 v20, v15

    move-wide/from16 v24, v0

    .line 249
    invoke-static/range {v20 .. v25}, Lm5/g0;->R(JJJ)J

    move-result-wide v0

    .line 250
    new-instance v2, La4/o;

    move-object v7, v2

    move-object v8, v14

    move-wide v14, v0

    invoke-direct/range {v7 .. v15}, La4/o;-><init>(La4/l;[J[II[J[IJ)V

    move-object v0, v2

    :goto_3c
    move-object/from16 v1, v19

    .line 251
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3d
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v0, p0

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_52
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 252
    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_53
    move-object v1, v2

    return-object v1
.end method
