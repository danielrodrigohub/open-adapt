.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# static fields
.field private static final QUOTED_STRING_DELIMITERS:Lde/g;

.field private static final TOKEN_DELIMITERS:Lde/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lde/g;->k:Lde/g$a;

    const-string v1, "\"\\"

    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lde/g;

    const-string v1, "\t ,="

    .line 2
    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lde/g;

    return-void
.end method

.method public static final hasBody(Lokhttp3/Response;)Z
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result p0

    return p0
.end method

.method public static final parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerName"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Lde/c;

    invoke-direct {v3}, Lde/c;-><init>()V

    invoke-virtual {p0, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/c;->F0(Ljava/lang/String;)Lde/c;

    .line 5
    :try_start_0
    invoke-static {v3, v0}, Lokhttp3/internal/http/HttpHeaders;->readChallengeHeader(Lde/c;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 6
    sget-object v4, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v4}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v4

    const/4 v5, 0x5

    const-string v6, "Unable to parse challenge"

    invoke-virtual {v4, v6, v5, v3}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final promisesBody(Lokhttp3/Response;)Z
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 3
    :cond_2
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->headersContentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v4, "Transfer-Encoding"

    .line 4
    invoke-static {p0, v4, v2, v0, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-static {v0, p0}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method private static final readChallengeHeader(Lde/c;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/c;",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    .line 1
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lde/c;)Z

    .line 2
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lde/c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lde/c;)Z

    move-result v2

    .line 4
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lde/c;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lde/c;->z()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p0, Lokhttp3/Challenge;

    sget-object v0, Lgd/q;->h:Lgd/q;

    invoke-direct {p0, v1, v0}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/16 v4, 0x3d

    int-to-byte v4, v4

    .line 7
    invoke-static {p0, v4}, Lokhttp3/internal/_UtilCommonKt;->skipAll(Lde/c;B)I

    move-result v5

    .line 8
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lde/c;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v2, :cond_b

    if-nez v6, :cond_3

    .line 9
    invoke-virtual {p0}, Lde/c;->z()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 10
    :cond_3
    new-instance v2, Lokhttp3/Challenge;

    .line 11
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    const/4 v6, 0x0

    if-ltz v5, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    if-eqz v8, :cond_a

    if-eqz v5, :cond_9

    if-eq v5, v7, :cond_8

    .line 12
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_9

    if-eq v8, v7, :cond_6

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    mul-int/2addr v8, v5

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    new-instance v8, Lvd/e;

    invoke-direct {v8, v7, v5}, Lvd/e;-><init>(II)V

    invoke-virtual {v8}, Lvd/c;->n()Lgd/w;

    move-result-object v5

    :goto_3
    move-object v7, v5

    check-cast v7, Lvd/d;

    .line 15
    iget-boolean v7, v7, Lvd/d;->j:Z

    if-eqz v7, :cond_5

    .line 16
    invoke-virtual {v5}, Lgd/w;->a()I

    .line 17
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{\n                    va\u2026tring()\n                }"

    .line 19
    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 20
    :cond_6
    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    new-array v7, v5, [C

    :goto_4
    if-ge v6, v5, :cond_7

    aput-char v4, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    .line 21
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_9
    const-string v4, ""

    .line 22
    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "singletonMap<String, Str\u2026ek + \"=\".repeat(eqCount))"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {v2, v1, v3}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Count \'n\' must be non-negative, but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    invoke-static {p0, v4}, Lokhttp3/internal/_UtilCommonKt;->skipAll(Lde/c;B)I

    move-result v6

    add-int/2addr v6, v5

    :goto_6
    if-nez v3, :cond_c

    .line 27
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lde/c;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lde/c;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 29
    invoke-static {p0, v4}, Lokhttp3/internal/_UtilCommonKt;->skipAll(Lde/c;B)I

    move-result v5

    move v6, v5

    :cond_c
    if-eqz v6, :cond_13

    if-le v6, v7, :cond_d

    return-void

    .line 30
    :cond_d
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lde/c;)Z

    move-result v5

    if-eqz v5, :cond_e

    return-void

    :cond_e
    const/16 v5, 0x22

    int-to-byte v5, v5

    .line 31
    invoke-static {p0, v5}, Lokhttp3/internal/http/HttpHeaders;->startsWith(Lde/c;B)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readQuotedString(Lde/c;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 32
    :cond_f
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lde/c;)Ljava/lang/String;

    move-result-object v5

    :goto_7
    if-nez v5, :cond_10

    return-void

    .line 33
    :cond_10
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_11

    return-void

    .line 34
    :cond_11
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lde/c;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p0}, Lde/c;->z()Z

    move-result v3

    if-nez v3, :cond_12

    return-void

    :cond_12
    move-object v3, v0

    goto :goto_6

    .line 35
    :cond_13
    new-instance v4, Lokhttp3/Challenge;

    invoke-direct {v4, v1, v2}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto/16 :goto_1
.end method

.method private static final readQuotedString(Lde/c;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lde/c;->readByte()B

    move-result v0

    const/16 v1, 0x22

    int-to-byte v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    .line 3
    :goto_1
    sget-object v2, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lde/g;

    invoke-virtual {p0, v2}, Lde/c;->S(Lde/g;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return-object v5

    .line 4
    :cond_1
    invoke-virtual {p0, v2, v3}, Lde/c;->h0(J)B

    move-result v4

    if-ne v4, v1, :cond_2

    .line 5
    invoke-virtual {v0, p0, v2, v3}, Lde/c;->write(Lde/c;J)V

    .line 6
    invoke-virtual {p0}, Lde/c;->readByte()B

    .line 7
    invoke-virtual {v0}, Lde/c;->p0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    iget-wide v6, p0, Lde/c;->i:J

    const-wide/16 v8, 0x1

    add-long v10, v2, v8

    cmp-long v4, v6, v10

    if-nez v4, :cond_3

    return-object v5

    .line 9
    :cond_3
    invoke-virtual {v0, p0, v2, v3}, Lde/c;->write(Lde/c;J)V

    .line 10
    invoke-virtual {p0}, Lde/c;->readByte()B

    .line 11
    invoke-virtual {v0, p0, v8, v9}, Lde/c;->write(Lde/c;J)V

    goto :goto_1

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final readToken(Lde/c;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lde/g;

    invoke-virtual {p0, v0}, Lde/c;->S(Lde/g;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2
    iget-wide v0, p0, Lde/c;->i:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0, v0, v1}, Lde/c;->q0(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Cookie$Companion;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p0, p1, p2}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method

.method private static final skipCommasAndWhitespace(Lde/c;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lde/c;->z()Z

    move-result v3

    if-nez v3, :cond_3

    const-wide/16 v3, 0x0

    .line 2
    invoke-virtual {p0, v3, v4}, Lde/c;->h0(J)B

    move-result v3

    const/16 v4, 0x2c

    int-to-byte v4, v4

    if-ne v3, v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lde/c;->readByte()B

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v4, 0x20

    int-to-byte v4, v4

    if-ne v3, v4, :cond_1

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_1
    const/16 v4, 0x9

    int-to-byte v4, v4

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_2
    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {p0}, Lde/c;->readByte()B

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static final startsWith(Lde/c;B)Z
    .locals 2

    invoke-virtual {p0}, Lde/c;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lde/c;->h0(J)B

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
