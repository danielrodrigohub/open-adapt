.class final Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;
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


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljd/f;

    check-cast p2, Ljd/f$a;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CoroutineContextKt$foldCopies$1;->invoke(Ljd/f;Ljd/f$a;)Ljd/f;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljd/f;Ljd/f$a;)Ljd/f;
    .locals 1

    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lkotlinx/coroutines/CopyableThreadContextElement;

    invoke-interface {p2}, Lkotlinx/coroutines/CopyableThreadContextElement;->copyForChild()Lkotlinx/coroutines/CopyableThreadContextElement;

    move-result-object p2

    invoke-interface {p1, p2}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1, p2}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object p1

    return-object p1
.end method
