.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Ll5/d0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll5/d0$a<",
        "Ll5/f0<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Ll5/d0$d;JJ)V
    .locals 2

    .line 1
    check-cast p1, Ll5/f0;

    .line 2
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p5, Lp4/r;

    iget-wide v0, p1, Ll5/f0;->a:J

    .line 4
    iget-object v0, p1, Ll5/f0;->d:Ll5/i0;

    .line 5
    iget-object v1, v0, Ll5/i0;->c:Landroid/net/Uri;

    .line 6
    iget-object v0, v0, Ll5/i0;->d:Ljava/util/Map;

    .line 7
    invoke-direct {p5, v0}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 8
    iget-object v0, p4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    invoke-interface {v0}, Ll5/c0;->d()V

    .line 9
    iget-object v0, p4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lp4/e0$a;

    iget v1, p1, Ll5/f0;->c:I

    invoke-virtual {v0, p5, v1}, Lp4/e0$a;->g(Lp4/r;I)V

    .line 10
    iget-object p1, p1, Ll5/f0;->f:Ljava/lang/Object;

    .line 11
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C(J)V

    return-void
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Ll5/f0;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A(Ll5/f0;JJ)V

    return-void
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 2

    .line 1
    check-cast p1, Ll5/f0;

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 3
    iget-object p3, p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lp4/e0$a;

    new-instance p4, Lp4/r;

    iget-wide v0, p1, Ll5/f0;->a:J

    .line 4
    iget-object p5, p1, Ll5/f0;->d:Ll5/i0;

    .line 5
    iget-object p7, p5, Ll5/i0;->c:Landroid/net/Uri;

    .line 6
    iget-object p5, p5, Ll5/i0;->d:Ljava/util/Map;

    .line 7
    invoke-direct {p4, p5}, Lp4/r;-><init>(Ljava/util/Map;)V

    iget p1, p1, Ll5/f0;->c:I

    const/4 p5, 0x1

    .line 8
    invoke-virtual {p3, p4, p1, p6, p5}, Lp4/e0$a;->k(Lp4/r;ILjava/io/IOException;Z)V

    .line 9
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    invoke-interface {p1}, Ll5/c0;->d()V

    .line 10
    invoke-virtual {p2, p6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    .line 11
    sget-object p1, Ll5/d0;->e:Ll5/d0$b;

    return-object p1
.end method
