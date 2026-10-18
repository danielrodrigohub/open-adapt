.class public final Le4/g;
.super Landroid/media/MediaCodec$Callback;
.source "AsynchronousMediaCodecCallback.java"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public final d:Le4/k;

.field public final e:Le4/k;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/media/MediaFormat;

.field public i:Landroid/media/MediaFormat;

.field public j:Landroid/media/MediaCodec$CodecException;

.field public k:J

.field public l:Z

.field public m:Ljava/lang/IllegalStateException;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le4/g;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le4/g;->b:Landroid/os/HandlerThread;

    .line 4
    new-instance p1, Le4/k;

    invoke-direct {p1}, Le4/k;-><init>()V

    iput-object p1, p0, Le4/g;->d:Le4/k;

    .line 5
    new-instance p1, Le4/k;

    invoke-direct {p1}, Le4/k;-><init>()V

    iput-object p1, p0, Le4/g;->e:Le4/k;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le4/g;->f:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le4/g;->g:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le4/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le4/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Le4/g;->i:Landroid/media/MediaFormat;

    .line 3
    :cond_0
    iget-object v0, p0, Le4/g;->d:Le4/k;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Le4/k;->a:I

    const/4 v2, -0x1

    .line 5
    iput v2, v0, Le4/k;->b:I

    .line 6
    iput v1, v0, Le4/k;->c:I

    .line 7
    iget-object v0, p0, Le4/g;->e:Le4/k;

    .line 8
    iput v1, v0, Le4/k;->a:I

    .line 9
    iput v2, v0, Le4/k;->b:I

    .line 10
    iput v1, v0, Le4/k;->c:I

    .line 11
    iget-object v0, p0, Le4/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 12
    iget-object v0, p0, Le4/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Le4/g;->j:Landroid/media/MediaCodec$CodecException;

    return-void
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iput-object p2, p0, Le4/g;->j:Landroid/media/MediaCodec$CodecException;

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Le4/g;->d:Le4/k;

    invoke-virtual {v0, p2}, Le4/k;->a(I)V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Le4/g;->i:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le4/g;->e:Le4/k;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Le4/k;->a(I)V

    .line 4
    iget-object v1, p0, Le4/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le4/g;->i:Landroid/media/MediaFormat;

    .line 6
    :cond_0
    iget-object v0, p0, Le4/g;->e:Le4/k;

    invoke-virtual {v0, p2}, Le4/k;->a(I)V

    .line 7
    iget-object p2, p0, Le4/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le4/g;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Le4/g;->e:Le4/k;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Le4/k;->a(I)V

    .line 3
    iget-object v0, p0, Le4/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Le4/g;->i:Landroid/media/MediaFormat;

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
