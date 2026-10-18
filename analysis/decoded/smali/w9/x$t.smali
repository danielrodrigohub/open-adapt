.class public final Lw9/x$t;
.super Lld/i;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->u(Ljd/d;)Ljava/lang/Object;
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
        "Lfa/a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareCheckLatestVersion$2"
    f = "AdaptKitPairDevicesController.kt"
    l = {
        0x429,
        0x429
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/x;",
            "Ljd/d<",
            "-",
            "Lw9/x$t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/x$t;->j:Lw9/x;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

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

    new-instance v0, Lw9/x$t;

    iget-object v1, p0, Lw9/x$t;->j:Lw9/x;

    invoke-direct {v0, v1, p2}, Lw9/x$t;-><init>(Lw9/x;Ljd/d;)V

    iput-object p1, v0, Lw9/x$t;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lw9/x$t;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lw9/x$t;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lw9/x$t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lw9/x$t;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lw9/x$t;->i:Ljava/lang/Object;

    check-cast v0, Lfa/b;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lw9/x$t;->i:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lw9/x$t;->i:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    new-instance v7, Lw9/x$t$a;

    iget-object v1, p0, Lw9/x$t;->j:Lw9/x;

    const/4 v10, 0x0

    invoke-direct {v7, v1, v10}, Lw9/x$t$a;-><init>(Lw9/x;Ljd/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    .line 5
    new-instance v7, Lw9/x$t$b;

    iget-object v4, p0, Lw9/x$t;->j:Lw9/x;

    invoke-direct {v7, v4, v10}, Lw9/x$t$b;-><init>(Lw9/x;Ljd/d;)V

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lw9/x$t;->i:Ljava/lang/Object;

    iput v3, p0, Lw9/x$t;->h:I

    invoke-interface {v1, p0}, Lkotlinx/coroutines/Deferred;->await(Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    :goto_0
    check-cast p1, Lfa/b;

    iput-object p1, p0, Lw9/x$t;->i:Ljava/lang/Object;

    iput v2, p0, Lw9/x$t;->h:I

    invoke-interface {v1, p0}, Lkotlinx/coroutines/Deferred;->await(Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Lfa/b;

    new-instance v1, Lfa/a;

    invoke-direct {v1, v0, p1}, Lfa/a;-><init>(Lfa/b;Lfa/b;)V

    return-object v1
.end method
