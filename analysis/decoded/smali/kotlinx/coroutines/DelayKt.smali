.class public final Lkotlinx/coroutines/DelayKt;
.super Ljava/lang/Object;
.source "Delay.kt"


# direct methods
.method public static final delay(JLjd/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 1
    sget-object p0, Lfd/o;->a:Lfd/o;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Ljd/d;I)V

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p2, p0, v1

    if-gez p2, :cond_1

    .line 4
    invoke-interface {v0}, Ljd/d;->getContext()Ljd/f;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/DelayKt;->getDelay(Ljd/f;)Lkotlinx/coroutines/Delay;

    move-result-object p2

    invoke-interface {p2, p0, p1, v0}, Lkotlinx/coroutines/Delay;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V

    .line 5
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 6
    sget-object p1, Lkd/a;->h:Lkd/a;

    if-ne p0, p1, :cond_2

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lfd/o;->a:Lfd/o;

    return-object p0
.end method

.method public static final delay-VtjQ1oo(JLjd/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/DelayKt;->toDelayMillis-LRDsOJo(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkd/a;->h:Lkd/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lfd/o;->a:Lfd/o;

    return-object p0
.end method

.method public static final getDelay(Ljd/f;)Lkotlinx/coroutines/Delay;
    .locals 1

    sget v0, Ljd/e;->d:I

    sget-object v0, Ljd/e$a;->h:Ljd/e$a;

    invoke-interface {p0, v0}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/Delay;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/Delay;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/DefaultExecutorKt;->getDefaultDelay()Lkotlinx/coroutines/Delay;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final toDelayMillis-LRDsOJo(J)J
    .locals 3

    .line 1
    sget-object v0, Lzd/a;->i:Lzd/a$a;

    .line 2
    sget-object v0, Lzd/a;->i:Lzd/a$a;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lzd/a;->g(JJ)I

    move-result v2

    if-lez v2, :cond_3

    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0, p1}, Lzd/a;->m(J)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    shr-long/2addr p0, v1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lzd/c;->j:Lzd/c;

    invoke-static {p0, p1, v0}, Lzd/a;->p(JLzd/c;)J

    move-result-wide p0

    :goto_1
    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, p0

    :cond_3
    :goto_2
    return-wide v0
.end method
