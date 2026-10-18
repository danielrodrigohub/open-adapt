.class public final Ly1/k0;
.super Ljava/lang/Object;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/k0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly1/g0<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly1/g0<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Landroid/os/Handler;

.field public volatile d:Ly1/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly1/j0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ly1/k0;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ly1/j0<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Ly1/k0;->a:Ljava/util/LinkedHashSet;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Ly1/k0;->b:Ljava/util/LinkedHashSet;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ly1/k0;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ly1/k0;->d:Ly1/j0;

    if-eqz p2, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/j0;

    invoke-virtual {p0, p1}, Ly1/k0;->c(Ly1/j0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    new-instance p2, Ly1/j0;

    invoke-direct {p2, p1}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Ly1/k0;->c(Ly1/j0;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Ly1/k0;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ly1/k0$a;

    invoke-direct {v0, p0, p1}, Ly1/k0$a;-><init>(Ly1/k0;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ly1/g0;)Ly1/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/g0<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ly1/k0<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ly1/k0;->d:Ly1/j0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ly1/j0;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ly1/g0;->a(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Ly1/k0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ly1/g0;)Ly1/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/g0<",
            "TT;>;)",
            "Ly1/k0<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ly1/k0;->d:Ly1/j0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ly1/j0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ly1/g0;->a(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Ly1/k0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ly1/j0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/j0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly1/k0;->d:Ly1/j0;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Ly1/k0;->d:Ly1/j0;

    .line 3
    iget-object p1, p0, Ly1/k0;->c:Landroid/os/Handler;

    new-instance v0, Landroidx/activity/g;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/activity/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A task may only be set once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
