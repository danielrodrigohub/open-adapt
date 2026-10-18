.class public final Lcom/google/android/exoplayer2/source/rtsp/g$d;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b:I

    return-void
.end method

.method public static b(BLjava/io/DataInputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    .line 2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    const/4 v3, 0x1

    aput-byte p0, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    aget-byte p0, v1, v2

    const/16 v4, 0xd

    if-ne p0, v4, :cond_1

    aget-byte p0, v1, v3

    const/16 v4, 0xa

    if-eq p0, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    aget-byte p0, v1, v3

    aput-byte p0, v1, v2

    .line 5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    aput-byte p0, v1, v3

    aget-byte p0, v1, v3

    .line 6
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a([B)Lu6/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-byte v0, p1, v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_0

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 2
    new-instance v0, Ljava/lang/String;

    array-length v4, p1

    sub-int/2addr v4, v2

    sget-object v5, Lcom/google/android/exoplayer2/source/rtsp/g;->n:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b:I

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    .line 5
    sget-object p1, Lcom/google/android/exoplayer2/source/rtsp/h;->a:Ljava/util/regex/Pattern;

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/exoplayer2/source/rtsp/h;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-wide v1, v4

    :goto_1
    cmp-long p1, v1, v4

    if-eqz p1, :cond_2

    .line 11
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->c:J

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 13
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->c:J

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    const/4 p1, 0x3

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b:I

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    iput v3, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b:I

    .line 18
    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->c:J

    return-object p1

    :catch_0
    move-exception p1

    .line 19
    invoke-static {v0, p1}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 21
    :cond_5
    sget-object p1, Lcom/google/android/exoplayer2/source/rtsp/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/google/android/exoplayer2/source/rtsp/h;->b:Ljava/util/regex/Pattern;

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    if-eqz v1, :cond_8

    .line 23
    iput v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b:I

    :cond_8
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method
