.class public final Lcom/google/android/exoplayer2/source/rtsp/j;
.super Ljava/lang/Object;
.source "TransferRtpDataChannelFactory.java"

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
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->a:J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/exoplayer2/source/rtsp/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/i;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/j;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/i;-><init>(J)V

    mul-int/lit8 p1, p1, 0x2

    .line 2
    invoke-static {p1}, Lp4/h;->r(I)Ll5/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/i;->l(Ll5/m;)J

    return-object v0
.end method
