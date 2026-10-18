.class public final Le4/n;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le4/n;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le4/n;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Le4/n;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Le4/n;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 7
    iput-boolean p5, p0, Le4/n;->g:Z

    .line 8
    iput-boolean p6, p0, Le4/n;->e:Z

    .line 9
    iput-boolean p7, p0, Le4/n;->f:Z

    .line 10
    invoke-static {p2}, Lm5/s;->n(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Le4/n;->h:Z

    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    .line 3
    new-instance v1, Landroid/graphics/Point;

    .line 4
    sget v2, Lm5/g0;->a:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 5
    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    add-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x1

    .line 6
    div-int/2addr p2, p0

    mul-int/2addr p2, p0

    .line 7
    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Le4/n;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 5
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Le4/n;
    .locals 8

    .line 1
    new-instance p5, Le4/n;

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 2
    sget v1, Lm5/g0;->a:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const-string v2, "adaptive-playback"

    .line 3
    invoke-virtual {p3, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, p6

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    const/16 v2, 0x16

    if-gt v1, v2, :cond_3

    .line 4
    sget-object v1, Lm5/g0;->d:Ljava/lang/String;

    const-string v2, "ODROID-XU3"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Nexus 10"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "OMX.Exynos.AVC.Decoder"

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, p6

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-nez v1, :cond_4

    move v6, p6

    goto :goto_2

    :cond_4
    move v6, v0

    :goto_2
    const/16 v1, 0x15

    if-eqz p3, :cond_6

    .line 7
    sget v2, Lm5/g0;->a:I

    if-lt v2, v1, :cond_5

    const-string v2, "tunneled-playback"

    .line 8
    invoke-virtual {p3, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, p6

    goto :goto_3

    :cond_5
    move v2, v0

    :cond_6
    :goto_3
    if-nez p7, :cond_9

    if-eqz p3, :cond_8

    .line 9
    sget p7, Lm5/g0;->a:I

    if-lt p7, v1, :cond_7

    const-string p7, "secure-playback"

    .line 10
    invoke-virtual {p3, p7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_7

    move p7, p6

    goto :goto_4

    :cond_7
    move p7, v0

    :goto_4
    if-eqz p7, :cond_8

    goto :goto_5

    :cond_8
    move v7, v0

    goto :goto_6

    :cond_9
    :goto_5
    move v7, p6

    :goto_6
    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 11
    invoke-direct/range {v0 .. v7}, Le4/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object p5
.end method


# virtual methods
.method public final c(Ln3/s0;Ln3/s0;)Lq3/i;
    .locals 13

    .line 1
    iget-object v0, p1, Ln3/s0;->s:Ljava/lang/String;

    iget-object v1, p2, Ln3/s0;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-boolean v2, p0, Le4/n;->h:Z

    if-eqz v2, :cond_9

    .line 3
    iget v2, p1, Ln3/s0;->A:I

    iget v3, p2, Ln3/s0;->A:I

    if-eq v2, v3, :cond_1

    or-int/lit16 v0, v0, 0x400

    .line 4
    :cond_1
    iget-boolean v2, p0, Le4/n;->e:Z

    if-nez v2, :cond_3

    iget v2, p1, Ln3/s0;->x:I

    iget v3, p2, Ln3/s0;->x:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Ln3/s0;->y:I

    iget v3, p2, Ln3/s0;->y:I

    if-eq v2, v3, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x200

    .line 5
    :cond_3
    iget-object v2, p1, Ln3/s0;->E:Ln5/b;

    iget-object v3, p2, Ln3/s0;->E:Ln5/b;

    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    or-int/lit16 v0, v0, 0x800

    .line 6
    :cond_4
    iget-object v2, p0, Le4/n;->a:Ljava/lang/String;

    .line 7
    sget-object v3, Lm5/g0;->d:Ljava/lang/String;

    const-string v4, "SM-T230"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {p1, p2}, Ln3/s0;->d(Ln3/s0;)Z

    move-result v1

    if-nez v1, :cond_6

    or-int/lit8 v0, v0, 0x2

    :cond_6
    if-nez v0, :cond_8

    .line 9
    new-instance v0, Lq3/i;

    iget-object v2, p0, Le4/n;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, p2}, Ln3/s0;->d(Ln3/s0;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    :goto_1
    move v5, v1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lq3/i;-><init>(Ljava/lang/String;Ln3/s0;Ln3/s0;II)V

    return-object v0

    :cond_8
    move v12, v0

    goto/16 :goto_2

    .line 12
    :cond_9
    iget v1, p1, Ln3/s0;->F:I

    iget v2, p2, Ln3/s0;->F:I

    if-eq v1, v2, :cond_a

    or-int/lit16 v0, v0, 0x1000

    .line 13
    :cond_a
    iget v1, p1, Ln3/s0;->G:I

    iget v2, p2, Ln3/s0;->G:I

    if-eq v1, v2, :cond_b

    or-int/lit16 v0, v0, 0x2000

    .line 14
    :cond_b
    iget v1, p1, Ln3/s0;->H:I

    iget v2, p2, Ln3/s0;->H:I

    if-eq v1, v2, :cond_c

    or-int/lit16 v0, v0, 0x4000

    :cond_c
    if-nez v0, :cond_d

    .line 15
    iget-object v1, p0, Le4/n;->b:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 16
    invoke-static {p1}, Le4/r;->d(Ln3/s0;)Landroid/util/Pair;

    move-result-object v1

    .line 17
    invoke-static {p2}, Le4/r;->d(Ln3/s0;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 18
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_d

    if-ne v2, v3, :cond_d

    .line 20
    new-instance v0, Lq3/i;

    iget-object v5, p0, Le4/n;->a:Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lq3/i;-><init>(Ljava/lang/String;Ln3/s0;Ln3/s0;II)V

    return-object v0

    .line 21
    :cond_d
    invoke-virtual {p1, p2}, Ln3/s0;->d(Ln3/s0;)Z

    move-result v1

    if-nez v1, :cond_e

    or-int/lit8 v0, v0, 0x20

    .line 22
    :cond_e
    iget-object v1, p0, Le4/n;->b:Ljava/lang/String;

    const-string v2, "audio/opus"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit8 v0, v0, 0x2

    :cond_f
    if-nez v0, :cond_8

    .line 24
    new-instance v0, Lq3/i;

    iget-object v2, p0, Le4/n;->a:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lq3/i;-><init>(Ljava/lang/String;Ln3/s0;Ln3/s0;II)V

    return-object v0

    .line 25
    :goto_2
    new-instance v0, Lq3/i;

    iget-object v8, p0, Le4/n;->a:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v7, v0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Lq3/i;-><init>(Ljava/lang/String;Ln3/s0;Ln3/s0;II)V

    return-object v0
.end method

.method public final d()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    iget-object v0, p0, Le4/n;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_1
    return-object v0
.end method

.method public final e(Ln3/s0;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le4/r$b;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le4/n;->b:Ljava/lang/String;

    iget-object v1, p1, Ln3/s0;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Le4/n;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Le4/r;->b(Ln3/s0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 3
    :cond_2
    iget-object v0, p1, Ln3/s0;->p:Ljava/lang/String;

    const/16 v3, 0x10

    if-nez v0, :cond_3

    goto/16 :goto_7

    .line 4
    :cond_3
    invoke-static {p1}, Le4/r;->d(Ln3/s0;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_7

    .line 5
    :cond_4
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    iget-object v5, p1, Ln3/s0;->s:Ljava/lang/String;

    const-string v6, "video/dolby-vision"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x8

    const-string v7, "video/hevc"

    const/4 v8, 0x2

    if-eqz v5, :cond_6

    .line 8
    iget-object v5, p0, Le4/n;->b:Ljava/lang/String;

    const-string v9, "video/avc"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v6

    goto :goto_2

    .line 9
    :cond_5
    iget-object v5, p0, Le4/n;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v4, v8

    :goto_2
    move v0, v2

    .line 10
    :cond_6
    iget-boolean v5, p0, Le4/n;->h:Z

    if-nez v5, :cond_7

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_7

    goto/16 :goto_7

    .line 11
    :cond_7
    invoke-virtual {p0}, Le4/n;->d()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v5

    .line 12
    sget v9, Lm5/g0;->a:I

    const/16 v10, 0x17

    if-gt v9, v10, :cond_13

    iget-object v9, p0, Le4/n;->b:Ljava/lang/String;

    const-string v10, "video/x-vnd.on2.vp9"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    array-length v9, v5

    if-nez v9, :cond_13

    .line 13
    iget-object v5, p0, Le4/n;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v5, :cond_8

    .line 14
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 15
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    const v9, 0xaba9500

    if-lt v5, v9, :cond_9

    const/16 v6, 0x400

    goto :goto_4

    :cond_9
    const v9, 0x7270e00

    if-lt v5, v9, :cond_a

    const/16 v6, 0x200

    goto :goto_4

    :cond_a
    const v9, 0x3938700

    if-lt v5, v9, :cond_b

    const/16 v6, 0x100

    goto :goto_4

    :cond_b
    const v9, 0x1c9c380

    if-lt v5, v9, :cond_c

    const/16 v6, 0x80

    goto :goto_4

    :cond_c
    const v9, 0x112a880

    if-lt v5, v9, :cond_d

    const/16 v6, 0x40

    goto :goto_4

    :cond_d
    const v9, 0xb71b00

    if-lt v5, v9, :cond_e

    const/16 v6, 0x20

    goto :goto_4

    :cond_e
    const v9, 0x6ddd00

    if-lt v5, v9, :cond_f

    move v6, v3

    goto :goto_4

    :cond_f
    const v9, 0x36ee80

    if-lt v5, v9, :cond_10

    goto :goto_4

    :cond_10
    const v6, 0x1b7740

    if-lt v5, v6, :cond_11

    const/4 v6, 0x4

    goto :goto_4

    :cond_11
    const v6, 0xc3500

    if-lt v5, v6, :cond_12

    move v6, v8

    goto :goto_4

    :cond_12
    move v6, v1

    .line 16
    :goto_4
    new-instance v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v5}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 17
    iput v1, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 18
    iput v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-array v6, v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v5, v6, v2

    move-object v5, v6

    .line 19
    :cond_13
    array-length v6, v5

    move v9, v2

    :goto_5
    if-ge v9, v6, :cond_17

    aget-object v10, v5, v9

    .line 20
    iget v11, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v11, v4, :cond_16

    iget v10, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v10, v0, :cond_16

    iget-object v10, p0, Le4/n;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    if-ne v8, v4, :cond_15

    sget-object v10, Lm5/g0;->b:Ljava/lang/String;

    const-string v11, "sailfish"

    .line 22
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    const-string v11, "marlin"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_14
    move v10, v1

    goto :goto_6

    :cond_15
    move v10, v2

    :goto_6
    if-nez v10, :cond_16

    :goto_7
    move v0, v1

    goto :goto_8

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_17
    const-string v0, "codec.profileLevel, "

    .line 23
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    iget-object v4, p1, Ln3/s0;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le4/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le4/n;->h(Ljava/lang/String;)V

    move v0, v2

    :goto_8
    if-nez v0, :cond_18

    return v2

    .line 25
    :cond_18
    iget-boolean v0, p0, Le4/n;->h:Z

    const/16 v4, 0x15

    if-eqz v0, :cond_1d

    .line 26
    iget v0, p1, Ln3/s0;->x:I

    if-lez v0, :cond_1c

    iget v3, p1, Ln3/s0;->y:I

    if-gtz v3, :cond_19

    goto :goto_a

    .line 27
    :cond_19
    sget v5, Lm5/g0;->a:I

    if-lt v5, v4, :cond_1a

    .line 28
    iget p1, p1, Ln3/s0;->z:F

    float-to-double v1, p1

    invoke-virtual {p0, v0, v3, v1, v2}, Le4/n;->g(IID)Z

    move-result p1

    return p1

    :cond_1a
    mul-int/2addr v0, v3

    .line 29
    invoke-static {}, Le4/r;->k()I

    move-result v3

    if-gt v0, v3, :cond_1b

    goto :goto_9

    :cond_1b
    move v1, v2

    :goto_9
    if-nez v1, :cond_1c

    const-string v0, "legacyFrameSize, "

    .line 30
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    iget v2, p1, Ln3/s0;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Ln3/s0;->y:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le4/n;->h(Ljava/lang/String;)V

    :cond_1c
    :goto_a
    return v1

    .line 32
    :cond_1d
    sget v0, Lm5/g0;->a:I

    if-lt v0, v4, :cond_2b

    iget v4, p1, Ln3/s0;->G:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 33
    iget-object v6, p0, Le4/n;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v6, :cond_1e

    const-string v4, "sampleRate.caps"

    .line 34
    invoke-virtual {p0, v4}, Le4/n;->h(Ljava/lang/String;)V

    goto :goto_b

    .line 35
    :cond_1e
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v6

    if-nez v6, :cond_1f

    const-string v4, "sampleRate.aCaps"

    .line 36
    invoke-virtual {p0, v4}, Le4/n;->h(Ljava/lang/String;)V

    goto :goto_b

    .line 37
    :cond_1f
    invoke-virtual {v6, v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v6

    if-nez v6, :cond_20

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sampleRate.support, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Le4/n;->h(Ljava/lang/String;)V

    :goto_b
    move v4, v2

    goto :goto_c

    :cond_20
    move v4, v1

    :goto_c
    if-eqz v4, :cond_2a

    .line 39
    :cond_21
    iget p1, p1, Ln3/s0;->F:I

    if-eq p1, v5, :cond_2b

    .line 40
    iget-object v4, p0, Le4/n;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v4, :cond_22

    const-string p1, "channelCount.caps"

    .line 41
    invoke-virtual {p0, p1}, Le4/n;->h(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 42
    :cond_22
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v4

    if-nez v4, :cond_23

    const-string p1, "channelCount.aCaps"

    .line 43
    invoke-virtual {p0, p1}, Le4/n;->h(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 44
    :cond_23
    iget-object v5, p0, Le4/n;->a:Ljava/lang/String;

    iget-object v6, p0, Le4/n;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v4

    if-gt v4, v1, :cond_28

    const/16 v7, 0x1a

    if-lt v0, v7, :cond_24

    if-lez v4, :cond_24

    goto/16 :goto_e

    :cond_24
    const-string v0, "audio/mpeg"

    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/3gpp"

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/amr-wb"

    .line 48
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/mp4a-latm"

    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/vorbis"

    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/opus"

    .line 51
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/raw"

    .line 52
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/flac"

    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/g711-alaw"

    .line 54
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/g711-mlaw"

    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "audio/gsm"

    .line 56
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_e

    :cond_25
    const-string v0, "audio/ac3"

    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v3, 0x6

    goto :goto_d

    :cond_26
    const-string v0, "audio/eac3"

    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_d

    :cond_27
    const/16 v3, 0x1e

    .line 59
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MediaCodecInfo"

    invoke-static {v4, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :cond_28
    :goto_e
    if-ge v4, p1, :cond_29

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channelCount.support, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le4/n;->h(Ljava/lang/String;)V

    :goto_f
    move p1, v2

    goto :goto_10

    :cond_29
    move p1, v1

    :goto_10
    if-eqz p1, :cond_2a

    goto :goto_11

    :cond_2a
    move v1, v2

    :cond_2b
    :goto_11
    return v1
.end method

.method public final f(Ln3/s0;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le4/n;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p1, p0, Le4/n;->e:Z

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Le4/r;->d(Ln3/s0;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(IID)Z
    .locals 6

    .line 1
    iget-object v0, p0, Le4/n;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sizeAndRate.caps"

    .line 2
    invoke-virtual {p0, p1}, Le4/n;->h(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    .line 4
    invoke-virtual {p0, p1}, Le4/n;->h(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Le4/n;->b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    const-string v2, "x"

    if-ge p1, p2, :cond_4

    .line 6
    iget-object v4, p0, Le4/n;->a:Ljava/lang/String;

    const-string v5, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lm5/g0;->b:Ljava/lang/String;

    const-string v5, "mcv5a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-eqz v4, :cond_4

    .line 8
    invoke-static {v0, p2, p1, p3, p4}, Le4/n;->b(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "sizeAndRate.rotated, "

    .line 9
    invoke-static {v0, p1, v2, p2, v2}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AssumedSupport ["

    const-string p3, "] ["

    .line 11
    invoke-static {p2, p1, p3}, La4/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    iget-object p2, p0, Le4/n;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le4/n;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lm5/g0;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p1}, Lm5/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "sizeAndRate.support, "

    .line 13
    invoke-static {v0, p1, v2, p2, v2}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le4/n;->h(Ljava/lang/String;)V

    return v1

    :cond_5
    :goto_2
    return v3
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NoSupport ["

    const-string v1, "] ["

    .line 1
    invoke-static {v0, p1, v1}, La4/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le4/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le4/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lm5/g0;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lm5/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le4/n;->a:Ljava/lang/String;

    return-object v0
.end method
