.class public final Lbb/b$a;
.super Lld/i;
.source "AdaptKitFirmwareRepository.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b;->a(Lfb/c;Ljd/d;)Ljava/lang/Object;
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
        "Lfa/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl$checkFirmware$2"
    f = "AdaptKitFirmwareRepository.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lfb/c;

.field public final synthetic j:Lbb/b;


# direct methods
.method public constructor <init>(Lfb/c;Lbb/b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfb/c;",
            "Lbb/b;",
            "Ljd/d<",
            "-",
            "Lbb/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbb/b$a;->i:Lfb/c;

    iput-object p2, p0, Lbb/b$a;->j:Lbb/b;

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

    new-instance p1, Lbb/b$a;

    iget-object v0, p0, Lbb/b$a;->i:Lfb/c;

    iget-object v1, p0, Lbb/b$a;->j:Lbb/b;

    invoke-direct {p1, v0, v1, p2}, Lbb/b$a;-><init>(Lfb/c;Lbb/b;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lbb/b$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lbb/b$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lbb/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lbb/b$a;->h:I

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

    const-wide/16 v3, 0x2710

    .line 4
    new-instance p1, Lbb/b$a$a;

    iget-object v1, p0, Lbb/b$a;->j:Lbb/b;

    iget-object v5, p0, Lbb/b$a;->i:Lfb/c;

    const/4 v6, 0x0

    invoke-direct {p1, v1, v5, v6}, Lbb/b$a$a;-><init>(Lbb/b;Lfb/c;Ljd/d;)V

    iput v2, p0, Lbb/b$a;->h:I

    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lfa/b;

    if-nez p1, :cond_3

    .line 5
    new-instance p1, Lfa/b$a;

    iget-object v0, p0, Lbb/b$a;->i:Lfb/c;

    const-string v1, "Timeout during call"

    invoke-direct {p1, v0, v1}, Lfa/b$a;-><init>(Lfb/c;Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method
