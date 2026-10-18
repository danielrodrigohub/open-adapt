.class public Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Le3/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/j$b;,
        Lcom/bumptech/glide/j$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Le3/i;"
    }
.end annotation


# static fields
.field public static final r:Lh3/g;


# instance fields
.field public final h:Lcom/bumptech/glide/c;

.field public final i:Landroid/content/Context;

.field public final j:Le3/h;

.field public final k:Le3/n;

.field public final l:Le3/m;

.field public final m:Le3/r;

.field public final n:Lcom/bumptech/glide/j$a;

.field public final o:Le3/b;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lh3/f<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public q:Lh3/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    new-instance v1, Lh3/g;

    invoke-direct {v1}, Lh3/g;-><init>()V

    invoke-virtual {v1, v0}, Lh3/a;->d(Ljava/lang/Class;)Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 3
    invoke-virtual {v0}, Lh3/a;->m()Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    sput-object v0, Lcom/bumptech/glide/j;->r:Lh3/g;

    .line 4
    const-class v0, Lc3/c;

    .line 5
    new-instance v1, Lh3/g;

    invoke-direct {v1}, Lh3/g;-><init>()V

    invoke-virtual {v1, v0}, Lh3/a;->d(Ljava/lang/Class;)Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 6
    invoke-virtual {v0}, Lh3/a;->m()Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 7
    sget-object v0, Lr2/l;->b:Lr2/l$b;

    .line 8
    new-instance v1, Lh3/g;

    invoke-direct {v1}, Lh3/g;-><init>()V

    invoke-virtual {v1, v0}, Lh3/a;->e(Lr2/l;)Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 9
    invoke-virtual {v0}, Lh3/a;->s()Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    invoke-virtual {v0}, Lh3/a;->w()Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Le3/h;Le3/m;Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Le3/n;

    invoke-direct {v0}, Le3/n;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/bumptech/glide/c;->n:Le3/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v2, Le3/r;

    invoke-direct {v2}, Le3/r;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/j;->m:Le3/r;

    .line 5
    new-instance v2, Lcom/bumptech/glide/j$a;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/j$a;-><init>(Lcom/bumptech/glide/j;)V

    iput-object v2, p0, Lcom/bumptech/glide/j;->n:Lcom/bumptech/glide/j$a;

    .line 6
    iput-object p1, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/c;

    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/j;->j:Le3/h;

    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/j;->l:Le3/m;

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/j;->k:Le3/n;

    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/j;->i:Landroid/content/Context;

    .line 11
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/bumptech/glide/j$c;

    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/j$c;-><init>(Lcom/bumptech/glide/j;Le3/n;)V

    .line 12
    check-cast v1, Le3/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 13
    invoke-static {p3, v0}, Ly/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    const-string v4, "ConnectivityMonitor"

    .line 14
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    const-string v3, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v3, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    .line 15
    :goto_1
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Le3/d;

    invoke-direct {v0, p3, p4}, Le3/d;-><init>(Landroid/content/Context;Le3/b$a;)V

    goto :goto_2

    .line 17
    :cond_3
    new-instance v0, Le3/j;

    invoke-direct {v0}, Le3/j;-><init>()V

    .line 18
    :goto_2
    iput-object v0, p0, Lcom/bumptech/glide/j;->o:Le3/b;

    .line 19
    invoke-static {}, Ll3/l;->h()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 20
    invoke-static {v2}, Ll3/l;->k(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 21
    :cond_4
    invoke-interface {p2, p0}, Le3/h;->b(Le3/i;)V

    .line 22
    :goto_3
    invoke-interface {p2, v0}, Le3/h;->b(Le3/i;)V

    .line 23
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    iget-object p3, p1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/e;

    .line 25
    iget-object p3, p3, Lcom/bumptech/glide/e;->e:Ljava/util/List;

    .line 26
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/j;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    iget-object p2, p1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/e;

    .line 28
    monitor-enter p2

    .line 29
    :try_start_0
    iget-object p3, p2, Lcom/bumptech/glide/e;->j:Lh3/g;

    if-nez p3, :cond_5

    .line 30
    iget-object p3, p2, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/c$a;

    check-cast p3, Lcom/bumptech/glide/d$a;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance p3, Lh3/g;

    invoke-direct {p3}, Lh3/g;-><init>()V

    .line 32
    iput-boolean v1, p3, Lh3/a;->A:Z

    .line 33
    iput-object p3, p2, Lcom/bumptech/glide/e;->j:Lh3/g;

    .line 34
    :cond_5
    iget-object p3, p2, Lcom/bumptech/glide/e;->j:Lh3/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p2

    .line 35
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/j;->s(Lh3/g;)V

    .line 36
    iget-object p3, p1, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    monitor-enter p3

    .line 37
    :try_start_1
    iget-object p2, p1, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 38
    iget-object p1, p1, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    monitor-exit p3

    return-void

    .line 40
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register already registered manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 42
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->r()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/j;->m:Le3/r;

    invoke-virtual {v0}, Le3/r;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->q()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/j;->m:Le3/r;

    invoke-virtual {v0}, Le3/r;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->m:Le3/r;

    invoke-virtual {v0}, Le3/r;->k()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/j;->m:Le3/r;

    .line 3
    iget-object v0, v0, Le3/r;->h:Ljava/util/Set;

    invoke-static {v0}, Ll3/l;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/i;

    .line 5
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/j;->o(Li3/i;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->m:Le3/r;

    .line 7
    iget-object v0, v0, Le3/r;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/j;->k:Le3/n;

    .line 9
    iget-object v1, v0, Le3/n;->a:Ljava/util/Set;

    invoke-static {v1}, Ll3/l;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/d;

    .line 10
    invoke-virtual {v0, v2}, Le3/n;->a(Lh3/d;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v0, Le3/n;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/j;->j:Le3/h;

    invoke-interface {v0, p0}, Le3/h;->c(Le3/i;)V

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/j;->j:Le3/h;

    iget-object v1, p0, Lcom/bumptech/glide/j;->o:Le3/b;

    invoke-interface {v0, v1}, Le3/h;->c(Le3/i;)V

    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/j;->n:Lcom/bumptech/glide/j$a;

    .line 15
    invoke-static {}, Ll3/l;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/c;->d(Lcom/bumptech/glide/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l(Ljava/lang/Class;)Lcom/bumptech/glide/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/i<",
            "TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/i;

    iget-object v1, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/j;->i:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/i;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/j;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Lcom/bumptech/glide/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->l(Ljava/lang/Class;)Lcom/bumptech/glide/i;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/j;->r:Lh3/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->D(Lh3/a;)Lcom/bumptech/glide/i;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->l(Ljava/lang/Class;)Lcom/bumptech/glide/i;

    move-result-object v0

    return-object v0
.end method

.method public final o(Li3/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li3/i<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->t(Li3/i;)Z

    move-result v0

    .line 2
    invoke-interface {p1}, Li3/i;->e()Lh3/d;

    move-result-object v1

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/c;

    .line 4
    iget-object v2, v0, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/j;

    .line 6
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/j;->t(Li3/i;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 7
    monitor-exit v2

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Li3/i;->i(Lh3/d;)V

    .line 10
    invoke-interface {v1}, Lh3/d;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public p(Ljava/lang/Integer;)Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->n()Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->J(Ljava/lang/Integer;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized q()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->k:Le3/n;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le3/n;->c:Z

    .line 3
    iget-object v1, v0, Le3/n;->a:Ljava/util/Set;

    invoke-static {v1}, Ll3/l;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/d;

    .line 4
    invoke-interface {v2}, Lh3/d;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lh3/d;->c()V

    .line 6
    iget-object v3, v0, Le3/n;->b:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->k:Le3/n;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le3/n;->c:Z

    .line 3
    iget-object v1, v0, Le3/n;->a:Ljava/util/Set;

    invoke-static {v1}, Ll3/l;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/d;

    .line 4
    invoke-interface {v2}, Lh3/d;->i()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lh3/d;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v2}, Lh3/d;->f()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Le3/n;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s(Lh3/g;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lh3/a;->c()Lh3/a;

    move-result-object p1

    check-cast p1, Lh3/g;

    invoke-virtual {p1}, Lh3/a;->b()Lh3/a;

    move-result-object p1

    check-cast p1, Lh3/g;

    iput-object p1, p0, Lcom/bumptech/glide/j;->q:Lh3/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized t(Li3/i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li3/i<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Li3/i;->e()Lh3/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/j;->k:Le3/n;

    invoke-virtual {v2, v0}, Le3/n;->a(Lh3/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/j;->m:Le3/r;

    .line 5
    iget-object v0, v0, Le3/r;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Li3/i;->i(Lh3/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/j;->k:Le3/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/j;->l:Le3/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
