.class public abstract Lkotlinx/coroutines/CoroutineDispatcher;
.super Ljd/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Ljd/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/CoroutineDispatcher$Key;
    }
.end annotation


# static fields
.field public static final Key:Lkotlinx/coroutines/CoroutineDispatcher$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/CoroutineDispatcher$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher$Key;-><init>(Lrd/h;)V

    sput-object v0, Lkotlinx/coroutines/CoroutineDispatcher;->Key:Lkotlinx/coroutines/CoroutineDispatcher$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljd/e$a;->h:Ljd/e$a;

    invoke-direct {p0, v0}, Ljd/a;-><init>(Ljd/f$b;)V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Ljd/f;Ljava/lang/Runnable;)V
.end method

.method public get(Ljd/f$b;)Ljd/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljd/f$a;",
            ">(",
            "Ljd/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ljd/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljd/b;

    invoke-interface {p0}, Ljd/f$a;->getKey()Ljd/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljd/b;->isSubKey$kotlin_stdlib(Ljd/f$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Ljd/b;->tryCast$kotlin_stdlib(Ljd/f$a;)Ljd/f$a;

    move-result-object p1

    instance-of v0, p1, Ljd/f$a;

    if-eqz v0, :cond_1

    move-object v1, p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Ljd/e$a;->h:Ljd/e$a;

    if-ne v0, p1, :cond_1

    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final interceptContinuation(Ljd/d;)Ljd/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljd/d<",
            "-TT;>;)",
            "Ljd/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/DispatchedContinuation;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ljd/d;)V

    return-object v0
.end method

.method public isDispatchNeeded(Ljd/f;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/internal/LimitedDispatcherKt;->checkParallelism(I)V

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;I)V

    return-object v0
.end method

.method public minusKey(Ljd/f$b;)Ljd/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f$b<",
            "*>;)",
            "Ljd/f;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ljd/b;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ljd/b;

    invoke-interface {p0}, Ljd/f$a;->getKey()Ljd/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljd/b;->isSubKey$kotlin_stdlib(Ljd/f$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljd/b;->tryCast$kotlin_stdlib(Ljd/f$a;)Ljd/f$a;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Ljd/h;->h:Ljd/h;

    goto :goto_0

    :cond_0
    move-object p1, p0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Ljd/e$a;->h:Ljd/e$a;

    if-ne v0, p1, :cond_0

    sget-object p1, Ljd/h;->h:Ljd/h;

    :goto_0
    return-object p1
.end method

.method public final releaseInterceptedContinuation(Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
