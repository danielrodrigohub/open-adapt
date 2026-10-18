.class public final Lr3/a$c;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lr3/a;


# direct methods
.method public constructor <init>(Lr3/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/a$c;->b:Lr3/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Z)V
    .locals 8

    .line 1
    new-instance v7, Lr3/a$d;

    .line 2
    invoke-static {}, Lp4/r;->a()J

    move-result-wide v1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v7

    move v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lr3/a$d;-><init>(JZJLjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lr3/a$d;

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    .line 3
    iget-object v2, p0, Lr3/a$c;->b:Lr3/a;

    iget-object v3, v2, Lr3/a;->l:Lr3/y;

    iget-object v2, v2, Lr3/a;->m:Ljava/util/UUID;

    iget-object v4, v0, Lr3/a$d;->d:Ljava/lang/Object;

    check-cast v4, Lr3/s$a;

    check-cast v3, Lr3/w;

    invoke-virtual {v3, v2, v4}, Lr3/w;->a(Ljava/util/UUID;Lr3/s$a;)[B

    move-result-object v1

    goto/16 :goto_3

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 5
    :cond_1
    iget-object v2, p0, Lr3/a$c;->b:Lr3/a;

    iget-object v2, v2, Lr3/a;->l:Lr3/y;

    iget-object v3, v0, Lr3/a$d;->d:Ljava/lang/Object;

    check-cast v3, Lr3/s$d;

    .line 6
    check-cast v2, Lr3/w;

    invoke-virtual {v2, v3}, Lr3/w;->c(Lr3/s$d;)[B

    move-result-object v1
    :try_end_0
    .catch Lr3/z; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    .line 7
    invoke-static {v2, v3, v1}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v2

    .line 8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lr3/a$d;

    .line 9
    iget-boolean v4, v3, Lr3/a$d;->b:Z

    if-nez v4, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget v4, v3, Lr3/a$d;->e:I

    add-int/2addr v4, v1

    iput v4, v3, Lr3/a$d;->e:I

    .line 11
    iget-object v5, p0, Lr3/a$c;->b:Lr3/a;

    .line 12
    iget-object v5, v5, Lr3/a;->j:Ll5/c0;

    const/4 v6, 0x3

    .line 13
    invoke-interface {v5, v6}, Ll5/c0;->c(I)I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    new-instance v4, Lp4/r;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    goto :goto_0

    .line 19
    :cond_4
    new-instance v4, Lr3/a$f;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lr3/a$f;-><init>(Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    iget-object v5, p0, Lr3/a$c;->b:Lr3/a;

    .line 21
    iget-object v5, v5, Lr3/a;->j:Ll5/c0;

    .line 22
    new-instance v6, Ll5/c0$c;

    iget v3, v3, Lr3/a$d;->e:I

    invoke-direct {v6, v4, v3}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    invoke-interface {v5, v6}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 23
    :cond_5
    monitor-enter p0

    .line 24
    :try_start_1
    iget-boolean v5, p0, Lr3/a$c;->a:Z

    if-nez v5, :cond_6

    .line 25
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 26
    monitor-exit p0

    goto :goto_2

    .line 27
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    return-void

    :cond_7
    move-object v1, v2

    .line 28
    :goto_3
    iget-object v2, p0, Lr3/a$c;->b:Lr3/a;

    .line 29
    iget-object v2, v2, Lr3/a;->j:Ll5/c0;

    .line 30
    iget-wide v3, v0, Lr3/a$d;->a:J

    invoke-interface {v2}, Ll5/c0;->d()V

    .line 31
    monitor-enter p0

    .line 32
    :try_start_2
    iget-boolean v2, p0, Lr3/a$c;->a:Z

    if-nez v2, :cond_8

    .line 33
    iget-object v2, p0, Lr3/a$c;->b:Lr3/a;

    iget-object v2, v2, Lr3/a;->n:Lr3/a$e;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lr3/a$d;->d:Ljava/lang/Object;

    .line 34
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 36
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 37
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
