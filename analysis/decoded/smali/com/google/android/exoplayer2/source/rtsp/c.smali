.class public final Lcom/google/android/exoplayer2/source/rtsp/c;
.super Ljava/lang/Object;
.source "RtspAuthenticationInfo.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/rtsp/h$a;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->a:I

    const-string v1, ":"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    :try_start_0
    const-string v0, "MD5"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/rtsp/h;->i(I)Ljava/lang/String;

    move-result-object p3

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/rtsp/h;->b(Ljava/lang/String;)[B

    move-result-object v7

    .line 6
    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 7
    invoke-static {v7}, Lm5/g0;->V([B)Ljava/lang/String;

    move-result-object v7

    .line 8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/rtsp/h;->b(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    invoke-static {p3}, Lm5/g0;->V([B)Ljava/lang/String;

    move-result-object p3

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->c:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/rtsp/h;->b(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    .line 12
    invoke-static {p3}, Lm5/g0;->V([B)Ljava/lang/String;

    move-result-object p3

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v7, 0x5

    if-eqz v0, :cond_0

    const-string v0, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\""

    new-array v7, v7, [Ljava/lang/Object;

    .line 14
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->a:Ljava/lang/String;

    aput-object p1, v7, v2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Ljava/lang/String;

    aput-object p1, v7, v3

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->c:Ljava/lang/String;

    aput-object p1, v7, v6

    aput-object p2, v7, v1

    aput-object p3, v7, v5

    invoke-static {v0, v7}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\""

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->a:Ljava/lang/String;

    aput-object p1, v8, v2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Ljava/lang/String;

    aput-object p1, v8, v3

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->c:Ljava/lang/String;

    aput-object p1, v8, v6

    aput-object p2, v8, v1

    aput-object p3, v8, v5

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->d:Ljava/lang/String;

    aput-object p1, v8, v7

    invoke-static {v0, v8}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ln3/i1;

    invoke-direct {p2, v4, p1, v2, v5}, Ln3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 17
    throw p2

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 19
    new-instance p2, Ln3/i1;

    invoke-direct {p2, v4, p1, v2, v5}, Ln3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 20
    throw p2

    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->b:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/h;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 23
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "Basic %s"

    .line 24
    invoke-static {p1, p2}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
