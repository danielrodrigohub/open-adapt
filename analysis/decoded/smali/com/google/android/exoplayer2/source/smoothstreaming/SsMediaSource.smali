.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Lp4/a;
.source "SsMediaSource.java"

# interfaces
.implements Ll5/d0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp4/a;",
        "Ll5/d0$a<",
        "Ll5/f0<",
        "Ly4/a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final synthetic I:I


# instance fields
.field public final A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/c;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ll5/j;

.field public C:Ll5/d0;

.field public D:Ll5/e0;

.field public E:Ll5/j0;

.field public F:J

.field public G:Ly4/a;

.field public H:Landroid/os/Handler;

.field public final o:Z

.field public final p:Landroid/net/Uri;

.field public final q:Ln3/y0$h;

.field public final r:Ln3/y0;

.field public final s:Ll5/j$a;

.field public final t:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field public final u:Lp4/h;

.field public final v:Lr3/l;

.field public final w:Ll5/c0;

.field public final x:J

.field public final y:Lp4/e0$a;

.field public final z:Ll5/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll5/f0$a<",
            "+",
            "Ly4/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.smoothstreaming"

    invoke-static {v0}, Ln3/p0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ln3/y0;Ll5/j$a;Ll5/f0$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lp4/h;Lr3/l;Ll5/c0;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lp4/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ln3/y0;

    .line 3
    iget-object p1, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Ln3/y0$h;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    .line 7
    iget-object v1, p1, Ln3/y0$g;->a:Landroid/net/Uri;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Ln3/y0$g;->a:Landroid/net/Uri;

    sget v1, Lm5/g0;->a:I

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lm5/g0;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Manifest"

    .line 12
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Landroid/net/Uri;

    .line 14
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Ll5/j$a;

    .line 15
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll5/f0$a;

    .line 16
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 17
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:Lp4/h;

    .line 18
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lr3/l;

    .line 19
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Ll5/c0;

    .line 20
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:J

    .line 21
    invoke-virtual {p0, v0}, Lp4/a;->s(Lp4/x$b;)Lp4/e0$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:Lp4/e0$a;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Z

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ln3/y0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ln3/y0;

    return-object v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->D:Ll5/e0;

    invoke-interface {v0}, Ll5/e0;->b()V

    return-void
.end method

