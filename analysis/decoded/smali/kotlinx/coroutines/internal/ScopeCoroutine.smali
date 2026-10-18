.class public Lkotlinx/coroutines/internal/ScopeCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "Scopes.kt"

# interfaces
.implements Lld/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "TT;>;",
        "Lld/d;"
    }
.end annotation


# instance fields
.field public final uCont:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljd/f;Ljd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f;",
            "Ljd/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Ljd/f;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Ljd/d;

    return-void
.end method


# virtual methods
.method public afterCompletion(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Ljd/d;

    invoke-static {v0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Ljd/d;

    invoke-static {p1, v1}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith$default(Ljd/d;Ljava/lang/Object;Lqd/l;ILjava/lang/Object;)V

    return-void
.end method

.method public afterResume(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Ljd/d;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCallerFrame()Lld/d;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Ljd/d;

    instance-of v1, v0, Lld/d;

    if-eqz v1, :cond_0

    check-cast v0, Lld/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isScopedCoroutine()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
