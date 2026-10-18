.class public final Lkotlinx/coroutines/CoroutineContextKt;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# direct methods
.method private static final foldCopies(Ljd/f;Ljd/f;Z)Ljd/f;
    .locals 3

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineContextKt;->hasCopyableElements(Ljd/f;)Z

    move-result v0

    .line 2
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineContextKt;->hasCopyableElements(Ljd/f;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lrd/w;

    invoke-direct {v0}, Lrd/w;-><init>()V

    iput-object p1, v0, Lrd/w;->h:Ljava/lang/Object;

    .line 5
    sget-object p1, Ljd/h;->h:Ljd/h;

    new-instance v2, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;

    invoke-direct {v2, v0, p2}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;-><init>(Lrd/w;Z)V

    invoke-interface {p0, p1, v2}, Ljd/f;->fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljd/f;

    if-eqz v1, :cond_1

    .line 6
    iget-object p2, v0, Lrd/w;->h:Ljava/lang/Object;

    check-cast p2, Ljd/f;

    sget-object v1, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    invoke-interface {p2, p1, v1}, Ljd/f;->fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lrd/w;->h:Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object p1, v0, Lrd/w;->h:Ljava/lang/Object;

    check-cast p1, Ljd/f;

    invoke-interface {p0, p1}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p0

    return-object p0
.end method

.method public static final getCoroutineName(Ljd/f;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final hasCopyableElements(Ljd/f;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$hasCopyableElements$1;

    invoke-interface {p0, v0, v1}, Ljd/f;->fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final newCoroutineContext(Ljd/f;Ljd/f;)Ljd/f;
    .locals 1

    .line 4
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineContextKt;->hasCopyableElements(Ljd/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/CoroutineContextKt;->foldCopies(Ljd/f;Ljd/f;Z)Ljd/f;

    move-result-object p0

    return-object p0
.end method

.method public static final newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Ljd/f;)Ljd/f;
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Ljd/f;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/CoroutineContextKt;->foldCopies(Ljd/f;Ljd/f;Z)Ljd/f;

    move-result-object p0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget p1, Ljd/e;->d:I

    sget-object p1, Ljd/e$a;->h:Ljd/e$a;

    invoke-interface {p0, p1}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-interface {p0, p1}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final undispatchedCompletion(Lld/d;)Lkotlinx/coroutines/UndispatchedCoroutine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lld/d;",
            ")",
            "Lkotlinx/coroutines/UndispatchedCoroutine<",
            "*>;"
        }
    .end annotation

    .line 1
    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/DispatchedCoroutine;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-interface {p0}, Lld/d;->getCallerFrame()Lld/d;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 3
    :cond_2
    instance-of v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/UndispatchedCoroutine;

    return-object p0
.end method

.method public static final updateUndispatchedCompletion(Ljd/d;Ljd/f;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "*>;",
            "Ljd/f;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlinx/coroutines/UndispatchedCoroutine<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lld/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    invoke-interface {p1, v0}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    check-cast p0, Lld/d;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineContextKt;->undispatchedCompletion(Lld/d;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/UndispatchedCoroutine;->saveThreadContext(Ljd/f;Ljava/lang/Object;)V

    :cond_3
    return-object p0
.end method
