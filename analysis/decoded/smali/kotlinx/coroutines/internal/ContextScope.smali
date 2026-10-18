.class public final Lkotlinx/coroutines/internal/ContextScope;
.super Ljava/lang/Object;
.source "Scopes.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field private final coroutineContext:Ljd/f;


# direct methods
.method public constructor <init>(Ljd/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Ljd/f;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ljd/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Ljd/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CoroutineScope(coroutineContext="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ContextScope;->getCoroutineContext()Ljd/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
