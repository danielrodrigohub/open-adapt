.class public final Le4/d;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Le4/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le4/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/MediaCodec;

.field public final b:Le4/g;

.field public final c:Le4/f;

.field public final d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le4/d;->a:Landroid/media/MediaCodec;

    .line 3
    new-instance v0, Le4/g;

    invoke-direct {v0, p2}, Le4/g;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Le4/d;->b:Le4/g;

    .line 4
    new-instance p2, Le4/f;

    invoke-direct {p2, p1, p3}, Le4/f;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    iput-object p2, p0, Le4/d;->c:Le4/f;

    .line 5
    iput-boolean p4, p0, Le4/d;->d:Z

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Le4/d;->f:I

    return-void
.end method

.method public static p(Le4/d;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le4/d;->b:Le4/g;

    iget-object v1, p0, Le4/d;->a:Landroid/media/MediaCodec;

    .line 2
    iget-object v2, v0, Le4/g;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 3
    iget-object v2, v0, Le4/g;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v2, Landroid/os/Handler;

    iget-object v5, v0, Le4/g;->b:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 6
    iput-object v2, v0, Le4/g;->c:Landroid/os/Handler;

    const-string v0, "configureCodec"

    .line 7
    invoke-static {v0}, Li0/b;->d(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 9
    invoke-static {}, Li0/b;->g()V

    .line 10
    iget-object p1, p0, Le4/d;->c:Le4/f;

    .line 11
    iget-boolean p2, p1, Le4/f;->f:Z

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p1, Le4/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 13
    new-instance p2, Le4/e;

    iget-object p3, p1, Le4/f;->b:Landroid/os/HandlerThread;

    .line 14
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Le4/e;-><init>(Le4/f;Landroid/os/Looper;)V

    iput-object p2, p1, Le4/f;->c:Le4/e;

    .line 15
    iput-boolean v4, p1, Le4/f;->f:Z

    :cond_1
    const-string p1, "startCodec"

    .line 16
    invoke-static {p1}, Li0/b;->d(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 18
    invoke-static {}, Li0/b;->g()V

    .line 19
    iput v4, p0, Le4/d;->f:I

    return-void
.end method

.method public static q(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget v1, p0, Le4/d;->f:I

    if-ne v1, v0, :cond_1

    .line 2
    iget-object v1, p0, Le4/d;->c:Le4/f;

    .line 3
    iget-boolean v2, v1, Le4/f;->f:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Le4/f;->d()V

    .line 5
    iget-object v2, v1, Le4/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Le4/f;->f:Z

    .line 7
    iget-object v1, p0, Le4/d;->b:Le4/g;

    .line 8
    iget-object v2, v1, Le4/g;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iput-boolean v0, v1, Le4/g;->l:Z

    .line 10
    iget-object v3, v1, Le4/g;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    invoke-virtual {v1}, Le4/g;->a()V

    .line 12
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 13
    iput v1, p0, Le4/d;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    iget-boolean v1, p0, Le4/d;->e:Z

    if-nez v1, :cond_2

    .line 15
    iget-object v1, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 16
    iput-boolean v0, p0, Le4/d;->e:Z

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    .line 17
    iget-boolean v2, p0, Le4/d;->e:Z

    if-nez v2, :cond_3

    .line 18
    iget-object v2, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 19
    iput-boolean v0, p0, Le4/d;->e:Z

    .line 20
    :cond_3
    throw v1
.end method

.method public final b(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 12

    .line 1
    iget-object v0, p0, Le4/d;->b:Le4/g;

    .line 2
    iget-object v1, v0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-wide v2, v0, Le4/g;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-boolean v2, v0, Le4/g;->l:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    .line 4
    monitor-exit v1

    goto :goto_3

    .line 5
    :cond_2
    iget-object v2, v0, Le4/g;->m:Ljava/lang/IllegalStateException;

    const/4 v6, 0x0

    if-nez v2, :cond_8

    .line 6
    iget-object v2, v0, Le4/g;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_7

    .line 7
    iget-object v2, v0, Le4/g;->e:Le4/k;

    .line 8
    iget v6, v2, Le4/k;->c:I

    if-nez v6, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    .line 9
    monitor-exit v1

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {v2}, Le4/k;->b()I

    move-result v5

    if-ltz v5, :cond_5

    .line 11
    iget-object v2, v0, Le4/g;->h:Landroid/media/MediaFormat;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Le4/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    .line 13
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v11, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_2

    :cond_5
    const/4 p1, -0x2

    if-ne v5, p1, :cond_6

    .line 14
    iget-object p1, v0, Le4/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, v0, Le4/g;->h:Landroid/media/MediaFormat;

    .line 15
    :cond_6
    :goto_2
    monitor-exit v1

    :goto_3
    return v5

    .line 16
    :cond_7
    iput-object v6, v0, Le4/g;->j:Landroid/media/MediaCodec$CodecException;

    .line 17
    throw v2

    .line 18
    :cond_8
    iput-object v6, v0, Le4/g;->m:Ljava/lang/IllegalStateException;

    .line 19
    throw v2

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(IZ)V
    .locals 1

    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le4/d;->r()V

    .line 2
    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final f()Landroid/media/MediaFormat;
    .locals 2

    .line 1
    iget-object v0, p0, Le4/d;->b:Le4/g;

    .line 2
    iget-object v1, v0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Le4/g;->h:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 6

    .line 1
    iget-object v0, p0, Le4/d;->c:Le4/f;

    invoke-virtual {v0}, Le4/f;->d()V

    .line 2
    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 3
    iget-object v0, p0, Le4/d;->b:Le4/g;

    .line 4
    iget-object v1, v0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-wide v2, v0, Le4/g;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Le4/g;->k:J

    .line 6
    iget-object v2, v0, Le4/g;->c:Landroid/os/Handler;

    sget v3, Lm5/g0;->a:I

    new-instance v3, Landroidx/appcompat/widget/k1;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Landroidx/appcompat/widget/k1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le4/d;->r()V

    .line 2
    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le4/d;->r()V

    .line 2
    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final j(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final k(IJ)V
    .locals 1

    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final l()I
    .locals 7

    .line 1
    iget-object v0, p0, Le4/d;->b:Le4/g;

    .line 2
    iget-object v1, v0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-wide v2, v0, Le4/g;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-boolean v2, v0, Le4/g;->l:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    .line 4
    monitor-exit v1

    goto :goto_3

    .line 5
    :cond_2
    iget-object v2, v0, Le4/g;->m:Ljava/lang/IllegalStateException;

    const/4 v6, 0x0

    if-nez v2, :cond_6

    .line 6
    iget-object v2, v0, Le4/g;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_5

    .line 7
    iget-object v0, v0, Le4/g;->d:Le4/k;

    .line 8
    iget v2, v0, Le4/k;->c:I

    if-nez v2, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v0}, Le4/k;->b()I

    move-result v5

    :goto_2
    monitor-exit v1

    :goto_3
    return v5

    .line 10
    :cond_5
    iput-object v6, v0, Le4/g;->j:Landroid/media/MediaCodec$CodecException;

    .line 11
    throw v2

    .line 12
    :cond_6
    iput-object v6, v0, Le4/g;->m:Ljava/lang/IllegalStateException;

    .line 13
    throw v2

    :catchall_0
    move-exception v0

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m(Le4/l$c;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le4/d;->r()V

    .line 2
    iget-object v0, p0, Le4/d;->a:Landroid/media/MediaCodec;

    new-instance v1, Le4/a;

    invoke-direct {v1, p0, p1}, Le4/a;-><init>(Le4/d;Le4/l$c;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final n(ILq3/c;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Le4/d;->c:Le4/f;

    .line 2
    iget-object v1, v0, Le4/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Le4/f;->e()Le4/f$a;

    move-result-object v1

    .line 4
    iput p1, v1, Le4/f$a;->a:I

    const/4 p1, 0x0

    .line 5
    iput p1, v1, Le4/f$a;->b:I

    .line 6
    iput p1, v1, Le4/f$a;->c:I

    .line 7
    iput-wide p3, v1, Le4/f$a;->e:J

    .line 8
    iput p1, v1, Le4/f$a;->f:I

    .line 9
    iget-object p1, v1, Le4/f$a;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 10
    iget p3, p2, Lq3/c;->f:I

    iput p3, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 11
    iget-object p3, p2, Lq3/c;->d:[I

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 12
    invoke-static {p3, p4}, Le4/f;->c([I[I)[I

    move-result-object p3

    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 13
    iget-object p3, p2, Lq3/c;->e:[I

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 14
    invoke-static {p3, p4}, Le4/f;->c([I[I)[I

    move-result-object p3

    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 15
    iget-object p3, p2, Lq3/c;->b:[B

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-static {p3, p4}, Le4/f;->b([B[B)[B

    move-result-object p3

    .line 16
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 18
    iget-object p3, p2, Lq3/c;->a:[B

    iget-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-static {p3, p4}, Le4/f;->b([B[B)[B

    move-result-object p3

    .line 19
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 21
    iget p3, p2, Lq3/c;->c:I

    iput p3, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 22
    sget p3, Lm5/g0;->a:I

    const/16 p4, 0x18

    if-lt p3, p4, :cond_0

    .line 23
    new-instance p3, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget p4, p2, Lq3/c;->g:I

    iget p2, p2, Lq3/c;->h:I

    invoke-direct {p3, p4, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 24
    invoke-virtual {p1, p3}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 25
    :cond_0
    iget-object p1, v0, Le4/f;->c:Le4/e;

    const/4 p2, 0x1

    .line 26
    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 28
    :cond_1
    throw v1
.end method

.method public final o(IIJI)V
    .locals 3

    .line 1
    iget-object v0, p0, Le4/d;->c:Le4/f;

    .line 2
    iget-object v1, v0, Le4/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Le4/f;->e()Le4/f$a;

    move-result-object v1

    .line 4
    iput p1, v1, Le4/f$a;->a:I

    const/4 p1, 0x0

    .line 5
    iput p1, v1, Le4/f$a;->b:I

    .line 6
    iput p2, v1, Le4/f$a;->c:I

    .line 7
    iput-wide p3, v1, Le4/f$a;->e:J

    .line 8
    iput p5, v1, Le4/f$a;->f:I

    .line 9
    iget-object p2, v0, Le4/f;->c:Le4/e;

    sget p3, Lm5/g0;->a:I

    invoke-virtual {p2, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 11
    :cond_0
    throw v1
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le4/d;->d:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Le4/d;->c:Le4/f;

    .line 3
    invoke-virtual {v0}, Le4/f;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
