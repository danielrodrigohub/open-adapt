.class public final Lw9/x$t$a;
.super Lld/i;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x$t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$firmwareCheckLatestVersion$2$left$1"
    f = "AdaptKitPairDevicesController.kt"
    l = {
        0x424
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/x;",
            "Ljd/d<",
            "-",
            "Lw9/x$t$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/x$t$a;->i:Lw9/x;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 1
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

    new-instance p1, Lw9/x$t$a;

    iget-object v0, p0, Lw9/x$t$a;->i:Lw9/x;

    invoke-direct {p1, v0, p2}, Lw9/x$t$a;-><init>(Lw9/x;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lw9/x$t$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lw9/x$t$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lw9/x$t$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lw9/x$t$a;->h:I

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

    .line 4
    iget-object p1, p0, Lw9/x$t$a;->i:Lw9/x;

    invoke-static {p1}, Lw9/x;->n0(Lw9/x;)Lbb/a;

    move-result-object p1

    iget-object v1, p0, Lw9/x$t$a;->i:Lw9/x;

    .line 5
    invoke-virtual {v1}, Lw9/x;->A0()Lya/b;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lya/b;->a()Lfb/c;

    move-result-object v1

    iput v2, p0, Lw9/x$t$a;->h:I

    invoke-interface {p1, v1, p0}, Lbb/a;->a(Lfb/c;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
