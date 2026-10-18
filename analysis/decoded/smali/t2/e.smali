.class public final Lt2/e;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lt2/a;


# instance fields
.field public final a:Lt2/j;

.field public final b:Ljava/io/File;

.field public final c:J

.field public final d:Lt2/c;

.field public e:Lm2/a;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lt2/c;

    invoke-direct {v0}, Lt2/c;-><init>()V

    iput-object v0, p0, Lt2/e;->d:Lt2/c;

    .line 3
    iput-object p1, p0, Lt2/e;->b:Ljava/io/File;

    .line 4
    iput-wide p2, p0, Lt2/e;->c:J

    .line 5
    new-instance p1, Lt2/j;

    invoke-direct {p1}, Lt2/j;-><init>()V

    iput-object p1, p0, Lt2/e;->a:Lt2/j;

    return-void
.end method


# virtual methods
.method public final a(Lp2/f;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lt2/e;->a:Lt2/j;

    invoke-virtual {v0, p1}, Lt2/j;->a(Lp2/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lt2/e;->c()Lm2/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lm2/a;->j0(Ljava/lang/String;)Lm2/a$e;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 5
    iget-object v0, v0, Lm2/a$e;->a:[Ljava/io/File;

    aget-object p1, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Unable to get from disk cache"

    .line 7
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final b(Lp2/f;Lt2/a$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lt2/e;->a:Lt2/j;

    invoke-virtual {v0, p1}, Lt2/j;->a(Lp2/f;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lt2/e;->d:Lt2/c;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Lt2/c;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt2/c$a;

    if-nez v2, :cond_1

    .line 5
    iget-object v2, v1, Lt2/c;->b:Lt2/c$b;

    .line 6
    iget-object v3, v2, Lt2/c$b;->a:Ljava/util/ArrayDeque;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    iget-object v2, v2, Lt2/c$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt2/c$a;

    .line 8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 9
    :try_start_2
    new-instance v2, Lt2/c$a;

    invoke-direct {v2}, Lt2/c$a;-><init>()V

    .line 10
    :cond_0
    iget-object v3, v1, Lt2/c;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 12
    :cond_1
    :goto_0
    iget v3, v2, Lt2/c$a;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lt2/c$a;->b:I

    .line 13
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 14
    iget-object v1, v2, Lt2/c$a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DiskLruCacheWrapper"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 17
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lt2/e;->c()Lm2/a;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Lm2/a;->j0(Ljava/lang/String;)Lm2/a$e;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_4

    .line 19
    :catch_0
    :cond_3
    :goto_1
    iget-object p1, p0, Lt2/e;->d:Lt2/c;

    invoke-virtual {p1, v0}, Lt2/c;->a(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_4
    :try_start_7
    invoke-virtual {p1, v0}, Lm2/a;->h0(Ljava/lang/String;)Lm2/a$c;

    move-result-object p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_7

    .line 21
    :try_start_8
    invoke-virtual {p1}, Lm2/a$c;->b()Ljava/io/File;

    move-result-object v1

    .line 22
    check-cast p2, Lr2/g;

    .line 23
    iget-object v2, p2, Lr2/g;->a:Lp2/d;

    iget-object v3, p2, Lr2/g;->b:Ljava/lang/Object;

    iget-object p2, p2, Lr2/g;->c:Lp2/h;

    invoke-interface {v2, v3, v1, p2}, Lp2/d;->c(Ljava/lang/Object;Ljava/io/File;Lp2/h;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    iget-object p2, p1, Lm2/a$c;->d:Lm2/a;

    invoke-static {p2, p1, v4}, Lm2/a;->x(Lm2/a;Lm2/a$c;Z)V

    .line 25
    iput-boolean v4, p1, Lm2/a$c;->c:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 26
    :cond_5
    :try_start_9
    iget-boolean p2, p1, Lm2/a$c;->c:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez p2, :cond_3

    .line 27
    :try_start_a
    invoke-virtual {p1}, Lm2/a$c;->a()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 28
    :try_start_b
    iget-boolean v1, p1, Lm2/a$c;->c:Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v1, :cond_6

    .line 29
    :try_start_c
    invoke-virtual {p1}, Lm2/a$c;->a()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 30
    :catch_1
    :cond_6
    :try_start_d
    throw p2

    .line 31
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Had two simultaneous puts for: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_2
    move-exception p1

    :try_start_e
    const-string p2, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    .line 32
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    .line 33
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 34
    iget-object p2, p0, Lt2/e;->d:Lt2/c;

    invoke-virtual {p2, v0}, Lt2/c;->a(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p1

    .line 35
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw p1
.end method

.method public final declared-synchronized c()Lm2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lt2/e;->e:Lm2/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lt2/e;->b:Ljava/io/File;

    iget-wide v1, p0, Lt2/e;->c:J

    invoke-static {v0, v1, v2}, Lm2/a;->l0(Ljava/io/File;J)Lm2/a;

    move-result-object v0

    iput-object v0, p0, Lt2/e;->e:Lm2/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lt2/e;->e:Lm2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
