.class public Lde/a;
.super Lde/k0;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/a$b;,
        Lde/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lde/a$a;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static head:Lde/a;


# instance fields
.field private inQueue:Z

.field private next:Lde/a;

.field private timeoutAt:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lde/a$a;

    invoke-direct {v0}, Lde/a$a;-><init>()V

    sput-object v0, Lde/a;->Companion:Lde/a$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lde/a;->IDLE_TIMEOUT_MILLIS:J

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lde/a;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lde/k0;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHead$cp()Lde/a;
    .locals 1

    sget-object v0, Lde/a;->head:Lde/a;

    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    sget-wide v0, Lde/a;->IDLE_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    sget-wide v0, Lde/a;->IDLE_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getInQueue$p(Lde/a;)Z
    .locals 0

    iget-boolean p0, p0, Lde/a;->inQueue:Z

    return p0
.end method

.method public static final synthetic access$getNext$p(Lde/a;)Lde/a;
    .locals 0

    iget-object p0, p0, Lde/a;->next:Lde/a;

    return-object p0
.end method

.method public static final synthetic access$remainingNanos(Lde/a;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/a;->remainingNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setHead$cp(Lde/a;)V
    .locals 0

    sput-object p0, Lde/a;->head:Lde/a;

    return-void
.end method

.method public static final synthetic access$setInQueue$p(Lde/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lde/a;->inQueue:Z

    return-void
.end method

.method public static final synthetic access$setNext$p(Lde/a;Lde/a;)V
    .locals 0

    iput-object p1, p0, Lde/a;->next:Lde/a;

    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Lde/a;J)V
    .locals 0

    iput-wide p1, p0, Lde/a;->timeoutAt:J

    return-void
.end method

.method private final remainingNanos(J)J
    .locals 2

    iget-wide v0, p0, Lde/a;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    invoke-virtual {p0, p1}, Lde/a;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final enter()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lde/k0;->timeoutNanos()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lde/k0;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v4, Lde/a;->Companion:Lde/a$a;

    .line 4
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v4, Lde/a;

    .line 6
    monitor-enter v4

    .line 7
    :try_start_0
    invoke-static {p0}, Lde/a;->access$getInQueue$p(Lde/a;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_8

    .line 8
    invoke-static {p0, v6}, Lde/a;->access$setInQueue$p(Lde/a;Z)V

    .line 9
    invoke-static {}, Lde/a;->access$getHead$cp()Lde/a;

    move-result-object v5

    if-nez v5, :cond_1

    .line 10
    new-instance v5, Lde/a;

    invoke-direct {v5}, Lde/a;-><init>()V

    invoke-static {v5}, Lde/a;->access$setHead$cp(Lde/a;)V

    .line 11
    new-instance v5, Lde/a$b;

    invoke-direct {v5}, Lde/a$b;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p0}, Lde/k0;->deadlineNanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {p0, v0, v1}, Lde/a;->access$setTimeoutAt$p(Lde/a;J)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    add-long/2addr v0, v5

    .line 14
    invoke-static {p0, v0, v1}, Lde/a;->access$setTimeoutAt$p(Lde/a;J)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {p0}, Lde/k0;->deadlineNanoTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lde/a;->access$setTimeoutAt$p(Lde/a;J)V

    .line 16
    :goto_0
    invoke-static {p0, v5, v6}, Lde/a;->access$remainingNanos(Lde/a;J)J

    move-result-wide v0

    .line 17
    invoke-static {}, Lde/a;->access$getHead$cp()Lde/a;

    move-result-object v2

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 18
    :goto_1
    invoke-static {v2}, Lde/a;->access$getNext$p(Lde/a;)Lde/a;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lde/a;->access$getNext$p(Lde/a;)Lde/a;

    move-result-object v3

    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-static {v3, v5, v6}, Lde/a;->access$remainingNanos(Lde/a;J)J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v2}, Lde/a;->access$getNext$p(Lde/a;)Lde/a;

    move-result-object v2

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_5
    :goto_2
    invoke-static {v2}, Lde/a;->access$getNext$p(Lde/a;)Lde/a;

    move-result-object v0

    invoke-static {p0, v0}, Lde/a;->access$setNext$p(Lde/a;Lde/a;)V

    .line 21
    invoke-static {v2, p0}, Lde/a;->access$setNext$p(Lde/a;Lde/a;)V

    .line 22
    invoke-static {}, Lde/a;->access$getHead$cp()Lde/a;

    move-result-object v0

    if-ne v2, v0, :cond_6

    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_6
    monitor-exit v4

    return-void

    .line 25
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    const-string v0, "Unbalanced enter/exit"

    .line 26
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 27
    monitor-exit v4

    throw v0
.end method

.method public final exit()Z
    .locals 4

    .line 1
    sget-object v0, Lde/a;->Companion:Lde/a$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v0, Lde/a;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {p0}, Lde/a;->access$getInQueue$p(Lde/a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_1
    invoke-static {p0, v2}, Lde/a;->access$setInQueue$p(Lde/a;Z)V

    .line 7
    invoke-static {}, Lde/a;->access$getHead$cp()Lde/a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-static {v1}, Lde/a;->access$getNext$p(Lde/a;)Lde/a;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 9
    invoke-static {p0}, Lde/a;->access$getNext$p(Lde/a;)Lde/a;

    move-result-object v3

    invoke-static {v1, v3}, Lde/a;->access$setNext$p(Lde/a;Lde/a;)V

    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v1}, Lde/a;->access$setNext$p(Lde/a;Lde/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    goto :goto_1

    .line 12
    :cond_1
    :try_start_2
    invoke-static {v1}, Lde/a;->access$getNext$p(Lde/a;)Lde/a;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 13
    monitor-exit v0

    :goto_1
    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final sink(Lde/h0;)Lde/h0;
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lde/a$c;

    invoke-direct {v0, p0, p1}, Lde/a$c;-><init>(Lde/a;Lde/h0;)V

    return-object v0
.end method

.method public final source(Lde/j0;)Lde/j0;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lde/a$d;

    invoke-direct {v0, p0, p1}, Lde/a$d;-><init>(Lde/a;Lde/j0;)V

    return-object v0
.end method

.method public timedOut()V
    .locals 0

    return-void
.end method

.method public final withTimeout(Lqd/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lde/a;->enter()V

    .line 2
    :try_start_0
    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Lde/a;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lde/a;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lde/a;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lde/a;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_1
    invoke-virtual {p0}, Lde/a;->exit()Z

    move-result v0

    .line 7
    throw p1
.end method
