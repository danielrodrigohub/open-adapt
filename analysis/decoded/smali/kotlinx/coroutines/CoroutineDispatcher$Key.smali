.class public final Lkotlinx/coroutines/CoroutineDispatcher$Key;
.super Ljd/b;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/CoroutineDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljd/b<",
        "Ljd/e;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    sget v0, Ljd/e;->d:I

    sget-object v0, Ljd/e$a;->h:Ljd/e$a;

    .line 2
    sget-object v1, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    .line 3
    invoke-direct {p0, v0, v1}, Ljd/b;-><init>(Ljd/f$b;Lqd/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher$Key;-><init>()V

    return-void
.end method
