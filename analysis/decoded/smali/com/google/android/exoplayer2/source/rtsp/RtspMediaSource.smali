.class public final Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;
.super Lp4/a;
.source "RtspMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final o:Ln3/y0;

.field public final p:Lcom/google/android/exoplayer2/source/rtsp/a$a;

.field public final q:Ljava/lang/String;

.field public final r:Landroid/net/Uri;

.field public final s:Ljavax/net/SocketFactory;

.field public final t:Z

.field public u:J

.field public v:Z

.field public w:Z

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.rtsp"

    invoke-static {v0}, Ln3/p0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ln3/y0;Lcom/google/android/exoplayer2/source/rtsp/a$a;Ljava/lang/String;Ljavax/net/SocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp4/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->o:Ln3/y0;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->p:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->q:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p1, Ln3/y0$g;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->r:Landroid/net/Uri;

    .line 8
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->s:Ljavax/net/SocketFactory;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->t:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->u:J

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->x:Z

    return-void
.end method


# virtual methods
.method public final a()Ln3/y0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->o:Ln3/y0;

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d(Lp4/v;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/f;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 4
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/rtsp/f$d;->e:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Ll5/d0;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v3, v4}, Ll5/d0;->f(Ll5/d0$e;)V

    .line 7
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Lp4/l0;

    invoke-virtual {v3}, Lp4/l0;->B()V

    .line 8
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/source/rtsp/f$d;->e:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-static {v0}, Lm5/g0;->g(Ljava/io/Closeable;)V

    .line 10
    iput-boolean v2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->y:Z

    return-void
.end method

.method public final q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 8

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/f;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->p:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->r:Landroid/net/Uri;

    new-instance v4, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->s:Ljavax/net/SocketFactory;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->t:Z

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/rtsp/f;-><init>(Ll5/b;Lcom/google/android/exoplayer2/source/rtsp/a$a;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/rtsp/f$b;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V

    return-object p1
.end method

.method public final v(Ll5/j0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->y()V

    return-void
.end method

.method public final x()V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 7

    .line 1
    new-instance v6, Lp4/p0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->u:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->v:Z

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->w:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->o:Ln3/y0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lp4/p0;-><init>(JZZLn3/y0;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->x:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;-><init>(Ln3/b2;)V

    move-object v6, v0

    .line 4
    :cond_0
    invoke-virtual {p0, v6}, Lp4/a;->w(Ln3/b2;)V

    return-void
.end method
