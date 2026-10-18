.class public final Lfe/c;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/c$c;
    }
.end annotation


# static fields
.field public static final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lfe/o;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lfe/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lfe/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lm6/e;

.field public final f:Lfe/f;

.field public final g:Lfe/b;

.field public final h:Lfe/a;

.field public final i:Lfe/n;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Lfe/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfe/d;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfe/c;->r:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lfe/d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lfe/c$a;

    invoke-direct {v0}, Lfe/c$a;-><init>()V

    iput-object v0, p0, Lfe/c;->d:Lfe/c$a;

    .line 3
    iget-object v0, p1, Lfe/d;->h:Lfe/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lge/a;->c:Lge/a;

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 5
    iget-object v0, v0, Lge/a;->a:Lfe/g;

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lfe/g$a;

    invoke-direct {v0}, Lfe/g$a;-><init>()V

    .line 7
    :goto_1
    iput-object v0, p0, Lfe/c;->q:Lfe/g;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfe/c;->a:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfe/c;->b:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfe/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    sget-object v0, Lge/a;->c:Lge/a;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 12
    iget-object v0, v0, Lge/a;->b:Lm6/e;

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 13
    :goto_3
    iput-object v0, p0, Lfe/c;->e:Lm6/e;

    if-eqz v0, :cond_5

    .line 14
    new-instance v2, Lfe/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lfe/f;-><init>(Lfe/c;Landroid/os/Looper;)V

    .line 15
    :cond_5
    iput-object v2, p0, Lfe/c;->f:Lfe/f;

    .line 16
    new-instance v0, Lfe/b;

    invoke-direct {v0, p0}, Lfe/b;-><init>(Lfe/c;)V

    iput-object v0, p0, Lfe/c;->g:Lfe/b;

    .line 17
    new-instance v0, Lfe/a;

    invoke-direct {v0, p0}, Lfe/a;-><init>(Lfe/c;)V

    iput-object v0, p0, Lfe/c;->h:Lfe/a;

    .line 18
    new-instance v0, Lfe/n;

    invoke-direct {v0}, Lfe/n;-><init>()V

    iput-object v0, p0, Lfe/c;->i:Lfe/n;

    .line 19
    iget-boolean v0, p1, Lfe/d;->a:Z

    iput-boolean v0, p0, Lfe/c;->l:Z

    .line 20
    iget-boolean v0, p1, Lfe/d;->b:Z

    iput-boolean v0, p0, Lfe/c;->m:Z

    .line 21
    iget-boolean v0, p1, Lfe/d;->c:Z

    iput-boolean v0, p0, Lfe/c;->n:Z

    .line 22
    iget-boolean v0, p1, Lfe/d;->d:Z

    iput-boolean v0, p0, Lfe/c;->o:Z

    .line 23
    iget-boolean v0, p1, Lfe/d;->e:Z

    iput-boolean v0, p0, Lfe/c;->k:Z

    .line 24
    iget-boolean v0, p1, Lfe/d;->f:Z

    iput-boolean v0, p0, Lfe/c;->p:Z

    .line 25
    iget-object p1, p1, Lfe/d;->g:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lfe/c;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lfe/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lfe/i;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lfe/i;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lfe/i;->b:Lfe/o;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p1, Lfe/i;->a:Ljava/lang/Object;

    .line 4
    iput-object v2, p1, Lfe/i;->b:Lfe/o;

    .line 5
    iput-object v2, p1, Lfe/i;->c:Lfe/i;

    .line 6
    sget-object v2, Lfe/i;->d:Ljava/util/ArrayList;

    monitor-enter v2

    .line 7
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    .line 8
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-boolean p1, v1, Lfe/o;->c:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0, v1, v0}, Lfe/c;->c(Lfe/o;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lfe/o;Ljava/lang/Object;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p1, Lfe/o;->b:Lfe/m;

    iget-object v0, v0, Lfe/m;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lfe/o;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, p2, Lfe/l;

    if-eqz v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lfe/c;->l:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lfe/c;->q:Lfe/g;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SubscriberExceptionEvent subscriber "

    .line 7
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8
    iget-object p1, p1, Lfe/o;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lfe/g;->d(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    check-cast p2, Lfe/l;

    .line 10
    iget-object p1, p0, Lfe/c;->q:Lfe/g;

    const-string v0, "Initial event "

    .line 11
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    iget-object v1, p2, Lfe/l;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " caused exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lfe/l;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lfe/l;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v2, v0, p2}, Lfe/g;->d(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lfe/c;->k:Z

    if-nez v1, :cond_3

    .line 14
    iget-boolean v1, p0, Lfe/c;->l:Z

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lfe/c;->q:Lfe/g;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not dispatch event: "

    .line 16
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to subscribing class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lfe/o;->a:Ljava/lang/Object;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-interface {v1, v2, v3, v0}, Lfe/g;->d(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_1
    iget-boolean v1, p0, Lfe/c;->n:Z

    if-eqz v1, :cond_2

    .line 21
    new-instance v1, Lfe/l;

    iget-object p1, p1, Lfe/o;->a:Ljava/lang/Object;

    invoke-direct {v1, v0, p2, p1}, Lfe/l;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0, v1}, Lfe/c;->e(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    .line 23
    :cond_3
    new-instance p1, Lfe/e;

    const-string p2, "Invoking subscriber failed"

    invoke-direct {p1, p2, v0}, Lfe/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lfe/c;->e:Lm6/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfe/c;->d:Lfe/c$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe/c$c;

    .line 2
    iget-object v1, v0, Lfe/c$c;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p1, v0, Lfe/c$c;->b:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lfe/c;->d()Z

    move-result p1

    iput-boolean p1, v0, Lfe/c$c;->c:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v0, Lfe/c$c;->b:Z

    :goto_0
    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lfe/c;->f(Ljava/lang/Object;Lfe/c$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean p1, v0, Lfe/c$c;->b:Z

    .line 10
    iput-boolean p1, v0, Lfe/c$c;->c:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 11
    iput-boolean p1, v0, Lfe/c$c;->b:Z

    .line 12
    iput-boolean p1, v0, Lfe/c$c;->c:Z

    .line 13
    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfe/c$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lfe/c;->p:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Lfe/c;->r:Ljava/util/HashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3, v5}, Lfe/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    .line 9
    :cond_0
    sget-object v4, Lfe/c;->r:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v1, :cond_3

    .line 12
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 13
    invoke-virtual {p0, p1, p2, v6}, Lfe/c;->g(Ljava/lang/Object;Lfe/c$c;Ljava/lang/Class;)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lfe/c;->g(Ljava/lang/Object;Lfe/c$c;Ljava/lang/Class;)Z

    move-result v5

    :cond_3
    if-nez v5, :cond_5

    .line 16
    iget-boolean p2, p0, Lfe/c;->m:Z

    if-eqz p2, :cond_4

    .line 17
    iget-object p2, p0, Lfe/c;->q:Lfe/g;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No subscribers registered for event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lfe/g;->a(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-boolean p2, p0, Lfe/c;->o:Z

    if-eqz p2, :cond_5

    const-class p2, Lfe/h;

    if-eq v0, p2, :cond_5

    const-class p2, Lfe/l;

    if-eq v0, p2, :cond_5

    .line 19
    new-instance p2, Lfe/h;

    invoke-direct {p2, p0, p1, v2}, Lfe/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Lfe/c;->e(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final g(Ljava/lang/Object;Lfe/c$c;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lfe/c$c;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lfe/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe/o;

    .line 6
    iput-object p1, p2, Lfe/c$c;->d:Ljava/lang/Object;

    .line 7
    :try_start_1
    iget-boolean v1, p2, Lfe/c$c;->c:Z

    invoke-virtual {p0, v0, p1, v1}, Lfe/c;->h(Lfe/o;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catchall_1
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final h(Lfe/o;Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    sget-object v0, Lfe/c$b;->a:[I

    iget-object v1, p1, Lfe/o;->b:Lfe/m;

    iget-object v1, v1, Lfe/m;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 2
    iget-object p3, p0, Lfe/c;->h:Lfe/a;

    invoke-virtual {p3, p1, p2}, Lfe/a;->a(Lfe/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unknown thread mode: "

    .line 4
    invoke-static {p3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 5
    iget-object p1, p1, Lfe/o;->b:Lfe/m;

    iget-object p1, p1, Lfe/m;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Lfe/c;->g:Lfe/b;

    invoke-virtual {p3, p1, p2}, Lfe/b;->a(Lfe/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1, p2}, Lfe/c;->c(Lfe/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p3, p0, Lfe/c;->f:Lfe/f;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p3, p1, p2}, Lfe/f;->a(Lfe/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, p1, p2}, Lfe/c;->c(Lfe/o;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 11
    invoke-virtual {p0, p1, p2}, Lfe/c;->c(Lfe/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_6
    iget-object p3, p0, Lfe/c;->f:Lfe/f;

    invoke-virtual {p3, p1, p2}, Lfe/f;->a(Lfe/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p0, p1, p2}, Lfe/c;->c(Lfe/o;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 11

    .line 1
    invoke-static {}, Ld3/e;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    sget v0, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->d:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lfe/c;->i:Lfe/n;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v3, Lfe/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    goto :goto_5

    :cond_2
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2}, Lfe/n;->c()Lfe/n$a;

    move-result-object v4

    .line 8
    iput-object v0, v4, Lfe/n$a;->e:Ljava/lang/Class;

    .line 9
    iput-boolean v1, v4, Lfe/n$a;->f:Z

    .line 10
    iput-object v3, v4, Lfe/n$a;->g:Lhe/a;

    .line 11
    :goto_2
    iget-object v5, v4, Lfe/n$a;->e:Ljava/lang/Class;

    if-eqz v5, :cond_7

    .line 12
    iget-object v5, v4, Lfe/n$a;->g:Lhe/a;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lhe/a;->c()Lhe/a;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 13
    iget-object v5, v4, Lfe/n$a;->g:Lhe/a;

    invoke-interface {v5}, Lhe/a;->c()Lhe/a;

    move-result-object v5

    .line 14
    iget-object v6, v4, Lfe/n$a;->e:Ljava/lang/Class;

    invoke-interface {v5}, Lhe/a;->b()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v3

    .line 15
    :goto_3
    iput-object v5, v4, Lfe/n$a;->g:Lhe/a;

    if-eqz v5, :cond_5

    .line 16
    invoke-interface {v5}, Lhe/a;->a()[Lfe/m;

    move-result-object v5

    .line 17
    array-length v6, v5

    move v7, v1

    :goto_4
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 18
    iget-object v9, v8, Lfe/m;->a:Ljava/lang/reflect/Method;

    iget-object v10, v8, Lfe/m;->c:Ljava/lang/Class;

    invoke-virtual {v4, v9, v10}, Lfe/n$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 19
    iget-object v9, v4, Lfe/n$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 20
    :cond_5
    invoke-virtual {v2, v4}, Lfe/n;->a(Lfe/n$a;)V

    .line 21
    :cond_6
    invoke-virtual {v4}, Lfe/n$a;->c()V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {v2, v4}, Lfe/n;->b(Lfe/n$a;)Ljava/util/List;

    move-result-object v3

    .line 23
    move-object v1, v3

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 24
    sget-object v1, Lfe/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_5
    monitor-enter p0

    .line 26
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfe/m;

    .line 27
    invoke-virtual {p0, p1, v1}, Lfe/c;->j(Ljava/lang/Object;Lfe/m;)V

    goto :goto_6

    .line 28
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 29
    :cond_9
    new-instance p1, Lfe/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfe/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Ljava/lang/Object;Lfe/m;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lfe/m;->c:Ljava/lang/Class;

    .line 2
    new-instance v1, Lfe/o;

    invoke-direct {v1, p1, p2}, Lfe/o;-><init>(Ljava/lang/Object;Lfe/m;)V

    .line 3
    iget-object v2, p0, Lfe/c;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Lfe/c;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v3, :cond_3

    if-eq v4, v3, :cond_2

    .line 8
    iget v5, p2, Lfe/m;->d:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfe/o;

    iget-object v6, v6, Lfe/o;->b:Lfe/m;

    iget v6, v6, Lfe/m;->d:I

    if-le v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 10
    :cond_3
    iget-object v2, p0, Lfe/c;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v3, p0, Lfe/c;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-boolean p1, p2, Lfe/m;->e:Z

    if-eqz p1, :cond_7

    .line 15
    iget-boolean p1, p0, Lfe/c;->p:Z

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lfe/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p0}, Lfe/c;->d()Z

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lfe/c;->h(Lfe/o;Ljava/lang/Object;Z)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Lfe/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 23
    invoke-virtual {p0}, Lfe/c;->d()Z

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lfe/c;->h(Lfe/o;Ljava/lang/Object;Z)V

    :cond_7
    return-void

    .line 24
    :cond_8
    new-instance p2, Lfe/e;

    const-string v1, "Subscriber "

    .line 25
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lfe/e;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final declared-synchronized k(Ljava/lang/Object;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lfe/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lfe/c;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfe/o;

    .line 6
    iget-object v6, v5, Lfe/o;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_1

    .line 7
    iput-boolean v3, v5, Lfe/o;->c:Z

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lfe/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lfe/c;->q:Lfe/g;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lfe/g;->a(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "EventBus[indexCount="

    const/4 v1, 0x0

    const-string v2, ", eventInheritance="

    .line 1
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lfe/c;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
