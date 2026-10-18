.class public final Lj4/a;
.super Landroidx/fragment/app/r;
.source "IcyDecoder.java"


# static fields
.field public static final j:Ljava/util/regex/Pattern;


# instance fields
.field public final h:Ljava/nio/charset/CharsetDecoder;

.field public final i:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj4/a;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    .line 2
    sget-object v0, Lt6/c;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lj4/a;->h:Ljava/nio/charset/CharsetDecoder;

    .line 3
    sget-object v0, Lt6/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lj4/a;->i:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method


# virtual methods
.method public final g(Lf4/d;Ljava/nio/ByteBuffer;)Lf4/a;
    .locals 7

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lj4/a;->h:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lj4/a;->h:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lj4/a;->h:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    throw p1

    .line 7
    :catch_0
    iget-object v0, p0, Lj4/a;->h:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    :try_start_1
    iget-object v0, p0, Lj4/a;->i:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    iget-object v1, p0, Lj4/a;->i:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 12
    iget-object v0, p0, Lj4/a;->i:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 14
    throw p1

    .line 15
    :catch_1
    iget-object v0, p0, Lj4/a;->i:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 16
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v0, p1

    .line 17
    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 18
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lf4/a;

    new-array p2, p2, [Lf4/a$b;

    new-instance v3, Lj4/c;

    invoke-direct {v3, v1, p1, p1}, Lj4/c;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v3, p2, v2

    invoke-direct {v0, p2}, Lf4/a;-><init>([Lf4/a$b;)V

    return-object v0

    .line 20
    :cond_0
    sget-object v3, Lj4/a;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v3, p1

    move v4, v2

    .line 21
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 23
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_3

    .line 24
    invoke-static {v4}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "streamurl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "streamtitle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    move-object p1, v5

    goto :goto_2

    :cond_2
    move-object v3, v5

    .line 25
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto :goto_1

    .line 26
    :cond_4
    new-instance v0, Lf4/a;

    new-array p2, p2, [Lf4/a$b;

    new-instance v4, Lj4/c;

    invoke-direct {v4, v1, p1, v3}, Lj4/c;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v4, p2, v2

    invoke-direct {v0, p2}, Lf4/a;-><init>([Lf4/a$b;)V

    return-object v0
.end method
