.class public final Ll1/k;
.super Lk1/q;
.source "WorkManagerImpl.java"


# static fields
.field public static j:Ll1/k;

.field public static k:Ll1/k;

.field public static final l:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/a;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Lw1/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll1/e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ll1/d;

.field public g:Lu1/g;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    .line 1
    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Ll1/k;->j:Ll1/k;

    .line 3
    sput-object v0, Ll1/k;->k:Ll1/k;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll1/k;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lw1/a;)V
    .locals 13

    move-object v1, p0

    move-object v0, p2

    move-object/from16 v8, p3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/work/R$bool;->workmanager_test_configuration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 3
    move-object v4, v8

    check-cast v4, Lw1/b;

    .line 4
    iget-object v4, v4, Lw1/b;->a:Lu1/i;

    .line 5
    sget v5, Landroidx/work/impl/WorkDatabase;->n:I

    .line 6
    const-class v5, Landroidx/work/impl/WorkDatabase;

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Ly0/d0$a;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v7}, Ly0/d0$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    iput-boolean v6, v2, Ly0/d0$a;->h:Z

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Ll1/j;->a:Ljava/lang/String;

    const-string v2, "androidx.work.workdb"

    .line 10
    invoke-static {v3, v5, v2}, Ly0/a0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ly0/d0$a;

    move-result-object v2

    .line 11
    new-instance v5, Ll1/h;

    invoke-direct {v5, v3}, Ll1/h;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v5, v2, Ly0/d0$a;->g:Ld1/d$c;

    .line 13
    :goto_0
    iput-object v4, v2, Ly0/d0$a;->e:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v4, Ll1/i;

    invoke-direct {v4}, Ll1/i;-><init>()V

    .line 15
    iget-object v5, v2, Ly0/d0$a;->d:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Ly0/d0$a;->d:Ljava/util/ArrayList;

    .line 17
    :cond_1
    iget-object v5, v2, Ly0/d0$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v6, [Lz0/b;

    .line 18
    sget-object v5, Landroidx/work/impl/a;->a:Landroidx/work/impl/a$a;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    .line 19
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    new-instance v5, Landroidx/work/impl/a$h;

    const/4 v7, 0x3

    const/4 v10, 0x2

    invoke-direct {v5, v3, v10, v7}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v9

    .line 20
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    sget-object v5, Landroidx/work/impl/a;->b:Landroidx/work/impl/a$b;

    aput-object v5, v4, v9

    .line 21
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    sget-object v5, Landroidx/work/impl/a;->c:Landroidx/work/impl/a$c;

    aput-object v5, v4, v9

    .line 22
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    new-instance v5, Landroidx/work/impl/a$h;

    const/4 v7, 0x5

    const/4 v11, 0x6

    invoke-direct {v5, v3, v7, v11}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v9

    .line 23
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    sget-object v5, Landroidx/work/impl/a;->d:Landroidx/work/impl/a$d;

    aput-object v5, v4, v9

    .line 24
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    sget-object v5, Landroidx/work/impl/a;->e:Landroidx/work/impl/a$e;

    aput-object v5, v4, v9

    .line 25
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    sget-object v5, Landroidx/work/impl/a;->f:Landroidx/work/impl/a$f;

    aput-object v5, v4, v9

    .line 26
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    new-instance v5, Landroidx/work/impl/a$i;

    invoke-direct {v5, v3}, Landroidx/work/impl/a$i;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v9

    .line 27
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v4, v6, [Lz0/b;

    new-instance v5, Landroidx/work/impl/a$h;

    const/16 v7, 0xa

    const/16 v11, 0xb

    invoke-direct {v5, v3, v7, v11}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v9

    .line 28
    invoke-virtual {v2, v4}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    new-array v3, v6, [Lz0/b;

    sget-object v4, Landroidx/work/impl/a;->g:Landroidx/work/impl/a$g;

    aput-object v4, v3, v9

    .line 29
    invoke-virtual {v2, v3}, Ly0/d0$a;->a([Lz0/b;)Ly0/d0$a;

    .line 30
    iput-boolean v9, v2, Ly0/d0$a;->j:Z

    .line 31
    iput-boolean v6, v2, Ly0/d0$a;->k:Z

    .line 32
    invoke-virtual {v2}, Ly0/d0$a;->b()Ly0/d0;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/work/impl/WorkDatabase;

    .line 33
    invoke-direct {p0}, Lk1/q;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 35
    new-instance v3, Lk1/l$a;

    .line 36
    iget v4, v0, Landroidx/work/a;->f:I

    .line 37
    invoke-direct {v3, v4}, Lk1/l$a;-><init>(I)V

    .line 38
    const-class v4, Lk1/l;

    monitor-enter v4

    .line 39
    :try_start_0
    sput-object v3, Lk1/l;->a:Lk1/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v4

    new-array v3, v10, [Ll1/e;

    .line 41
    sget-object v4, Ll1/f;->a:Ljava/lang/String;

    .line 42
    new-instance v4, Lo1/b;

    invoke-direct {v4, v2, p0}, Lo1/b;-><init>(Landroid/content/Context;Ll1/k;)V

    .line 43
    const-class v5, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {v2, v5, v6}, Lu1/f;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 44
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v5

    sget-object v7, Ll1/f;->a:Ljava/lang/String;

    new-array v10, v9, [Ljava/lang/Throwable;

    const-string v12, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v5, v7, v12, v10}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    aput-object v4, v3, v9

    .line 45
    new-instance v4, Lm1/c;

    invoke-direct {v4, v2, p2, v8, p0}, Lm1/c;-><init>(Landroid/content/Context;Landroidx/work/a;Lw1/a;Ll1/k;)V

    aput-object v4, v3, v6

    .line 46
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 47
    new-instance v12, Ll1/d;

    move-object v2, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Ll1/d;-><init>(Landroid/content/Context;Landroidx/work/a;Lw1/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 49
    iput-object v2, v1, Ll1/k;->a:Landroid/content/Context;

    .line 50
    iput-object v0, v1, Ll1/k;->b:Landroidx/work/a;

    .line 51
    iput-object v8, v1, Ll1/k;->d:Lw1/a;

    .line 52
    iput-object v11, v1, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 53
    iput-object v10, v1, Ll1/k;->e:Ljava/util/List;

    .line 54
    iput-object v12, v1, Ll1/k;->f:Ll1/d;

    .line 55
    new-instance v0, Lu1/g;

    invoke-direct {v0, v11}, Lu1/g;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object v0, v1, Ll1/k;->g:Lu1/g;

    .line 56
    iput-boolean v9, v1, Ll1/k;->h:Z

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, v1, Ll1/k;->d:Lw1/a;

    new-instance v3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v3, v2, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Ll1/k;)V

    check-cast v0, Lw1/b;

    invoke-virtual {v0, v3}, Lw1/b;->a(Ljava/lang/Runnable;)V

    return-void

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 60
    monitor-exit v4

    throw v2
.end method

.method public static a(Landroid/content/Context;)Ll1/k;
    .locals 2

    .line 1
    sget-object v0, Ll1/k;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Ll1/k;->j:Ll1/k;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Ll1/k;->k:Ll1/k;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v1, p0, Landroidx/work/a$b;

    if-eqz v1, :cond_1

    .line 8
    move-object v1, p0

    check-cast v1, Landroidx/work/a$b;

    .line 9
    invoke-interface {v1}, Landroidx/work/a$b;->b()Landroidx/work/a;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Ll1/k;->b(Landroid/content/Context;Landroidx/work/a;)V

    .line 11
    invoke-static {p0}, Ll1/k;->a(Landroid/content/Context;)Ll1/k;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static b(Landroid/content/Context;Landroidx/work/a;)V
    .locals 4

    .line 1
    sget-object v0, Ll1/k;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Ll1/k;->j:Ll1/k;

    if-eqz v1, :cond_1

    sget-object v2, Ll1/k;->k:Ll1/k;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Ll1/k;->k:Ll1/k;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Ll1/k;

    new-instance v2, Lw1/b;

    .line 7
    iget-object v3, p1, Landroidx/work/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 8
    invoke-direct {v2, v3}, Lw1/b;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Ll1/k;-><init>(Landroid/content/Context;Landroidx/work/a;Lw1/a;)V

    sput-object v1, Ll1/k;->k:Ll1/k;

    .line 9
    :cond_2
    sget-object p0, Ll1/k;->k:Ll1/k;

    sput-object p0, Ll1/k;->j:Ll1/k;

    .line 10
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Ll1/k;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Ll1/k;->h:Z

    .line 3
    iget-object v1, p0, Ll1/k;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ll1/k;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll1/k;->a:Landroid/content/Context;

    .line 2
    sget-object v1, Lo1/b;->l:Ljava/lang/String;

    const-string v1, "jobscheduler"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, v1}, Lo1/b;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 7
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lo1/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v0

    check-cast v0, Lt1/q;

    .line 10
    iget-object v1, v0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v1}, Ly0/d0;->b()V

    .line 11
    iget-object v1, v0, Lt1/q;->i:Lt1/q$h;

    invoke-virtual {v1}, Ly0/h0;->a()Ld1/g;

    move-result-object v1

    .line 12
    iget-object v2, v0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v2}, Ly0/d0;->c()V

    .line 13
    :try_start_0
    invoke-interface {v1}, Ld1/g;->p()I

    .line 14
    iget-object v2, v0, Lt1/q;->a:Ly0/d0;

    invoke-virtual {v2}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v2, v0, Lt1/q;->a:Ly0/d0;

    .line 16
    invoke-virtual {v2}, Ly0/d0;->l()V

    .line 17
    iget-object v0, v0, Lt1/q;->i:Lt1/q$h;

    invoke-virtual {v0, v1}, Ly0/h0;->d(Ld1/g;)V

    .line 18
    iget-object v0, p0, Ll1/k;->b:Landroidx/work/a;

    .line 19
    iget-object v1, p0, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 20
    iget-object v2, p0, Ll1/k;->e:Ljava/util/List;

    .line 21
    invoke-static {v0, v1, v2}, Ll1/f;->a(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    .line 22
    iget-object v3, v0, Lt1/q;->a:Ly0/d0;

    .line 23
    invoke-virtual {v3}, Ly0/d0;->l()V

    .line 24
    iget-object v0, v0, Lt1/q;->i:Lt1/q$h;

    invoke-virtual {v0, v1}, Ly0/h0;->d(Ld1/g;)V

    .line 25
    throw v2
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ll1/k;->d:Lw1/a;

    new-instance v1, Lu1/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lu1/k;-><init>(Ll1/k;Ljava/lang/String;Z)V

    check-cast v0, Lw1/b;

    invoke-virtual {v0, v1}, Lw1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
