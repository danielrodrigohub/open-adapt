.class public final Lokhttp3/internal/_ResponseBodyCommonKt;
.super Ljava/lang/Object;
.source "-ResponseBodyCommon.kt"


# direct methods
.method public static final commonAsResponseBody(Lde/f;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;-><init>(Lokhttp3/MediaType;JLde/f;)V

    return-object v0
.end method

.method public static final commonByteString(Lokhttp3/ResponseBody;)Lde/g;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 2
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lde/f;

    move-result-object p0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0}, Lde/f;->i()Lde/g;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    if-nez v2, :cond_0

    move-object v2, p0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2, p0}, Lp4/h;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 6
    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v3}, Lde/g;->j()I

    move-result p0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    int-to-long v4, p0

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") disagree"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    return-object v3

    .line 9
    :cond_4
    throw v2

    .line 10
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Cannot buffer entire body for content length: "

    .line 11
    invoke-static {v2, v0, v1}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonBytes(Lokhttp3/ResponseBody;)[B
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 2
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lde/f;

    move-result-object p0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0}, Lde/f;->w()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    if-nez v2, :cond_0

    move-object v2, p0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2, p0}, Lp4/h;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 6
    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 7
    array-length p0, v3

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    int-to-long v4, p0

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") disagree"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    return-object v3

    .line 9
    :cond_4
    throw v2

    .line 10
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Cannot buffer entire body for content length: "

    .line 11
    invoke-static {v2, v0, v1}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonClose(Lokhttp3/ResponseBody;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lde/f;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static final commonConsumeSource(Lokhttp3/ResponseBody;Lqd/l;Lqd/l;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/ResponseBody;",
            "Lqd/l<",
            "-",
            "Lde/f;",
            "+TT;>;",
            "Lqd/l<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeMapper"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 2
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lde/f;

    move-result-object p0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-interface {p1, p0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    if-nez v2, :cond_0

    move-object v2, p0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2, p0}, Lp4/h;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 6
    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    int-to-long v2, p0

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") disagree"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-object p1

    .line 9
    :cond_4
    throw v2

    .line 10
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot buffer entire body for content length: "

    .line 11
    invoke-static {p1, v0, v1}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonToResponseBody(Lde/g;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 6
    new-instance v1, Lde/c;

    invoke-direct {v1}, Lde/c;-><init>()V

    .line 7
    invoke-virtual {v1, p0}, Lde/c;->u0(Lde/g;)Lde/c;

    .line 8
    invoke-virtual {p0}, Lde/g;->j()I

    move-result p0

    int-to-long v2, p0

    .line 9
    invoke-virtual {v0, v1, p1, v2, v3}, Lokhttp3/ResponseBody$Companion;->create(Lde/f;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static final commonToResponseBody([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 2
    new-instance v1, Lde/c;

    invoke-direct {v1}, Lde/c;-><init>()V

    .line 3
    invoke-virtual {v1, p0}, Lde/c;->w0([B)Lde/c;

    .line 4
    array-length p0, p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, p1, v2, v3}, Lokhttp3/ResponseBody$Companion;->create(Lde/f;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method
