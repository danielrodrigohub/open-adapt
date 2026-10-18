.class public final Lv4/b$b;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Ll5/d0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll5/d0$a<",
        "Ll5/f0<",
        "Lv4/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final h:Landroid/net/Uri;

.field public final i:Ll5/d0;

.field public final j:Ll5/j;

.field public k:Lv4/e;

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:Z

.field public q:Ljava/io/IOException;

.field public final synthetic r:Lv4/b;


# direct methods
.method public constructor <init>(Lv4/b;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lv4/b$b;->r:Lv4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lv4/b$b;->h:Landroid/net/Uri;

    .line 3
    new-instance p2, Ll5/d0;

    const-string v0, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {p2, v0}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lv4/b$b;->i:Ll5/d0;

    .line 4
    iget-object p1, p1, Lv4/b;->h:Lu4/h;

    .line 5
    invoke-interface {p1}, Lu4/h;->a()Ll5/j;

    move-result-object p1

    iput-object p1, p0, Lv4/b$b;->j:Ll5/j;

    return-void
.end method

.method public static a(Lv4/b$b;J)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lv4/b$b;->o:J

    .line 2
    iget-object p1, p0, Lv4/b$b;->h:Landroid/net/Uri;

    iget-object p2, p0, Lv4/b$b;->r:Lv4/b;

    .line 3
    iget-object p2, p2, Lv4/b;->r:Landroid/net/Uri;

    .line 4
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lv4/b$b;->r:Lv4/b;

    .line 5
    iget-object p1, p0, Lv4/b;->q:Lv4/f;

    iget-object p1, p1, Lv4/f;->e:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 8
    iget-object v5, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv4/f$b;

    iget-object v6, v6, Lv4/f$b;->a:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv4/b$b;

    .line 9
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-wide v6, v5, Lv4/b$b;->o:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 11
    iget-object p1, v5, Lv4/b$b;->h:Landroid/net/Uri;

    .line 12
    iput-object p1, p0, Lv4/b;->r:Landroid/net/Uri;

    .line 13
    invoke-virtual {p0, p1}, Lv4/b;->r(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 14
    invoke-virtual {v5, p0}, Lv4/b$b;->d(Landroid/net/Uri;)V

    move p0, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    return p2
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lv4/b$b;->h:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lv4/b$b;->d(Landroid/net/Uri;)V

    return-void
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lv4/b$b;->r:Lv4/b;

    .line 2
    iget-object v1, v0, Lv4/b;->i:Lv4/i;

    .line 3
    iget-object v0, v0, Lv4/b;->q:Lv4/f;

    .line 4
    iget-object v2, p0, Lv4/b$b;->k:Lv4/e;

    invoke-interface {v1, v0, v2}, Lv4/i;->a(Lv4/f;Lv4/e;)Ll5/f0$a;

    move-result-object v0

    .line 5
    new-instance v1, Ll5/f0;

    iget-object v2, p0, Lv4/b$b;->j:Ll5/j;

    const/4 v3, 0x4

    invoke-direct {v1, v2, p1, v3, v0}, Ll5/f0;-><init>(Ll5/j;Landroid/net/Uri;ILl5/f0$a;)V

    .line 6
    iget-object p1, p0, Lv4/b$b;->i:Ll5/d0;

    iget-object v0, p0, Lv4/b$b;->r:Lv4/b;

    .line 7
    iget-object v0, v0, Lv4/b;->j:Ll5/c0;

    .line 8
    iget v2, v1, Ll5/f0;->c:I

    invoke-interface {v0, v2}, Ll5/c0;->c(I)I

    move-result v0

    .line 9
    invoke-virtual {p1, v1, p0, v0}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    move-result-wide v6

    .line 10
    iget-object p1, p0, Lv4/b$b;->r:Lv4/b;

    .line 11
    iget-object p1, p1, Lv4/b;->m:Lp4/e0$a;

    .line 12
    new-instance v0, Lp4/r;

    iget-wide v3, v1, Ll5/f0;->a:J

    iget-object v5, v1, Ll5/f0;->b:Ll5/m;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lp4/r;-><init>(JLl5/m;J)V

    iget v1, v1, Ll5/f0;->c:I

    invoke-virtual {p1, v0, v1}, Lp4/e0$a;->m(Lp4/r;I)V

    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 7

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lv4/b$b;->o:J

    .line 2
    iget-boolean v0, p0, Lv4/b$b;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lv4/b$b;->i:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lv4/b$b;->i:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lv4/b$b;->n:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    .line 5
    iput-boolean v4, p0, Lv4/b$b;->p:Z

    .line 6
    iget-object v5, p0, Lv4/b$b;->r:Lv4/b;

    .line 7
    iget-object v5, v5, Lv4/b;->o:Landroid/os/Handler;

    .line 8
    new-instance v6, Lp3/h;

    invoke-direct {v6, p0, p1, v4}, Lp3/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sub-long/2addr v2, v0

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lv4/b$b;->c(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e(Lv4/e;Lp4/r;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lv4/b$b;->k:Lv4/e;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    iput-wide v3, v0, Lv4/b$b;->l:J

    .line 4
    iget-object v5, v0, Lv4/b$b;->r:Lv4/b;

    sget-object v6, Lv4/b;->v:Ly0/h;

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    .line 7
    iget-wide v8, v1, Lv4/e;->k:J

    iget-wide v10, v2, Lv4/e;->k:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    goto :goto_1

    :cond_0
    if-gez v8, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v8, v1, Lv4/e;->r:Lu6/v;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, v2, Lv4/e;->r:Lu6/v;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v8, v9

    if-eqz v8, :cond_2

    if-lez v8, :cond_3

    goto :goto_1

    .line 9
    :cond_2
    iget-object v8, v1, Lv4/e;->s:Lu6/v;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 10
    iget-object v9, v2, Lv4/e;->s:Lu6/v;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v8, v9, :cond_4

    if-ne v8, v9, :cond_3

    .line 11
    iget-boolean v8, v1, Lv4/e;->o:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v2, Lv4/e;->o:Z

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v7

    :goto_2
    if-nez v8, :cond_7

    .line 12
    iget-boolean v5, v1, Lv4/e;->o:Z

    if-eqz v5, :cond_6

    .line 13
    iget-boolean v5, v2, Lv4/e;->o:Z

    if-eqz v5, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    new-instance v5, Lv4/e;

    move-object v11, v5

    iget v12, v2, Lv4/e;->d:I

    iget-object v13, v2, Lv4/g;->a:Ljava/lang/String;

    iget-object v14, v2, Lv4/g;->b:Ljava/util/List;

    iget-wide v9, v2, Lv4/e;->e:J

    move-wide v15, v9

    iget-boolean v8, v2, Lv4/e;->g:Z

    move/from16 v17, v8

    iget-wide v8, v2, Lv4/e;->h:J

    move-wide/from16 v18, v8

    iget-boolean v8, v2, Lv4/e;->i:Z

    move/from16 v20, v8

    iget v8, v2, Lv4/e;->j:I

    move/from16 v21, v8

    iget-wide v8, v2, Lv4/e;->k:J

    move-wide/from16 v22, v8

    iget v8, v2, Lv4/e;->l:I

    move/from16 v24, v8

    iget-wide v8, v2, Lv4/e;->m:J

    move-wide/from16 v25, v8

    iget-wide v8, v2, Lv4/e;->n:J

    move-wide/from16 v27, v8

    iget-boolean v8, v2, Lv4/g;->c:Z

    move/from16 v29, v8

    const/16 v30, 0x1

    iget-boolean v8, v2, Lv4/e;->p:Z

    move/from16 v31, v8

    iget-object v8, v2, Lv4/e;->q:Lr3/d;

    move-object/from16 v32, v8

    iget-object v8, v2, Lv4/e;->r:Lu6/v;

    move-object/from16 v33, v8

    iget-object v8, v2, Lv4/e;->s:Lu6/v;

    move-object/from16 v34, v8

    iget-object v8, v2, Lv4/e;->v:Lv4/e$e;

    move-object/from16 v35, v8

    iget-object v8, v2, Lv4/e;->t:Lu6/x;

    move-object/from16 v36, v8

    invoke-direct/range {v11 .. v36}, Lv4/e;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLr3/d;Ljava/util/List;Ljava/util/List;Lv4/e$e;Ljava/util/Map;)V

    goto/16 :goto_b

    :cond_6
    :goto_3
    move-object v5, v2

    goto/16 :goto_b

    .line 15
    :cond_7
    iget-boolean v8, v1, Lv4/e;->p:Z

    if-eqz v8, :cond_9

    .line 16
    iget-wide v8, v1, Lv4/e;->h:J

    :cond_8
    :goto_4
    move-wide/from16 v17, v8

    goto :goto_7

    .line 17
    :cond_9
    iget-object v8, v5, Lv4/b;->s:Lv4/e;

    if-eqz v8, :cond_a

    iget-wide v8, v8, Lv4/e;->h:J

    goto :goto_5

    :cond_a
    const-wide/16 v8, 0x0

    :goto_5
    if-nez v2, :cond_b

    goto :goto_4

    .line 18
    :cond_b
    iget-object v10, v2, Lv4/e;->r:Lu6/v;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 19
    invoke-static {v2, v1}, Lv4/b;->q(Lv4/e;Lv4/e;)Lv4/e$c;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 20
    iget-wide v8, v2, Lv4/e;->h:J

    iget-wide v10, v11, Lv4/e$d;->l:J

    goto :goto_6

    :cond_c
    int-to-long v10, v10

    .line 21
    iget-wide v12, v1, Lv4/e;->k:J

    iget-wide v14, v2, Lv4/e;->k:J

    sub-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    .line 22
    iget-wide v8, v2, Lv4/e;->h:J

    iget-wide v10, v2, Lv4/e;->u:J

    :goto_6
    add-long/2addr v8, v10

    goto :goto_4

    .line 23
    :goto_7
    iget-boolean v8, v1, Lv4/e;->i:Z

    if-eqz v8, :cond_e

    .line 24
    iget v5, v1, Lv4/e;->j:I

    :cond_d
    :goto_8
    move/from16 v20, v5

    goto :goto_a

    .line 25
    :cond_e
    iget-object v5, v5, Lv4/b;->s:Lv4/e;

    if-eqz v5, :cond_f

    .line 26
    iget v5, v5, Lv4/e;->j:I

    goto :goto_9

    :cond_f
    move v5, v6

    :goto_9
    if-nez v2, :cond_10

    goto :goto_8

    .line 27
    :cond_10
    invoke-static {v2, v1}, Lv4/b;->q(Lv4/e;Lv4/e;)Lv4/e$c;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 28
    iget v5, v2, Lv4/e;->j:I

    iget v8, v8, Lv4/e$d;->k:I

    add-int/2addr v5, v8

    iget-object v8, v1, Lv4/e;->r:Lu6/v;

    .line 29
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv4/e$c;

    iget v8, v8, Lv4/e$d;->k:I

    sub-int/2addr v5, v8

    goto :goto_8

    .line 30
    :goto_a
    new-instance v5, Lv4/e;

    move-object v10, v5

    iget v11, v1, Lv4/e;->d:I

    iget-object v12, v1, Lv4/g;->a:Ljava/lang/String;

    iget-object v13, v1, Lv4/g;->b:Ljava/util/List;

    iget-wide v14, v1, Lv4/e;->e:J

    iget-boolean v8, v1, Lv4/e;->g:Z

    move/from16 v16, v8

    iget-wide v8, v1, Lv4/e;->k:J

    move-wide/from16 v21, v8

    iget v8, v1, Lv4/e;->l:I

    move/from16 v23, v8

    iget-wide v8, v1, Lv4/e;->m:J

    move-wide/from16 v24, v8

    iget-wide v8, v1, Lv4/e;->n:J

    move-wide/from16 v26, v8

    iget-boolean v8, v1, Lv4/g;->c:Z

    move/from16 v28, v8

    iget-boolean v8, v1, Lv4/e;->o:Z

    move/from16 v29, v8

    iget-boolean v8, v1, Lv4/e;->p:Z

    move/from16 v30, v8

    iget-object v8, v1, Lv4/e;->q:Lr3/d;

    move-object/from16 v31, v8

    iget-object v8, v1, Lv4/e;->r:Lu6/v;

    move-object/from16 v32, v8

    iget-object v8, v1, Lv4/e;->s:Lu6/v;

    move-object/from16 v33, v8

    iget-object v8, v1, Lv4/e;->v:Lv4/e$e;

    move-object/from16 v34, v8

    iget-object v8, v1, Lv4/e;->t:Lu6/x;

    move-object/from16 v35, v8

    const/16 v19, 0x1

    invoke-direct/range {v10 .. v35}, Lv4/e;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLr3/d;Ljava/util/List;Ljava/util/List;Lv4/e$e;Ljava/util/Map;)V

    .line 31
    :goto_b
    iput-object v5, v0, Lv4/b$b;->k:Lv4/e;

    const/4 v8, 0x0

    if-eq v5, v2, :cond_13

    .line 32
    iput-object v8, v0, Lv4/b$b;->q:Ljava/io/IOException;

    .line 33
    iput-wide v3, v0, Lv4/b$b;->m:J

    .line 34
    iget-object v1, v0, Lv4/b$b;->r:Lv4/b;

    iget-object v8, v0, Lv4/b$b;->h:Landroid/net/Uri;

    .line 35
    iget-object v9, v1, Lv4/b;->r:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 36
    iget-object v8, v1, Lv4/b;->s:Lv4/e;

    if-nez v8, :cond_11

    .line 37
    iget-boolean v8, v5, Lv4/e;->o:Z

    xor-int/2addr v8, v7

    iput-boolean v8, v1, Lv4/b;->t:Z

    .line 38
    iget-wide v8, v5, Lv4/e;->h:J

    iput-wide v8, v1, Lv4/b;->u:J

    .line 39
    :cond_11
    iput-object v5, v1, Lv4/b;->s:Lv4/e;

    .line 40
    iget-object v8, v1, Lv4/b;->p:Lv4/j$d;

    check-cast v8, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z(Lv4/e;)V

    .line 41
    :cond_12
    iget-object v1, v1, Lv4/b;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv4/j$a;

    .line 42
    invoke-interface {v5}, Lv4/j$a;->h()V

    goto :goto_c

    .line 43
    :cond_13
    iget-boolean v5, v5, Lv4/e;->o:Z

    if-nez v5, :cond_16

    .line 44
    iget-wide v9, v1, Lv4/e;->k:J

    iget-object v1, v1, Lv4/e;->r:Lu6/v;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v11, v1

    add-long/2addr v9, v11

    iget-object v1, v0, Lv4/b$b;->k:Lv4/e;

    iget-wide v11, v1, Lv4/e;->k:J

    cmp-long v5, v9, v11

    if-gez v5, :cond_14

    .line 45
    new-instance v1, Lv4/j$b;

    invoke-direct {v1}, Lv4/j$b;-><init>()V

    move v5, v7

    goto :goto_d

    .line 46
    :cond_14
    iget-wide v9, v0, Lv4/b$b;->m:J

    sub-long v9, v3, v9

    long-to-double v9, v9

    iget-wide v11, v1, Lv4/e;->m:J

    .line 47
    invoke-static {v11, v12}, Lm5/g0;->X(J)J

    move-result-wide v11

    long-to-double v11, v11

    iget-object v1, v0, Lv4/b$b;->r:Lv4/b;

    .line 48
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v13, 0x400c000000000000L    # 3.5

    mul-double/2addr v11, v13

    cmpl-double v1, v9, v11

    if-lez v1, :cond_15

    .line 49
    new-instance v8, Lv4/j$c;

    invoke-direct {v8}, Lv4/j$c;-><init>()V

    :cond_15
    move v5, v6

    move-object v1, v8

    :goto_d
    if-eqz v1, :cond_16

    .line 50
    iput-object v1, v0, Lv4/b$b;->q:Ljava/io/IOException;

    .line 51
    iget-object v8, v0, Lv4/b$b;->r:Lv4/b;

    iget-object v9, v0, Lv4/b$b;->h:Landroid/net/Uri;

    new-instance v10, Ll5/c0$c;

    invoke-direct {v10, v1, v7}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    invoke-static {v8, v9, v10, v5}, Lv4/b;->p(Lv4/b;Landroid/net/Uri;Ll5/c0$c;Z)Z

    .line 52
    :cond_16
    iget-object v1, v0, Lv4/b$b;->k:Lv4/e;

    iget-object v5, v1, Lv4/e;->v:Lv4/e$e;

    iget-boolean v5, v5, Lv4/e$e;->e:Z

    if-nez v5, :cond_18

    if-eq v1, v2, :cond_17

    .line 53
    iget-wide v1, v1, Lv4/e;->m:J

    goto :goto_e

    .line 54
    :cond_17
    iget-wide v1, v1, Lv4/e;->m:J

    const-wide/16 v8, 0x2

    div-long/2addr v1, v8

    :goto_e
    move-wide v9, v1

    goto :goto_f

    :cond_18
    const-wide/16 v9, 0x0

    .line 55
    :goto_f
    invoke-static {v9, v10}, Lm5/g0;->X(J)J

    move-result-wide v1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lv4/b$b;->n:J

    .line 56
    iget-object v1, v0, Lv4/b$b;->k:Lv4/e;

    iget-wide v1, v1, Lv4/e;->n:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    iget-object v1, v0, Lv4/b$b;->h:Landroid/net/Uri;

    iget-object v2, v0, Lv4/b$b;->r:Lv4/b;

    .line 57
    iget-object v2, v2, Lv4/b;->r:Landroid/net/Uri;

    .line 58
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    move v6, v7

    :cond_1a
    if-eqz v6, :cond_20

    .line 59
    iget-object v1, v0, Lv4/b$b;->k:Lv4/e;

    iget-boolean v2, v1, Lv4/e;->o:Z

    if-nez v2, :cond_20

    .line 60
    iget-object v1, v1, Lv4/e;->v:Lv4/e$e;

    iget-wide v5, v1, Lv4/e$e;->a:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_1b

    iget-boolean v1, v1, Lv4/e$e;->e:Z

    if-nez v1, :cond_1b

    .line 61
    iget-object v1, v0, Lv4/b$b;->h:Landroid/net/Uri;

    goto :goto_11

    .line 62
    :cond_1b
    iget-object v1, v0, Lv4/b$b;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 63
    iget-object v2, v0, Lv4/b$b;->k:Lv4/e;

    iget-object v5, v2, Lv4/e;->v:Lv4/e$e;

    iget-boolean v5, v5, Lv4/e$e;->e:Z

    if-eqz v5, :cond_1d

    .line 64
    iget-wide v5, v2, Lv4/e;->k:J

    iget-object v2, v2, Lv4/e;->r:Lu6/v;

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v5, v7

    .line 66
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_HLS_msn"

    invoke-virtual {v1, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    iget-object v2, v0, Lv4/b$b;->k:Lv4/e;

    iget-wide v5, v2, Lv4/e;->n:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1d

    .line 68
    iget-object v2, v2, Lv4/e;->s:Lu6/v;

    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 70
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-static {v2}, Lg0/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/e$a;

    iget-boolean v2, v2, Lv4/e$a;->t:Z

    if-eqz v2, :cond_1c

    add-int/lit8 v5, v5, -0x1

    .line 71
    :cond_1c
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_HLS_part"

    invoke-virtual {v1, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    :cond_1d
    iget-object v2, v0, Lv4/b$b;->k:Lv4/e;

    iget-object v2, v2, Lv4/e;->v:Lv4/e$e;

    iget-wide v5, v2, Lv4/e$e;->a:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1f

    .line 73
    iget-boolean v2, v2, Lv4/e$e;->b:Z

    if-eqz v2, :cond_1e

    const-string v2, "v2"

    goto :goto_10

    :cond_1e
    const-string v2, "YES"

    :goto_10
    const-string v3, "_HLS_skip"

    .line 74
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    :cond_1f
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 76
    :goto_11
    invoke-virtual {v0, v1}, Lv4/b$b;->d(Landroid/net/Uri;)V

    :cond_20
    return-void
.end method

.method public final h(Ll5/d0$d;JJ)V
    .locals 0

    .line 1
    check-cast p1, Ll5/f0;

    .line 2
    iget-object p2, p1, Ll5/f0;->f:Ljava/lang/Object;

    .line 3
    check-cast p2, Lv4/g;

    .line 4
    new-instance p3, Lp4/r;

    .line 5
    iget-object p1, p1, Ll5/f0;->d:Ll5/i0;

    .line 6
    iget-object p4, p1, Ll5/i0;->c:Landroid/net/Uri;

    .line 7
    iget-object p1, p1, Ll5/i0;->d:Ljava/util/Map;

    .line 8
    invoke-direct {p3, p1}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 9
    instance-of p1, p2, Lv4/e;

    const/4 p4, 0x4

    if-eqz p1, :cond_0

    .line 10
    check-cast p2, Lv4/e;

    invoke-virtual {p0, p2, p3}, Lv4/b$b;->e(Lv4/e;Lp4/r;)V

    .line 11
    iget-object p1, p0, Lv4/b$b;->r:Lv4/b;

    .line 12
    iget-object p1, p1, Lv4/b;->m:Lp4/e0$a;

    .line 13
    invoke-virtual {p1, p3, p4}, Lp4/e0$a;->g(Lp4/r;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Loaded playlist has unexpected type."

    .line 14
    invoke-static {p2, p1}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    iput-object p1, p0, Lv4/b$b;->q:Ljava/io/IOException;

    .line 15
    iget-object p2, p0, Lv4/b$b;->r:Lv4/b;

    .line 16
    iget-object p2, p2, Lv4/b;->m:Lp4/e0$a;

    const/4 p5, 0x1

    .line 17
    invoke-virtual {p2, p3, p4, p1, p5}, Lp4/e0$a;->k(Lp4/r;ILjava/io/IOException;Z)V

    .line 18
    :goto_0
    iget-object p1, p0, Lv4/b$b;->r:Lv4/b;

    .line 19
    iget-object p1, p1, Lv4/b;->j:Ll5/c0;

    .line 20
    invoke-interface {p1}, Ll5/c0;->d()V

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
    iget-object p1, p1, Ll5/f0;->d:Ll5/i0;

    .line 4
    iget-object p3, p1, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object p1, p1, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {p2, p1}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object p1, p0, Lv4/b$b;->r:Lv4/b;

    .line 8
    iget-object p1, p1, Lv4/b;->j:Ll5/c0;

    .line 9
    invoke-interface {p1}, Ll5/c0;->d()V

    .line 10
    iget-object p1, p0, Lv4/b$b;->r:Lv4/b;

    .line 11
    iget-object p1, p1, Lv4/b;->m:Lp4/e0$a;

    const/4 p3, 0x4

    .line 12
    invoke-virtual {p1, p2, p3}, Lp4/e0$a;->d(Lp4/r;I)V

    return-void
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 4

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

    const-string p3, "_HLS_msn"

    .line 7
    invoke-virtual {p4, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    move p3, p5

    .line 8
    :goto_0
    instance-of v0, p6, Lv4/h$a;

    if-nez p3, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    const p3, 0x7fffffff

    .line 9
    instance-of v1, p6, Ll5/z;

    if-eqz v1, :cond_2

    .line 10
    move-object p3, p6

    check-cast p3, Ll5/z;

    iget p3, p3, Ll5/z;->k:I

    :cond_2
    if-nez v0, :cond_6

    const/16 v0, 0x190

    if-eq p3, v0, :cond_6

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    new-instance p3, Ll5/c0$c;

    invoke-direct {p3, p6, p7}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    .line 12
    iget-object p7, p0, Lv4/b$b;->r:Lv4/b;

    iget-object v0, p0, Lv4/b$b;->h:Landroid/net/Uri;

    .line 13
    invoke-static {p7, v0, p3, p5}, Lv4/b;->p(Lv4/b;Landroid/net/Uri;Ll5/c0$c;Z)Z

    move-result p7

    if-eqz p7, :cond_5

    .line 14
    iget-object p7, p0, Lv4/b$b;->r:Lv4/b;

    .line 15
    iget-object p7, p7, Lv4/b;->j:Ll5/c0;

    .line 16
    invoke-interface {p7, p3}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_4

    .line 17
    new-instance p3, Ll5/d0$b;

    .line 18
    invoke-direct {p3, p5, v0, v1}, Ll5/d0$b;-><init>(IJ)V

    goto :goto_1

    .line 19
    :cond_4
    sget-object p3, Ll5/d0;->f:Ll5/d0$b;

    goto :goto_1

    .line 20
    :cond_5
    sget-object p3, Ll5/d0;->e:Ll5/d0$b;

    .line 21
    :goto_1
    invoke-virtual {p3}, Ll5/d0$b;->a()Z

    move-result p5

    xor-int/2addr p4, p5

    .line 22
    iget-object p5, p0, Lv4/b$b;->r:Lv4/b;

    .line 23
    iget-object p5, p5, Lv4/b;->m:Lp4/e0$a;

    .line 24
    iget p1, p1, Ll5/f0;->c:I

    invoke-virtual {p5, p2, p1, p6, p4}, Lp4/e0$a;->k(Lp4/r;ILjava/io/IOException;Z)V

    if-eqz p4, :cond_7

    .line 25
    iget-object p1, p0, Lv4/b$b;->r:Lv4/b;

    .line 26
    iget-object p1, p1, Lv4/b;->j:Ll5/c0;

    .line 27
    invoke-interface {p1}, Ll5/c0;->d()V

    goto :goto_3

    .line 28
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lv4/b$b;->n:J

    .line 29
    invoke-virtual {p0}, Lv4/b$b;->b()V

    .line 30
    iget-object p3, p0, Lv4/b$b;->r:Lv4/b;

    .line 31
    iget-object p3, p3, Lv4/b;->m:Lp4/e0$a;

    .line 32
    sget p5, Lm5/g0;->a:I

    iget p1, p1, Ll5/f0;->c:I

    .line 33
    invoke-virtual {p3, p2, p1, p6, p4}, Lp4/e0$a;->k(Lp4/r;ILjava/io/IOException;Z)V

    .line 34
    sget-object p3, Ll5/d0;->e:Ll5/d0$b;

    :cond_7
    :goto_3
    return-object p3
.end method
