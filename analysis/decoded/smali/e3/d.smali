.class public final Le3/d;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitor.java"

# interfaces
.implements Le3/b;


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Le3/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le3/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le3/d;->h:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le3/d;->i:Le3/b$a;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Le3/d;->h:Landroid/content/Context;

    invoke-static {v0}, Le3/o;->a(Landroid/content/Context;)Le3/o;

    move-result-object v0

    iget-object v1, p0, Le3/d;->i:Le3/b$a;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Le3/o;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Le3/o;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Le3/d;->h:Landroid/content/Context;

    invoke-static {v0}, Le3/o;->a(Landroid/content/Context;)Le3/o;

    move-result-object v0

    iget-object v1, p0, Le3/d;->i:Le3/b$a;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Le3/o;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-boolean v1, v0, Le3/o;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Le3/o;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le3/o;->a:Le3/o$c;

    .line 6
    iget-object v2, v1, Le3/o$c;->c:Ll3/g;

    invoke-interface {v2}, Ll3/g;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v1, v1, Le3/o$c;->d:Le3/o$c$a;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Le3/o;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final k()V
    .locals 0

    return-void
.end method
