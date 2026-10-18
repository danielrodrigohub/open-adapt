.class public final Lbb/b$c;
.super Lld/i;
.source "AdaptKitFirmwareRepository.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b;->b(Lfa/b$c;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfa/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl$downloadFirmware$2"
    f = "AdaptKitFirmwareRepository.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lbb/b;

.field public final synthetic j:Lfa/b$c;


# direct methods
.method public constructor <init>(Lbb/b;Lfa/b$c;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbb/b;",
            "Lfa/b$c;",
            "Ljd/d<",
            "-",
            "Lbb/b$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbb/b$c;->i:Lbb/b;

    iput-object p2, p0, Lbb/b$c;->j:Lfa/b$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lbb/b$c;

    iget-object v0, p0, Lbb/b$c;->i:Lbb/b;

    iget-object v1, p0, Lbb/b$c;->j:Lfa/b$c;

    invoke-direct {p1, v0, v1, p2}, Lbb/b$c;-><init>(Lbb/b;Lfa/b$c;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lbb/b$c;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lbb/b$c;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lbb/b$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lbb/b$c;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    const-wide/32 v3, 0xea60

    .line 4
    new-instance p1, Lbb/b$c$a;

    iget-object v1, p0, Lbb/b$c;->i:Lbb/b;

    iget-object v5, p0, Lbb/b$c;->j:Lfa/b$c;

    const/4 v6, 0x0

    invoke-direct {p1, v1, v5, v6}, Lbb/b$c$a;-><init>(Lbb/b;Lfa/b$c;Ljd/d;)V

    iput v2, p0, Lbb/b$c;->h:I

    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
