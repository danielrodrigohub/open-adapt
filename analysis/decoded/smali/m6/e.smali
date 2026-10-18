.class public Lm6/e;
.super Ljava/lang/Object;
.source "EdgeTreatment.java"

# interfaces
.implements Le3/g;
.implements Lg7/q;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(Ljava/util/List;Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 1

    const-string v0, "errorDisplays"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownConnectionState()Lv9/e;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lm6/e;->e(Ljava/util/List;ZLv9/e;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownConnectionState()Lv9/e;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lm6/e;->e(Ljava/util/List;ZLv9/e;)V

    :goto_0
    return-void
.end method

.method public static final d(Ljava/util/List;)V
    .locals 5

    const-string v0, "errorDisplays"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu8/g;

    .line 2
    iput-boolean v2, v1, Lu8/g;->b:Z

    .line 3
    iput-boolean v2, v1, Lu8/g;->c:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu8/g;

    const/4 v1, 0x0

    .line 5
    sget-object v3, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownConnectionState()Lv9/e;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lu8/g;->c(ZLv9/e;)Z

    .line 6
    invoke-virtual {v3}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getLastKnownConnectionState()Lv9/e;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lu8/g;->c(ZLv9/e;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static final e(Ljava/util/List;ZLv9/e;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu8/g;

    .line 2
    invoke-virtual {v0, p1, p2}, Lu8/g;->c(ZLv9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(FFFLm6/k;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Lm6/k;->e(FF)V

    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method
