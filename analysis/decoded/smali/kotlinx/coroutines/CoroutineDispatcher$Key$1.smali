.class final Lkotlinx/coroutines/CoroutineDispatcher$Key$1;
.super Lrd/o;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/CoroutineDispatcher$Key;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljd/f$a;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljd/f$a;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->invoke(Ljd/f$a;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljd/f$a;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/CoroutineDispatcher;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
