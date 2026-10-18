.class final Lkotlinx/coroutines/UndispatchedMarker;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"

# interfaces
.implements Ljd/f$a;
.implements Ljd/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljd/f$a;",
        "Ljd/f$b<",
        "Lkotlinx/coroutines/UndispatchedMarker;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/UndispatchedMarker;

    invoke-direct {v0}, Lkotlinx/coroutines/UndispatchedMarker;-><init>()V

    sput-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lqd/p<",
            "-TR;-",
            "Ljd/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    .line 1
    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2, p1, p0}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljd/f$b;)Ljd/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljd/f$a;",
            ">(",
            "Ljd/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljd/f$a$a;->a(Ljd/f$a;Ljd/f$b;)Ljd/f$a;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ljd/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljd/f$b<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public minusKey(Ljd/f$b;)Ljd/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f$b<",
            "*>;)",
            "Ljd/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljd/f$a$a;->b(Ljd/f$a;Ljd/f$b;)Ljd/f;

    move-result-object p1

    return-object p1
.end method

.method public plus(Ljd/f;)Ljd/f;
    .locals 0

    invoke-static {p0, p1}, Ljd/f$a$a;->c(Ljd/f$a;Ljd/f;)Ljd/f;

    move-result-object p1

    return-object p1
.end method
