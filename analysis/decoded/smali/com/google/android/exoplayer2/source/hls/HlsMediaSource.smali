.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lp4/a;
.source "HlsMediaSource.java"

# interfaces
.implements Lv4/j$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field public A:Ln3/y0$f;

.field public B:Ll5/j0;

.field public final o:Lu4/i;

.field public final p:Ln3/y0$h;

.field public final q:Lu4/h;

.field public final r:Lp4/h;

.field public final s:Lr3/l;

.field public final t:Ll5/c0;

.field public final u:Z

.field public final v:I

.field public final w:Z

.field public final x:Lv4/j;

.field public final y:J

.field public final z:Ln3/y0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    invoke-static {v0}, Ln3/p0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ln3/y0;Lu4/h;Lu4/i;Lp4/h;Lr3/l;Ll5/c0;Lv4/j;JZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp4/a;-><init>()V

    .line 2
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Ln3/y0$h;

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z:Ln3/y0;

    .line 6
    iget-object p1, p1, Ln3/y0;->j:Ln3/y0$f;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->A:Ln3/y0$f;

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lu4/h;

    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lu4/i;

    .line 9
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->r:Lp4/h;

    .line 10
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lr3/l;

    .line 11
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Ll5/c0;

    .line 12
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lv4/j;

    .line 13
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->y:J

    .line 14
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->u:Z

    .line 15
    iput p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->v:I

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->w:Z

    return-void
.end method

.method public static y(Ljava/util/List;J)Lv4/e$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv4/e$a;",
            ">;J)",
            "Lv4/e$a;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/e$a;

    .line 3
    iget-wide v3, v2, Lv4/e$d;->l:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    iget-boolean v5, v2, Lv4/e$a;->s:Z

    if-eqz v5, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    cmp-long v2, v3, p1

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a()Ln3/y0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z:Ln3/y0;

    return-object v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lv4/j;

    invoke-interface {v0}, Lv4/j;->f()V

    return-void
.end method

.method public final d(Lp4/v;)V
    .locals 10

    .line 1
    check-cast p1, Lu4/l;

    .line 2
    iget-object v0, p1, Lu4/l;->i:Lv4/j;

    invoke-interface {v0, p1}, Lv4/j;->d(Lv4/j$a;)V

    .line 3
    iget-object v0, p1, Lu4/l;->A:[Lu4/n;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 4
    iget-boolean v6, v5, Lu4/n;->K:Z

    if-eqz v6, :cond_0

    .line 5
    iget-object v6, v5, Lu4/n;->C:[Lu4/n$d;

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 6
    invoke-virtual {v9}, Lp4/l0;->z()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 7
    :cond_0
    iget-object v6, v5, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v6, v5}, Ll5/d0;->f(Ll5/d0$e;)V

    .line 8
    iget-object v6, v5, Lu4/n;->y:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 9
    iput-boolean v4, v5, Lu4/n;->O:Z

    .line 10
    iget-object v4, v5, Lu4/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iput-object v4, p1, Lu4/l;->x:Lp4/v$a;

    return-void
.end method

.method public final q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p1}, Lp4/a;->s(Lp4/x$b;)Lp4/e0$a;

    move-result-object v9

    .line 2
    invoke-virtual/range {p0 .. p1}, Lp4/a;->r(Lp4/x$b;)Lr3/k$a;

    move-result-object v7

    .line 3
    new-instance v16, Lu4/l;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lu4/i;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lv4/j;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lu4/h;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->B:Ll5/j0;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lr3/l;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Ll5/c0;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->r:Lp4/h;

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->u:Z

    iget v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->v:I

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->w:Z

    .line 4
    iget-object v15, v0, Lp4/a;->n:Lo3/v0;

    invoke-static {v15}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    move-object/from16 v10, p2

    .line 5
    invoke-direct/range {v1 .. v15}, Lu4/l;-><init>(Lu4/i;Lv4/j;Lu4/h;Ll5/j0;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;Ll5/b;Lp4/h;ZIZLo3/v0;)V

    return-object v16
.end method

