.class public final Le3/o;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/o$c;
    }
.end annotation


# static fields
.field public static volatile d:Le3/o;


# instance fields
.field public final a:Le3/o$c;

.field public final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le3/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le3/o;->b:Ljava/util/HashSet;

    .line 3
    new-instance v0, Le3/o$a;

    invoke-direct {v0, p1}, Le3/o$a;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Ll3/f;

    invoke-direct {p1, v0}, Ll3/f;-><init>(Ll3/g;)V

    .line 5
    new-instance v0, Le3/o$b;

    invoke-direct {v0, p0}, Le3/o$b;-><init>(Le3/o;)V

    .line 6
    new-instance v1, Le3/o$c;

    invoke-direct {v1, p1, v0}, Le3/o$c;-><init>(Ll3/g;Le3/b$a;)V

    .line 7
    iput-object v1, p0, Le3/o;->a:Le3/o$c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Le3/o;
    .locals 2

    .line 1
    sget-object v0, Le3/o;->d:Le3/o;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le3/o;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le3/o;->d:Le3/o;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Le3/o;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Le3/o;-><init>(Landroid/content/Context;)V

    sput-object v1, Le3/o;->d:Le3/o;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Le3/o;->d:Le3/o;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le3/o;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Le3/o;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Le3/o;->a:Le3/o$c;

    .line 3
    iget-object v1, v0, Le3/o$c;->c:Ll3/g;

    invoke-interface {v1}, Ll3/g;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Le3/o$c;->a:Z

    .line 4
    :try_start_0
    iget-object v1, v0, Le3/o$c;->c:Ll3/g;

    invoke-interface {v1}, Ll3/g;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v0, v0, Le3/o$c;->d:Le3/o$c$a;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    .line 5
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Failed to register callback"

    .line 6
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v2, v3

    .line 7
    :goto_1
    iput-boolean v2, p0, Le3/o;->c:Z

    :cond_3
    :goto_2
    return-void
.end method
