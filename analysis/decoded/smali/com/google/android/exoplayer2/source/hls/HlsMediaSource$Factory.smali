.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lp4/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Lu4/h;

.field public b:Lu4/d;

.field public c:Lv4/a;

.field public d:Ly0/h;

.field public e:Lp4/h;

.field public f:Lr3/m;

.field public g:Ll5/c0;

.field public h:Z

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>(Ll5/j$a;)V
    .locals 2

    .line 1
    new-instance v0, Lu4/c;

    invoke-direct {v0, p1}, Lu4/c;-><init>(Ll5/j$a;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a:Lu4/h;

    .line 4
    new-instance p1, Lr3/c;

    invoke-direct {p1}, Lr3/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->f:Lr3/m;

    .line 5
    new-instance p1, Lv4/a;

    invoke-direct {p1}, Lv4/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->c:Lv4/a;

    .line 6
    sget-object p1, Lv4/b;->v:Ly0/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->d:Ly0/h;

    .line 7
    sget-object p1, Lu4/i;->a:Lu4/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->b:Lu4/d;

    .line 8
    new-instance p1, Ll5/u;

    invoke-direct {p1}, Ll5/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->g:Ll5/c0;

    .line 9
    new-instance p1, Lp4/h;

    invoke-direct {p1}, Lp4/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->e:Lp4/h;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->j:J

    .line 12
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lr3/m;)Lp4/x$a;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->f:Lr3/m;

    return-object p0
.end method

.method public final b(Ll5/c0;)Lp4/x$a;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->g:Ll5/c0;

    return-object p0
.end method

.method public final c(Ln3/y0;)Lp4/x;
    .locals 14

    .line 1
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->c:Lv4/a;

    .line 4
    iget-object v1, p1, Ln3/y0;->i:Ln3/y0$h;

    iget-object v1, v1, Ln3/y0$g;->d:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lv4/c;

    invoke-direct {v2, v0, v1}, Lv4/c;-><init>(Lv4/i;Ljava/util/List;)V

    move-object v0, v2

    .line 7
    :cond_0
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a:Lu4/h;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->b:Lu4/d;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->e:Lp4/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->f:Lr3/m;

    .line 8
    invoke-interface {v1, p1}, Lr3/m;->a(Ln3/y0;)Lr3/l;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->g:Ll5/c0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->d:Ly0/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a:Lu4/h;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lv4/b;

    invoke-direct {v8, v2, v7, v0}, Lv4/b;-><init>(Lu4/h;Ll5/c0;Lv4/i;)V

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->j:J

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->h:Z

    iget v12, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:I

    move-object v1, v13

    move-object v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Ln3/y0;Lu4/h;Lu4/i;Lp4/h;Lr3/l;Ll5/c0;Lv4/j;JZI)V

    return-object v13
.end method
