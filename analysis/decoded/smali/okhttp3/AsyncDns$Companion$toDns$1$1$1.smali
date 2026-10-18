.class public final Lokhttp3/AsyncDns$Companion$toDns$1$1$1;
.super Ljava/lang/Object;
.source "AsyncDns.kt"

# interfaces
.implements Lokhttp3/AsyncDns$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/AsyncDns$Companion;->toDns$lambda-2([Lokhttp3/AsyncDns;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $allAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $allExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;->$allAddresses:Ljava/util/List;

    iput-object p2, p0, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;->$allExceptions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;->$allExceptions:Ljava/util/List;

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p1

    .line 4
    iget-object p1, p0, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p2

    .line 5
    monitor-exit p1

    throw p2
.end method

.method public onResponse(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "addresses"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;->$allAddresses:Ljava/util/List;

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p1

    .line 4
    iget-object p1, p0, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p2

    .line 5
    monitor-exit p1

    throw p2
.end method
