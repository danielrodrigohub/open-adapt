.class public final Lp4/i0$a;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Ll5/d0$d;
.implements Lp4/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroid/net/Uri;

.field public final c:Ll5/i0;

.field public final d:Lp4/h0;

.field public final e:Ls3/j;

.field public final f:Lm5/e;

.field public final g:Ls3/t;

.field public volatile h:Z

.field public i:Z

.field public j:J

.field public k:Ll5/m;

.field public l:Ls3/w;

.field public m:Z

.field public final synthetic n:Lp4/i0;


# direct methods
.method public constructor <init>(Lp4/i0;Landroid/net/Uri;Ll5/j;Lp4/h0;Ls3/j;Lm5/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/i0$a;->n:Lp4/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lp4/i0$a;->b:Landroid/net/Uri;

    .line 3
    new-instance p1, Ll5/i0;

    invoke-direct {p1, p3}, Ll5/i0;-><init>(Ll5/j;)V

    iput-object p1, p0, Lp4/i0$a;->c:Ll5/i0;

    .line 4
    iput-object p4, p0, Lp4/i0$a;->d:Lp4/h0;

    .line 5
    iput-object p5, p0, Lp4/i0$a;->e:Ls3/j;

    .line 6
    iput-object p6, p0, Lp4/i0$a;->f:Lm5/e;

    .line 7
    new-instance p1, Ls3/t;

    invoke-direct {p1}, Ls3/t;-><init>()V

    iput-object p1, p0, Lp4/i0$a;->g:Ls3/t;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lp4/i0$a;->i:Z

    .line 9
    invoke-static {}, Lp4/r;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lp4/i0$a;->a:J

    const-wide/16 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Lp4/i0$a;->c(J)Ll5/m;

    move-result-object p1

    iput-object p1, p0, Lp4/i0$a;->k:Ll5/m;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_a

    .line 1
    iget-boolean v3, v1, Lp4/i0$a;->h:Z

    if-nez v3, :cond_a

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 2
    :try_start_0
    iget-object v6, v1, Lp4/i0$a;->g:Ls3/t;

    iget-wide v13, v6, Ls3/t;->a:J

    .line 3
    invoke-virtual {v1, v13, v14}, Lp4/i0$a;->c(J)Ll5/m;

    move-result-object v6

    iput-object v6, v1, Lp4/i0$a;->k:Ll5/m;

    .line 4
    iget-object v7, v1, Lp4/i0$a;->c:Ll5/i0;

    invoke-virtual {v7, v6}, Ll5/i0;->l(Ll5/m;)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    .line 5
    iget-object v8, v1, Lp4/i0$a;->n:Lp4/i0;

    .line 6
    iget-object v9, v8, Lp4/i0;->w:Landroid/os/Handler;

    new-instance v10, Ly0/s;

    const/4 v11, 0x2

    invoke-direct {v10, v8, v11}, Ly0/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    move-wide v15, v6

    .line 7
    iget-object v6, v1, Lp4/i0$a;->n:Lp4/i0;

    iget-object v7, v1, Lp4/i0$a;->c:Ll5/i0;

    invoke-virtual {v7}, Ll5/i0;->h()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lj4/b;->a(Ljava/util/Map;)Lj4/b;

    move-result-object v7

    .line 8
    iput-object v7, v6, Lp4/i0;->y:Lj4/b;

    .line 9
    iget-object v6, v1, Lp4/i0$a;->c:Ll5/i0;

    .line 10
    iget-object v7, v1, Lp4/i0$a;->n:Lp4/i0;

    .line 11
    iget-object v7, v7, Lp4/i0;->y:Lj4/b;

    if-eqz v7, :cond_1

    .line 12
    iget v7, v7, Lj4/b;->m:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 13
    new-instance v8, Lp4/q;

    invoke-direct {v8, v6, v7, v1}, Lp4/q;-><init>(Ll5/j;ILp4/q$a;)V

    .line 14
    iget-object v6, v1, Lp4/i0$a;->n:Lp4/i0;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v7, Lp4/i0$d;

    invoke-direct {v7, v0, v3}, Lp4/i0$d;-><init>(IZ)V

    invoke-virtual {v6, v7}, Lp4/i0;->C(Lp4/i0$d;)Ls3/w;

    move-result-object v6

    .line 16
    iput-object v6, v1, Lp4/i0$a;->l:Ls3/w;

    .line 17
    sget-object v7, Lp4/i0;->U:Ln3/s0;

    .line 18
    check-cast v6, Lp4/l0;

    invoke-virtual {v6, v7}, Lp4/l0;->b(Ln3/s0;)V

    goto :goto_1

    :cond_1
    move-object v8, v6

    .line 19
    :goto_1
    iget-object v6, v1, Lp4/i0$a;->d:Lp4/h0;

    iget-object v9, v1, Lp4/i0$a;->b:Landroid/net/Uri;

    iget-object v7, v1, Lp4/i0$a;->c:Ll5/i0;

    .line 20
    invoke-virtual {v7}, Ll5/i0;->h()Ljava/util/Map;

    move-result-object v10

    iget-object v11, v1, Lp4/i0$a;->e:Ls3/j;

    .line 21
    move-object v7, v6

    check-cast v7, Lp4/c;

    move-object v6, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide v13, v15

    move-object v15, v6

    invoke-virtual/range {v7 .. v15}, Lp4/c;->b(Ll5/h;Landroid/net/Uri;Ljava/util/Map;JJLs3/j;)V

    .line 22
    iget-object v6, v1, Lp4/i0$a;->n:Lp4/i0;

    .line 23
    iget-object v6, v6, Lp4/i0;->y:Lj4/b;

    if-eqz v6, :cond_2

    .line 24
    iget-object v6, v1, Lp4/i0$a;->d:Lp4/h0;

    check-cast v6, Lp4/c;

    .line 25
    iget-object v6, v6, Lp4/c;->b:Ls3/h;

    instance-of v7, v6, Lz3/d;

    if-eqz v7, :cond_2

    .line 26
    check-cast v6, Lz3/d;

    .line 27
    iput-boolean v3, v6, Lz3/d;->r:Z

    .line 28
    :cond_2
    iget-boolean v6, v1, Lp4/i0$a;->i:Z

    if-eqz v6, :cond_3

    .line 29
    iget-object v6, v1, Lp4/i0$a;->d:Lp4/h0;

    iget-wide v7, v1, Lp4/i0$a;->j:J

    check-cast v6, Lp4/c;

    .line 30
    iget-object v6, v6, Lp4/c;->b:Ls3/h;

    .line 31
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-interface {v6, v4, v5, v7, v8}, Ls3/h;->b(JJ)V

    .line 33
    iput-boolean v0, v1, Lp4/i0$a;->i:Z

    :cond_3
    :goto_2
    move-wide v13, v4

    :cond_4
    if-nez v2, :cond_6

    .line 34
    iget-boolean v4, v1, Lp4/i0$a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_6

    .line 35
    :try_start_1
    iget-object v4, v1, Lp4/i0$a;->f:Lm5/e;

    .line 36
    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :goto_3
    :try_start_2
    iget-boolean v5, v4, Lm5/e;->a:Z

    if-nez v5, :cond_5

    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 39
    :cond_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :try_start_4
    iget-object v4, v1, Lp4/i0$a;->d:Lp4/h0;

    iget-object v5, v1, Lp4/i0$a;->g:Ls3/t;

    check-cast v4, Lp4/c;

    .line 41
    iget-object v6, v4, Lp4/c;->b:Ls3/h;

    .line 42
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v4, v4, Lp4/c;->c:Ls3/e;

    .line 44
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v6, v4, v5}, Ls3/h;->e(Ls3/i;Ls3/t;)I

    move-result v2

    .line 46
    iget-object v4, v1, Lp4/i0$a;->d:Lp4/h0;

    check-cast v4, Lp4/c;

    invoke-virtual {v4}, Lp4/c;->a()J

    move-result-wide v4

    .line 47
    iget-object v6, v1, Lp4/i0$a;->n:Lp4/i0;

    .line 48
    iget-wide v6, v6, Lp4/i0;->q:J

    add-long/2addr v6, v13

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 49
    iget-object v6, v1, Lp4/i0$a;->f:Lm5/e;

    invoke-virtual {v6}, Lm5/e;->b()Z

    .line 50
    iget-object v6, v1, Lp4/i0$a;->n:Lp4/i0;

    .line 51
    iget-object v7, v6, Lp4/i0;->w:Landroid/os/Handler;

    .line 52
    iget-object v6, v6, Lp4/i0;->v:Ly0/y;

    .line 53
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 54
    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    :catch_0
    :try_start_6
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    if-ne v2, v3, :cond_7

    move v2, v0

    goto :goto_4

    .line 56
    :cond_7
    iget-object v3, v1, Lp4/i0$a;->d:Lp4/h0;

    check-cast v3, Lp4/c;

    invoke-virtual {v3}, Lp4/c;->a()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    .line 57
    iget-object v3, v1, Lp4/i0$a;->g:Ls3/t;

    iget-object v4, v1, Lp4/i0$a;->d:Lp4/h0;

    check-cast v4, Lp4/c;

    invoke-virtual {v4}, Lp4/c;->a()J

    move-result-wide v4

    iput-wide v4, v3, Ls3/t;->a:J

    .line 58
    :cond_8
    :goto_4
    iget-object v3, v1, Lp4/i0$a;->c:Ll5/i0;

    invoke-static {v3}, Lc3/d;->i(Ll5/j;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-eq v2, v3, :cond_9

    .line 59
    iget-object v2, v1, Lp4/i0$a;->d:Lp4/h0;

    check-cast v2, Lp4/c;

    invoke-virtual {v2}, Lp4/c;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 60
    iget-object v2, v1, Lp4/i0$a;->g:Ls3/t;

    iget-object v3, v1, Lp4/i0$a;->d:Lp4/h0;

    check-cast v3, Lp4/c;

    invoke-virtual {v3}, Lp4/c;->a()J

    move-result-wide v3

    iput-wide v3, v2, Ls3/t;->a:J

    .line 61
    :cond_9
    iget-object v2, v1, Lp4/i0$a;->c:Ll5/i0;

    invoke-static {v2}, Lc3/d;->i(Ll5/j;)V

    .line 62
    throw v0

    :cond_a
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp4/i0$a;->h:Z

    return-void
.end method

.method public final c(J)Ll5/m;
    .locals 16

    move-object/from16 v0, p0

    const/4 v5, 0x1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    const-wide/16 v10, -0x1

    .line 2
    iget-object v2, v0, Lp4/i0$a;->b:Landroid/net/Uri;

    .line 3
    iget-object v1, v0, Lp4/i0$a;->n:Lp4/i0;

    .line 4
    iget-object v12, v1, Lp4/i0;->p:Ljava/lang/String;

    const/4 v13, 0x6

    .line 5
    sget-object v7, Lp4/i0;->T:Ljava/util/Map;

    const-string v1, "The uri must be set."

    .line 6
    invoke-static {v2, v1}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v15, Ll5/m;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    move-object v1, v15

    move-wide/from16 v8, p1

    .line 8
    invoke-direct/range {v1 .. v14}, Ll5/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v15
.end method
