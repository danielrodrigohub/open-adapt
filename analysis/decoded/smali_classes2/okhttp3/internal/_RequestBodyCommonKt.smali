.class public final Lokhttp3/internal/_RequestBodyCommonKt;
.super Ljava/lang/Object;
.source "-RequestBodyCommon.kt"


# direct methods
.method public static final commonContentLength(Lokhttp3/RequestBody;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static final commonIsDuplex(Lokhttp3/RequestBody;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final commonIsOneShot(Lokhttp3/RequestBody;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final commonToRequestBody(Lde/g;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$2;

    invoke-direct {v0, p1, p0}, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$2;-><init>(Lokhttp3/MediaType;Lde/g;)V

    return-object v0
.end method

.method public static final commonToRequestBody([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/_UtilCommonKt;->checkOffsetAndCount(JJJ)V

    .line 2
    new-instance v0, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$1;

    invoke-direct {v0, p1, p3, p0, p2}, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$1;-><init>(Lokhttp3/MediaType;I[BI)V

    return-object v0
.end method
