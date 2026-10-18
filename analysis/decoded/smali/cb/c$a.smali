.class public final Lcb/c$a;
.super Ljava/lang/Object;
.source "ScanRepositoryImpl.kt"

# interfaces
.implements Ljc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljc/a;)V
    .locals 6

    .line 1
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device Updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lcb/b;

    invoke-direct {v1, p1}, Lcb/b;-><init>(Ljc/a;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv9/p0;

    .line 4
    new-instance v2, Lka/a;

    const-string v3, "Scanner shutdown experienced an issue, please check error"

    invoke-direct {v2, v3, p1}, Lka/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {v1, v2}, Lv9/p0;->b(Lv9/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(ZLjava/lang/Throwable;)V
    .locals 4

    .line 1
    instance-of v0, p2, Ljc/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljc/g;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "ScanDiscoveryStartedError[message: "

    const-string v3, "]"

    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Lcb/c;->b:Lcb/c;

    check-cast p2, Ljc/g;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcb/c;->d(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv9/p0;

    .line 6
    new-instance v0, Lka/a;

    .line 7
    new-instance v2, Ly9/c;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Ly9/c;-><init>(Ljava/lang/String;ILrd/h;)V

    const-string v3, "Bluetooth is turned off"

    .line 8
    invoke-direct {v0, v3, v2}, Lka/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-interface {p2, v0}, Lv9/p0;->b(Lv9/m;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    sget-object p1, Lcb/c;->b:Lcb/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcb/c;->d(Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/p0;

    .line 14
    new-instance v1, Lka/a;

    const-string v2, "Failed To Start Scanner"

    invoke-direct {v1, v2, p2}, Lka/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lv9/p0;->b(Lv9/m;)V

    goto :goto_2

    .line 15
    :cond_2
    sget-object p2, Lcb/c;->b:Lcb/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanDiscoveryStarted[started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Lcb/c;->f(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final d(I)V
    .locals 5

    .line 1
    sget-object v0, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv9/p0;

    .line 4
    new-instance v2, Lka/a;

    .line 5
    new-instance v3, Ly9/d;

    invoke-direct {v3, p1}, Ly9/d;-><init>(I)V

    const-string v4, "Scanner failed to initialize for application. Scanning too often?"

    .line 6
    invoke-direct {v2, v4, v3}, Lka/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-interface {v1, v2}, Lv9/p0;->b(Lv9/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljc/a;)V
    .locals 6

    .line 1
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lcb/b;

    invoke-direct {v1, p1}, Lcb/b;-><init>(Ljc/a;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method
