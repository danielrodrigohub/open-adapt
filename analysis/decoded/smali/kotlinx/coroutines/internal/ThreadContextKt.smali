.class public final Lkotlinx/coroutines/internal/ThreadContextKt;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field public static final NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

.field private static final countAll:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Ljava/lang/Object;",
            "Ljd/f$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final findOne:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;",
            "Ljd/f$a;",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final updateState:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Lkotlinx/coroutines/internal/ThreadState;",
            "Ljd/f$a;",
            "Lkotlinx/coroutines/internal/ThreadState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->countAll:Lqd/p;

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->findOne:Lqd/p;

    .line 4
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->updateState:Lqd/p;

    return-void
.end method

.method public static final restoreThreadContext(Ljd/f;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/ThreadState;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/ThreadState;->restore(Ljd/f;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->findOne:Lqd/p;

    invoke-interface {p0, v0, v1}, Ljd/f;->fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ThreadContextElement;

    .line 5
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/ThreadContextElement;->restoreThreadContext(Ljd/f;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final threadContextElements(Ljd/f;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->countAll:Lqd/p;

    invoke-interface {p0, v0, v1}, Ljd/f;->fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lp4/h;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final updateThreadContext(Ljd/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Ljd/f;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/ThreadState;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/ThreadState;-><init>(Ljd/f;I)V

    sget-object p1, Lkotlinx/coroutines/internal/ThreadContextKt;->updateState:Lqd/p;

    invoke-interface {p0, v0, p1}, Ljd/f;->fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    .line 6
    invoke-interface {p1, p0}, Lkotlinx/coroutines/ThreadContextElement;->updateThreadContext(Ljd/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
