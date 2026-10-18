.class public final Ll5/r;
.super Ll5/f;
.source "DefaultHttpDataSource.java"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/r$b;,
        Ll5/r$a;
    }
.end annotation


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ll5/a0;

.field public final j:Ll5/a0;

.field public final k:Z

.field public l:Lt6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ll5/m;

.field public n:Ljava/net/HttpURLConnection;

.field public o:Ljava/io/InputStream;

.field public p:Z

.field public q:I

.field public r:J

.field public s:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILl5/a0;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ll5/f;-><init>(Z)V

    .line 2
    iput-object p1, p0, Ll5/r;->h:Ljava/lang/String;

    .line 3
    iput p2, p0, Ll5/r;->f:I

    .line 4
    iput p3, p0, Ll5/r;->g:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Ll5/r;->e:Z

    .line 6
    iput-object p4, p0, Ll5/r;->i:Ll5/a0;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Ll5/r;->l:Lt6/i;

    .line 8
    new-instance p2, Ll5/a0;

    invoke-direct {p2}, Ll5/a0;-><init>()V

    iput-object p2, p0, Ll5/r;->j:Ll5/a0;

    .line 9
    iput-boolean p1, p0, Ll5/r;->k:Z

    return-void
.end method

.method public static D(Ljava/net/HttpURLConnection;J)V
    .locals 2

    if-eqz p0, :cond_4

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 9
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/net/URL;Ljava/lang/String;Ll5/m;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll5/x;
        }
    .end annotation

    const/16 p3, 0x7d1

    if-eqz p2, :cond_4

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v1, "https"

    .line 3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ll5/x;

    const-string v0, "Unsupported protocol redirect: "

    .line 5
    invoke-static {v0, p2}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2, p3}, Ll5/x;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-boolean v1, p0, Ll5/r;->e:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Ll5/x;

    const-string v1, "Disallowed cross-protocol redirect ("

    .line 9
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ll5/x;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ll5/x;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p3, v0}, Ll5/x;-><init>(Ljava/io/IOException;II)V

    throw p2

    .line 12
    :cond_4
    new-instance p1, Ll5/x;

    const-string p2, "Null location redirect"

    invoke-direct {p1, p2, p3}, Ll5/x;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final B(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/URLConnectionInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 2
    iget v0, p0, Ll5/r;->f:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 3
    iget v0, p0, Ll5/r;->g:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v1, p0, Ll5/r;->i:Ll5/a0;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ll5/a0;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_0
    iget-object v1, p0, Ll5/r;->j:Ll5/a0;

    invoke-virtual {v1}, Ll5/a0;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 8
    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object p10, Ll5/b0;->a:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x0

    cmp-long p10, p4, v0

    const-wide/16 v0, -0x1

    if-nez p10, :cond_2

    cmp-long p10, p6, v0

    if-nez p10, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    .line 12
    :cond_2
    new-instance p10, Ljava/lang/StringBuilder;

    invoke-direct {p10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    .line 13
    invoke-virtual {p10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    .line 15
    invoke-virtual {p10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, p6, v0

    if-eqz v0, :cond_3

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    .line 16
    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    :cond_3
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_4

    const-string p5, "Range"

    .line 18
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_4
    iget-object p4, p0, Ll5/r;->h:Ljava/lang/String;

    if-eqz p4, :cond_5

    const-string p5, "User-Agent"

    .line 20
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p8, :cond_6

    const-string p4, "gzip"

    goto :goto_2

    :cond_6
    const-string p4, "identity"

    :goto_2
    const-string p5, "Accept-Encoding"

    .line 21
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_7

    const/4 p4, 0x1

    goto :goto_3

    :cond_7
    const/4 p4, 0x0

    .line 23
    :goto_3
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 24
    invoke-static {p2}, Ll5/m;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 25
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 26
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 27
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 28
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 29
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    .line 30
    :cond_8
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    :goto_4
    return-object p1
.end method

.method public final C(Ll5/m;)Ljava/net/HttpURLConnection;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    new-instance v1, Ljava/net/URL;

    iget-object v0, v12, Ll5/m;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget v2, v12, Ll5/m;->c:I

    .line 3
    iget-object v3, v12, Ll5/m;->d:[B

    .line 4
    iget-wide v13, v12, Ll5/m;->f:J

    .line 5
    iget-wide v9, v12, Ll5/m;->g:J

    .line 6
    iget v0, v12, Ll5/m;->i:I

    const/4 v15, 0x1

    and-int/2addr v0, v15

    const/16 v16, 0x0

    if-ne v0, v15, :cond_0

    move/from16 v17, v15

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    .line 7
    :goto_0
    iget-boolean v0, v11, Ll5/r;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, v11, Ll5/r;->k:Z

    if-nez v0, :cond_1

    const/4 v15, 0x1

    .line 8
    iget-object v12, v12, Ll5/m;->e:Ljava/util/Map;

    move-object/from16 v0, p0

    move-wide v4, v13

    move-wide v6, v9

    move/from16 v8, v17

    move v9, v15

    move-object v10, v12

    invoke-virtual/range {v0 .. v10}, Ll5/r;->B(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v8, v1

    move v6, v2

    move-object/from16 v18, v3

    move/from16 v0, v16

    :goto_1
    add-int/lit8 v7, v0, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    const/16 v19, 0x0

    .line 9
    iget-object v4, v12, Ll5/m;->e:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v6

    move-object/from16 v3, v18

    move-object/from16 v20, v4

    move-wide v4, v13

    move-wide/from16 v21, v13

    move v13, v6

    move v14, v7

    move-wide v6, v9

    move-object/from16 v23, v8

    move/from16 v8, v17

    move-wide/from16 v24, v9

    move/from16 v9, v19

    move-object/from16 v10, v20

    .line 10
    invoke-virtual/range {v0 .. v10}, Ll5/r;->B(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v2, "Location"

    .line 12
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12f

    const/16 v4, 0x12d

    const/16 v5, 0x12c

    const/16 v6, 0x12e

    if-eq v13, v15, :cond_2

    const/4 v7, 0x3

    if-ne v13, v7, :cond_3

    :cond_2
    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_8

    if-eq v1, v6, :cond_8

    if-eq v1, v3, :cond_8

    const/16 v7, 0x133

    if-eq v1, v7, :cond_8

    const/16 v7, 0x134

    if-ne v1, v7, :cond_3

    goto :goto_4

    :cond_3
    const/4 v7, 0x2

    if-ne v13, v7, :cond_7

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v6, :cond_4

    if-ne v1, v3, :cond_7

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 14
    iget-boolean v0, v11, Ll5/r;->k:Z

    if-eqz v0, :cond_5

    if-ne v1, v6, :cond_5

    move v0, v15

    goto :goto_2

    :cond_5
    move/from16 v0, v16

    :goto_2
    if-nez v0, :cond_6

    const/16 v18, 0x0

    move v6, v15

    goto :goto_3

    :cond_6
    move v6, v13

    :goto_3
    move-object/from16 v1, v23

    .line 15
    invoke-virtual {v11, v1, v2, v12}, Ll5/r;->A(Ljava/net/URL;Ljava/lang/String;Ll5/m;)Ljava/net/URL;

    move-result-object v0

    move-object v8, v0

    goto :goto_5

    :cond_7
    return-object v0

    :cond_8
    :goto_4
    move-object/from16 v1, v23

    .line 16
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 17
    invoke-virtual {v11, v1, v2, v12}, Ll5/r;->A(Ljava/net/URL;Ljava/lang/String;Ll5/m;)Ljava/net/URL;

    move-result-object v0

    move-object v8, v0

    move v6, v13

    :goto_5
    move v0, v14

    move-wide/from16 v13, v21

    move-wide/from16 v9, v24

    goto/16 :goto_1

    :cond_9
    move v14, v7

    .line 18
    new-instance v0, Ll5/x;

    new-instance v1, Ljava/net/NoRouteToHostException;

    const-string v2, "Too many redirects: "

    .line 19
    invoke-static {v2, v14}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v2, v15}, Ll5/x;-><init>(Ljava/io/IOException;II)V

    throw v0
.end method

.method public final E(JLl5/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x1000

    new-array v2, p3, [B

    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_3

    int-to-long v3, p3

    .line 1
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 2
    iget-object v4, p0, Ll5/r;->o:Ljava/io/InputStream;

    sget v5, Lm5/g0;->a:I

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    int-to-long v4, v3

    sub-long/2addr p1, v4

    .line 4
    invoke-virtual {p0, v3}, Ll5/f;->v(I)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ll5/x;

    invoke-direct {p1}, Ll5/x;-><init>()V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ll5/x;

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 p3, 0x7d0

    invoke-direct {p1, p2, p3, v5}, Ll5/x;-><init>(Ljava/io/IOException;II)V

    throw p1

    :cond_3
    return-void
.end method

.method public final b([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll5/x;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    iget-wide v0, p0, Ll5/r;->r:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 2
    iget-wide v4, p0, Ll5/r;->s:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    .line 3
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 4
    :cond_2
    iget-object v0, p0, Ll5/r;->o:Ljava/io/InputStream;

    sget v1, Lm5/g0;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    :goto_0
    move p1, v3

    goto :goto_1

    .line 5
    :cond_3
    iget-wide p2, p0, Ll5/r;->s:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ll5/r;->s:J

    .line 6
    invoke-virtual {p0, p1}, Ll5/f;->v(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Ll5/r;->m:Ll5/m;

    .line 8
    sget p3, Lm5/g0;->a:I

    const/4 p3, 0x2

    .line 9
    invoke-static {p1, p2, p3}, Ll5/x;->b(Ljava/io/IOException;Ll5/m;I)Ll5/x;

    move-result-object p1

    throw p1
.end method

.method public final close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll5/x;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Ll5/r;->o:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 2
    iget-wide v3, p0, Ll5/r;->r:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Ll5/r;->s:J

    sub-long v5, v3, v5

    .line 3
    :goto_0
    iget-object v3, p0, Ll5/r;->n:Ljava/net/HttpURLConnection;

    invoke-static {v3, v5, v6}, Ll5/r;->D(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    :try_start_2
    new-instance v3, Ll5/x;

    .line 6
    sget v4, Lm5/g0;->a:I

    const/16 v4, 0x7d0

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Ll5/x;-><init>(Ljava/io/IOException;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    :goto_1
    iput-object v1, p0, Ll5/r;->o:Ljava/io/InputStream;

    .line 8
    invoke-virtual {p0}, Ll5/r;->z()V

    .line 9
    iget-boolean v1, p0, Ll5/r;->p:Z

    if-eqz v1, :cond_2

    .line 10
    iput-boolean v0, p0, Ll5/r;->p:Z

    .line 11
    invoke-virtual {p0}, Ll5/f;->w()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    .line 12
    iput-object v1, p0, Ll5/r;->o:Ljava/io/InputStream;

    .line 13
    invoke-virtual {p0}, Ll5/r;->z()V

    .line 14
    iget-boolean v1, p0, Ll5/r;->p:Z

    if-eqz v1, :cond_3

    .line 15
    iput-boolean v0, p0, Ll5/r;->p:Z

    .line 16
    invoke-virtual {p0}, Ll5/f;->w()V

    .line 17
    :cond_3
    throw v2
.end method

.method public final h()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/r;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lu6/q0;->n:Lu6/q0;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ll5/r$b;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Ll5/r$b;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final l(Ll5/m;)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll5/x;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iput-object v2, v1, Ll5/r;->m:Ll5/m;

    const-wide/16 v3, 0x0

    .line 2
    iput-wide v3, v1, Ll5/r;->s:J

    .line 3
    iput-wide v3, v1, Ll5/r;->r:J

    .line 4
    invoke-virtual/range {p0 .. p1}, Ll5/f;->x(Ll5/m;)V

    const/4 v5, 0x1

    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Ll5/r;->C(Ll5/m;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Ll5/r;->n:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    iput v6, v1, Ll5/r;->q:I

    .line 7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 8
    iget v6, v1, Ll5/r;->q:I

    const-string v7, "Content-Range"

    const/16 v8, 0xc8

    const-wide/16 v9, -0x1

    if-lt v6, v8, :cond_c

    const/16 v11, 0x12b

    if-le v6, v11, :cond_0

    goto/16 :goto_6

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v11, v1, Ll5/r;->l:Lt6/i;

    if-eqz v11, :cond_2

    invoke-interface {v11, v6}, Lt6/i;->apply(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ll5/r;->z()V

    .line 12
    new-instance v0, Ll5/y;

    invoke-direct {v0, v6, v2}, Ll5/y;-><init>(Ljava/lang/String;Ll5/m;)V

    throw v0

    .line 13
    :cond_2
    :goto_0
    iget v6, v1, Ll5/r;->q:I

    if-ne v6, v8, :cond_3

    iget-wide v11, v2, Ll5/m;->f:J

    cmp-long v6, v11, v3

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move-wide v11, v3

    :goto_1
    const-string v6, "Content-Encoding"

    .line 14
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "gzip"

    .line 15
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 16
    iget-wide v13, v2, Ll5/m;->g:J

    cmp-long v8, v13, v9

    if-eqz v8, :cond_4

    .line 17
    iput-wide v13, v1, Ll5/r;->r:J

    goto/16 :goto_5

    :cond_4
    const-string v8, "Content-Length"

    .line 18
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 20
    sget-object v13, Ll5/b0;->a:Ljava/util/regex/Pattern;

    .line 21
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "]"

    const-string v15, "HttpUtil"

    if-nez v13, :cond_5

    .line 22
    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v9, v16

    goto :goto_2

    .line 23
    :catch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected Content-Length ["

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-wide/16 v9, -0x1

    .line 24
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 25
    sget-object v13, Ll5/b0;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 26
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_7

    const/4 v3, 0x2

    .line 27
    :try_start_2
    invoke-virtual {v13, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 30
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 31
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    sub-long v3, v3, v20

    const-wide/16 v20, 0x1

    add-long v3, v3, v20

    const-wide/16 v18, 0x0

    cmp-long v13, v9, v18

    if-gez v13, :cond_6

    move-wide v9, v3

    goto :goto_3

    :cond_6
    cmp-long v13, v9, v3

    if-eqz v13, :cond_7

    .line 33
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent headers ["

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 35
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Content-Range ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-wide/16 v3, -0x1

    cmp-long v5, v9, v3

    if-eqz v5, :cond_8

    sub-long/2addr v9, v11

    goto :goto_4

    :cond_8
    const-wide/16 v9, -0x1

    .line 36
    :goto_4
    iput-wide v9, v1, Ll5/r;->r:J

    goto :goto_5

    .line 37
    :cond_9
    iget-wide v3, v2, Ll5/m;->g:J

    iput-wide v3, v1, Ll5/r;->r:J

    :goto_5
    const/16 v3, 0x7d0

    .line 38
    :try_start_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Ll5/r;->o:Ljava/io/InputStream;

    if-eqz v6, :cond_a

    .line 39
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v4, v1, Ll5/r;->o:Ljava/io/InputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Ll5/r;->o:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_a
    const/4 v4, 0x1

    .line 40
    iput-boolean v4, v1, Ll5/r;->p:Z

    .line 41
    invoke-virtual/range {p0 .. p1}, Ll5/f;->y(Ll5/m;)V

    .line 42
    :try_start_4
    invoke-virtual {v1, v11, v12, v2}, Ll5/r;->E(JLl5/m;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 43
    iget-wide v2, v1, Ll5/r;->r:J

    return-wide v2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 44
    invoke-virtual/range {p0 .. p0}, Ll5/r;->z()V

    .line 45
    instance-of v0, v2, Ll5/x;

    if-eqz v0, :cond_b

    .line 46
    move-object v0, v2

    check-cast v0, Ll5/x;

    throw v0

    .line 47
    :cond_b
    new-instance v0, Ll5/x;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Ll5/x;-><init>(Ljava/io/IOException;II)V

    throw v0

    :catch_3
    move-exception v0

    const/4 v4, 0x1

    .line 48
    invoke-virtual/range {p0 .. p0}, Ll5/r;->z()V

    .line 49
    new-instance v2, Ll5/x;

    invoke-direct {v2, v0, v3, v4}, Ll5/x;-><init>(Ljava/io/IOException;II)V

    throw v2

    :cond_c
    :goto_6
    move-wide/from16 v18, v3

    .line 50
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 51
    iget v4, v1, Ll5/r;->q:I

    const/16 v5, 0x1a0

    if-ne v4, v5, :cond_10

    .line 52
    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ll5/b0;->a:Ljava/util/regex/Pattern;

    .line 53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_7

    .line 54
    :cond_d
    sget-object v6, Ll5/b0;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    .line 58
    :goto_8
    iget-wide v9, v2, Ll5/m;->f:J

    cmp-long v4, v9, v7

    if-nez v4, :cond_10

    .line 59
    iput-boolean v6, v1, Ll5/r;->p:Z

    .line 60
    invoke-virtual/range {p0 .. p1}, Ll5/f;->y(Ll5/m;)V

    .line 61
    iget-wide v2, v2, Ll5/m;->g:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f

    move-wide v3, v2

    goto :goto_9

    :cond_f
    move-wide/from16 v3, v18

    :goto_9
    return-wide v3

    .line 62
    :cond_10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 63
    :try_start_5
    invoke-static {v0}, Lm5/g0;->U(Ljava/io/InputStream;)[B

    goto :goto_a

    :cond_11
    sget-object v0, Lm5/g0;->f:[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    .line 64
    :catch_4
    sget-object v0, Lm5/g0;->f:[B

    .line 65
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ll5/r;->z()V

    .line 66
    iget v0, v1, Ll5/r;->q:I

    if-ne v0, v5, :cond_12

    .line 67
    new-instance v0, Ll5/k;

    const/16 v4, 0x7d8

    invoke-direct {v0, v4}, Ll5/k;-><init>(I)V

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    .line 68
    :goto_b
    new-instance v4, Ll5/z;

    iget v5, v1, Ll5/r;->q:I

    invoke-direct {v4, v5, v0, v3, v2}, Ll5/z;-><init>(ILjava/io/IOException;Ljava/util/Map;Ll5/m;)V

    throw v4

    :catch_5
    move-exception v0

    .line 69
    invoke-virtual/range {p0 .. p0}, Ll5/r;->z()V

    const/4 v3, 0x1

    .line 70
    invoke-static {v0, v2, v3}, Ll5/x;->b(Ljava/io/IOException;Ll5/m;I)Ll5/x;

    move-result-object v0

    throw v0
.end method

.method public final o()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ll5/r;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final z()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll5/r;->n:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 3
    invoke-static {v1, v2, v0}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ll5/r;->n:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method
