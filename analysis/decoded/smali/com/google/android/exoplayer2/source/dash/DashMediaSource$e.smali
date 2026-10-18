.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll5/d0$a<",
        "Ll5/f0<",
        "Lt4/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Ll5/d0$d;JJ)V
    .locals 17

    move-wide/from16 v0, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Ll5/f0;

    move-object/from16 v3, p0

    .line 2
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v5, Lp4/r;

    iget-wide v6, v2, Ll5/f0;->a:J

    .line 4
    iget-object v6, v2, Ll5/f0;->d:Ll5/i0;

    .line 5
    iget-object v7, v6, Ll5/i0;->c:Landroid/net/Uri;

    .line 6
    iget-object v6, v6, Ll5/i0;->d:Ljava/util/Map;

    .line 7
    invoke-direct {v5, v6}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 8
    iget-object v6, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    invoke-interface {v6}, Ll5/c0;->d()V

    .line 9
    iget-object v6, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lp4/e0$a;

    iget v7, v2, Ll5/f0;->c:I

    invoke-virtual {v6, v5, v7}, Lp4/e0$a;->g(Lp4/r;I)V

    .line 10
    iget-object v5, v2, Ll5/f0;->f:Ljava/lang/Object;

    .line 11
    check-cast v5, Lt4/c;

    .line 12
    iget-object v6, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lt4/c;->c()I

    move-result v6

    .line 13
    :goto_0
    invoke-virtual {v5, v7}, Lt4/c;->b(I)Lt4/g;

    move-result-object v8

    iget-wide v8, v8, Lt4/g;->b:J

    move v10, v7

    :goto_1
    if-ge v10, v6, :cond_1

    .line 14
    iget-object v11, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    .line 15
    invoke-virtual {v11, v10}, Lt4/c;->b(I)Lt4/g;

    move-result-object v11

    iget-wide v11, v11, Lt4/g;->b:J

    cmp-long v11, v11, v8

    if-gez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 16
    :cond_1
    iget-boolean v8, v5, Lt4/c;->d:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    sub-int v8, v6, v10

    .line 17
    invoke-virtual {v5}, Lt4/c;->c()I

    move-result v11

    if-le v8, v11, :cond_2

    const-string v8, "DashMediaSource"

    const-string v11, "Loaded out of sync manifest"

    .line 18
    invoke-static {v8, v11}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_2
    iget-wide v11, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v11, v13

    if-eqz v8, :cond_3

    iget-wide v13, v5, Lt4/c;->h:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    cmp-long v8, v13, v11

    if-gtz v8, :cond_3

    const-string v8, "DashMediaSource"

    const-string v11, "Loaded stale dynamic manifest: "

    .line 20
    invoke-static {v11}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 21
    iget-wide v12, v5, Lt4/c;->h:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v8, v9

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    if-eqz v8, :cond_5

    .line 22
    iget v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:I

    iget-object v1, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    iget v2, v2, Ll5/f0;->c:I

    .line 23
    invoke-interface {v1, v2}, Ll5/c0;->c(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 24
    iget v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 25
    iget-object v2, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroidx/activity/g;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 26
    :cond_4
    new-instance v0, Ls4/c;

    invoke-direct {v0}, Ls4/c;-><init>()V

    iput-object v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:Ls4/c;

    goto/16 :goto_9

    .line 27
    :cond_5
    iput v7, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:I

    .line 28
    :cond_6
    iput-object v5, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    .line 29
    iget-boolean v8, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Z

    iget-boolean v5, v5, Lt4/c;->d:Z

    and-int/2addr v5, v8

    iput-boolean v5, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Z

    sub-long v11, v0, p4

    .line 30
    iput-wide v11, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:J

    .line 31
    iput-wide v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->R:J

    .line 32
    iget-object v1, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, v2, Ll5/f0;->b:Ll5/m;

    iget-object v0, v0, Ll5/m;->a:Landroid/net/Uri;

    iget-object v5, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:Landroid/net/Uri;

    if-ne v0, v5, :cond_7

    move v7, v9

    :cond_7
    if-eqz v7, :cond_9

    .line 34
    iget-object v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-object v0, v0, Lt4/c;->k:Landroid/net/Uri;

    if-eqz v0, :cond_8

    goto :goto_4

    .line 35
    :cond_8
    iget-object v0, v2, Ll5/f0;->d:Ll5/i0;

    .line 36
    iget-object v0, v0, Ll5/i0;->c:Landroid/net/Uri;

    .line 37
    :goto_4
    iput-object v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:Landroid/net/Uri;

    .line 38
    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_14

    .line 39
    iget-object v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-boolean v1, v0, Lt4/c;->d:Z

    if-eqz v1, :cond_13

    .line 40
    iget-object v0, v0, Lt4/c;->i:Lfe/h;

    if-eqz v0, :cond_12

    .line 41
    iget-object v1, v0, Lfe/h;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "urn:mpeg:dash:utc:direct:2014"

    .line 42
    invoke-static {v1, v2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "urn:mpeg:dash:utc:direct:2012"

    .line 43
    invoke-static {v1, v2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    const-string v2, "urn:mpeg:dash:utc:http-iso:2014"

    .line 44
    invoke-static {v1, v2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "urn:mpeg:dash:utc:http-iso:2012"

    .line 45
    invoke-static {v1, v2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    const-string v2, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 46
    invoke-static {v1, v2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 47
    invoke-static {v1, v2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    const-string v0, "urn:mpeg:dash:utc:ntp:2014"

    .line 48
    invoke-static {v1, v0}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "urn:mpeg:dash:utc:ntp:2012"

    .line 49
    invoke-static {v1, v0}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    .line 50
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTC timing scheme"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    goto :goto_9

    .line 51
    :cond_e
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z()V

    goto :goto_9

    .line 52
    :cond_f
    :goto_6
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E(Lfe/h;Ll5/f0$a;)V

    goto :goto_9

    .line 53
    :cond_10
    :goto_7
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E(Lfe/h;Ll5/f0$a;)V

    goto :goto_9

    .line 54
    :cond_11
    :goto_8
    :try_start_1
    iget-object v0, v0, Lfe/h;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lm5/g0;->O(Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->R:J

    sub-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C(J)V
    :try_end_1
    .catch Ln3/i1; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    goto :goto_9

    .line 57
    :cond_12
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z()V

    goto :goto_9

    .line 58
    :cond_13
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    goto :goto_9

    .line 59
    :cond_14
    iget v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:I

    add-int/2addr v0, v10

    iput v0, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:I

    .line 60
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    :goto_9
    return-void

    :catchall_0
    move-exception v0

    .line 61
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Ll5/f0;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

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
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->h:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p3, Lp4/r;

    iget-wide p4, p1, Ll5/f0;->a:J

    .line 4
    iget-object p4, p1, Ll5/f0;->d:Ll5/i0;

    .line 5
    iget-object p5, p4, Ll5/i0;->c:Landroid/net/Uri;

    .line 6
    iget-object p4, p4, Ll5/i0;->d:Ljava/util/Map;

    .line 7
    invoke-direct {p3, p4}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 8
    new-instance p4, Ll5/c0$c;

    invoke-direct {p4, p6, p7}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    .line 9
    iget-object p5, p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    invoke-interface {p5, p4}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide p4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p7, p4, v0

    if-nez p7, :cond_0

    .line 10
    sget-object p4, Ll5/d0;->f:Ll5/d0$b;

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    .line 11
    new-instance v0, Ll5/d0$b;

    .line 12
    invoke-direct {v0, p7, p4, p5}, Ll5/d0$b;-><init>(IJ)V

    move-object p4, v0

    .line 13
    :goto_0
    invoke-virtual {p4}, Ll5/d0$b;->a()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    .line 14
    iget-object p7, p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lp4/e0$a;

    iget p1, p1, Ll5/f0;->c:I

    invoke-virtual {p7, p3, p1, p6, p5}, Lp4/e0$a;->k(Lp4/r;ILjava/io/IOException;Z)V

    if-eqz p5, :cond_1

    .line 15
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    invoke-interface {p1}, Ll5/c0;->d()V

    :cond_1
    return-object p4
.end method
