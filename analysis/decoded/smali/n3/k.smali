.class public final Ln3/k;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Ln3/x0;


# instance fields
.field public final a:Ll5/n;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:J

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    new-instance v0, Ll5/n;

    invoke-direct {v0}, Ll5/n;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    .line 3
    invoke-static {v1, v2, v3, v4}, Ln3/k;->j(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    .line 4
    invoke-static {v5, v2, v6, v4}, Ln3/k;->j(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    .line 5
    invoke-static {v7, v1, v8, v3}, Ln3/k;->j(IILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v7, v5, v8, v6}, Ln3/k;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "maxBufferMs"

    .line 7
    invoke-static {v7, v7, v3, v8}, Ln3/k;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "backBufferDurationMs"

    .line 8
    invoke-static {v2, v2, v3, v4}, Ln3/k;->j(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v0, p0, Ln3/k;->a:Ll5/n;

    int-to-long v3, v7

    .line 10
    invoke-static {v3, v4}, Lm5/g0;->L(J)J

    move-result-wide v6

    iput-wide v6, p0, Ln3/k;->b:J

    .line 11
    invoke-static {v3, v4}, Lm5/g0;->L(J)J

    move-result-wide v3

    iput-wide v3, p0, Ln3/k;->c:J

    int-to-long v0, v1

    .line 12
    invoke-static {v0, v1}, Lm5/g0;->L(J)J

    move-result-wide v0

    iput-wide v0, p0, Ln3/k;->d:J

    int-to-long v0, v5

    .line 13
    invoke-static {v0, v1}, Lm5/g0;->L(J)J

    move-result-wide v0

    iput-wide v0, p0, Ln3/k;->e:J

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Ln3/k;->f:I

    const/high16 v0, 0xc80000

    .line 15
    iput v0, p0, Ln3/k;->h:I

    int-to-long v0, v2

    .line 16
    invoke-static {v0, v1}, Lm5/g0;->L(J)J

    move-result-wide v0

    iput-wide v0, p0, Ln3/k;->g:J

    return-void
.end method

.method public static j(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lm5/a;->b(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(JF)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/k;->a:Ll5/n;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, v0, Ll5/n;->d:I

    iget v2, v0, Ll5/n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v1, v2

    monitor-exit v0

    .line 4
    iget v0, p0, Ln3/k;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 5
    :goto_0
    iget-wide v4, p0, Ln3/k;->b:J

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 6
    invoke-static {v4, v5, p3}, Lm5/g0;->w(JF)J

    move-result-wide v4

    .line 7
    iget-wide v6, p0, Ln3/k;->c:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_1
    const-wide/32 v6, 0x7a120

    .line 8
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long p3, p1, v4

    if-gez p3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 9
    :goto_1
    iput-boolean v2, p0, Ln3/k;->i:Z

    if-nez v2, :cond_5

    cmp-long p1, p1, v6

    if-gez p1, :cond_5

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 10
    invoke-static {p1, p2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_3
    iget-wide v1, p0, Ln3/k;->c:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_4

    if-eqz v0, :cond_5

    .line 12
    :cond_4
    iput-boolean v3, p0, Ln3/k;->i:Z

    .line 13
    :cond_5
    :goto_2
    iget-boolean p1, p0, Ln3/k;->i:Z

    return p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0

    throw p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ln3/k;->k(Z)V

    return-void
.end method

.method public final d(JFZJ)Z
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lm5/g0;->A(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    .line 2
    iget-wide p3, p0, Ln3/k;->e:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Ln3/k;->d:J

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x2

    .line 3
    div-long/2addr p5, v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_1
    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-lez p5, :cond_3

    cmp-long p1, p1, p3

    if-gez p1, :cond_3

    .line 4
    iget-object p1, p0, Ln3/k;->a:Ll5/n;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget p2, p1, Ll5/n;->d:I

    iget p3, p1, Ll5/n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr p2, p3

    monitor-exit p1

    .line 7
    iget p1, p0, Ln3/k;->h:I

    if-lt p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1

    throw p2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public final e()Ll5/b;
    .locals 1

    iget-object v0, p0, Ln3/k;->a:Ll5/n;

    return-object v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ln3/k;->k(Z)V

    return-void
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Ln3/k;->g:J

    return-wide v0
.end method

.method public final h([Ln3/s1;[Lj5/l;)V
    .locals 6

    .line 1
    iget v0, p0, Ln3/k;->f:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    move v2, v0

    .line 2
    :goto_0
    array-length v3, p1

    const/high16 v4, 0xc80000

    if-ge v0, v3, :cond_1

    .line 3
    aget-object v3, p2, v0

    if-eqz v3, :cond_0

    .line 4
    aget-object v3, p1, v0

    invoke-interface {v3}, Ln3/s1;->u()I

    move-result v3

    const/high16 v5, 0x20000

    packed-switch v3, :pswitch_data_0

    .line 5
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    move v4, v5

    goto :goto_1

    :pswitch_2
    const/high16 v4, 0x7d00000

    goto :goto_1

    :pswitch_3
    const/high16 v4, 0x89a0000

    goto :goto_1

    :pswitch_4
    move v4, v1

    :goto_1
    :pswitch_5
    add-int/2addr v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    :cond_2
    iput v0, p0, Ln3/k;->h:I

    .line 8
    iget-object p1, p0, Ln3/k;->a:Ll5/n;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget p2, p1, Ll5/n;->c:I

    if-ge v0, p2, :cond_3

    const/4 v1, 0x1

    .line 11
    :cond_3
    iput v0, p1, Ll5/n;->c:I

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p1}, Ll5/n;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ln3/k;->k(Z)V

    return-void
.end method

.method public final k(Z)V
    .locals 2

    .line 1
    iget v0, p0, Ln3/k;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0xc80000

    .line 2
    :cond_0
    iput v0, p0, Ln3/k;->h:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln3/k;->i:Z

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Ln3/k;->a:Ll5/n;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-boolean v1, p1, Ll5/n;->a:Z

    if-eqz v1, :cond_3

    .line 7
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget v1, p1, Ll5/n;->c:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 9
    :goto_0
    iput v0, p1, Ll5/n;->c:I

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1}, Ll5/n;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_2
    :try_start_2
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    :cond_3
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_4
    :goto_2
    return-void
.end method
