.class public final Lcom/google/android/exoplayer2/source/rtsp/d;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/d$a;,
        Lcom/google/android/exoplayer2/source/rtsp/d$b;,
        Lcom/google/android/exoplayer2/source/rtsp/d$c;,
        Lcom/google/android/exoplayer2/source/rtsp/d$d;,
        Lcom/google/android/exoplayer2/source/rtsp/d$e;
    }
.end annotation


# instance fields
.field public final h:Lcom/google/android/exoplayer2/source/rtsp/d$e;

.field public final i:Lcom/google/android/exoplayer2/source/rtsp/d$d;

.field public final j:Ljava/lang/String;

.field public final k:Ljavax/net/SocketFactory;

.field public final l:Z

.field public final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/source/rtsp/f$c;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lw4/k;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

.field public p:Landroid/net/Uri;

.field public q:Lcom/google/android/exoplayer2/source/rtsp/g;

.field public r:Lcom/google/android/exoplayer2/source/rtsp/h$a;

.field public s:Ljava/lang/String;

.field public t:Lcom/google/android/exoplayer2/source/rtsp/d$a;

.field public u:Lcom/google/android/exoplayer2/source/rtsp/c;

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/d$e;Lcom/google/android/exoplayer2/source/rtsp/d$d;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->h:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->i:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->j:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->k:Ljavax/net/SocketFactory;

    .line 6
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->l:Z

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->m:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->n:Landroid/util/SparseArray;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/d$c;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/rtsp/d$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/d;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    .line 10
    invoke-static {p4}, Lcom/google/android/exoplayer2/source/rtsp/h;->h(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/g;

    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/d$b;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/rtsp/d$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/d;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/g;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g$c;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->q:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 12
    invoke-static {p4}, Lcom/google/android/exoplayer2/source/rtsp/h;->f(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/h$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/h$a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:J

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    return-void
.end method

.method public static Y(Lcom/google/android/exoplayer2/source/rtsp/d;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->l:Z

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lt6/e;

    const-string v0, "\n"

    invoke-direct {p0, v0}, Lt6/e;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lt6/e;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RtspClient"

    invoke-static {p1, p0}, Lm5/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static x(Lcom/google/android/exoplayer2/source/rtsp/d;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;

    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->w:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->i:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    check-cast p0, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->s:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->h:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt6/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/f$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Lcom/google/android/exoplayer2/source/rtsp/d$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/d$a;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Lcom/google/android/exoplayer2/source/rtsp/d$a;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 7
    iget v4, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 8
    iput v4, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    const/16 v3, 0xc

    .line 9
    sget-object v4, Lu6/q0;->n:Lu6/q0;

    .line 10
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lw4/k;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c(Lw4/k;)V

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->q:Lcom/google/android/exoplayer2/source/rtsp/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/g;->close()V

    return-void
.end method

.method public final f0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->i:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Lcom/google/android/exoplayer2/source/rtsp/d;

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/d;->i0(J)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/f$c;->a()Landroid/net/Uri;

    move-result-object v2

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;->c:Ljava/lang/String;

    invoke-static {v3}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;->c:Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Ljava/lang/String;

    .line 10
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    const/4 v5, 0x0

    .line 11
    iput v5, v4, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    const/16 v4, 0xa

    const-string v6, "Transport"

    .line 12
    invoke-static {v6, v0}, Lu6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v5

    const/4 v5, 0x1

    aput-object v0, v7, v5

    .line 13
    invoke-static {v5, v7}, Lu6/q0;->j(I[Ljava/lang/Object;)Lu6/q0;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lw4/k;

    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c(Lw4/k;)V

    return-void
.end method

.method public final g0(Landroid/net/Uri;)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x22a

    .line 3
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->k:Ljavax/net/SocketFactory;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p1, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final h0(J)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Ljava/lang/String;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 5
    iget v4, v4, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    const/4 v5, 0x1

    if-ne v4, v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-static {v1}, Lm5/a;->e(Z)V

    const/4 v1, 0x5

    .line 7
    sget-object v4, Lu6/q0;->n:Lu6/q0;

    .line 8
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lw4/k;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c(Lw4/k;)V

    .line 10
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 11
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Z

    .line 12
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:J

    return-void
.end method

.method public final i0(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Ljava/lang/String;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 4
    iget v3, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    .line 5
    :goto_1
    invoke-static {v3}, Lm5/a;->e(Z)V

    const/4 v3, 0x6

    const-string v7, "Range"

    .line 6
    sget-object v8, Lw4/l;->c:Lw4/l;

    long-to-double p1, p1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v8

    new-array v8, v6, [Ljava/lang/Object;

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v8, v5

    const-string p1, "npt=%.3f-"

    invoke-static {p1, v8}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v7, p1}, Lu6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v7, p2, v5

    aput-object p1, p2, v6

    .line 9
    invoke-static {v6, p2}, Lu6/q0;->j(I[Ljava/lang/Object;)Lu6/q0;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lw4/k;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c(Lw4/k;)V

    return-void
.end method