.method public final d(Lp4/v;)V
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:[Lr4/h;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 3
    invoke-virtual {v5, v4}, Lr4/h;->A(Lr4/h$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->r:Lp4/v$a;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(Ll5/d0$d;JJ)V
    .locals 3

    .line 1
    check-cast p1, Ll5/f0;

    .line 2
    new-instance v0, Lp4/r;

    iget-wide v1, p1, Ll5/f0;->a:J

    .line 3
    iget-object v1, p1, Ll5/f0;->d:Ll5/i0;

    .line 4
    iget-object v2, v1, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object v1, v1, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {v0, v1}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Ll5/c0;

    invoke-interface {v1}, Ll5/c0;->d()V

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:Lp4/e0$a;

    iget v2, p1, Ll5/f0;->c:I

    invoke-virtual {v1, v0, v2}, Lp4/e0$a;->g(Lp4/r;I)V

    .line 9
    iget-object p1, p1, Ll5/f0;->f:Ljava/lang/Object;

    .line 10
    check-cast p1, Ly4/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    sub-long/2addr p2, p4

    .line 11
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->F:J

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y()V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    iget-boolean p1, p1, Ly4/a;->d:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->F:J

    const-wide/16 p3, 0x1388

    add-long/2addr p1, p3

    const-wide/16 p3, 0x0

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 16
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->H:Landroid/os/Handler;

    new-instance p4, Ly0/t;

    const/4 p5, 0x2

    invoke-direct {p4, p0, p5}, Ly0/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Ll5/f0;

    .line 2
    new-instance p2, Lp4/r;

    iget-wide p3, p1, Ll5/f0;->a:J

    .line 3
    iget-object p3, p1, Ll5/f0;->d:Ll5/i0;

    .line 4
    iget-object p4, p3, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object p3, p3, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {p2, p3}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Ll5/c0;

    invoke-interface {p3}, Ll5/c0;->d()V

    .line 8
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:Lp4/e0$a;

    iget p1, p1, Ll5/f0;->c:I

    invoke-virtual {p3, p2, p1}, Lp4/e0$a;->d(Lp4/r;I)V

    return-void
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 2

    .line 1
    check-cast p1, Ll5/f0;

    .line 2
    new-instance p2, Lp4/r;

    iget-wide p3, p1, Ll5/f0;->a:J

    .line 3
    iget-object p3, p1, Ll5/f0;->d:Ll5/i0;

    .line 4
    iget-object p4, p3, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object p3, p3, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {p2, p3}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Ll5/c0;

    new-instance p4, Ll5/c0$c;

    invoke-direct {p4, p6, p7}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    .line 8
    invoke-interface {p3, p4}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide p3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    .line 9
    sget-object p3, Ll5/d0;->f:Ll5/d0$b;

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 10
    new-instance p7, Ll5/d0$b;

    .line 11
    invoke-direct {p7, p5, p3, p4}, Ll5/d0$b;-><init>(IJ)V

    move-object p3, p7

    .line 12
    :goto_0
    invoke-virtual {p3}, Ll5/d0$b;->a()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    .line 13
    iget-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:Lp4/e0$a;

    iget p1, p1, Ll5/f0;->c:I

    invoke-virtual {p5, p2, p1, p6, p4}, Lp4/e0$a;->k(Lp4/r;ILjava/io/IOException;Z)V

    if-eqz p4, :cond_1

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Ll5/c0;

    invoke-interface {p1}, Ll5/c0;->d()V

    :cond_1
    return-object p3
.end method

.method public final q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lp4/a;->s(Lp4/x$b;)Lp4/e0$a;

    move-result-object v8

    .line 2
    invoke-virtual {p0, p1}, Lp4/a;->r(Lp4/x$b;)Lr3/k$a;

    move-result-object v6

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Ll5/j0;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:Lp4/h;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lr3/l;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Ll5/c0;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->D:Ll5/e0;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;-><init>(Ly4/a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Ll5/j0;Lp4/h;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;Ll5/e0;Ll5/b;)V

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final v(Ll5/j0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Ll5/j0;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lr3/l;

    invoke-interface {p1}, Lr3/l;->b()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lr3/l;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lp4/a;->n:Lo3/v0;

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1, v0, v1}, Lr3/l;->f(Landroid/os/Looper;Lo3/v0;)V

    .line 6
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Z

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Ll5/e0$a;

    invoke-direct {p1}, Ll5/e0$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->D:Ll5/e0;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Ll5/j$a;

    invoke-interface {p1}, Ll5/j$a;->a()Ll5/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->B:Ll5/j;

    .line 10
    new-instance p1, Ll5/d0;

    const-string v0, "SsMediaSource"

    invoke-direct {p1, v0}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->C:Ll5/d0;

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->D:Ll5/e0;

    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->H:Landroid/os/Handler;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z()V

    :goto_0
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->B:Ll5/j;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->F:J

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->C:Ll5/d0;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ll5/d0;->f(Ll5/d0$e;)V

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->C:Ll5/d0;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->H:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->H:Landroid/os/Handler;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lr3/l;

    invoke-interface {v0}, Lr3/l;->a()V

    return-void
.end method

.method public final y()V
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    .line 3
    iput-object v4, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->s:Ly4/a;

    .line 4
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:[Lr4/h;

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 5
    iget-object v8, v8, Lr4/h;->l:Lr4/i;

    .line 6
    check-cast v8, Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    invoke-interface {v8, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/b;->e(Ly4/a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7
    :cond_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->r:Lp4/v$a;

    invoke-interface {v4, v3}, Lp4/n0$a;->j(Lp4/n0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    iget-object v4, v4, Ly4/a;->f:[Ly4/a$b;

    array-length v5, v4

    const-wide v6, 0x7fffffffffffffffL

    move v8, v1

    move-wide v14, v6

    :goto_2
    if-ge v8, v5, :cond_3

    aget-object v9, v4, v8

    .line 9
    iget v10, v9, Ly4/a$b;->k:I

    if-lez v10, :cond_2

    .line 10
    iget-object v10, v9, Ly4/a$b;->o:[J

    aget-wide v11, v10, v1

    .line 11
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 12
    iget v10, v9, Ly4/a$b;->k:I

    add-int/lit8 v10, v10, -0x1

    .line 13
    iget-object v11, v9, Ly4/a$b;->o:[J

    aget-wide v12, v11, v10

    .line 14
    invoke-virtual {v9, v10}, Ly4/a$b;->b(I)J

    move-result-wide v9

    add-long/2addr v9, v12

    .line 15
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    cmp-long v1, v14, v6

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_5

    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    iget-boolean v1, v1, Ly4/a;->d:Z

    if-eqz v1, :cond_4

    move-wide v9, v6

    goto :goto_3

    :cond_4
    move-wide v9, v4

    .line 17
    :goto_3
    new-instance v1, Lp4/p0;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    iget-boolean v3, v2, Ly4/a;->d:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ln3/y0;

    move-object v8, v1

    move/from16 v18, v3

    move/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-direct/range {v8 .. v21}, Lp4/p0;-><init>(JJJJZZZLjava/lang/Object;Ln3/y0;)V

    goto/16 :goto_5

    .line 18
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    iget-boolean v8, v1, Ly4/a;->d:Z

    if-eqz v8, :cond_8

    .line 19
    iget-wide v8, v1, Ly4/a;->h:J

    cmp-long v1, v8, v6

    if-eqz v1, :cond_6

    cmp-long v1, v8, v4

    if-lez v1, :cond_6

    sub-long v4, v2, v8

    .line 20
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_6
    move-wide/from16 v21, v14

    sub-long v19, v2, v21

    .line 21
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:J

    invoke-static {v1, v2}, Lm5/g0;->L(J)J

    move-result-wide v1

    sub-long v1, v19, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_7

    const-wide/16 v1, 0x2

    .line 22
    div-long v1, v19, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_7
    move-wide/from16 v23, v1

    .line 23
    new-instance v1, Lp4/p0;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ln3/y0;

    move-object/from16 v16, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    invoke-direct/range {v16 .. v29}, Lp4/p0;-><init>(JJJJZZZLjava/lang/Object;Ln3/y0;)V

    goto :goto_5

    .line 24
    :cond_8
    iget-wide v4, v1, Ly4/a;->g:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_9

    move-wide v12, v4

    goto :goto_4

    :cond_9
    sub-long/2addr v2, v14

    move-wide v12, v2

    .line 25
    :goto_4
    new-instance v1, Lp4/p0;

    add-long v10, v14, v12

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Ly4/a;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Ln3/y0;

    move-object v9, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v9 .. v22}, Lp4/p0;-><init>(JJJJZZZLjava/lang/Object;Ln3/y0;)V

    .line 26
    :goto_5
    invoke-virtual {v0, v1}, Lp4/a;->w(Ln3/b2;)V

    return-void
.end method

.method public final z()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->C:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ll5/f0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->B:Ll5/j;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Ll5/f0$a;

    invoke-direct {v0, v1, v2, v3, v4}, Ll5/f0;-><init>(Ll5/j;Landroid/net/Uri;ILl5/f0$a;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->C:Ll5/d0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Ll5/c0;

    iget v3, v0, Ll5/f0;->c:I

    .line 4
    invoke-interface {v2, v3}, Ll5/c0;->c(I)I

    move-result v2

    .line 5
    invoke-virtual {v1, v0, p0, v2}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    move-result-wide v7

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:Lp4/e0$a;

    new-instance v2, Lp4/r;

    iget-wide v4, v0, Ll5/f0;->a:J

    iget-object v6, v0, Ll5/f0;->b:Ll5/m;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lp4/r;-><init>(JLl5/m;J)V

    iget v0, v0, Ll5/f0;->c:I

    invoke-virtual {v1, v2, v0}, Lp4/e0$a;->m(Lp4/r;I)V

    return-void
.end method
