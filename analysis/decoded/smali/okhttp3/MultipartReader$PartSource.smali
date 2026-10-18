.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "MultipartReader.kt"

# interfaces
.implements Lde/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PartSource"
.end annotation


# instance fields
.field public final synthetic this$0:Lokhttp3/MultipartReader;

.field private final timeout:Lde/k0;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lde/k0;

    invoke-direct {p1}, Lde/k0;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lde/k0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v0

    invoke-static {v0, p0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    :cond_0
    return-void
.end method

.method public read(Lde/c;J)J
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_e

    .line 1
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v6

    invoke-static {v6, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lde/f;

    move-result-object v6

    invoke-interface {v6}, Lde/j0;->timeout()Lde/k0;

    move-result-object v6

    iget-object v7, v1, Lokhttp3/MultipartReader$PartSource;->timeout:Lde/k0;

    iget-object v8, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 3
    invoke-virtual {v6}, Lde/k0;->timeoutNanos()J

    move-result-wide v9

    .line 4
    sget-object v11, Lde/k0;->Companion:Lde/k0$b;

    invoke-virtual {v7}, Lde/k0;->timeoutNanos()J

    move-result-wide v12

    invoke-virtual {v6}, Lde/k0;->timeoutNanos()J

    move-result-wide v14

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v11, v12, v4

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v4, v14, v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    cmp-long v4, v12, v14

    if-gez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-wide v12, v14

    :goto_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v12, v13, v4}, Lde/k0;->timeout(JLjava/util/concurrent/TimeUnit;)Lde/k0;

    .line 5
    invoke-virtual {v6}, Lde/k0;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6
    invoke-virtual {v6}, Lde/k0;->deadlineNanoTime()J

    move-result-wide v11

    .line 7
    invoke-virtual {v7}, Lde/k0;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    invoke-virtual {v6}, Lde/k0;->deadlineNanoTime()J

    move-result-wide v13

    move-wide v15, v11

    invoke-virtual {v7}, Lde/k0;->deadlineNanoTime()J

    move-result-wide v11

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lde/k0;->deadlineNanoTime(J)Lde/k0;

    goto :goto_3

    :cond_4
    move-wide v15, v11

    .line 9
    :goto_3
    :try_start_0
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    const-wide/16 v11, 0x0

    cmp-long v5, v2, v11

    if-nez v5, :cond_5

    const-wide/16 v2, -0x1

    goto :goto_4

    .line 10
    :cond_5
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lde/f;

    move-result-object v5

    invoke-interface {v5, v0, v2, v3}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_4
    invoke-virtual {v6, v9, v10, v4}, Lde/k0;->timeout(JLjava/util/concurrent/TimeUnit;)Lde/k0;

    .line 12
    invoke-virtual {v7}, Lde/k0;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_6

    move-wide v4, v15

    .line 13
    invoke-virtual {v6, v4, v5}, Lde/k0;->deadlineNanoTime(J)Lde/k0;

    :cond_6
    return-wide v2

    :catchall_0
    move-exception v0

    move-wide v4, v15

    .line 14
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v9, v10, v2}, Lde/k0;->timeout(JLjava/util/concurrent/TimeUnit;)Lde/k0;

    .line 15
    invoke-virtual {v7}, Lde/k0;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v6, v4, v5}, Lde/k0;->deadlineNanoTime(J)Lde/k0;

    :cond_7
    throw v0

    .line 17
    :cond_8
    invoke-virtual {v7}, Lde/k0;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 18
    invoke-virtual {v7}, Lde/k0;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lde/k0;->deadlineNanoTime(J)Lde/k0;

    .line 19
    :cond_9
    :try_start_1
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    const-wide/16 v11, 0x0

    cmp-long v5, v2, v11

    if-nez v5, :cond_a

    const-wide/16 v2, -0x1

    goto :goto_5

    .line 20
    :cond_a
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lde/f;

    move-result-object v5

    invoke-interface {v5, v0, v2, v3}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :goto_5
    invoke-virtual {v6, v9, v10, v4}, Lde/k0;->timeout(JLjava/util/concurrent/TimeUnit;)Lde/k0;

    .line 22
    invoke-virtual {v7}, Lde/k0;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23
    invoke-virtual {v6}, Lde/k0;->clearDeadline()Lde/k0;

    :cond_b
    return-wide v2

    :catchall_1
    move-exception v0

    .line 24
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v9, v10, v2}, Lde/k0;->timeout(JLjava/util/concurrent/TimeUnit;)Lde/k0;

    .line 25
    invoke-virtual {v7}, Lde/k0;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 26
    invoke-virtual {v6}, Lde/k0;->clearDeadline()Lde/k0;

    :cond_c
    throw v0

    .line 27
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v0, "byteCount < 0: "

    .line 28
    invoke-static {v0, v2, v3}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public timeout()Lde/k0;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lde/k0;

    return-object v0
.end method
