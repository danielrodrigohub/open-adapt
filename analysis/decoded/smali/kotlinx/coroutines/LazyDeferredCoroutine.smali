.class final Lkotlinx/coroutines/LazyDeferredCoroutine;
.super Lkotlinx/coroutines/DeferredCoroutine;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DeferredCoroutine<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final continuation:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljd/f;Lqd/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f;",
            "Lqd/p<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Ljd/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/DeferredCoroutine;-><init>(Ljd/f;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Landroidx/lifecycle/o;->j(Lqd/p;Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/LazyDeferredCoroutine;->continuation:Ljd/d;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/LazyDeferredCoroutine;->continuation:Ljd/d;

    invoke-static {v0, p0}, Lkotlinx/coroutines/intrinsics/CancellableKt;->startCoroutineCancellable(Ljd/d;Ljd/d;)V

    return-void
.end method