.method public final v(Ll5/j0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->B:Ll5/j0;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lr3/l;

    invoke-interface {p1}, Lr3/l;->b()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lr3/l;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lp4/a;->n:Lo3/v0;

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1, v0, v1}, Lr3/l;->f(Landroid/os/Looper;Lo3/v0;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lp4/a;->s(Lp4/x$b;)Lp4/e0$a;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lv4/j;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Ln3/y0$h;

    iget-object v1, v1, Ln3/y0$g;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lv4/j;->l(Landroid/net/Uri;Lp4/e0$a;Lv4/j$d;)V

    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lv4/j;

    invoke-interface {v0}, Lv4/j;->stop()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lr3/l;

    invoke-interface {v0}, Lr3/l;->a()V

    return-void
.end method

.method public final z(Lv4/e;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v1, Lv4/e;->p:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lv4/e;->h:J

    invoke-static {v5, v6}, Lm5/g0;->X(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 2
    :goto_0
    iget v2, v1, Lv4/e;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 3
    :goto_2
    new-instance v2, Landroidx/emoji2/text/b;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lv4/j;

    .line 4
    invoke-interface {v7}, Lv4/j;->b()Lv4/f;

    move-result-object v7

    .line 5
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {v2, v7}, Landroidx/emoji2/text/b;-><init>(Lv4/f;)V

    .line 7
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lv4/j;

    invoke-interface {v7}, Lv4/j;->a()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 8
    iget-wide v14, v1, Lv4/e;->h:J

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lv4/j;

    .line 9
    invoke-interface {v7}, Lv4/j;->o()J

    move-result-wide v16

    sub-long v16, v14, v16

    .line 10
    iget-boolean v7, v1, Lv4/e;->o:Z

    if-eqz v7, :cond_3

    iget-wide v14, v1, Lv4/e;->u:J

    add-long v14, v16, v14

    move-wide/from16 v18, v14

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v3

    .line 11
    :goto_3
    iget-boolean v7, v1, Lv4/e;->p:Z

    if-eqz v7, :cond_4

    .line 12
    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->y:J

    invoke-static {v14, v15}, Lm5/g0;->x(J)J

    move-result-wide v14

    invoke-static {v14, v15}, Lm5/g0;->L(J)J

    move-result-wide v14

    .line 13
    iget-wide v12, v1, Lv4/e;->h:J

    iget-wide v5, v1, Lv4/e;->u:J

    add-long/2addr v12, v5

    sub-long/2addr v14, v12

    goto :goto_4

    :cond_4
    const-wide/16 v14, 0x0

    .line 14
    :goto_4
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->A:Ln3/y0$f;

    iget-wide v5, v5, Ln3/y0$f;->h:J

    cmp-long v12, v5, v3

    if-eqz v12, :cond_5

    .line 15
    invoke-static {v5, v6}, Lm5/g0;->L(J)J

    move-result-wide v5

    move-wide/from16 v23, v5

    move-wide/from16 v29, v8

    goto :goto_6

    .line 16
    :cond_5
    iget-object v5, v1, Lv4/e;->v:Lv4/e$e;

    .line 17
    iget-wide v12, v1, Lv4/e;->e:J

    cmp-long v6, v12, v3

    if-eqz v6, :cond_6

    .line 18
    iget-wide v5, v1, Lv4/e;->u:J

    sub-long/2addr v5, v12

    move-wide/from16 v29, v8

    move-wide v7, v5

    goto :goto_5

    .line 19
    :cond_6
    iget-wide v12, v5, Lv4/e$e;->d:J

    cmp-long v6, v12, v3

    move-wide/from16 v29, v8

    if-eqz v6, :cond_7

    iget-wide v7, v1, Lv4/e;->n:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_7

    move-wide v7, v12

    goto :goto_5

    .line 20
    :cond_7
    iget-wide v7, v5, Lv4/e$e;->c:J

    cmp-long v5, v7, v3

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v7, 0x3

    .line 21
    iget-wide v12, v1, Lv4/e;->m:J

    mul-long/2addr v7, v12

    :goto_5
    add-long/2addr v7, v14

    move-wide/from16 v23, v7

    .line 22
    :goto_6
    iget-wide v7, v1, Lv4/e;->u:J

    add-long v27, v7, v14

    move-wide/from16 v25, v14

    .line 23
    invoke-static/range {v23 .. v28}, Lm5/g0;->j(JJJ)J

    move-result-wide v7

    .line 24
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z:Ln3/y0;

    iget-object v5, v5, Ln3/y0;->j:Ln3/y0$f;

    iget v9, v5, Ln3/y0$f;->k:F

    const v12, -0x800001

    cmpl-float v9, v9, v12

    if-nez v9, :cond_9

    iget v5, v5, Ln3/y0$f;->l:F

    cmpl-float v5, v5, v12

    if-nez v5, :cond_9

    iget-object v5, v1, Lv4/e;->v:Lv4/e$e;

    move-wide/from16 v23, v14

    iget-wide v13, v5, Lv4/e$e;->c:J

    cmp-long v12, v13, v3

    if-nez v12, :cond_a

    iget-wide v12, v5, Lv4/e$e;->d:J

    cmp-long v5, v12, v3

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    move-wide/from16 v23, v14

    :cond_a
    const/4 v5, 0x0

    .line 25
    :goto_7
    new-instance v12, Ln3/y0$f$a;

    invoke-direct {v12}, Ln3/y0$f$a;-><init>()V

    .line 26
    invoke-static {v7, v8}, Lm5/g0;->X(J)J

    move-result-wide v7

    .line 27
    iput-wide v7, v12, Ln3/y0$f$a;->a:J

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_b

    move v8, v7

    goto :goto_8

    .line 28
    :cond_b
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->A:Ln3/y0$f;

    iget v8, v8, Ln3/y0$f;->k:F

    .line 29
    :goto_8
    iput v8, v12, Ln3/y0$f$a;->d:F

    if-eqz v5, :cond_c

    goto :goto_9

    .line 30
    :cond_c
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->A:Ln3/y0$f;

    iget v7, v5, Ln3/y0$f;->l:F

    .line 31
    :goto_9
    iput v7, v12, Ln3/y0$f$a;->e:F

    .line 32
    new-instance v5, Ln3/y0$f;

    invoke-direct {v5, v12}, Ln3/y0$f;-><init>(Ln3/y0$f$a;)V

    .line 33
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->A:Ln3/y0$f;

    .line 34
    iget-wide v7, v1, Lv4/e;->e:J

    cmp-long v3, v7, v3

    if-eqz v3, :cond_d

    goto :goto_a

    .line 35
    :cond_d
    iget-wide v3, v1, Lv4/e;->u:J

    add-long v3, v3, v23

    iget-wide v7, v5, Ln3/y0$f;->h:J

    invoke-static {v7, v8}, Lm5/g0;->L(J)J

    move-result-wide v7

    sub-long v7, v3, v7

    .line 36
    :goto_a
    iget-boolean v3, v1, Lv4/e;->g:Z

    if-eqz v3, :cond_e

    move-wide v3, v7

    goto :goto_b

    .line 37
    :cond_e
    iget-object v3, v1, Lv4/e;->s:Lu6/v;

    .line 38
    invoke-static {v3, v7, v8}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->y(Ljava/util/List;J)Lv4/e$a;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 39
    iget-wide v3, v3, Lv4/e$d;->l:J

    goto :goto_b

    .line 40
    :cond_f
    iget-object v3, v1, Lv4/e;->r:Lu6/v;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_b

    .line 41
    :cond_10
    iget-object v3, v1, Lv4/e;->r:Lu6/v;

    .line 42
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    .line 43
    invoke-static {v3, v4, v5}, Lm5/g0;->c(Ljava/util/List;Ljava/lang/Comparable;Z)I

    move-result v4

    .line 44
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/e$c;

    .line 45
    iget-object v4, v3, Lv4/e$c;->t:Lu6/v;

    invoke-static {v4, v7, v8}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->y(Ljava/util/List;J)Lv4/e$a;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 46
    iget-wide v3, v4, Lv4/e$d;->l:J

    goto :goto_b

    .line 47
    :cond_11
    iget-wide v3, v3, Lv4/e$d;->l:J

    .line 48
    :goto_b
    iget v5, v1, Lv4/e;->d:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    iget-boolean v5, v1, Lv4/e;->f:Z

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    .line 49
    :goto_c
    new-instance v6, Lp4/p0;

    move-object v7, v6

    iget-wide v14, v1, Lv4/e;->u:J

    const/16 v20, 0x1

    iget-boolean v1, v1, Lv4/e;->o:Z

    const/4 v8, 0x1

    xor-int/lit8 v21, v1, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z:Ln3/y0;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->A:Ln3/y0$f;

    move-object/from16 v25, v1

    move-wide/from16 v8, v29

    move-wide/from16 v12, v18

    move-wide/from16 v18, v3

    move/from16 v22, v5

    move-object/from16 v23, v2

    invoke-direct/range {v7 .. v25}, Lp4/p0;-><init>(JJJJJJZZZLjava/lang/Object;Ln3/y0;Ln3/y0$f;)V

    goto :goto_11

    :cond_13
    move-wide/from16 v29, v8

    .line 50
    iget-wide v5, v1, Lv4/e;->e:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_17

    iget-object v3, v1, Lv4/e;->r:Lu6/v;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_f

    .line 51
    :cond_14
    iget-boolean v3, v1, Lv4/e;->g:Z

    if-nez v3, :cond_16

    iget-wide v3, v1, Lv4/e;->e:J

    iget-wide v5, v1, Lv4/e;->u:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_15

    goto :goto_d

    .line 52
    :cond_15
    iget-object v5, v1, Lv4/e;->r:Lu6/v;

    .line 53
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    .line 54
    invoke-static {v5, v3, v4}, Lm5/g0;->c(Ljava/util/List;Ljava/lang/Comparable;Z)I

    move-result v3

    .line 55
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/e$c;

    .line 56
    iget-wide v3, v3, Lv4/e$d;->l:J

    goto :goto_e

    .line 57
    :cond_16
    :goto_d
    iget-wide v3, v1, Lv4/e;->e:J

    :goto_e
    move-wide/from16 v18, v3

    goto :goto_10

    :cond_17
    :goto_f
    const-wide/16 v18, 0x0

    .line 58
    :goto_10
    new-instance v6, Lp4/p0;

    move-object v7, v6

    iget-wide v14, v1, Lv4/e;->u:J

    move-wide v12, v14

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z:Ln3/y0;

    move-object/from16 v24, v1

    const/16 v25, 0x0

    move-wide/from16 v8, v29

    move-object/from16 v23, v2

    invoke-direct/range {v7 .. v25}, Lp4/p0;-><init>(JJJJJJZZZLjava/lang/Object;Ln3/y0;Ln3/y0$f;)V

    .line 59
    :goto_11
    invoke-virtual {v0, v6}, Lp4/a;->w(Ln3/b2;)V

    return-void
.end method
