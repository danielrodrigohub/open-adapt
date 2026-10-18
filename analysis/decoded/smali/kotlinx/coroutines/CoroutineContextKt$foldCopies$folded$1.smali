.class final Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;
.super Lrd/o;
.source "CoroutineContext.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/CoroutineContextKt;->foldCopies(Ljd/f;Ljd/f;Z)Ljd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Ljd/f;",
        "Ljd/f$a;",
        "Ljd/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $isNewCoroutine:Z

.field public final synthetic $leftoverContext:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljd/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrd/w;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/w<",
            "Ljd/f;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lrd/w;

    iput-boolean p2, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$isNewCoroutine:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljd/f;

    check-cast p2, Ljd/f$a;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->invoke(Ljd/f;Ljd/f$a;)Ljd/f;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljd/f;Ljd/f$a;)Ljd/f;
    .locals 4

    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lrd/w;

    iget-object v0, v0, Lrd/w;->h:Ljava/lang/Object;

    check-cast v0, Ljd/f;

    invoke-interface {p2}, Ljd/f$a;->getKey()Ljd/f$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$isNewCoroutine:Z

    check-cast p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lkotlinx/coroutines/CopyableThreadContextElement;->copyForChild()Lkotlinx/coroutines/CopyableThreadContextElement;

    move-result-object p2

    :cond_1
    invoke-interface {p1, p2}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$folded$1;->$leftoverContext:Lrd/w;

    iget-object v2, v1, Lrd/w;->h:Ljava/lang/Object;

    check-cast v2, Ljd/f;

    invoke-interface {p2}, Ljd/f$a;->getKey()Ljd/f$b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljd/f;->minusKey(Ljd/f$b;)Ljd/f;

    move-result-object v2

    iput-object v2, v1, Lrd/w;->h:Ljava/lang/Object;

    .line 6
    check-cast p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/CopyableThreadContextElement;->mergeForChild(Ljd/f$a;)Ljd/f;

    move-result-object p2

    invoke-interface {p1, p2}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p1

    return-object p1
.end method
