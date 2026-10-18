.class public final Lic/i;
.super Lrd/o;
.source "ConnectionManager.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lic/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/i;

    invoke-direct {v0}, Lic/i;-><init>()V

    sput-object v0, Lic/i;->h:Lic/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    :goto_0
    const-wide/16 v0, 0xa

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    sget-object v0, Lic/g;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 5
    sget-wide v3, Lic/g;->k:J

    add-long/2addr v1, v3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 7
    sget-object v1, Lic/g;->b:Lic/g;

    .line 8
    invoke-virtual {v1}, Lic/g;->j()J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 10
    sget-object v1, Lic/g;->i:Ljava/util/concurrent/CountDownLatch;

    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 12
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v4

    const-string v5, "Prevented runaway latch"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_1
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 13
    :try_start_1
    sget-object v5, Lic/g;->i:Ljava/util/concurrent/CountDownLatch;

    .line 14
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    move-object v8, v5

    .line 15
    :try_start_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    add-long/2addr v1, v3

    goto :goto_1

    .line 16
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
