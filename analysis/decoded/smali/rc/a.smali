.class public final Lrc/a;
.super Ljava/lang/Object;
.source "FirmwareArchiveUtil.java"


# direct methods
.method public static a([BII)I
    .locals 8

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, "from getLocalSegmentChecksum: offset:="

    const-string v2, " segmentSize: = "

    .line 2
    invoke-static {v1, p1, v2, p2}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "FirmwareArchiveUtil"

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    const-wide/16 v0, 0x0

    move v5, p1

    :goto_0
    add-int v6, p1, p2

    if-ge v5, v6, :cond_0

    .line 4
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p0

    const-string p1, "from getLocalSegmentChecksum: checksum:="

    .line 6
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide/32 v5, 0xffffff

    and-long/2addr v0, v5

    long-to-int p2, v0

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v2, v3, v4}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return p2
.end method

.method public static b([B)Z
    .locals 6

    const-string v0, "FirmwareArchiveUtil"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p0

    const-string v3, "null fileData"

    invoke-interface {p0, v3, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return v2

    .line 2
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p0

    const-string v3, "zero length fileData"

    invoke-interface {p0, v3, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return v2

    .line 4
    :cond_1
    aget-byte v3, p0, v2

    const/16 v4, -0x42

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    aget-byte p0, p0, v5

    const/16 v3, -0x11

    if-eq p0, v3, :cond_2

    .line 5
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p0

    const-string v3, "invalid signature in fileData"

    invoke-interface {p0, v3, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return v2

    :cond_2
    return v5
.end method
