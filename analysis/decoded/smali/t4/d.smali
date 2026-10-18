.class public final Lt4/d;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Ll5/f0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Ll5/f0$a<",
        "Lt4/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:[I


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lt4/d;->b:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lt4/d;->c:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lt4/d;->d:Ljava/util/regex/Pattern;

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lt4/d;->e:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lt4/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(JJ)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, p0, p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method public static d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lm5/h0;->f(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3
    invoke-static {p0}, Lm5/h0;->f(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "value"

    .line 2
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    const-string v3, "id"

    .line 3
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 4
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5
    invoke-static {p0, p1}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    new-instance p0, Lt4/e;

    invoke-direct {p0, v1, v2, v0}, Lt4/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    sget-object p1, Lm5/g0;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    if-eqz p2, :cond_7

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p0, p2

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    const-wide v6, 0x417e1852c0000000L    # 3.1556908E7

    mul-double/2addr p2, v6

    goto :goto_0

    :cond_1
    move-wide p2, v4

    :goto_0
    const/4 v6, 0x5

    .line 7
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x4144103580000000L    # 2629739.0

    mul-double/2addr v6, v8

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    add-double/2addr p2, v6

    const/4 v6, 0x7

    .line 9
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 10
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v6, v8

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    add-double/2addr p2, v6

    const/16 v6, 0xa

    .line 11
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 12
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    add-double/2addr p2, v6

    const/16 v2, 0xc

    .line 13
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 14
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v6

    goto :goto_4

    :cond_5
    move-wide v2, v4

    :goto_4
    add-double/2addr p2, v2

    const/16 v2, 0xe

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    :cond_6
    add-double/2addr p2, v4

    mul-double/2addr p2, v0

    double-to-long p1, p2

    if-eqz p0, :cond_8

    neg-long p1, p1

    goto :goto_5

    .line 17
    :cond_7
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    mul-double/2addr p0, v2

    mul-double/2addr p0, v0

    double-to-long p1, p0

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public static l(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    sget-object v0, Lt4/d;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method public static m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method public static n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public static w(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5
    :goto_0
    invoke-static {p0, p1}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lt4/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 2
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string p2, "MPD"

    .line 4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, v1, p1}, Lt4/d;->o(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lt4/c;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    .line 6
    invoke-static {p1, v0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {v0, p1}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1
.end method

.method public final b(Ljava/util/List;JJIJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt4/k$d;",
            ">;JJIJ)J"
        }
    .end annotation

    if-ltz p6, :cond_0

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p7, p2

    .line 1
    sget p6, Lm5/g0;->a:I

    add-long/2addr p7, p4

    const-wide/16 v0, 0x1

    sub-long/2addr p7, v0

    .line 2
    div-long/2addr p7, p4

    long-to-int p6, p7

    :goto_0
    const/4 p7, 0x0

    :goto_1
    if-ge p7, p6, :cond_1

    .line 3
    new-instance p8, Lt4/k$d;

    invoke-direct {p8, p2, p3, p4, p5}, Lt4/k$d;-><init>(JJ)V

    .line 4
    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p2, p4

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_1
    return-wide p2
.end method

.method public final e(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 2
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v8

    goto :goto_1

    :sswitch_4
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v6

    goto :goto_1

    :sswitch_5
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v5

    goto :goto_1

    :sswitch_6
    const-string v2, "urn:dts:dash:audio_channel_configuration:2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v7

    goto :goto_1

    :goto_0
    move v1, v4

    :goto_1
    const-string v2, "value"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 3
    :pswitch_0
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_7

    :cond_8
    const/16 v1, 0x10

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_7

    :cond_9
    :goto_2
    move v4, v0

    goto/16 :goto_7

    .line 5
    :pswitch_1
    invoke-static {p1, v2, v4}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_f

    .line 6
    sget-object v1, Lt4/d;->e:[I

    array-length v2, v1

    if-ge v0, v2, :cond_f

    .line 7
    aget v4, v1, v0

    goto/16 :goto_7

    .line 8
    :pswitch_2
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 9
    :cond_a
    invoke-static {v0}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_3
    move v7, v4

    goto :goto_4

    :sswitch_7
    const-string v1, "fa01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    move v7, v8

    goto :goto_4

    :sswitch_8
    const-string v1, "f801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    move v7, v6

    goto :goto_4

    :sswitch_9
    const-string v1, "a000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    move v7, v5

    goto :goto_4

    :sswitch_a
    const-string v1, "4000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    :goto_4
    packed-switch v7, :pswitch_data_1

    :goto_5
    move v3, v4

    goto :goto_6

    :pswitch_3
    const/16 v3, 0x8

    goto :goto_6

    :pswitch_4
    move v3, v6

    goto :goto_6

    :pswitch_5
    move v3, v5

    :goto_6
    :pswitch_6
    move v4, v3

    goto :goto_7

    .line 10
    :pswitch_7
    invoke-static {p1, v2, v4}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    goto :goto_7

    .line 11
    :pswitch_8
    invoke-static {p1, v2, v4}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_f

    const/16 v1, 0x21

    if-ge v0, v1, :cond_f

    goto :goto_2

    .line 12
    :cond_f
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 13
    invoke-static {p1, v0}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v4

    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x185d7c -> :sswitch_a
        0x2cd22f -> :sswitch_9
        0x2f3613 -> :sswitch_8
        0x2fcffc -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public final f(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    const/4 v0, 0x0

    const-string v1, "availabilityTimeOffset"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    const-string p2, "INF"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 3
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const p2, 0x49742400    # 1000000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method public final g(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lt4/b;",
            ">;Z)",
            "Ljava/util/List<",
            "Lt4/b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "dvb:priority"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    const-string v3, "dvb:weight"

    .line 3
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const-string v4, "serviceLocation"

    .line 5
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BaseURL"

    .line 6
    invoke-static {p1, v4}, Lt4/d;->w(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-static {p1}, Lm5/e0;->a(Ljava/lang/String;)[I

    move-result-object v5

    aget v5, v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-eqz v5, :cond_5

    if-nez v0, :cond_4

    move-object v0, p1

    :cond_4
    new-array p2, v2, [Lt4/b;

    .line 8
    new-instance p3, Lt4/b;

    invoke-direct {p3, p1, v0, v1, v3}, Lt4/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p3, p2, v4

    invoke-static {p2}, Lu6/f0;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 11
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt4/b;

    .line 12
    iget-object v6, v5, Lt4/b;->a:Ljava/lang/String;

    invoke-static {v6, p1}, Lm5/e0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_6

    move-object v7, v6

    goto :goto_4

    :cond_6
    move-object v7, v0

    :goto_4
    if-eqz p3, :cond_7

    .line 13
    iget v1, v5, Lt4/b;->c:I

    .line 14
    iget v3, v5, Lt4/b;->d:I

    .line 15
    iget-object v7, v5, Lt4/b;->b:Ljava/lang/String;

    .line 16
    :cond_7
    new-instance v5, Lt4/b;

    invoke-direct {v5, v6, v7, v1, v3}, Lt4/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return-object v2
.end method

.method public final h(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lr3/d$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x3a

    if-eqz v1, :cond_8

    .line 2
    invoke-static {v1}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v1, v3

    goto :goto_1

    :sswitch_0
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v6, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const-string v1, "value"

    .line 3
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_6

    .line 5
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 7
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    const-string v9, "default_KID"

    .line 8
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 9
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    move-object v6, v0

    .line 10
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "00000000-0000-0000-0000-000000000000"

    .line 11
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\\s+"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 13
    array-length v7, v6

    new-array v7, v7, [Ljava/util/UUID;

    move v8, v2

    .line 14
    :goto_5
    array-length v9, v6

    if-ge v8, v9, :cond_7

    .line 15
    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 16
    :cond_7
    sget-object v6, Ln3/i;->b:Ljava/util/UUID;

    invoke-static {v6, v7, v0}, La4/i;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v7

    move-object v8, v0

    goto :goto_9

    .line 17
    :pswitch_1
    sget-object v1, Ln3/i;->d:Ljava/util/UUID;

    goto :goto_6

    .line 18
    :pswitch_2
    sget-object v1, Ln3/i;->e:Ljava/util/UUID;

    goto :goto_6

    .line 19
    :pswitch_3
    sget-object v1, Ln3/i;->c:Ljava/util/UUID;

    :goto_6
    move-object v6, v1

    move-object v1, v0

    goto :goto_8

    :cond_8
    :goto_7
    move-object v1, v0

    :cond_9
    move-object v6, v0

    :goto_8
    move-object v7, v0

    move-object v8, v7

    .line 20
    :cond_a
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "clearkey:Laurl"

    .line 21
    invoke-static {p1, v9}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v10, :cond_b

    .line 22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d

    :cond_b
    const-string v9, "ms:laurl"

    .line 23
    invoke-static {p1, v9}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v8, "licenseUrl"

    .line 24
    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d

    :cond_c
    if-nez v7, :cond_11

    .line 25
    invoke-static {p1}, Lm5/h0;->f(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v3, :cond_d

    goto :goto_a

    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 27
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :goto_a
    const-string v11, "pssh"

    .line 28
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    move v9, v4

    goto :goto_b

    :cond_e
    move v9, v2

    :goto_b
    if-eqz v9, :cond_11

    .line 29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v10, :cond_11

    .line 30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 31
    invoke-static {v6}, La4/i;->b([B)La4/i$a;

    move-result-object v7

    if-nez v7, :cond_f

    move-object v7, v0

    goto :goto_c

    .line 32
    :cond_f
    iget-object v7, v7, La4/i$a;->a:Ljava/util/UUID;

    :goto_c
    if-nez v7, :cond_10

    const-string v6, "MpdParser"

    const-string v9, "Skipping malformed cenc:pssh data"

    .line 33
    invoke-static {v6, v9}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v0

    goto :goto_d

    :cond_10
    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_d

    :cond_11
    if-nez v7, :cond_12

    .line 34
    sget-object v9, Ln3/i;->e:Ljava/util/UUID;

    .line 35
    invoke-virtual {v9, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "mspr:pro"

    .line 36
    invoke-static {p1, v11}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v10, :cond_12

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 39
    invoke-static {v9, v0, v7}, La4/i;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v7

    goto :goto_d

    .line 40
    :cond_12
    invoke-static {p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_d
    const-string v9, "ContentProtection"

    .line 41
    invoke-static {p1, v9}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v6, :cond_13

    .line 42
    new-instance v0, Lr3/d$b;

    const-string p1, "video/mp4"

    invoke-direct {v0, v6, v8, p1, v7}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 43
    :cond_13
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "video"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "text"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public final o(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lt4/c;
    .locals 151
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "profiles"

    .line 1
    invoke-interface {v15, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    .line 2
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    array-length v3, v1

    move v4, v0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    aget-object v6, v1, v4

    const-string v7, "urn:dvb:dash:profile:dvb-dash:"

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v13, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v13, v0

    :goto_2
    const-string v1, "availabilityStartTime"

    .line 5
    invoke-interface {v15, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_3

    move-wide/from16 v16, v3

    goto :goto_3

    .line 6
    :cond_3
    invoke-static {v1}, Lm5/g0;->O(Ljava/lang/String;)J

    move-result-wide v6

    move-wide/from16 v16, v6

    :goto_3
    const-string v1, "mediaPresentationDuration"

    .line 7
    invoke-static {v15, v1, v3, v4}, Lt4/d;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    const-string v1, "minBufferTime"

    .line 8
    invoke-static {v15, v1, v3, v4}, Lt4/d;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    const-string v1, "type"

    .line 9
    invoke-interface {v15, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "dynamic"

    .line 10
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v1, "minimumUpdatePeriod"

    .line 11
    invoke-static {v15, v1, v3, v4}, Lt4/d;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    move-wide/from16 v23, v6

    goto :goto_4

    :cond_4
    move-wide/from16 v23, v3

    :goto_4
    if-eqz v22, :cond_5

    const-string v1, "timeShiftBufferDepth"

    .line 12
    invoke-static {v15, v1, v3, v4}, Lt4/d;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    move-wide/from16 v25, v6

    goto :goto_5

    :cond_5
    move-wide/from16 v25, v3

    :goto_5
    if-eqz v22, :cond_6

    const-string v1, "suggestedPresentationDelay"

    .line 13
    invoke-static {v15, v1, v3, v4}, Lt4/d;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    move-wide/from16 v27, v6

    goto :goto_6

    :cond_6
    move-wide/from16 v27, v3

    :goto_6
    const-string v1, "publishTime"

    .line 14
    invoke-interface {v15, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-wide/from16 v29, v3

    goto :goto_7

    .line 15
    :cond_7
    invoke-static {v1}, Lm5/g0;->O(Ljava/lang/String;)J

    move-result-wide v6

    move-wide/from16 v29, v6

    :goto_7
    if-eqz v22, :cond_8

    const-wide/16 v6, 0x0

    goto :goto_8

    :cond_8
    move-wide v6, v3

    .line 16
    :goto_8
    new-instance v1, Lt4/b;

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v13, :cond_9

    move v10, v5

    goto :goto_9

    :cond_9
    const/high16 v10, -0x80000000

    .line 19
    :goto_9
    invoke-direct {v1, v8, v9, v10, v5}, Lt4/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-array v8, v5, [Lt4/b;

    aput-object v1, v8, v0

    .line 20
    invoke-static {v8}, Lu6/f0;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    .line 21
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v22, :cond_a

    goto :goto_a

    :cond_a
    const-wide/16 v3, 0x0

    :goto_a
    move/from16 v31, v0

    move/from16 v32, v31

    move-object/from16 v33, v2

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object v0, v15

    move-wide/from16 v147, v3

    move-wide v3, v6

    move-wide/from16 v7, v147

    .line 23
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v10, "BaseURL"

    .line 24
    invoke-static {v0, v10}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez v31, :cond_b

    .line 25
    invoke-virtual {v14, v0, v3, v4}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v3

    move/from16 v31, v5

    .line 26
    :cond_b
    invoke-virtual {v14, v0, v11, v13}, Lt4/d;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_11

    :cond_c
    const-string v1, "ProgramInformation"

    .line 27
    invoke-static {v0, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "lang"

    if-eqz v5, :cond_13

    const-string v5, "moreInformationURL"

    .line 28
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    move-object/from16 v41, v2

    goto :goto_c

    :cond_d
    move-object/from16 v41, v5

    .line 29
    :goto_c
    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e

    move-object/from16 v42, v2

    goto :goto_d

    :cond_e
    move-object/from16 v42, v5

    :goto_d
    move-object v5, v2

    move-object v6, v5

    move-object v10, v6

    .line 30
    :goto_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-wide/from16 v43, v3

    const-string v3, "Title"

    .line 31
    invoke-static {v0, v3}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_f

    :cond_f
    const-string v3, "Source"

    .line 33
    invoke-static {v0, v3}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 34
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_f

    :cond_10
    const-string v3, "Copyright"

    .line 35
    invoke-static {v0, v3}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 36
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_f

    .line 37
    :cond_11
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 38
    :goto_f
    invoke-static {v0, v1}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 39
    new-instance v33, Lt4/h;

    move-object/from16 v37, v33

    move-object/from16 v38, v5

    move-object/from16 v39, v6

    move-object/from16 v40, v10

    invoke-direct/range {v37 .. v42}, Lt4/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_10

    :cond_12
    move-wide/from16 v3, v43

    goto :goto_e

    :cond_13
    move-wide/from16 v43, v3

    const-string v1, "UTCTiming"

    .line 40
    invoke-static {v0, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    const-string v5, "value"

    const-string v3, "schemeIdUri"

    if-eqz v1, :cond_14

    .line 41
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance v4, Lfe/h;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v3, v5}, Lfe/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v34, v4

    :goto_10
    move-wide/from16 v3, v43

    goto :goto_11

    :cond_14
    const-string v4, "Location"

    .line 44
    invoke-static {v0, v4}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-wide/from16 v3, v43

    const/4 v5, 0x1

    :goto_11
    move v1, v5

    goto/16 :goto_16

    :cond_15
    const-string v2, "ServiceDescription"

    .line 46
    invoke-static {v0, v2}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v36, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v38, -0x7fffffffffffffffL    # -4.9E-324

    const v3, -0x800001

    const v10, -0x800001

    .line 47
    :goto_12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Latency"

    .line 48
    invoke-static {v0, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    const-string v4, "max"

    move/from16 v42, v3

    const-string v3, "min"

    if-eqz v1, :cond_16

    const-string v1, "target"

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    invoke-static {v0, v1, v5, v6}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v36

    .line 50
    invoke-static {v0, v3, v5, v6}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v38

    .line 51
    invoke-static {v0, v4, v5, v6}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    move-wide/from16 v50, v3

    move/from16 v53, v10

    move-wide/from16 v46, v36

    move-wide/from16 v48, v38

    goto :goto_14

    :cond_16
    const-string v1, "PlaybackRate"

    .line 52
    invoke-static {v0, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    .line 53
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    const v3, -0x800001

    goto :goto_13

    .line 54
    :cond_17
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 55
    :goto_13
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move/from16 v52, v3

    move-wide/from16 v46, v5

    move-wide/from16 v48, v36

    move-wide/from16 v50, v38

    const v53, -0x800001

    goto :goto_15

    .line 56
    :cond_18
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    move/from16 v52, v3

    move-wide/from16 v46, v5

    move/from16 v53, v10

    move-wide/from16 v48, v36

    move-wide/from16 v50, v38

    goto :goto_15

    :cond_19
    move-wide/from16 v46, v5

    move/from16 v53, v10

    move-wide/from16 v48, v36

    move-wide/from16 v50, v38

    :goto_14
    move/from16 v52, v42

    .line 57
    :goto_15
    invoke-static {v0, v2}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 58
    new-instance v36, Lt4/l;

    move-object/from16 v45, v36

    invoke-direct/range {v45 .. v53}, Lt4/l;-><init>(JJJFF)V

    const/4 v2, 0x0

    move-wide/from16 v3, v43

    const/4 v1, 0x1

    :goto_16
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v61, v9

    move-object/from16 v56, v11

    move/from16 v82, v13

    move-wide v8, v7

    move-wide v6, v5

    move-object v5, v12

    goto/16 :goto_69

    :cond_1a
    move-wide/from16 v5, v46

    move-wide/from16 v36, v48

    move-wide/from16 v38, v50

    move/from16 v3, v52

    move/from16 v10, v53

    goto/16 :goto_12

    :cond_1b
    const-string v4, "Period"

    .line 59
    invoke-static {v0, v4}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    if-nez v32, :cond_99

    .line 60
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    move-object v2, v9

    goto :goto_17

    :cond_1c
    move-object v2, v11

    :goto_17
    const-string v1, "id"

    move-object/from16 v37, v3

    const/4 v3, 0x0

    .line 61
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    const-string v3, "start"

    .line 62
    invoke-static {v0, v3, v7, v8}, Lt4/d;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v47

    move-object/from16 v38, v4

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v39, v16, v3

    if-eqz v39, :cond_1d

    add-long v41, v16, v47

    goto :goto_18

    :cond_1d
    move-wide/from16 v41, v3

    :goto_18
    const-string v15, "duration"

    .line 63
    invoke-static {v0, v15, v3, v4}, Lt4/d;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v52

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v39, v15

    .line 65
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v50, v15

    .line 66
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v45, 0x0

    const/16 v49, 0x0

    const/16 v51, 0x0

    move-wide/from16 v54, v3

    move-object/from16 v56, v11

    move-object/from16 v57, v12

    move-wide/from16 v11, v43

    const/16 v40, 0x1

    move-object/from16 v3, p1

    .line 67
    :goto_19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 68
    invoke-static {v3, v10}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    if-nez v51, :cond_1e

    .line 69
    invoke-virtual {v14, v3, v11, v12}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v11

    move/from16 v51, v40

    .line 70
    :cond_1e
    invoke-virtual {v14, v3, v2, v13}, Lt4/d;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-wide v58, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v88, v1

    move-object/from16 v119, v2

    move-object/from16 v62, v5

    move-object/from16 v70, v6

    move-wide/from16 v128, v7

    move-object/from16 v61, v9

    move-object/from16 v77, v10

    move/from16 v82, v13

    move-object/from16 v4, v38

    move-object/from16 v14, v50

    move-wide/from16 v1, v58

    move-object/from16 v58, v15

    move-object/from16 v15, p1

    move-wide/from16 v147, v43

    move-object/from16 v44, v0

    move-object/from16 v43, v39

    move-object/from16 v0, v45

    move-object/from16 v39, v37

    move-wide/from16 v37, v147

    goto/16 :goto_65

    :cond_1f
    const-string v4, "AdaptationSet"

    .line 71
    invoke-static {v3, v4}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v58

    move-wide/from16 v59, v11

    const-string v11, "SegmentList"

    const-string v12, "SegmentBase"

    move-object/from16 v61, v9

    const-string v9, "SegmentTemplate"

    if-eqz v58, :cond_86

    .line 72
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v58

    move-object/from16 v62, v0

    if-nez v58, :cond_20

    move-object/from16 v58, v15

    goto :goto_1a

    :cond_20
    move-object/from16 v58, v15

    move-object v15, v2

    :goto_1a
    const/4 v0, -0x1

    .line 73
    invoke-static {v3, v1, v0}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v64

    .line 74
    invoke-virtual/range {p0 .. p1}, Lt4/d;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    move-object/from16 v63, v9

    const-string v9, "mimeType"

    move/from16 v65, v0

    const/4 v0, 0x0

    .line 75
    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    move-wide/from16 v67, v7

    const-string v7, "codecs"

    .line 76
    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    const-string v8, "width"

    const/4 v0, -0x1

    move-object/from16 v70, v5

    .line 77
    invoke-static {v3, v8, v0}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v71, v4

    const-string v4, "height"

    .line 78
    invoke-static {v3, v4, v0}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v72, v2

    const/high16 v2, -0x40800000    # -1.0f

    .line 79
    invoke-static {v3, v2}, Lt4/d;->l(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v2

    move-object/from16 v73, v11

    const-string v11, "audioSamplingRate"

    move-object/from16 v74, v12

    const/4 v12, -0x1

    .line 80
    invoke-static {v3, v11, v12}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v75, v11

    const/4 v11, 0x0

    .line 81
    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    move/from16 v77, v12

    const-string v12, "label"

    .line 82
    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v78, v12

    .line 85
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v79, v3

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v80, v2

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move/from16 v81, v0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v82, v4

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v83, v4

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v84, -0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    move-object/from16 v89, v0

    move-object/from16 v88, v1

    move/from16 v87, v5

    move-object/from16 v92, v49

    move-wide/from16 v90, v54

    move-wide/from16 v0, v59

    move/from16 v5, v65

    move-object/from16 v65, v8

    move-object/from16 v8, v76

    move-object/from16 v76, v7

    move-object/from16 v7, p1

    .line 91
    :goto_1b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 92
    invoke-static {v7, v10}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v93

    if-eqz v93, :cond_22

    if-nez v86, :cond_21

    .line 93
    invoke-virtual {v14, v7, v0, v1}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v0

    move-wide/from16 v93, v0

    move/from16 v86, v40

    goto :goto_1c

    :cond_21
    move-wide/from16 v93, v0

    .line 94
    :goto_1c
    invoke-virtual {v14, v7, v15, v13}, Lt4/d;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v0, v93

    move-object/from16 v93, v15

    goto/16 :goto_20

    :cond_22
    move-object/from16 v93, v15

    const-string v15, "ContentProtection"

    .line 95
    invoke-static {v7, v15}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v94

    if-eqz v94, :cond_24

    .line 96
    invoke-virtual/range {p0 .. p1}, Lt4/d;->h(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v15

    move-wide/from16 v94, v0

    .line 97
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_23

    .line 98
    move-object/from16 v85, v0

    check-cast v85, Ljava/lang/String;

    .line 99
    :cond_23
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2c

    .line 100
    check-cast v0, Lr3/d$b;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_24
    move-wide/from16 v94, v0

    const-string v0, "ContentComponent"

    .line 101
    invoke-static {v7, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    .line 102
    invoke-interface {v7, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v8, :cond_25

    move-object v8, v0

    goto :goto_1d

    :cond_25
    if-nez v0, :cond_26

    goto :goto_1d

    .line 103
    :cond_26
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 104
    :goto_1d
    invoke-virtual/range {p0 .. p1}, Lt4/d;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v5, v1, :cond_27

    move v5, v0

    goto :goto_1f

    :cond_27
    if-ne v0, v1, :cond_28

    goto :goto_1f

    :cond_28
    if-ne v5, v0, :cond_29

    move/from16 v0, v40

    goto :goto_1e

    :cond_29
    const/4 v0, 0x0

    .line 105
    :goto_1e
    invoke-static {v0}, Lm5/a;->e(Z)V

    goto :goto_1f

    :cond_2a
    const-string v0, "Role"

    .line 106
    invoke-static {v7, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 107
    invoke-static {v7, v0}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_2b
    const-string v1, "AudioChannelConfiguration"

    .line 108
    invoke-static {v7, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 109
    invoke-virtual/range {p0 .. p1}, Lt4/d;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v84

    :cond_2c
    :goto_1f
    move-wide/from16 v0, v94

    :goto_20
    move-wide/from16 v94, v0

    move-object/from16 v118, v2

    move-object/from16 v100, v3

    move-object/from16 v105, v4

    move-object/from16 v130, v9

    move-object/from16 v135, v11

    move-object/from16 v124, v38

    move-object/from16 v146, v63

    move-wide/from16 v128, v67

    move-object/from16 v126, v70

    move-object/from16 v2, v71

    move-object/from16 v119, v72

    move-object/from16 v133, v73

    move-object/from16 v134, v74

    move-object/from16 v71, v76

    move-object/from16 v1, v78

    move-object/from16 v0, v79

    move/from16 v72, v80

    move/from16 v73, v81

    move-object/from16 v81, v82

    move-object/from16 v106, v83

    move-object/from16 v74, v89

    move-object/from16 v70, v6

    move-object/from16 v80, v12

    move/from16 v82, v13

    move-object/from16 v76, v65

    move/from16 v147, v77

    move-object/from16 v77, v10

    move-wide/from16 v148, v43

    move-object/from16 v43, v37

    move-wide/from16 v37, v148

    move-object/from16 v44, v62

    move-object/from16 v62, v75

    move/from16 v75, v147

    goto/16 :goto_4c

    :cond_2d
    const-string v0, "Accessibility"

    .line 110
    invoke-static {v7, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v96

    if-eqz v96, :cond_2e

    .line 111
    invoke-static {v7, v0}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2e
    const-string v0, "EssentialProperty"

    .line 112
    invoke-static {v7, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v96

    if-eqz v96, :cond_2f

    .line 113
    invoke-static {v7, v0}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_21
    move-object/from16 v1, v89

    goto :goto_22

    :cond_2f
    move-object/from16 v96, v15

    const-string v15, "SupplementalProperty"

    .line 114
    invoke-static {v7, v15}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v97

    if-eqz v97, :cond_30

    .line 115
    invoke-static {v7, v15}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v0

    move-object/from16 v1, v89

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_22
    move-object/from16 v118, v2

    move-object/from16 v100, v3

    move-object/from16 v105, v4

    move-object v15, v7

    move-object/from16 v130, v9

    move-object/from16 v135, v11

    move-object/from16 v124, v38

    move-object/from16 v146, v63

    move-wide/from16 v128, v67

    move-object/from16 v126, v70

    move-object/from16 v119, v72

    move-object/from16 v133, v73

    move-object/from16 v134, v74

    move/from16 v72, v80

    move/from16 v73, v81

    move-object/from16 v81, v82

    move-object/from16 v106, v83

    move-object/from16 v74, v1

    move-object/from16 v70, v6

    move-object/from16 v63, v8

    move-object/from16 v80, v12

    move/from16 v82, v13

    move-object/from16 v83, v71

    move-object/from16 v71, v76

    move-object/from16 v1, v78

    move/from16 v78, v5

    move-object/from16 v76, v65

    move-wide/from16 v4, v90

    move/from16 v147, v77

    move-object/from16 v77, v10

    move-wide/from16 v148, v43

    move-object/from16 v43, v37

    move-wide/from16 v37, v148

    move-object/from16 v44, v62

    move-object/from16 v62, v75

    move/from16 v75, v147

    goto/16 :goto_4a

    :cond_30
    move-object/from16 v97, v15

    move-object/from16 v147, v89

    move-object/from16 v89, v0

    move-object/from16 v0, v147

    const-string v15, "Representation"

    .line 116
    invoke-static {v7, v15}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v98

    move-object/from16 v99, v15

    const-string v15, "InbandEventStream"

    if-eqz v98, :cond_6f

    .line 117
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v98

    if-nez v98, :cond_31

    const/16 v98, 0x0

    move-object/from16 v100, v3

    move-object/from16 v101, v11

    move-object/from16 v3, v98

    move-object/from16 v98, v15

    move-object v15, v4

    move-object/from16 v4, v88

    move-object/from16 v88, v15

    goto :goto_23

    :cond_31
    const/16 v98, 0x0

    move-object/from16 v100, v3

    move-object/from16 v101, v11

    move-object/from16 v3, v98

    move-object/from16 v98, v15

    move-object/from16 v15, v93

    move-object/from16 v147, v88

    move-object/from16 v88, v4

    move-object/from16 v4, v147

    .line 118
    :goto_23
    invoke-interface {v7, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v102, v4

    const-string v4, "bandwidth"

    move/from16 v103, v5

    const/4 v5, -0x1

    .line 119
    invoke-static {v7, v4, v5}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 120
    invoke-interface {v7, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_32

    move-object/from16 v4, v66

    :cond_32
    move-object/from16 v147, v76

    move-object/from16 v76, v8

    move-object/from16 v8, v147

    .line 121
    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v104, v11

    if-nez v3, :cond_33

    move-object/from16 v3, v65

    move-object/from16 v65, v69

    move/from16 v147, v87

    move/from16 v87, v5

    move/from16 v5, v147

    goto :goto_24

    :cond_33
    move-object/from16 v147, v65

    move-object/from16 v65, v3

    move-object/from16 v3, v147

    move/from16 v148, v87

    move/from16 v87, v5

    move/from16 v5, v148

    .line 122
    :goto_24
    invoke-static {v7, v3, v5}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v105, v3

    move-object/from16 v3, v82

    move/from16 v82, v11

    move/from16 v147, v81

    move-object/from16 v81, v4

    move/from16 v4, v147

    .line 123
    invoke-static {v7, v3, v4}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v106, v3

    move/from16 v3, v80

    move/from16 v80, v11

    .line 124
    invoke-static {v7, v3}, Lt4/d;->l(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v11

    move/from16 v107, v11

    move-object/from16 v11, v75

    move-object/from16 v75, v12

    move/from16 v12, v77

    move-object/from16 v77, v9

    .line 125
    invoke-static {v7, v11, v12}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v108, v11

    .line 126
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v109, v11

    .line 127
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v110, v11

    .line 128
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v111, v11

    .line 129
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v112, v11

    .line 130
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v113, 0x0

    const/16 v114, 0x0

    move-object/from16 v118, v2

    move/from16 v119, v3

    move-object/from16 v115, v8

    move/from16 v116, v9

    move/from16 v120, v84

    move-wide/from16 v2, v90

    move-object/from16 v117, v92

    move-wide/from16 v8, v94

    .line 131
    :goto_25
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 132
    invoke-static {v7, v10}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_35

    if-nez v114, :cond_34

    .line 133
    invoke-virtual {v14, v7, v8, v9}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v8

    move-object/from16 v121, v0

    goto :goto_26

    :cond_34
    move-object/from16 v121, v0

    move/from16 v40, v114

    .line 134
    :goto_26
    invoke-virtual {v14, v7, v15, v13}, Lt4/d;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move/from16 v114, v40

    goto :goto_27

    :cond_35
    move-object/from16 v121, v0

    .line 135
    invoke-static {v7, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 136
    invoke-virtual/range {p0 .. p1}, Lt4/d;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v120

    goto :goto_27

    :cond_36
    move-object/from16 v0, v74

    .line 137
    invoke-static {v7, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_37

    move-object/from16 v74, v0

    .line 138
    move-object/from16 v0, v117

    check-cast v0, Lt4/k$e;

    invoke-virtual {v14, v7, v0}, Lt4/d;->s(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$e;)Lt4/k$e;

    move-result-object v117

    :goto_27
    move-object/from16 v124, v38

    move-object/from16 v145, v63

    move-wide/from16 v128, v67

    move-object/from16 v126, v70

    move-object/from16 v133, v73

    move-object/from16 v134, v74

    move-object/from16 v131, v76

    move-object/from16 v130, v77

    move-object/from16 v136, v78

    move/from16 v139, v80

    move/from16 v138, v82

    move/from16 v127, v87

    move-object/from16 v0, v96

    move-object/from16 v135, v101

    move/from16 v125, v103

    move-object/from16 v137, v104

    move-object/from16 v76, v105

    move/from16 v140, v107

    move/from16 v132, v116

    move-object/from16 v74, v121

    move/from16 v73, v4

    move/from16 v87, v5

    move-object/from16 v70, v6

    move-wide/from16 v67, v8

    move-object/from16 v77, v10

    move-object/from16 v80, v11

    move/from16 v82, v13

    move-object/from16 v78, v75

    move-object/from16 v121, v81

    move-object/from16 v105, v88

    move-object/from16 v5, v89

    move-object/from16 v9, v97

    move-object/from16 v88, v102

    move-object/from16 v81, v106

    move-object/from16 v4, v109

    move-object/from16 v6, v110

    move-object/from16 v8, v111

    move-object/from16 v10, v112

    move-object/from16 v102, v1

    move/from16 v75, v12

    move-object/from16 v89, v15

    move-object/from16 v106, v83

    move-object/from16 v1, v98

    move-object v15, v7

    move-object/from16 v83, v71

    move-object/from16 v71, v115

    move-wide/from16 v147, v43

    move-object/from16 v43, v37

    move-wide/from16 v37, v147

    move-object/from16 v44, v62

    move-object/from16 v62, v108

    move/from16 v149, v119

    move-object/from16 v119, v72

    move/from16 v72, v149

    goto/16 :goto_2b

    :cond_37
    move-object/from16 v74, v0

    move-object/from16 v0, v73

    .line 139
    invoke-static {v7, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_38

    .line 140
    invoke-virtual {v14, v7, v2, v3}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v122

    .line 141
    move-object/from16 v2, v117

    check-cast v2, Lt4/k$b;

    move-object/from16 v40, v0

    move/from16 v73, v4

    move-object/from16 v3, v62

    move-object/from16 v62, v74

    move-object/from16 v4, v89

    move-object/from16 v74, v121

    move-object/from16 v0, p0

    move-object/from16 v89, v15

    move-object/from16 v15, v102

    move-object/from16 v102, v1

    move-object/from16 v1, p1

    move/from16 v147, v119

    move-object/from16 v119, v72

    move/from16 v72, v147

    move-object/from16 v124, v38

    move-object/from16 v121, v81

    move-object/from16 v81, v106

    move-object/from16 v106, v83

    move-object/from16 v83, v71

    move-object/from16 v71, v105

    move-object/from16 v105, v88

    move-object/from16 v88, v15

    move-object v15, v4

    move-wide/from16 v147, v43

    move-object/from16 v44, v3

    move-object/from16 v43, v37

    move-wide/from16 v37, v147

    move-wide/from16 v3, v41

    move-object/from16 v126, v70

    move/from16 v127, v87

    move/from16 v125, v103

    move/from16 v87, v5

    move-object/from16 v70, v6

    move-wide/from16 v5, v52

    move-object/from16 v103, v15

    move-wide/from16 v128, v67

    move-object v15, v7

    move-wide/from16 v67, v8

    move-object/from16 v9, v76

    move-object/from16 v76, v71

    move-object/from16 v71, v115

    move-wide/from16 v7, v67

    move-object/from16 v131, v9

    move-object/from16 v130, v77

    move/from16 v132, v116

    move-object/from16 v77, v10

    move-object/from16 v147, v63

    move/from16 v63, v13

    move-object/from16 v13, v147

    move-wide/from16 v9, v122

    move-object/from16 v133, v40

    move-object/from16 v134, v62

    move-object/from16 v136, v78

    move/from16 v139, v80

    move/from16 v138, v82

    move-object/from16 v135, v101

    move-object/from16 v137, v104

    move/from16 v140, v107

    move-object/from16 v62, v108

    move-object/from16 v141, v109

    move-object/from16 v142, v110

    move-object/from16 v143, v111

    move-object/from16 v144, v112

    move-object/from16 v80, v11

    move-object/from16 v78, v75

    move/from16 v75, v12

    move-wide/from16 v11, v25

    .line 142
    invoke-virtual/range {v0 .. v12}, Lt4/d;->t(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$b;JJJJJ)Lt4/k$b;

    move-result-object v0

    move-object/from16 v117, v0

    move-object/from16 v145, v13

    move/from16 v82, v63

    move-object/from16 v0, v96

    move-object/from16 v9, v97

    move-object/from16 v1, v98

    move-object/from16 v11, v99

    move-object/from16 v5, v103

    move/from16 v7, v120

    move-wide/from16 v2, v122

    move-object/from16 v4, v141

    move-object/from16 v6, v142

    move-object/from16 v8, v143

    move-object/from16 v10, v144

    goto/16 :goto_2c

    :cond_38
    move-object/from16 v133, v0

    move/from16 v73, v4

    move-object/from16 v124, v38

    move-wide/from16 v128, v67

    move-object/from16 v126, v70

    move-object/from16 v134, v74

    move-object/from16 v131, v76

    move-object/from16 v130, v77

    move-object/from16 v136, v78

    move/from16 v139, v80

    move/from16 v138, v82

    move/from16 v127, v87

    move-object/from16 v135, v101

    move/from16 v125, v103

    move-object/from16 v137, v104

    move-object/from16 v76, v105

    move/from16 v140, v107

    move-object/from16 v141, v109

    move-object/from16 v142, v110

    move-object/from16 v143, v111

    move-object/from16 v144, v112

    move/from16 v132, v116

    move-object/from16 v74, v121

    move/from16 v87, v5

    move-object/from16 v70, v6

    move-wide/from16 v67, v8

    move-object/from16 v77, v10

    move-object/from16 v80, v11

    move-object/from16 v78, v75

    move-object/from16 v121, v81

    move-object/from16 v105, v88

    move-object/from16 v103, v89

    move-object/from16 v88, v102

    move-object/from16 v81, v106

    move-object/from16 v102, v1

    move/from16 v75, v12

    move-object/from16 v89, v15

    move-object/from16 v106, v83

    move-object v15, v7

    move-object/from16 v83, v71

    move-object/from16 v71, v115

    move-object/from16 v147, v63

    move/from16 v63, v13

    move-object/from16 v13, v147

    move-wide/from16 v148, v43

    move-object/from16 v43, v37

    move-wide/from16 v37, v148

    move-object/from16 v44, v62

    move-object/from16 v62, v108

    move/from16 v150, v119

    move-object/from16 v119, v72

    move/from16 v72, v150

    .line 143
    invoke-static {v15, v13}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 144
    invoke-virtual {v14, v15, v2, v3}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v107

    .line 145
    move-object/from16 v2, v117

    check-cast v2, Lt4/k$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v74

    move-wide/from16 v4, v41

    move-wide/from16 v6, v52

    move-wide/from16 v8, v67

    move-wide/from16 v10, v107

    move-object/from16 v145, v13

    move/from16 v82, v63

    move-wide/from16 v12, v25

    .line 146
    invoke-virtual/range {v0 .. v13}, Lt4/d;->u(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$c;Ljava/util/List;JJJJJ)Lt4/k$c;

    move-result-object v117

    move-object/from16 v0, v96

    move-wide/from16 v2, v107

    :cond_39
    move-object/from16 v4, v141

    goto :goto_28

    :cond_3a
    move-object/from16 v145, v13

    move/from16 v82, v63

    move-object/from16 v0, v96

    .line 147
    invoke-static {v15, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 148
    invoke-virtual/range {p0 .. p1}, Lt4/d;->h(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v1

    .line 149
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_3b

    .line 150
    move-object/from16 v113, v4

    check-cast v113, Ljava/lang/String;

    .line 151
    :cond_3b
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_39

    .line 152
    check-cast v1, Lr3/d$b;

    move-object/from16 v4, v141

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_28
    move-object/from16 v1, v98

    move-object/from16 v6, v142

    goto :goto_29

    :cond_3c
    move-object/from16 v1, v98

    move-object/from16 v4, v141

    .line 153
    invoke-static {v15, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 154
    invoke-static {v15, v1}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v5

    move-object/from16 v6, v142

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_29
    move-object/from16 v5, v103

    move-object/from16 v8, v143

    goto :goto_2a

    :cond_3d
    move-object/from16 v5, v103

    move-object/from16 v6, v142

    .line 155
    invoke-static {v15, v5}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 156
    invoke-static {v15, v5}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v7

    move-object/from16 v8, v143

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    move-object/from16 v9, v97

    move-object/from16 v10, v144

    goto :goto_2b

    :cond_3e
    move-object/from16 v9, v97

    move-object/from16 v8, v143

    .line 157
    invoke-static {v15, v9}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 158
    invoke-static {v15, v9}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v7

    move-object/from16 v10, v144

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3f
    move-object/from16 v10, v144

    .line 159
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2b
    move-object/from16 v11, v99

    move/from16 v7, v120

    .line 160
    :goto_2c
    invoke-static {v15, v11}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 161
    invoke-static/range {v121 .. v121}, Lm5/s;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 162
    invoke-static/range {v65 .. v65}, Lm5/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 163
    :cond_40
    invoke-static/range {v121 .. v121}, Lm5/s;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 164
    invoke-static/range {v65 .. v65}, Lm5/s;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    move-object/from16 v12, v121

    goto :goto_2f

    .line 165
    :cond_41
    invoke-static/range {v121 .. v121}, Lm5/s;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_2e

    .line 166
    :cond_42
    invoke-static/range {v121 .. v121}, Lm5/s;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    :goto_2e
    move-object/from16 v0, v121

    move-object v12, v0

    goto :goto_2f

    :cond_43
    const-string v0, "application/mp4"

    move-object/from16 v12, v121

    .line 167
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 168
    invoke-static/range {v65 .. v65}, Lm5/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/vtt"

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v0, "application/x-mp4-vtt"

    goto :goto_2f

    :cond_44
    const/4 v0, 0x0

    :cond_45
    :goto_2f
    const-string v1, "audio/eac3"

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ec+3"

    if-eqz v2, :cond_4a

    const/4 v0, 0x0

    .line 171
    :goto_30
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v5, "audio/eac3-joc"

    if-ge v0, v2, :cond_49

    .line 172
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/e;

    .line 173
    iget-object v9, v2, Lt4/e;->a:Ljava/lang/String;

    const-string v11, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    .line 174
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    iget-object v11, v2, Lt4/e;->b:Ljava/lang/String;

    const-string v13, "JOC"

    .line 175
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_47

    :cond_46
    const-string v11, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 176
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    iget-object v2, v2, Lt4/e;->b:Ljava/lang/String;

    .line 177
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_47
    move-object v0, v5

    goto :goto_31

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_49
    move-object v0, v1

    .line 178
    :goto_31
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_32

    :cond_4a
    move-object/from16 v3, v65

    :goto_32
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    :goto_33
    invoke-virtual/range {v100 .. v100}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v9, "urn:mpeg:dash:role:2011"

    if-ge v1, v5, :cond_4e

    move-object/from16 v15, v100

    .line 180
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt4/e;

    .line 181
    iget-object v11, v5, Lt4/e;->a:Ljava/lang/String;

    invoke-static {v9, v11}, Landroidx/activity/k;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 182
    iget-object v5, v5, Lt4/e;->b:Ljava/lang/String;

    if-nez v5, :cond_4b

    goto :goto_34

    :cond_4b
    const-string v9, "forced_subtitle"

    .line 183
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    const-string v9, "forced-subtitle"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    :goto_34
    const/4 v5, 0x0

    goto :goto_35

    :cond_4c
    const/4 v5, 0x2

    :goto_35
    or-int/2addr v2, v5

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v100, v15

    goto :goto_33

    :cond_4e
    move-object/from16 v15, v100

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 184
    :goto_36
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_50

    .line 185
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lt4/e;

    .line 186
    iget-object v13, v11, Lt4/e;->a:Ljava/lang/String;

    invoke-static {v9, v13}, Landroidx/activity/k;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4f

    .line 187
    iget-object v11, v11, Lt4/e;->b:Ljava/lang/String;

    invoke-virtual {v14, v11}, Lt4/d;->q(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v5, v11

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_50
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 188
    :goto_37
    invoke-virtual/range {v78 .. v78}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_5e

    move-object/from16 v13, v78

    .line 189
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v100, v15

    move-object/from16 v15, v40

    check-cast v15, Lt4/e;

    move-object/from16 v142, v6

    .line 190
    iget-object v6, v15, Lt4/e;->a:Ljava/lang/String;

    invoke-static {v9, v6}, Landroidx/activity/k;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 191
    iget-object v6, v15, Lt4/e;->b:Ljava/lang/String;

    invoke-virtual {v14, v6}, Lt4/d;->q(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v11, v6

    move-object/from16 v40, v9

    goto/16 :goto_3c

    .line 192
    :cond_51
    iget-object v6, v15, Lt4/e;->a:Ljava/lang/String;

    move-object/from16 v40, v9

    const-string v9, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    invoke-static {v9, v6}, Landroidx/activity/k;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 193
    iget-object v6, v15, Lt4/e;->b:Ljava/lang/String;

    if-nez v6, :cond_52

    goto :goto_3a

    .line 194
    :cond_52
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v15, 0x3

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_38

    :pswitch_1
    const-string v9, "6"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    goto :goto_38

    :cond_53
    const/4 v6, 0x4

    goto :goto_39

    :pswitch_2
    const-string v9, "4"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_38

    :cond_54
    move v6, v15

    goto :goto_39

    :pswitch_3
    const-string v9, "3"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    goto :goto_38

    :cond_55
    const/4 v6, 0x2

    goto :goto_39

    :pswitch_4
    const-string v9, "2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    goto :goto_38

    :cond_56
    const/4 v6, 0x1

    goto :goto_39

    :pswitch_5
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    goto :goto_38

    :cond_57
    const/4 v6, 0x0

    goto :goto_39

    :goto_38
    const/4 v6, -0x1

    :goto_39
    if-eqz v6, :cond_5c

    const/4 v9, 0x1

    if-eq v6, v9, :cond_5b

    const/4 v9, 0x2

    if-eq v6, v9, :cond_5a

    if-eq v6, v15, :cond_59

    const/4 v9, 0x4

    if-eq v6, v9, :cond_58

    :goto_3a
    const/4 v6, 0x0

    goto :goto_3b

    :cond_58
    const/4 v6, 0x1

    goto :goto_3b

    :cond_59
    const/16 v6, 0x8

    goto :goto_3b

    :cond_5a
    const/4 v6, 0x4

    goto :goto_3b

    :cond_5b
    const/16 v6, 0x800

    goto :goto_3b

    :cond_5c
    const/16 v6, 0x200

    :goto_3b
    or-int/2addr v6, v11

    move v11, v6

    :cond_5d
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v78, v13

    move-object/from16 v9, v40

    move-object/from16 v15, v100

    move-object/from16 v6, v142

    goto/16 :goto_37

    :cond_5e
    move-object/from16 v142, v6

    move-object/from16 v100, v15

    move-object/from16 v13, v78

    or-int v1, v5, v11

    .line 195
    invoke-virtual {v14, v8}, Lt4/d;->r(Ljava/util/List;)I

    move-result v5

    or-int/2addr v1, v5

    .line 196
    invoke-virtual {v14, v10}, Lt4/d;->r(Ljava/util/List;)I

    move-result v5

    or-int/2addr v1, v5

    .line 197
    new-instance v5, Ln3/s0$a;

    invoke-direct {v5}, Ln3/s0$a;-><init>()V

    move-object/from16 v6, v137

    .line 198
    iput-object v6, v5, Ln3/s0$a;->a:Ljava/lang/String;

    .line 199
    iput-object v12, v5, Ln3/s0$a;->j:Ljava/lang/String;

    .line 200
    iput-object v0, v5, Ln3/s0$a;->k:Ljava/lang/String;

    .line 201
    iput-object v3, v5, Ln3/s0$a;->h:Ljava/lang/String;

    move/from16 v15, v127

    .line 202
    iput v15, v5, Ln3/s0$a;->g:I

    .line 203
    iput v2, v5, Ln3/s0$a;->d:I

    .line 204
    iput v1, v5, Ln3/s0$a;->e:I

    move-object/from16 v1, v131

    .line 205
    iput-object v1, v5, Ln3/s0$a;->c:Ljava/lang/String;

    .line 206
    invoke-static {v0}, Lm5/s;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    move/from16 v2, v138

    .line 207
    iput v2, v5, Ln3/s0$a;->p:I

    move/from16 v3, v139

    .line 208
    iput v3, v5, Ln3/s0$a;->q:I

    move/from16 v0, v140

    .line 209
    iput v0, v5, Ln3/s0$a;->r:F

    goto :goto_3d

    :cond_5f
    move/from16 v2, v138

    move/from16 v3, v139

    .line 210
    invoke-static {v0}, Lm5/s;->k(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 211
    iput v7, v5, Ln3/s0$a;->x:I

    move/from16 v0, v132

    .line 212
    iput v0, v5, Ln3/s0$a;->y:I

    :goto_3d
    const/4 v0, 0x1

    goto/16 :goto_42

    .line 213
    :cond_60
    invoke-static {v0}, Lm5/s;->m(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    const-string v2, "application/cea-608"

    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "MpdParser"

    if-eqz v2, :cond_63

    const/4 v0, 0x0

    .line 215
    :goto_3e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_66

    .line 216
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/e;

    .line 217
    iget-object v6, v2, Lt4/e;->a:Ljava/lang/String;

    const-string v7, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    iget-object v6, v2, Lt4/e;->b:Ljava/lang/String;

    if-eqz v6, :cond_62

    .line 218
    sget-object v7, Lt4/d;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 219
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_61

    const/4 v0, 0x1

    .line 220
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    goto :goto_41

    :cond_61
    const-string v6, "Unable to parse CEA-608 channel number from: "

    .line 221
    invoke-static {v6}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    iget-object v2, v2, Lt4/e;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_63
    const-string v2, "application/cea-708"

    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x0

    .line 224
    :goto_3f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_66

    .line 225
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/e;

    .line 226
    iget-object v6, v2, Lt4/e;->a:Ljava/lang/String;

    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    iget-object v6, v2, Lt4/e;->b:Ljava/lang/String;

    if-eqz v6, :cond_65

    .line 227
    sget-object v7, Lt4/d;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 228
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_64

    const/4 v0, 0x1

    .line 229
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_40

    :cond_64
    const-string v6, "Unable to parse CEA-708 service block number from: "

    .line 230
    invoke-static {v6}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 231
    iget-object v2, v2, Lt4/e;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_66
    const/4 v0, 0x1

    const/4 v2, -0x1

    :goto_40
    move/from16 v147, v2

    move v2, v0

    move/from16 v0, v147

    .line 232
    :goto_41
    iput v0, v5, Ln3/s0$a;->C:I

    move v0, v2

    goto :goto_42

    :cond_67
    const/4 v6, 0x1

    .line 233
    invoke-static {v0}, Lm5/s;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 234
    iput v2, v5, Ln3/s0$a;->p:I

    .line 235
    iput v3, v5, Ln3/s0$a;->q:I

    :cond_68
    move v0, v6

    .line 236
    :goto_42
    new-instance v2, Ln3/s0;

    invoke-direct {v2, v5}, Ln3/s0;-><init>(Ln3/s0$a;)V

    if-eqz v117, :cond_69

    move-object/from16 v111, v117

    goto :goto_43

    .line 237
    :cond_69
    new-instance v3, Lt4/k$e;

    invoke-direct {v3}, Lt4/k$e;-><init>()V

    move-object/from16 v111, v3

    .line 238
    :goto_43
    new-instance v3, Lt4/d$a;

    .line 239
    invoke-virtual/range {v80 .. v80}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    move-object/from16 v110, v80

    goto :goto_44

    :cond_6a
    move-object/from16 v110, v89

    :goto_44
    move-object/from16 v108, v3

    move-object/from16 v109, v2

    move-object/from16 v112, v113

    move-object/from16 v113, v4

    move-object/from16 v114, v142

    move-object/from16 v115, v8

    move-object/from16 v116, v10

    invoke-direct/range {v108 .. v116}, Lt4/d$a;-><init>(Ln3/s0;Ljava/util/List;Lt4/k;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 240
    iget-object v2, v2, Ln3/s0;->s:Ljava/lang/String;

    .line 241
    invoke-static {v2}, Lm5/s;->i(Ljava/lang/String;)I

    move-result v5

    const/4 v2, -0x1

    move/from16 v4, v125

    if-ne v4, v2, :cond_6b

    goto :goto_47

    :cond_6b
    if-ne v5, v2, :cond_6c

    goto :goto_46

    :cond_6c
    if-ne v4, v5, :cond_6d

    move v2, v0

    goto :goto_45

    :cond_6d
    const/4 v2, 0x0

    .line 242
    :goto_45
    invoke-static {v2}, Lm5/a;->e(Z)V

    :goto_46
    move v5, v4

    :goto_47
    move-object/from16 v2, v106

    .line 243
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p1

    move/from16 v40, v0

    move-object v8, v1

    move-object/from16 v106, v2

    move-object/from16 v80, v13

    move-object/from16 v0, v79

    move-object/from16 v2, v83

    move-object/from16 v1, v136

    move-object/from16 v146, v145

    goto/16 :goto_4c

    :cond_6e
    move-object/from16 v142, v6

    move-object/from16 v13, v78

    move-object/from16 v12, v121

    move/from16 v78, v125

    move/from16 v15, v127

    move-object/from16 v63, v131

    move/from16 v99, v132

    move-object/from16 v6, v137

    move/from16 v96, v138

    move/from16 v97, v139

    move/from16 v98, v140

    const/16 v40, 0x1

    move-object/from16 v109, v4

    move-object/from16 v104, v6

    move/from16 v120, v7

    move-object/from16 v111, v8

    move-object/from16 v112, v10

    move-object/from16 v108, v62

    move-object/from16 v6, v70

    move-object/from16 v115, v71

    move/from16 v4, v73

    move-object/from16 v10, v77

    move/from16 v103, v78

    move-object/from16 v71, v83

    move/from16 v107, v98

    move/from16 v116, v99

    move-object/from16 v83, v106

    move-object/from16 v70, v126

    move-object/from16 v77, v130

    move-object/from16 v73, v133

    move-object/from16 v101, v135

    move-object/from16 v78, v136

    move-object/from16 v110, v142

    move-object/from16 v7, p1

    move-object/from16 v98, v1

    move-object/from16 v99, v11

    move-object/from16 v62, v44

    move-object/from16 v11, v80

    move-object/from16 v106, v81

    move/from16 v80, v97

    move-object/from16 v1, v102

    move-object/from16 v97, v9

    move-object/from16 v81, v12

    move-wide/from16 v8, v67

    move/from16 v12, v75

    move-object/from16 v102, v88

    move-object/from16 v88, v105

    move-wide/from16 v67, v128

    move-object/from16 v75, v13

    move-object/from16 v105, v76

    move/from16 v13, v82

    move/from16 v82, v96

    move-object/from16 v96, v0

    move-object/from16 v76, v63

    move-object/from16 v0, v74

    move-object/from16 v74, v134

    move-object/from16 v63, v145

    move-object/from16 v147, v89

    move-object/from16 v89, v5

    move/from16 v5, v87

    move/from16 v87, v15

    move-object/from16 v15, v147

    move-wide/from16 v148, v37

    move-object/from16 v37, v43

    move-wide/from16 v43, v148

    move-object/from16 v38, v124

    move-object/from16 v150, v119

    move/from16 v119, v72

    move-object/from16 v72, v150

    goto/16 :goto_25

    :cond_6f
    move-object/from16 v118, v2

    move-object/from16 v100, v3

    move-object/from16 v105, v4

    move-object/from16 v130, v9

    move-object/from16 v135, v11

    move-object v1, v15

    move-object/from16 v124, v38

    move-object/from16 v145, v63

    move-wide/from16 v128, v67

    move-object/from16 v126, v70

    move-object/from16 v119, v72

    move-object/from16 v133, v73

    move-object/from16 v3, v74

    move-object/from16 v136, v78

    move/from16 v72, v80

    move/from16 v73, v81

    move-object/from16 v81, v82

    move-object/from16 v106, v83

    move-object/from16 v74, v0

    move/from16 v78, v5

    move-object/from16 v70, v6

    move-object/from16 v63, v8

    move/from16 v82, v13

    move-object/from16 v83, v71

    move-object/from16 v71, v76

    move-object v13, v12

    move-object/from16 v76, v65

    move/from16 v147, v77

    move-object/from16 v77, v10

    move-wide/from16 v148, v43

    move-object/from16 v43, v37

    move-wide/from16 v37, v148

    move-object/from16 v44, v62

    move-object/from16 v62, v75

    move/from16 v75, v147

    .line 244
    invoke-static {v7, v3}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 245
    move-object/from16 v0, v92

    check-cast v0, Lt4/k$e;

    invoke-virtual {v14, v7, v0}, Lt4/d;->s(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$e;)Lt4/k$e;

    move-result-object v0

    move-object/from16 v134, v3

    move-object v15, v7

    goto :goto_48

    :cond_70
    move-object/from16 v15, v133

    .line 246
    invoke-static {v7, v15}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    move-wide/from16 v4, v90

    .line 247
    invoke-virtual {v14, v7, v4, v5}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v90

    .line 248
    move-object/from16 v2, v92

    check-cast v2, Lt4/k$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v3

    move-wide/from16 v3, v41

    move-wide/from16 v5, v52

    move-object v12, v7

    move-wide/from16 v7, v94

    move-wide/from16 v9, v90

    move-object/from16 v134, v11

    move-object/from16 v133, v15

    move-object v15, v12

    move-wide/from16 v11, v25

    .line 249
    invoke-virtual/range {v0 .. v12}, Lt4/d;->t(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$b;JJJJJ)Lt4/k$b;

    move-result-object v0

    :goto_48
    move-object/from16 v92, v0

    move-object/from16 v80, v13

    move-object/from16 v146, v145

    goto :goto_49

    :cond_71
    move-object/from16 v134, v3

    move-object/from16 v133, v15

    move-wide/from16 v4, v90

    move-object/from16 v12, v145

    move-object v15, v7

    .line 250
    invoke-static {v15, v12}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 251
    invoke-virtual {v14, v15, v4, v5}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v67

    .line 252
    move-object/from16 v2, v92

    check-cast v2, Lt4/k$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v74

    move-wide/from16 v4, v41

    move-wide/from16 v6, v52

    move-wide/from16 v8, v94

    move-wide/from16 v10, v67

    move-object/from16 v146, v12

    move-object/from16 v80, v13

    move-wide/from16 v12, v25

    .line 253
    invoke-virtual/range {v0 .. v13}, Lt4/d;->u(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$c;Ljava/util/List;JJJJJ)Lt4/k$c;

    move-result-object v0

    move-object/from16 v92, v0

    move-wide/from16 v90, v67

    :goto_49
    move-object/from16 v1, v136

    goto :goto_4b

    :cond_72
    move-object/from16 v146, v12

    move-object/from16 v80, v13

    .line 254
    invoke-static {v15, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 255
    invoke-static {v15, v1}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v0

    move-object/from16 v1, v136

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_73
    move-object/from16 v1, v136

    const-string v0, "Label"

    .line 256
    invoke-static {v15, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 257
    invoke-static {v15, v0}, Lt4/d;->w(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v79, v0

    goto :goto_4a

    .line 258
    :cond_74
    invoke-static/range {p1 .. p1}, Lm5/h0;->f(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 259
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_75
    :goto_4a
    move-wide/from16 v90, v4

    :goto_4b
    move-object v7, v15

    move-object/from16 v8, v63

    move/from16 v5, v78

    move-object/from16 v0, v79

    move-object/from16 v2, v83

    .line 260
    :goto_4c
    invoke-static {v7, v2}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {v106 .. v106}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 262
    :goto_4d
    invoke-virtual/range {v106 .. v106}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_84

    move-object/from16 v4, v106

    .line 263
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt4/d$a;

    .line 264
    iget-object v7, v6, Lt4/d$a;->a:Ln3/s0;

    .line 265
    new-instance v8, Ln3/s0$a;

    invoke-direct {v8, v7}, Ln3/s0$a;-><init>(Ln3/s0;)V

    if-eqz v0, :cond_76

    .line 266
    iput-object v0, v8, Ln3/s0$a;->b:Ljava/lang/String;

    .line 267
    :cond_76
    iget-object v7, v6, Lt4/d$a;->d:Ljava/lang/String;

    if-nez v7, :cond_77

    move-object/from16 v7, v85

    .line 268
    :cond_77
    iget-object v9, v6, Lt4/d$a;->e:Ljava/util/ArrayList;

    move-object/from16 v10, v135

    .line 269
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_81

    const/4 v11, 0x0

    .line 271
    :goto_4e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_79

    .line 272
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr3/d$b;

    .line 273
    sget-object v13, Ln3/i;->c:Ljava/util/UUID;

    iget-object v15, v12, Lr3/d$b;->i:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_78

    iget-object v12, v12, Lr3/d$b;->j:Ljava/lang/String;

    if-eqz v12, :cond_78

    .line 274
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4f

    :cond_78
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    :cond_79
    const/4 v12, 0x0

    :goto_4f
    if-nez v12, :cond_7b

    :cond_7a
    move-object/from16 v63, v0

    move-object/from16 v106, v4

    goto :goto_52

    :cond_7b
    const/4 v11, 0x0

    .line 275
    :goto_50
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_7a

    .line 276
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lr3/d$b;

    .line 277
    sget-object v15, Ln3/i;->b:Ljava/util/UUID;

    move-object/from16 v63, v0

    iget-object v0, v13, Lr3/d$b;->i:Ljava/util/UUID;

    invoke-virtual {v15, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, v13, Lr3/d$b;->j:Ljava/lang/String;

    if-nez v0, :cond_7c

    .line 278
    new-instance v0, Lr3/d$b;

    sget-object v15, Ln3/i;->c:Ljava/util/UUID;

    move-object/from16 v106, v4

    iget-object v4, v13, Lr3/d$b;->k:Ljava/lang/String;

    iget-object v13, v13, Lr3/d$b;->l:[B

    invoke-direct {v0, v15, v12, v4, v13}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v9, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :cond_7c
    move-object/from16 v106, v4

    :goto_51
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v63

    move-object/from16 v4, v106

    goto :goto_50

    .line 279
    :goto_52
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_7d
    :goto_53
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_80

    .line 280
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/d$b;

    .line 281
    invoke-virtual {v4}, Lr3/d$b;->a()Z

    move-result v11

    if-nez v11, :cond_7d

    const/4 v11, 0x0

    .line 282
    :goto_54
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_7d

    .line 283
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr3/d$b;

    .line 284
    invoke-virtual {v12}, Lr3/d$b;->a()Z

    move-result v13

    if-eqz v13, :cond_7e

    invoke-virtual {v4}, Lr3/d$b;->a()Z

    move-result v13

    if-nez v13, :cond_7e

    iget-object v13, v4, Lr3/d$b;->i:Ljava/util/UUID;

    invoke-virtual {v12, v13}, Lr3/d$b;->b(Ljava/util/UUID;)Z

    move-result v12

    if-eqz v12, :cond_7e

    move/from16 v12, v40

    goto :goto_55

    :cond_7e
    const/4 v12, 0x0

    :goto_55
    if-eqz v12, :cond_7f

    .line 285
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_53

    :cond_7f
    add-int/lit8 v11, v11, 0x1

    goto :goto_54

    .line 286
    :cond_80
    new-instance v0, Lr3/d;

    const/4 v4, 0x0

    new-array v11, v4, [Lr3/d$b;

    .line 287
    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lr3/d$b;

    invoke-direct {v0, v7, v4, v9}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    .line 288
    iput-object v0, v8, Ln3/s0$a;->n:Lr3/d;

    goto :goto_56

    :cond_81
    move-object/from16 v63, v0

    move-object/from16 v106, v4

    .line 289
    :goto_56
    iget-object v0, v6, Lt4/d$a;->f:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-wide v11, v6, Lt4/d$a;->g:J

    .line 292
    new-instance v4, Ln3/s0;

    invoke-direct {v4, v8}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 293
    iget-object v7, v6, Lt4/d$a;->b:Lu6/v;

    iget-object v8, v6, Lt4/d$a;->c:Lt4/k;

    iget-object v9, v6, Lt4/d$a;->h:Ljava/util/List;

    iget-object v6, v6, Lt4/d$a;->i:Ljava/util/List;

    .line 294
    instance-of v13, v8, Lt4/k$e;

    if-eqz v13, :cond_82

    .line 295
    new-instance v13, Lt4/j$b;

    move-object/from16 v94, v8

    check-cast v94, Lt4/k$e;

    move-object/from16 v89, v13

    move-wide/from16 v90, v11

    move-object/from16 v92, v4

    move-object/from16 v93, v7

    move-object/from16 v95, v0

    move-object/from16 v96, v9

    move-object/from16 v97, v6

    invoke-direct/range {v89 .. v97}, Lt4/j$b;-><init>(JLn3/s0;Ljava/util/List;Lt4/k$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_57

    .line 296
    :cond_82
    instance-of v13, v8, Lt4/k$a;

    if-eqz v13, :cond_83

    .line 297
    new-instance v13, Lt4/j$a;

    move-object/from16 v94, v8

    check-cast v94, Lt4/k$a;

    move-object/from16 v89, v13

    move-wide/from16 v90, v11

    move-object/from16 v92, v4

    move-object/from16 v93, v7

    move-object/from16 v95, v0

    move-object/from16 v96, v9

    move-object/from16 v97, v6

    invoke-direct/range {v89 .. v97}, Lt4/j$a;-><init>(JLn3/s0;Ljava/util/List;Lt4/k$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 298
    :goto_57
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v135, v10

    move-object/from16 v0, v63

    goto/16 :goto_4d

    .line 299
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_84
    new-instance v0, Lt4/a;

    move-object/from16 v63, v0

    move/from16 v65, v5

    move-object/from16 v66, v2

    move-object/from16 v67, v80

    move-object/from16 v68, v118

    move-object/from16 v69, v74

    invoke-direct/range {v63 .. v69}, Lt4/a;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v15, v44

    .line 301
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p1

    move-object/from16 v14, v50

    goto/16 :goto_62

    :cond_85
    move-object/from16 v63, v0

    move-object/from16 v78, v1

    move-object/from16 v79, v63

    move-object/from16 v6, v70

    move-object/from16 v89, v74

    move-object/from16 v65, v76

    move-object/from16 v10, v77

    move-object/from16 v12, v80

    move/from16 v13, v82

    move-object/from16 v15, v93

    move-wide/from16 v0, v94

    move-object/from16 v3, v100

    move-object/from16 v4, v105

    move-object/from16 v83, v106

    move-object/from16 v70, v126

    move-wide/from16 v67, v128

    move-object/from16 v9, v130

    move-object/from16 v74, v134

    move-object/from16 v11, v135

    move-object/from16 v63, v146

    move-object/from16 v76, v71

    move/from16 v80, v72

    move/from16 v77, v75

    move-object/from16 v82, v81

    move-object/from16 v72, v119

    move-object/from16 v71, v2

    move-object/from16 v75, v62

    move/from16 v81, v73

    move-object/from16 v2, v118

    move-object/from16 v73, v133

    move-object/from16 v62, v44

    move-wide/from16 v147, v37

    move-object/from16 v37, v43

    move-wide/from16 v43, v147

    move-object/from16 v38, v124

    goto/16 :goto_1b

    :cond_86
    move-object/from16 v88, v1

    move-object/from16 v119, v2

    move-object/from16 v126, v5

    move-object/from16 v70, v6

    move-wide/from16 v128, v7

    move-object/from16 v146, v9

    move-object/from16 v77, v10

    move-object/from16 v133, v11

    move-object/from16 v134, v12

    move/from16 v82, v13

    move-object/from16 v58, v15

    move-object/from16 v124, v38

    move-object v15, v0

    move-wide/from16 v147, v43

    move-object/from16 v43, v37

    move-wide/from16 v37, v147

    const-string v0, "EventStream"

    move-object/from16 v13, p1

    move-object/from16 v11, v39

    .line 302
    invoke-static {v13, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    const/4 v1, 0x0

    move-object/from16 v12, v43

    .line 303
    invoke-interface {v13, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_87

    move-object v2, v3

    :cond_87
    move-object/from16 v9, v126

    .line 304
    invoke-interface {v13, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_88

    goto :goto_58

    :cond_88
    move-object v3, v4

    :goto_58
    const-wide/16 v4, 0x1

    const-string v6, "timescale"

    .line 305
    invoke-static {v13, v6, v4, v5}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 306
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 308
    :goto_59
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "Event"

    .line 309
    invoke-static {v13, v8}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8d

    move-object/from16 v126, v9

    const-wide/16 v9, 0x0

    move-object/from16 v44, v15

    move-object/from16 v15, v88

    .line 310
    invoke-static {v13, v15, v9, v10}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 311
    invoke-static {v13, v11, v14, v15}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v62

    const-string v14, "presentationTime"

    move-object/from16 v39, v11

    move-object/from16 v43, v12

    const-wide/16 v11, 0x0

    .line 312
    invoke-static {v13, v14, v11, v12}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v64, 0x3e8

    move-wide/from16 v66, v4

    .line 313
    invoke-static/range {v62 .. v67}, Lm5/g0;->R(JJJ)J

    move-result-wide v14

    const-wide/32 v64, 0xf4240

    move-wide/from16 v62, v11

    .line 314
    invoke-static/range {v62 .. v67}, Lm5/g0;->R(JJJ)J

    move-result-wide v11

    move-wide/from16 v71, v4

    const-string v4, "messageData"

    .line 315
    invoke-interface {v13, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_89

    goto :goto_5a

    :cond_89
    move-object v1, v4

    .line 316
    :goto_5a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 317
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 318
    sget-object v5, Lt6/c;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 319
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 320
    :goto_5b
    invoke-static {v13, v8}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 321
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_5c

    .line 322
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_5c

    .line 323
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_5c

    .line 324
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_5c

    .line 325
    :pswitch_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_5c

    .line 326
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_5c

    .line 327
    :pswitch_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_5c

    .line 328
    :pswitch_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_5c
    move-object/from16 v73, v0

    move-object/from16 v74, v6

    move-object/from16 v62, v8

    goto :goto_5e

    .line 329
    :pswitch_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v62, v8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8a
    move-object/from16 v73, v0

    move-object/from16 v74, v6

    goto :goto_5e

    :pswitch_e
    move-object/from16 v62, v8

    .line 330
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    .line 331
    :goto_5d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v5, v8, :cond_8a

    .line 332
    invoke-interface {v13, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v73, v0

    invoke-interface {v13, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v74, v6

    invoke-interface {v13, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-interface {v4, v8, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v73

    move-object/from16 v6, v74

    goto :goto_5d

    :pswitch_f
    move-object/from16 v73, v0

    move-object/from16 v74, v6

    move-object/from16 v62, v8

    .line 334
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_5e

    :pswitch_10
    move-object/from16 v73, v0

    move-object/from16 v74, v6

    move-object/from16 v62, v8

    .line 335
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 336
    :goto_5e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-object/from16 v8, v62

    move-object/from16 v0, v73

    move-object/from16 v6, v74

    goto/16 :goto_5b

    :cond_8b
    move-object/from16 v73, v0

    move-object/from16 v74, v6

    .line 337
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 338
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 339
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-nez v1, :cond_8c

    goto :goto_5f

    .line 340
    :cond_8c
    invoke-static {v1}, Lm5/g0;->F(Ljava/lang/String;)[B

    move-result-object v0

    :goto_5f
    move-object/from16 v69, v0

    .line 341
    new-instance v0, Lh4/a;

    move-object/from16 v62, v0

    move-object/from16 v63, v2

    move-object/from16 v64, v3

    move-wide/from16 v65, v14

    move-wide/from16 v67, v9

    invoke-direct/range {v62 .. v69}, Lh4/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 342
    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object/from16 v1, v74

    .line 343
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v73

    goto :goto_60

    :cond_8d
    move-object/from16 v73, v0

    move-wide/from16 v71, v4

    move-object v1, v6

    move-object/from16 v126, v9

    move-object/from16 v39, v11

    move-object/from16 v43, v12

    move-object/from16 v44, v15

    .line 344
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 345
    :goto_60
    invoke-static {v13, v0}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 346
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lh4/a;

    const/4 v5, 0x0

    .line 348
    :goto_61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8e

    .line 349
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 350
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v0, v5

    .line 351
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lh4/a;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 352
    :cond_8e
    new-instance v1, Lt4/f;

    invoke-direct {v1, v2, v3, v0, v4}, Lt4/f;-><init>(Ljava/lang/String;Ljava/lang/String;[J[Lh4/a;)V

    move-object/from16 v14, v50

    .line 353
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_62
    move-object/from16 v15, p0

    move-object/from16 v62, v126

    move-object/from16 v147, v43

    move-object/from16 v43, v39

    move-object/from16 v39, v147

    goto/16 :goto_63

    :cond_8f
    move-object/from16 v14, v50

    const/4 v4, 0x0

    move-object v6, v1

    move-object v1, v4

    move-object/from16 v11, v39

    move-object/from16 v12, v43

    move-object/from16 v15, v44

    move-wide/from16 v4, v71

    move-object/from16 v9, v126

    move-object/from16 v14, p0

    goto/16 :goto_59

    :cond_90
    move-object/from16 v39, v11

    move-object/from16 v44, v15

    move-object/from16 v14, v50

    move-object/from16 v4, v134

    .line 354
    invoke-static {v13, v4}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v0, 0x0

    move-object/from16 v15, p0

    .line 355
    invoke-virtual {v15, v13, v0}, Lt4/d;->s(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$e;)Lt4/k$e;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v49, v0

    move-object v3, v13

    move-object v15, v3

    move-object/from16 v0, v45

    move-wide/from16 v11, v59

    move-object/from16 v4, v124

    move-object/from16 v62, v126

    move-object/from16 v147, v43

    move-object/from16 v43, v39

    move-object/from16 v39, v147

    goto/16 :goto_65

    :cond_91
    move-object/from16 v15, p0

    move-object/from16 v0, v133

    .line 356
    invoke-static {v13, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 357
    invoke-virtual {v15, v13, v0, v1}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v49

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, v41

    move-wide/from16 v5, v52

    move-wide/from16 v7, v59

    move-object/from16 v62, v126

    move-wide/from16 v9, v49

    move-object/from16 v147, v43

    move-object/from16 v43, v39

    move-object/from16 v39, v147

    move-wide/from16 v11, v25

    .line 358
    invoke-virtual/range {v0 .. v12}, Lt4/d;->t(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$b;JJJJJ)Lt4/k$b;

    move-result-object v0

    move-wide/from16 v54, v49

    move-object/from16 v49, v0

    :goto_63
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-object v15, v13

    goto :goto_64

    :cond_92
    move-object/from16 v62, v126

    move-object/from16 v0, v146

    move-object/from16 v147, v43

    move-object/from16 v43, v39

    move-object/from16 v39, v147

    .line 359
    invoke-static {v13, v0}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 360
    invoke-virtual {v15, v13, v10, v11}, Lt4/d;->f(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v54

    const/4 v2, 0x0

    .line 361
    sget-object v0, Lu6/v;->i:Lu6/v$b;

    .line 362
    sget-object v3, Lu6/p0;->l:Lu6/p0;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v41

    move-wide/from16 v6, v52

    move-wide/from16 v8, v59

    move-wide/from16 v49, v10

    move-wide/from16 v10, v54

    move-object v15, v13

    move-wide/from16 v12, v25

    .line 363
    invoke-virtual/range {v0 .. v13}, Lt4/d;->u(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$c;Ljava/util/List;JJJJJ)Lt4/k$c;

    move-result-object v0

    move-wide/from16 v147, v49

    move-object/from16 v49, v0

    move-wide/from16 v0, v147

    goto :goto_64

    :cond_93
    move-object v15, v13

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-string v2, "AssetIdentifier"

    .line 364
    invoke-static {v15, v2}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 365
    invoke-static {v15, v2}, Lt4/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lt4/e;

    move-result-object v45

    goto :goto_64

    .line 366
    :cond_94
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_64
    move-wide v1, v0

    move-object v3, v15

    move-object/from16 v0, v45

    move-wide/from16 v11, v59

    move-object/from16 v4, v124

    .line 367
    :goto_65
    invoke-static {v3, v4}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 368
    new-instance v3, Lt4/g;

    move-object/from16 v45, v3

    move-object/from16 v49, v44

    move-object/from16 v50, v14

    move-object/from16 v51, v0

    invoke-direct/range {v45 .. v51}, Lt4/g;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lt4/e;)V

    .line 369
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 370
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 371
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lt4/g;

    .line 372
    iget-wide v4, v3, Lt4/g;->b:J

    cmp-long v4, v4, v1

    if-nez v4, :cond_96

    if-eqz v22, :cond_95

    const/4 v0, 0x0

    move/from16 v32, v40

    move-object/from16 v5, v57

    move-wide/from16 v7, v128

    goto :goto_67

    :cond_95
    const-string v0, "Unable to determine start of period "

    .line 373
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 374
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 375
    invoke-static {v0, v1}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_96
    const/4 v4, 0x0

    .line 376
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_97

    move-wide v7, v1

    goto :goto_66

    .line 377
    :cond_97
    iget-wide v7, v3, Lt4/g;->b:J

    add-long/2addr v7, v5

    :goto_66
    move-object/from16 v5, v57

    .line 378
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    :goto_67
    move-wide v2, v1

    move-object v1, v0

    move-object v0, v15

    goto :goto_68

    :cond_98
    move-object/from16 v45, v0

    move-object/from16 v50, v14

    move-object/from16 v0, v44

    move-object/from16 v15, v58

    move-object/from16 v9, v61

    move-object/from16 v5, v62

    move-object/from16 v6, v70

    move-object/from16 v10, v77

    move/from16 v13, v82

    move-object/from16 v1, v88

    move-object/from16 v2, v119

    move-wide/from16 v7, v128

    move-object/from16 v14, p0

    move-wide/from16 v147, v37

    move-object/from16 v38, v4

    move-object/from16 v37, v39

    move-object/from16 v39, v43

    move-wide/from16 v43, v147

    goto/16 :goto_19

    :cond_99
    move-wide/from16 v128, v7

    move-object/from16 v61, v9

    move-object/from16 v56, v11

    move-object v5, v12

    move/from16 v82, v13

    move-wide/from16 v37, v43

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 379
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    move-wide/from16 v7, v128

    const/16 v40, 0x1

    :goto_68
    move-wide v8, v7

    move-wide v6, v2

    move-wide/from16 v3, v37

    move-object v2, v1

    move/from16 v1, v40

    :goto_69
    const-string v10, "MPD"

    .line 380
    invoke-static {v0, v10}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9e

    cmp-long v0, v18, v6

    if-nez v0, :cond_9c

    cmp-long v0, v8, v6

    if-eqz v0, :cond_9a

    move-wide/from16 v18, v8

    goto :goto_6a

    :cond_9a
    if-eqz v22, :cond_9b

    goto :goto_6a

    :cond_9b
    const-string v0, "Unable to determine duration of static manifest."

    .line 381
    invoke-static {v0, v2}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 382
    :cond_9c
    :goto_6a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 383
    new-instance v0, Lt4/c;

    move-object v15, v0

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v36

    move-object/from16 v34, v35

    move-object/from16 v35, v5

    invoke-direct/range {v15 .. v35}, Lt4/c;-><init>(JJJZJJJJLt4/h;Lfe/h;Lt4/l;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0

    :cond_9d
    const-string v0, "No periods found."

    .line 384
    invoke-static {v0, v2}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_9e
    move-object/from16 v14, p0

    move-object v12, v5

    move-wide v7, v8

    move-object/from16 v11, v56

    move-object/from16 v9, v61

    move/from16 v13, v82

    move v5, v1

    goto/16 :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final p(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lt4/i;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "-"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 5
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 6
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v3, p2

    move-wide v5, v0

    .line 7
    new-instance p1, Lt4/i;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lt4/i;-><init>(Ljava/lang/String;JJ)V

    return-object p1
.end method

.method public final q(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "supplementary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "emergency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "commentary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "caption"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "sign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "main"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "dub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "forced-subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v2, "alternate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v1, v4

    goto :goto_0

    :sswitch_9
    const-string v2, "forced_subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v1, v5

    goto :goto_0

    :sswitch_b
    const-string v2, "description"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    move v1, v6

    goto :goto_0

    :sswitch_c
    const-string v2, "subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v4

    :pswitch_1
    const/16 p1, 0x20

    return p1

    :pswitch_2
    return v3

    :pswitch_3
    const/16 p1, 0x40

    return p1

    :pswitch_4
    const/16 p1, 0x100

    return p1

    :pswitch_5
    return v6

    :pswitch_6
    const/16 p1, 0x10

    return p1

    :pswitch_7
    return v5

    :pswitch_8
    const/16 p1, 0x800

    return p1

    :pswitch_9
    const/16 p1, 0x200

    return p1

    :pswitch_a
    const/16 p1, 0x80

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt4/e;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/e;

    .line 3
    iget-object v2, v2, Lt4/e;->a:Ljava/lang/String;

    const-string v3, "http://dashif.org/guidelines/trickmode"

    invoke-static {v3, v2}, Landroidx/activity/k;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v1, v1, 0x4000

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final s(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$e;)Lt4/k$e;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 1
    iget-wide v4, v1, Lt4/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-wide v6, v1, Lt4/k;->c:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 3
    invoke-static {v0, v8, v6, v7}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 4
    iget-wide v6, v1, Lt4/k$e;->d:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 5
    iget-wide v4, v1, Lt4/k$e;->e:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 6
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 7
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 8
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 9
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 10
    iget-object v8, v1, Lt4/k;->a:Lt4/i;

    .line 11
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 12
    invoke-static {v0, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "sourceURL"

    const-string v2, "range"

    move-object/from16 v3, p0

    .line 13
    invoke-virtual {v3, v0, v1, v2}, Lt4/d;->p(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lt4/i;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    :cond_6
    move-object/from16 v3, p0

    .line 14
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    .line 15
    invoke-static {v0, v1}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    new-instance v0, Lt4/k$e;

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lt4/k$e;-><init>(Lt4/i;JJJJ)V

    return-object v0
.end method

.method public final t(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$b;JJJJJ)Lt4/k$b;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-wide/16 v0, 0x1

    if-eqz v8, :cond_0

    .line 1
    iget-wide v2, v8, Lt4/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    invoke-static {v7, v4, v2, v3}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v8, :cond_1

    .line 2
    iget-wide v2, v8, Lt4/k;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 3
    invoke-static {v7, v4, v2, v3}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v8, :cond_2

    .line 4
    iget-wide v2, v8, Lt4/k$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v7, v4, v2, v3}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    if-eqz v8, :cond_3

    .line 5
    iget-wide v0, v8, Lt4/k$a;->d:J

    :cond_3
    const-string v2, "startNumber"

    invoke-static {v7, v2, v0, v1}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 6
    invoke-static/range {p7 .. p10}, Lt4/d;->c(JJ)J

    move-result-wide v18

    const/4 v0, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v17

    .line 7
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 8
    invoke-static {v7, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "sourceURL"

    const-string v2, "range"

    .line 9
    invoke-virtual {v6, v7, v1, v2}, Lt4/d;->p(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lt4/i;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_3

    :cond_5
    const-string v1, "SegmentTimeline"

    .line 10
    invoke-static {v7, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide/from16 v4, p5

    .line 11
    invoke-virtual/range {v0 .. v5}, Lt4/d;->v(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v1, "SegmentURL"

    .line 12
    invoke-static {v7, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v17, :cond_7

    .line 13
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    move-object/from16 v1, v17

    const-string v2, "media"

    const-string v3, "mediaRange"

    .line 14
    invoke-virtual {v6, v7, v2, v3}, Lt4/d;->p(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lt4/i;

    move-result-object v2

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    goto :goto_3

    .line 16
    :cond_8
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v1, "SegmentList"

    .line 17
    invoke-static {v7, v1}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v8, :cond_c

    if-eqz v20, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    iget-object v1, v8, Lt4/k;->a:Lt4/i;

    move-object/from16 v20, v1

    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    .line 19
    :cond_a
    iget-object v0, v8, Lt4/k$a;->f:Ljava/util/List;

    :goto_5
    if-eqz v17, :cond_b

    goto :goto_6

    .line 20
    :cond_b
    iget-object v1, v8, Lt4/k$b;->j:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v8, v20

    move-object/from16 v20, v1

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v8, v20

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    .line 21
    :goto_7
    new-instance v0, Lt4/k$b;

    move-object v7, v0

    .line 22
    invoke-static/range {p11 .. p12}, Lm5/g0;->L(J)J

    move-result-wide v21

    .line 23
    invoke-static/range {p3 .. p4}, Lm5/g0;->L(J)J

    move-result-wide v23

    invoke-direct/range {v7 .. v24}, Lt4/k$b;-><init>(Lt4/i;JJJJLjava/util/List;JLjava/util/List;JJ)V

    return-object v0
.end method

.method public final u(Lorg/xmlpull/v1/XmlPullParser;Lt4/k$c;Ljava/util/List;JJJJJ)Lt4/k$c;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lt4/k$c;",
            "Ljava/util/List<",
            "Lt4/e;",
            ">;JJJJJ)",
            "Lt4/k$c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-wide/16 v0, 0x1

    if-eqz v8, :cond_0

    .line 1
    iget-wide v2, v8, Lt4/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    invoke-static {v7, v4, v2, v3}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v8, :cond_1

    .line 2
    iget-wide v2, v8, Lt4/k;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 3
    invoke-static {v7, v4, v2, v3}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v8, :cond_2

    .line 4
    iget-wide v2, v8, Lt4/k$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v7, v4, v2, v3}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    if-eqz v8, :cond_3

    .line 5
    iget-wide v0, v8, Lt4/k$a;->d:J

    :cond_3
    const-string v2, "startNumber"

    invoke-static {v7, v2, v0, v1}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const/4 v0, 0x0

    .line 6
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    move-object/from16 v1, p3

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/e;

    .line 8
    iget-object v3, v2, Lt4/e;->a:Ljava/lang/String;

    const-string v4, "http://dashif.org/guidelines/last-segment-number"

    invoke-static {v4, v3}, Landroidx/activity/k;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    iget-object v0, v2, Lt4/e;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v0, -0x1

    :goto_4
    move-wide v15, v0

    .line 10
    invoke-static/range {p8 .. p11}, Lt4/d;->c(JJ)J

    move-result-wide v20

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    .line 11
    iget-object v1, v8, Lt4/k$c;->k:Lt4/m;

    goto :goto_5

    :cond_6
    move-object v1, v0

    :goto_5
    const-string v2, "media"

    invoke-virtual {v6, v7, v2, v1}, Lt4/d;->x(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lt4/m;)Lt4/m;

    move-result-object v23

    if-eqz v8, :cond_7

    .line 12
    iget-object v1, v8, Lt4/k$c;->j:Lt4/m;

    goto :goto_6

    :cond_7
    move-object v1, v0

    :goto_6
    const-string v2, "initialization"

    .line 13
    invoke-virtual {v6, v7, v2, v1}, Lt4/d;->x(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lt4/m;)Lt4/m;

    move-result-object v22

    move-object/from16 v19, v0

    .line 14
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 15
    invoke-static {v7, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "sourceURL"

    const-string v2, "range"

    .line 16
    invoke-virtual {v6, v7, v1, v2}, Lt4/d;->p(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lt4/i;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_7

    :cond_9
    const-string v1, "SegmentTimeline"

    .line 17
    invoke-static {v7, v1}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide/from16 v4, p6

    .line 18
    invoke-virtual/range {v0 .. v5}, Lt4/d;->v(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 19
    :cond_a
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    const-string v1, "SegmentTemplate"

    .line 20
    invoke-static {v7, v1}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v8, :cond_d

    if-eqz v19, :cond_b

    goto :goto_8

    .line 21
    :cond_b
    iget-object v1, v8, Lt4/k;->a:Lt4/i;

    move-object/from16 v19, v1

    :goto_8
    if-eqz v0, :cond_c

    goto :goto_9

    .line 22
    :cond_c
    iget-object v0, v8, Lt4/k$a;->f:Ljava/util/List;

    :cond_d
    :goto_9
    move-object/from16 v8, v19

    move-object/from16 v19, v0

    .line 23
    new-instance v0, Lt4/k$c;

    move-object v7, v0

    .line 24
    invoke-static/range {p12 .. p13}, Lm5/g0;->L(J)J

    move-result-wide v24

    .line 25
    invoke-static/range {p4 .. p5}, Lm5/g0;->L(J)J

    move-result-wide v26

    invoke-direct/range {v7 .. v27}, Lt4/k$c;-><init>(Lt4/i;JJJJJLjava/util/List;JLt4/m;Lt4/m;JJ)V

    return-object v0
.end method

.method public final v(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "JJ)",
            "Ljava/util/List<",
            "Lt4/k$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move v1, v11

    move v7, v1

    move-wide v5, v12

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "S"

    .line 3
    invoke-static {v0, v2}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "t"

    .line 4
    invoke-static {v0, v2, v12, v13}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    if-eqz v1, :cond_1

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v8, v14

    .line 5
    invoke-virtual/range {v1 .. v9}, Lt4/d;->b(Ljava/util/List;JJIJ)J

    move-result-wide v3

    :cond_1
    cmp-long v1, v14, v12

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v14, v3

    :goto_0
    const-string v1, "d"

    .line 6
    invoke-static {v0, v1, v12, v13}, Lt4/d;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "r"

    .line 7
    invoke-static {v0, v3, v11}, Lt4/d;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-wide v5, v1

    move v7, v3

    move v1, v4

    move-wide v3, v14

    goto :goto_1

    .line 8
    :cond_3
    invoke-static/range {p1 .. p1}, Lt4/d;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const-string v2, "SegmentTimeline"

    .line 9
    invoke-static {v0, v2}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    const-wide/16 v18, 0x3e8

    move-wide/from16 v14, p4

    move-wide/from16 v16, p2

    .line 10
    invoke-static/range {v14 .. v19}, Lm5/g0;->R(JJJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-wide v7, v8

    .line 11
    invoke-virtual/range {v0 .. v8}, Lt4/d;->b(Ljava/util/List;JJIJ)J

    :cond_4
    return-object v10
.end method

.method public final x(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lt4/m;)Lt4/m;
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x4

    new-array v0, p3, [I

    new-array v1, p3, [Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, p2, v3

    move v4, v3

    move v5, v4

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_9

    const-string v6, "$"

    .line 3
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v5

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    if-eq v7, v4, :cond_1

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v5

    move v4, v7

    goto :goto_0

    :cond_1
    const-string v7, "$$"

    .line 7
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v5

    .line 9
    invoke-static {v7, v8, v6}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    aput-object v6, p2, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 11
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 12
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "RepresentationID"

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    .line 14
    aput v9, v0, v5

    goto/16 :goto_4

    :cond_3
    const-string v7, "%0"

    .line 15
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_5

    .line 16
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "d"

    .line 17
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "X"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 18
    invoke-static {v8, v9}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 19
    :cond_4
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    const-string v8, "%01d"

    .line 20
    :goto_1
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v7, 0x2

    const/4 v9, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v10, "Bandwidth"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_1
    const-string v10, "Time"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_2
    const-string v10, "Number"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 21
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid template: "

    .line 22
    invoke-static {p3, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/4 v4, 0x3

    .line 24
    aput v4, v0, v5

    goto :goto_3

    .line 25
    :pswitch_1
    aput p3, v0, v5

    goto :goto_3

    .line 26
    :pswitch_2
    aput v7, v0, v5

    .line 27
    :goto_3
    aput-object v8, v1, v5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 28
    aput-object v2, p2, v5

    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_0

    .line 29
    :cond_9
    new-instance p1, Lt4/m;

    invoke-direct {p1, p2, v0, v1, v5}, Lt4/m;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object p1

    :cond_a
    return-object p3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_2
        0x27c6ed -> :sswitch_1
        0x246e091 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
