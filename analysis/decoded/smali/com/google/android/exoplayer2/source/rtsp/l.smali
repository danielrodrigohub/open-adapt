.class public final Lcom/google/android/exoplayer2/source/rtsp/l;
.super Ljava/lang/Object;
.source "UdpDataSourceRtpDataChannelFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/a$a;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->a:J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/exoplayer2/source/rtsp/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/k;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->a:J

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/k;-><init>(J)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/k;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/k;-><init>(J)V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {v1}, Lp4/h;->r(I)Ll5/m;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/k;->a:Ll5/k0;

    invoke-virtual {v3, v2}, Ll5/k0;->l(Ll5/m;)J

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/k;->f()I

    move-result v2

    .line 6
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v1, v4

    :cond_0
    if-eqz v1, :cond_1

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v4

    .line 7
    :goto_0
    invoke-static {v2}, Lp4/h;->r(I)Ll5/m;

    move-result-object v2

    .line 8
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/k;->a:Ll5/k0;

    invoke-virtual {v3, v2}, Ll5/k0;->l(Ll5/m;)J

    if-eqz v1, :cond_2

    .line 9
    iput-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/k;->b:Lcom/google/android/exoplayer2/source/rtsp/k;

    return-object p1

    .line 10
    :cond_2
    iput-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/k;->b:Lcom/google/android/exoplayer2/source/rtsp/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 11
    invoke-static {p1}, Lc3/d;->i(Ll5/j;)V

    .line 12
    invoke-static {v0}, Lc3/d;->i(Ll5/j;)V

    .line 13
    throw v1
.end method

.method public final b()Lcom/google/android/exoplayer2/source/rtsp/a$a;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/j;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/j;-><init>(J)V

    return-object v0
.end method
