.class public final Lcb/c;
.super Ljava/lang/Object;
.source "ScanRepositoryImpl.kt"

# interfaces
.implements Lcb/a;


# static fields
.field public static final b:Lcb/c;

.field public static final c:Lfd/d;

.field public static final d:Lfd/d;

.field public static final e:Lfd/d;

.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lka/d;",
            "Lv9/p0<",
            "Lka/b;",
            "Lka/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lka/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcb/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcb/c;

    invoke-direct {v0}, Lcb/c;-><init>()V

    sput-object v0, Lcb/c;->b:Lcb/c;

    .line 1
    new-instance v0, Lcb/c$f;

    invoke-direct {v0}, Lcb/c$f;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    .line 2
    sput-object v0, Lcb/c;->c:Lfd/d;

    .line 3
    new-instance v0, Lcb/c$g;

    invoke-direct {v0}, Lcb/c$g;-><init>()V

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    .line 4
    sput-object v0, Lcb/c;->d:Lfd/d;

    .line 5
    new-instance v0, Lcb/c$h;

    invoke-direct {v0}, Lcb/c$h;-><init>()V

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    .line 6
    sput-object v0, Lcb/c;->e:Lfd/d;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "synchronizedList(ArrayLi\u2026AdaptKitScannedDevice>())"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcb/c;->g:Ljava/util/List;

    .line 9
    new-instance v0, Lcb/c$a;

    invoke-direct {v0}, Lcb/c$a;-><init>()V

    sput-object v0, Lcb/c;->h:Lcb/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object v0, Lv9/t;->i:Leb/f;

    const/4 v1, 0x1

    new-array v1, v1, [Leb/g;

    .line 3
    new-instance v2, Leb/b;

    new-instance v3, Leb/a;

    const-string v4, "ScanRepository["

    const-string v5, "]"

    .line 4
    invoke-static {v4, p0, v5}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v3, p0}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Leb/b;-><init>(Leb/d;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-virtual {v0, v1}, Leb/f;->a([Leb/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lka/d;Lv9/p0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lka/d;",
            "Lv9/p0<",
            "Lka/b;",
            "Lka/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scanUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Lcb/c$d;->h:Lcb/c$d;

    sget-object v6, Lcb/c$e;->h:Lcb/c$e;

    .line 2
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v7, Lcb/d;

    move-object v1, v7

    move-object v2, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcb/d;-><init>(Lv9/p0;Lqd/a;Lka/d;Lv9/p0;Lqd/l;)V

    invoke-virtual {v0, v7}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final b(Lka/d;Lv9/p0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lka/d;",
            "Lv9/p0<",
            "Lka/b;",
            "Lka/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scanUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Lcb/c$b;->h:Lcb/c$b;

    sget-object v6, Lcb/c$c;->h:Lcb/c$c;

    .line 2
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v7, Lcb/d;

    move-object v1, v7

    move-object v2, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcb/d;-><init>(Lv9/p0;Lqd/a;Lka/d;Lv9/p0;Lqd/l;)V

    invoke-virtual {v0, v7}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final c(Lka/d;)V
    .locals 5

    const-string v0, "scanUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    sget-object p1, Lcb/c;->e:Lfd/d;

    invoke-interface {p1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljc/f;

    .line 4
    invoke-interface {p1}, Ljc/f;->b()V

    .line 5
    sget-object p1, Lcb/c;->g:Ljava/util/List;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object v0, Lcb/c;->b:Lcb/c;

    const-string v1, "ScannedDevice[Starting Device Results]"

    invoke-virtual {v0, v1}, Lcb/c;->f(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcb/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ScannedDevice[Did Not Find any results in Scan]"

    .line 8
    invoke-virtual {v0, v1}, Lcb/c;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    sget-object v0, Lcb/c;->g:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lka/c;

    .line 11
    sget-object v2, Lcb/c;->b:Lcb/c;

    invoke-virtual {v1}, Lka/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScannedDevice["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcb/c;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    sget-object v0, Lcb/c;->b:Lcb/c;

    const-string v1, "ScannedDevice[Stopping Device Results]"

    invoke-virtual {v0, v1}, Lcb/c;->f(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcb/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StopScanning, listeners still active count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcb/c;->f(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final e()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcb/c;->c:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object v0, Lv9/t;->i:Leb/f;

    const/4 v1, 0x1

    new-array v1, v1, [Leb/g;

    .line 3
    new-instance v2, Leb/c;

    new-instance v3, Leb/a;

    const-string v4, "ScanRepository["

    const-string v5, "]"

    .line 4
    invoke-static {v4, p1, v5}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v3, p1}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Leb/c;-><init>(Leb/d;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Leb/f;->a([Leb/g;)V

    return-void
.end method
