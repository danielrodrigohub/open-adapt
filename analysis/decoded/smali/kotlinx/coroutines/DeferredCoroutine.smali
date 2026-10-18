.class Lkotlinx/coroutines/DeferredCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "Builders.common.kt"

# interfaces
.implements Lkotlinx/coroutines/Deferred;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "TT;>;",
        "Lkotlinx/coroutines/Deferred<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljd/f;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Ljd/f;ZZ)V

    return-void
.end method

.method public static synthetic await$suspendImpl(Lkotlinx/coroutines/DeferredCoroutine;Ljd/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->awaitInternal$kotlinx_coroutines_core(Ljd/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public await(Ljd/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/DeferredCoroutine;->await$suspendImpl(Lkotlinx/coroutines/DeferredCoroutine;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
