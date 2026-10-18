.class public final Lu1/k;
.super Ljava/lang/Object;
.source "StopWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field public final h:Ll1/k;

.field public final i:Ljava/lang/String;

.field public final j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StopWorkRunnable"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu1/k;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ll1/k;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu1/k;->h:Ll1/k;

    .line 3
    iput-object p2, p0, Lu1/k;->i:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lu1/k;->j:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lu1/k;->h:Ll1/k;

    .line 2
    iget-object v1, v0, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    iget-object v0, v0, Ll1/k;->f:Ll1/d;

    .line 4
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Ly0/d0;->c()V

    .line 6
    :try_start_0
    iget-object v3, p0, Lu1/k;->i:Ljava/lang/String;

    .line 7
    iget-object v4, v0, Ll1/d;->r:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v0, v0, Ll1/d;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-boolean v3, p0, Lu1/k;->j:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 10
    iget-object v0, p0, Lu1/k;->h:Ll1/k;

    .line 11
    iget-object v0, v0, Ll1/k;->f:Ll1/d;

    .line 12
    iget-object v2, p0, Lu1/k;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Ll1/d;->i(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lu1/k;->i:Ljava/lang/String;

    .line 15
    check-cast v2, Lt1/q;

    invoke-virtual {v2, v0}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v0

    sget-object v3, Lk1/p;->i:Lk1/p;

    if-ne v0, v3, :cond_1

    .line 16
    sget-object v0, Lk1/p;->h:Lk1/p;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v6, p0, Lu1/k;->i:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v2, v0, v3}, Lt1/q;->o(Lk1/p;[Ljava/lang/String;)I

    .line 17
    :cond_1
    iget-object v0, p0, Lu1/k;->h:Ll1/k;

    .line 18
    iget-object v0, v0, Ll1/k;->f:Ll1/d;

    .line 19
    iget-object v2, p0, Lu1/k;->i:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v2}, Ll1/d;->j(Ljava/lang/String;)Z

    move-result v0

    .line 21
    :goto_0
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v2

    sget-object v3, Lu1/k;->k:Ljava/lang/String;

    const-string v6, "StopWorkRunnable for %s; Processor.stopWork = %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lu1/k;->i:Ljava/lang/String;

    aput-object v8, v7, v5

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v4

    .line 23
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 24
    invoke-virtual {v2, v3, v0, v4}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 25
    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    invoke-virtual {v1}, Ly0/d0;->l()V

    return-void

    :catchall_0
    move-exception v0

    .line 27
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 28
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 29
    throw v0
.end method
