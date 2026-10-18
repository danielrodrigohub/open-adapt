.class Lkotlinx/coroutines/StandaloneCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljd/f;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Ljd/f;ZZ)V

    return-void
.end method


# virtual methods
.method public handleJobException(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractCoroutine;->getContext()Ljd/f;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Ljd/f;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
