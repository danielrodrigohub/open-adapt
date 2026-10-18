.class public final Lic/g;
.super Ljava/lang/Object;
.source "ConnectionManager.kt"

# interfaces
.implements Lic/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/g$a;
    }
.end annotation


# static fields
.field public static final b:Lic/g;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lic/p;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lic/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/Object;

.field public static final f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lic/q;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/lang/Object;

.field public static volatile i:Ljava/util/concurrent/CountDownLatch;

.field public static final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final k:J

.field public static final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final m:Ljava/util/concurrent/ExecutorService;

.field public static final n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lic/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lic/g;

    invoke-direct {v0}, Lic/g;-><init>()V

    sput-object v0, Lic/g;->b:Lic/g;

    .line 1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Lic/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lic/g;->e:Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Lic/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lic/g;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lic/g;->h:Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lic/g;->i:Ljava/util/concurrent/CountDownLatch;

    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lic/g;->k:J

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lic/g;->j()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v1, Lic/g;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    sget-object v0, Lic/i;->h:Lic/i;

    const/4 v1, 0x0

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Landroidx/lifecycle/m0;->d(Ljava/lang/String;ILqd/a;I)Ljava/lang/Thread;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lic/g;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    sget-object v0, Lo7/w;->d:Lo7/w;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newCachedThreadPool {\n  \u2026ock = { it.run() })\n    }"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lic/g;->m:Ljava/util/concurrent/ExecutorService;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lic/g;->n:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final f(Lic/p;)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lic/g;->b:Lic/g;

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribeAndAuthenticate: pre lock, requesting with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    sget-object v2, Lic/g;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    sget-object v3, Lic/g;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 4
    sget-object v3, Lic/g;->j:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    monitor-exit v3

    .line 7
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    sput-object v3, Lic/g;->i:Ljava/util/concurrent/CountDownLatch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit v2

    .line 10
    iget-object v2, v0, Lic/p;->f:Lf8/b;

    .line 11
    instance-of v2, v2, Lic/d;

    if-nez v2, :cond_2

    .line 12
    iget-object v2, v0, Lic/p;->f:Lf8/b;

    .line 13
    instance-of v2, v2, Lic/e;

    if-nez v2, :cond_2

    .line 14
    iget-object v2, v0, Lic/p;->f:Lf8/b;

    .line 15
    instance-of v2, v2, Lic/b;

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 16
    :cond_0
    iget-object v2, v0, Lic/p;->c:Ljava/lang/String;

    .line 17
    iget-object v4, v0, Lic/p;->a:Lhc/l0;

    .line 18
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscribeAndAuthenticate: post lock, requesting with "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/16 v10, 0xe

    const/4 v13, 0x0

    move-object v9, v3

    move-object v11, v13

    invoke-static/range {v5 .. v11}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 19
    iget-object v5, v0, Lic/p;->b:Landroid/bluetooth/BluetoothGatt;

    .line 20
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscribeAndAuthenticate:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\t\ud83d\udddd:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v8, v0, Lic/p;->d:[B

    .line 23
    invoke-static {v8}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    move-object v11, v3

    invoke-static/range {v9 .. v15}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 24
    iget-object v3, v0, Lic/p;->d:[B

    .line 25
    sget-object v5, Lhc/b;->j:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 26
    new-instance v3, Lic/d;

    invoke-direct {v3, v2}, Lic/d;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v3}, Lic/g;->l(Lf8/b;)V

    .line 28
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTED_AND_REQUIRES_AUTHENTICATION:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\ud83d\udddd"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Lic/e;

    invoke-direct {v3, v2}, Lic/e;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v3}, Lic/g;->l(Lf8/b;)V

    .line 31
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTED_AND_STARTING_AUTHENTICATION_FLOW:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\ud83d\udddd"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    :goto_0
    const-wide/16 v9, 0x14

    .line 32
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 33
    iget-object v7, v0, Lic/p;->a:Lhc/l0;

    .line 34
    new-instance v9, Lic/m;

    move-object v1, v9

    move v3, v8

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v6}, Lic/m;-><init>(Ljava/lang/String;ZLhc/l0;Lic/p;Ljava/lang/String;)V

    .line 35
    invoke-interface {v7, v8, v9}, Lhc/l0;->W(ZLnc/a;)V

    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v10

    const-string v2, "subscribeAndAuthenticate, had "

    .line 37
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 38
    iget-object v0, v0, Lic/p;->f:Lf8/b;

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", preventing a second authentication attempt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 40
    invoke-virtual {v1}, Lic/g;->h()V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 41
    :try_start_3
    monitor-exit v3

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 42
    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lf8/b;
    .locals 8

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/p;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lic/p;->f:Lf8/b;

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lic/t;

    invoke-direct {v0, p1}, Lic/t;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionManager.currentState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 9

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lic/g;->i(Ljava/lang/String;)Lic/q;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/p;

    if-eqz v1, :cond_3

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shutdownDevice with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 4
    sget-object v2, Lic/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    new-array v4, v3, [Lic/g$a;

    .line 5
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast v2, [Lic/g$a;

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    array-length v5, v2

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    .line 9
    iget-object v8, v7, Lic/g$a;->a:Ljava/lang/String;

    .line 10
    invoke-static {v8, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    .line 11
    iput-boolean v3, v7, Lic/g$a;->e:Z

    :cond_0
    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 12
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_2
    sget-object v2, Lic/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 14
    sget-object v2, Lic/g;->b:Lic/g;

    new-instance v3, Lic/t;

    invoke-direct {v3, p1}, Lic/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lic/g;->l(Lf8/b;)V

    .line 15
    sget-object v2, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, v1, Lic/p;->b:Landroid/bluetooth/BluetoothGatt;

    .line 17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 18
    iget-object p1, v1, Lic/p;->a:Lhc/l0;

    .line 19
    invoke-interface {p1}, Lhc/l0;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lhc/l0;[B)Z
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreRFBigfoot"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lic/g;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lhc/l0;[B)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;Lic/o;)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionStateListener"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lic/g;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lhc/l0;[B)Z
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreRFBigfoot"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lic/g;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lhc/l0;[B)Z

    move-result p1

    return p1
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lhc/l0;[B)Z
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    .line 1
    invoke-virtual {v4, v1}, Lic/g;->i(Ljava/lang/String;)Lic/q;

    move-result-object v5

    monitor-enter v5

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v6

    .line 3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Establishing Connection with: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "g"

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 4
    invoke-static/range {v6 .. v12}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 5
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Establishing Connection has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    sget-object v6, Lic/g;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    .line 7
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v8, v6

    const-wide/16 v6, 0xbb8

    cmp-long v6, v8, v6

    if-gez v6, :cond_1

    const/16 v6, 0xbb8

    int-to-long v6, v6

    sub-long/2addr v6, v8

    .line 8
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 9
    :catch_0
    :try_start_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v8

    const-string v9, "Unexpected Interupt when attempting to reconnect"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    :cond_1
    :goto_1
    sget-object v6, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 11
    const-class v6, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothManager;

    const/4 v7, 0x7

    .line 12
    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v6

    const-string v7, "context.getSystemService\u2026es(BluetoothProfile.GATT)"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 14
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 15
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v8

    const-string v9, "\ud83d\udca3 Found a currently connected device from a previous application session!"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_3
    new-instance v6, Lic/g$a;

    invoke-direct {v6, v1, v0, v2, v3}, Lic/g$a;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lhc/l0;)V

    .line 17
    sget-object v7, Lic/g;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v8

    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BluetoothCallback Created, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\ncallbackAddr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 21
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    .line 22
    invoke-static/range {v8 .. v14}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 23
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v15

    .line 24
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BluetoothCallback Created, All Callbacks, "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 25
    sget-object v11, Lic/g$b;->h:Lic/g$b;

    const/16 v12, 0x1e

    invoke-static/range {v7 .. v12}, Lgd/n;->d0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lqd/l;I)Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v21, 0x0

    .line 27
    invoke-static/range {v15 .. v21}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 28
    const-class v7, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothManager;

    .line 29
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v6, v7}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_4

    .line 30
    sget-object v0, Lic/g;->b:Lic/g;

    new-instance v2, Lic/w;

    invoke-direct {v2, v1}, Lic/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lic/g;->l(Lf8/b;)V

    goto :goto_3

    .line 31
    :cond_4
    sget-object v2, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Lic/p;

    move-object/from16 v7, p5

    invoke-direct {v6, v3, v0, v1, v7}, Lic/p;-><init>(Lhc/l0;Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;[B)V

    .line 32
    sget-object v0, Lic/g;->b:Lic/g;

    new-instance v3, Lic/n;

    invoke-direct {v3, v1}, Lic/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lic/g;->l(Lf8/b;)V

    .line 33
    invoke-virtual {v2, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x1

    .line 34
    :goto_3
    monitor-exit v5

    return v8

    .line 35
    :cond_5
    :try_start_3
    sget-object v0, Lic/g;->b:Lic/g;

    invoke-virtual {v0, v1}, Lic/g;->k(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    monitor-exit v5

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public final h()V
    .locals 3

    .line 1
    sget-object v0, Lic/g;->j:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lic/g;->b:Lic/g;

    invoke-virtual {v1}, Lic/g;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lic/g;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catchall_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final i(Ljava/lang/String;)Lic/q;
    .locals 8

    .line 1
    sget-object v0, Lic/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lic/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Lic/q;

    .line 3
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v1, [Lic/q;

    .line 5
    new-instance v3, Lic/q;

    invoke-direct {v3, p1}, Lic/q;-><init>(Ljava/lang/String;)V

    .line 6
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 7
    iget-object v7, v6, Lic/q;->a:Ljava/lang/String;

    .line 8
    invoke-static {v7, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    .line 9
    sget-object p1, Lic/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    sget-object p1, Lic/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    new-array v0, v2, [Lic/q;

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Lic/q;

    .line 13
    aget-object p1, p1, v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0

    throw p1
.end method

.method public final j()J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v3, Lic/g;->k:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lic/g;->i(Ljava/lang/String;)Lic/q;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/p;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reconnecting called w/ state:\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v4, v1, Lic/p;->f:Lf8/b;

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "g"

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    iget-object v2, v1, Lic/p;->f:Lf8/b;

    .line 7
    instance-of v2, v2, Lic/f;

    if-nez v2, :cond_0

    .line 8
    iget-object v2, v1, Lic/p;->f:Lf8/b;

    .line 9
    instance-of v2, v2, Lic/e;

    if-nez v2, :cond_0

    .line 10
    iget-object v2, v1, Lic/p;->f:Lf8/b;

    .line 11
    instance-of v2, v2, Lic/d;

    if-nez v2, :cond_0

    .line 12
    iget-object v2, v1, Lic/p;->f:Lf8/b;

    .line 13
    instance-of v2, v2, Lic/b;

    if-nez v2, :cond_0

    .line 14
    sget-object v2, Lic/g;->b:Lic/g;

    new-instance v3, Lic/f;

    invoke-direct {v3, p1}, Lic/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lic/g;->l(Lf8/b;)V

    .line 15
    iget-object p1, v1, Lic/p;->b:Landroid/bluetooth/BluetoothGatt;

    .line 16
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    .line 17
    :cond_0
    :try_start_1
    sget-object p1, Lic/g;->b:Lic/g;

    .line 18
    iget-object v1, v1, Lic/p;->f:Lf8/b;

    .line 19
    invoke-virtual {p1, v1}, Lic/g;->l(Lf8/b;)V

    .line 20
    sget-object p1, Lfd/o;->a:Lfd/o;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 21
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v2, "Reconnection called without device being connected to"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "g"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 p1, 0x0

    .line 22
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final l(Lf8/b;)V
    .locals 10

    .line 1
    sget-object v0, Lic/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lf8/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/p;

    if-eqz v0, :cond_8

    .line 2
    sget-object v1, Lic/g;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v2, v0, Lic/p;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/o;

    .line 5
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatedCoreRFConnectionState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    iget-object v2, v0, Lic/p;->f:Lf8/b;

    .line 7
    invoke-static {v2, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBigfootConnection: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Same connection was logged twice in a row."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, v0, Lic/p;->c:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lic/p;->d:[B

    .line 11
    invoke-static {v0}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-interface {v1, v2, v0, p1}, Lic/o;->a(Ljava/lang/String;Ljava/lang/String;Lf8/b;)V

    :cond_0
    return-void

    .line 13
    :cond_1
    iput-object p1, v0, Lic/p;->f:Lf8/b;

    .line 14
    instance-of v2, p1, Lic/r;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_0

    .line 15
    :cond_2
    instance-of v4, p1, Lic/c;

    :goto_0
    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    .line 16
    :cond_3
    instance-of v4, p1, Lic/w;

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    instance-of v3, p1, Lic/v;

    :goto_2
    if-eqz v3, :cond_5

    sget-object v3, Lic/g;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Ly0/x;

    const/16 v5, 0x8

    invoke-direct {v4, v0, v5}, Ly0/x;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    :cond_5
    instance-of v3, p1, Lic/t;

    if-nez v3, :cond_6

    if-eqz v2, :cond_7

    .line 19
    :cond_6
    sget-object v2, Lic/g;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lf8/b;->d()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v1, :cond_8

    .line 21
    iget-object v2, v0, Lic/p;->c:Ljava/lang/String;

    .line 22
    iget-object v0, v0, Lic/p;->d:[B

    .line 23
    invoke-static {v0}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-interface {v1, v2, v0, p1}, Lic/o;->a(Ljava/lang/String;Ljava/lang/String;Lf8/b;)V

    :cond_8
    return-void
.end method
