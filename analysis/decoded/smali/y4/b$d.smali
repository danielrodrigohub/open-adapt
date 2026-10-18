.class public final Ly4/b$d;
.super Ly4/b$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public e:Ln3/s0;


# direct methods
.method public constructor <init>(Ly4/b$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "QualityLevel"

    invoke-direct {p0, p1, p2, v0}, Ly4/b$a;-><init>(Ly4/b$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3
    invoke-static {p0}, Lm5/g0;->q(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1}, Lde/n0;->i([BI)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_4

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 6
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x4

    .line 7
    array-length v4, p0

    add-int/lit8 v4, v4, -0x4

    :goto_0
    const/4 v5, -0x1

    if-gt v3, v4, :cond_3

    .line 8
    invoke-static {p0, v3}, Lde/n0;->i([BI)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_1
    if-ne v3, v5, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [[B

    move v4, v1

    .line 10
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 11
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v5

    if-ge v4, v7, :cond_4

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_4
    array-length v7, p0

    :goto_3
    sub-int/2addr v7, v6

    .line 13
    new-array v8, v7, [B

    .line 14
    invoke-static {p0, v6, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    aput-object v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move-object v1, v3

    :goto_4
    if-nez v1, :cond_6

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 17
    :cond_6
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly4/b$d;->e:Ln3/s0;

    return-object v0
.end method

.method public final k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/s0$a;

    invoke-direct {v0}, Ln3/s0$a;-><init>()V

    const-string v1, "FourCC"

    .line 2
    invoke-virtual {p0, p1, v1}, Ly4/b$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "H264"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "audio/mp4a-latm"

    const/4 v4, 0x0

    if-nez v2, :cond_e

    const-string v2, "X264"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "AVC1"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "DAVC"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v2, "AAC"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACL"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACH"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACP"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v2, "TTML"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "DFXP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v2, "ac-3"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "dac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "ec-3"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "dec3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "dtsc"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "audio/vnd.dts"

    goto :goto_6

    :cond_5
    const-string v2, "dtsh"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "dtsl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "dtse"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    :cond_7
    const-string v2, "opus"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "audio/opus"

    goto :goto_6

    :cond_8
    move-object v1, v4

    goto :goto_6

    :cond_9
    :goto_0
    const-string v1, "audio/vnd.dts.hd"

    goto :goto_6

    :cond_a
    :goto_1
    const-string v1, "audio/eac3"

    goto :goto_6

    :cond_b
    :goto_2
    const-string v1, "audio/ac3"

    goto :goto_6

    :cond_c
    :goto_3
    const-string v1, "application/ttml+xml"

    goto :goto_6

    :cond_d
    :goto_4
    move-object v1, v3

    goto :goto_6

    :cond_e
    :goto_5
    const-string v1, "video/avc"

    :goto_6
    const-string v2, "Type"

    .line 18
    invoke-virtual {p0, v2}, Ly4/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    const-string v6, "CodecPrivateData"

    if-ne v2, v5, :cond_f

    .line 19
    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly4/b$d;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "video/mp4"

    .line 20
    iput-object v3, v0, Ln3/s0$a;->j:Ljava/lang/String;

    const-string v3, "MaxWidth"

    .line 21
    invoke-virtual {p0, p1, v3}, Ly4/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 22
    iput v3, v0, Ln3/s0$a;->p:I

    const-string v3, "MaxHeight"

    .line 23
    invoke-virtual {p0, p1, v3}, Ly4/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 24
    iput v3, v0, Ln3/s0$a;->q:I

    .line 25
    iput-object v2, v0, Ln3/s0$a;->m:Ljava/util/List;

    goto :goto_8

    :cond_f
    const/4 v5, 0x1

    if-ne v2, v5, :cond_12

    if-nez v1, :cond_10

    move-object v1, v3

    :cond_10
    const-string v2, "Channels"

    .line 26
    invoke-virtual {p0, p1, v2}, Ly4/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    const-string v5, "SamplingRate"

    .line 27
    invoke-virtual {p0, p1, v5}, Ly4/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 28
    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ly4/b$d;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 29
    move-object v7, v6

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 30
    invoke-static {v5, v2}, Lp3/a;->a(II)[B

    move-result-object v3

    .line 31
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_11
    const-string v3, "audio/mp4"

    .line 32
    iput-object v3, v0, Ln3/s0$a;->j:Ljava/lang/String;

    .line 33
    iput v2, v0, Ln3/s0$a;->x:I

    .line 34
    iput v5, v0, Ln3/s0$a;->y:I

    .line 35
    iput-object v6, v0, Ln3/s0$a;->m:Ljava/util/List;

    goto :goto_8

    :cond_12
    const/4 v3, 0x3

    const-string v5, "application/mp4"

    if-ne v2, v3, :cond_16

    const/4 v2, 0x0

    const-string v3, "Subtype"

    .line 36
    invoke-virtual {p0, v3}, Ly4/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_15

    const-string v6, "CAPT"

    .line 37
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "DESC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_7

    :cond_13
    const/16 v2, 0x400

    goto :goto_7

    :cond_14
    const/16 v2, 0x40

    .line 38
    :cond_15
    :goto_7
    iput-object v5, v0, Ln3/s0$a;->j:Ljava/lang/String;

    .line 39
    iput v2, v0, Ln3/s0$a;->e:I

    goto :goto_8

    .line 40
    :cond_16
    iput-object v5, v0, Ln3/s0$a;->j:Ljava/lang/String;

    :goto_8
    const-string v2, "Index"

    .line 41
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    iput-object v2, v0, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v2, "Name"

    .line 43
    invoke-virtual {p0, v2}, Ly4/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    iput-object v2, v0, Ln3/s0$a;->b:Ljava/lang/String;

    .line 45
    iput-object v1, v0, Ln3/s0$a;->k:Ljava/lang/String;

    const-string v1, "Bitrate"

    .line 46
    invoke-virtual {p0, p1, v1}, Ly4/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p1

    .line 47
    iput p1, v0, Ln3/s0$a;->f:I

    const-string p1, "Language"

    .line 48
    invoke-virtual {p0, p1}, Ly4/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 49
    iput-object p1, v0, Ln3/s0$a;->c:Ljava/lang/String;

    .line 50
    new-instance p1, Ln3/s0;

    invoke-direct {p1, v0}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 51
    iput-object p1, p0, Ly4/b$d;->e:Ln3/s0;

    return-void
.end method
