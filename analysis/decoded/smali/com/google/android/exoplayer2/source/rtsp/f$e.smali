.class public final Lcom/google/android/exoplayer2/source/rtsp/f$e;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"

# interfaces
.implements Lp4/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final h:I

.field public final synthetic i:Lcom/google/android/exoplayer2/source/rtsp/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->i:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->h:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->i:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->s:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public final isReady()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->i:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->h:I

    .line 2
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->x:Z

    if-nez v2, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Lp4/l0;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->d:Z

    invoke-virtual {v1, v0}, Lp4/l0;->u(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ly0/r;Lq3/g;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->i:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->h:I

    .line 2
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->x:Z

    if-eqz v2, :cond_0

    const/4 p1, -0x3

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Lp4/l0;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->d:Z

    invoke-virtual {v1, p1, p2, p3, v0}, Lp4/l0;->A(Ly0/r;Lq3/g;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final p(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->i:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->h:I

    .line 2
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->x:Z

    if-eqz v2, :cond_0

    const/4 p1, -0x3

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Lp4/l0;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->d:Z

    invoke-virtual {v1, p1, p2, v2}, Lp4/l0;->r(JZ)I

    move-result p1

    .line 5
    iget-object p2, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Lp4/l0;

    invoke-virtual {p2, p1}, Lp4/l0;->F(I)V

    :goto_0
    return p1
.end method
