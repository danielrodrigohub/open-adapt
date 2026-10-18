.class public final Lcb/d;
.super Lrd/o;
.source "AdaptKitExecutor.kt"

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


# instance fields
.field public final synthetic h:Lv9/p0;

.field public final synthetic i:Lqd/a;

.field public final synthetic j:Lka/d;

.field public final synthetic k:Lv9/p0;

.field public final synthetic l:Lqd/l;


# direct methods
.method public constructor <init>(Lv9/p0;Lqd/a;Lka/d;Lv9/p0;Lqd/l;)V
    .locals 0

    iput-object p1, p0, Lcb/d;->h:Lv9/p0;

    iput-object p2, p0, Lcb/d;->i:Lqd/a;

    iput-object p3, p0, Lcb/d;->j:Lka/d;

    iput-object p4, p0, Lcb/d;->k:Lv9/p0;

    iput-object p5, p0, Lcb/d;->l:Lqd/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcb/d;->h:Lv9/p0;

    .line 2
    iget-object v1, p0, Lcb/d;->i:Lqd/a;

    invoke-interface {v1}, Lqd/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lka/a;

    const-string v2, "Location Permission not granted by user"

    .line 4
    new-instance v3, Ly9/e;

    sget-object v4, Lv9/a;->i:Lv9/a$a;

    .line 5
    sget-object v4, Lv9/a;->j:Lv9/a;

    .line 6
    invoke-direct {v3, v4}, Ly9/e;-><init>(Lv9/a;)V

    .line 7
    invoke-direct {v1, v2, v3}, Lka/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sget-object v2, Lcb/c;->b:Lcb/c;

    const-string v2, "Scan not started LocationPermissionOff"

    invoke-static {v2}, Lcb/c;->d(Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, v1}, Lv9/p0;->b(Lv9/m;)V

    goto/16 :goto_1

    .line 10
    :cond_0
    sget-object v1, Lcb/c;->b:Lcb/c;

    .line 11
    sget-object v2, Lcb/c;->d:Lfd/d;

    invoke-interface {v2}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfb/a;

    .line 12
    invoke-interface {v2}, Lfb/a;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    new-instance v1, Lka/a;

    const-string v2, "Bluetooth is disabled"

    new-instance v3, Ly9/c;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Ly9/c;-><init>(Ljava/lang/String;ILrd/h;)V

    invoke-direct {v1, v2, v3}, Lka/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "Scan not started BluetoothAdapter Off"

    .line 14
    invoke-static {v2}, Lcb/c;->d(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Lv9/p0;->b(Lv9/m;)V

    goto :goto_1

    :cond_1
    const-string v0, "ScanForDevices Started"

    .line 16
    invoke-virtual {v1, v0}, Lcb/c;->f(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    sget-object v1, Lcb/c;->g:Ljava/util/List;

    .line 20
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    sget-object v2, Lcb/c;->g:Ljava/util/List;

    .line 22
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    monitor-exit v1

    .line 24
    iget-object v1, p0, Lcb/d;->j:Lka/d;

    iget-object v2, p0, Lcb/d;->k:Lv9/p0;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcb/d;->l:Lqd/l;

    .line 26
    sget-object v1, Lcb/c;->h:Lcb/c$a;

    .line 27
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v1

    throw v0

    .line 29
    :cond_2
    iget-object v1, p0, Lcb/d;->j:Lka/d;

    iget-object v2, p0, Lcb/d;->k:Lv9/p0;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 30
    new-instance v1, Lka/a;

    const-string v2, "Unexpected error, check cause"

    invoke-direct {v1, v2, v0}, Lka/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    sget-object v0, Lcb/c;->b:Lcb/c;

    const-string v0, "Scan Started Unexpected error, check cause: null message: null"

    invoke-static {v0}, Lcb/c;->d(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/p0;

    .line 35
    invoke-interface {v2, v1}, Lv9/p0;->b(Lv9/m;)V

    goto :goto_0

    .line 36
    :cond_3
    :goto_1
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
