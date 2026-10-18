.class public final Lya/d0;
.super Lld/i;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.controller.AdaptKitControlsRepositoryImpl$transferFirmware$2$completed$1"
    f = "AdaptKitControlsRepositories.kt"
    l = {
        0x6f5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lya/d;

.field public final synthetic j:Lfa/g$b;


# direct methods
.method public constructor <init>(Lya/d;Lfa/g$b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/d;",
            "Lfa/g$b;",
            "Ljd/d<",
            "-",
            "Lya/d0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/d0;->i:Lya/d;

    iput-object p2, p0, Lya/d0;->j:Lfa/g$b;

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

    new-instance p1, Lya/d0;

    iget-object v0, p0, Lya/d0;->i:Lya/d;

    iget-object v1, p0, Lya/d0;->j:Lfa/g$b;

    invoke-direct {p1, v0, v1, p2}, Lya/d0;-><init>(Lya/d;Lfa/g$b;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lya/d0;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lya/d0;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lya/d0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lya/d0;->h:I

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
    iget-object p1, p0, Lya/d0;->i:Lya/d;

    iget-object v1, p0, Lya/d0;->j:Lfa/g$b;

    iput v2, p0, Lya/d0;->h:I

    .line 5
    invoke-virtual {p1, v1, p0}, Lya/d;->n0(Lfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    check-cast p1, Lfa/o;

    .line 7
    iget-object v0, p0, Lya/d0;->i:Lya/d;

    .line 8
    iget-object v1, v0, Lya/d;->n:Lfa/c;

    .line 9
    new-instance v2, Lfa/k$s;

    const-string v3, "upgradeSlotCheck"

    .line 10
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lfa/o;->y()Lfa/l$d;

    move-result-object v3

    .line 12
    invoke-interface {p1}, Lfa/o;->p()Lfa/l$a;

    move-result-object v4

    .line 13
    invoke-interface {p1}, Lfa/o;->o()Lfa/l$b;

    move-result-object v5

    .line 14
    invoke-direct {v2, v3, v4, v5}, Lfa/k$s;-><init>(Lfa/l$d;Lfa/l$a;Lfa/l$b;)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 15
    invoke-static {v1, v3, v3, v2, v4}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lya/d;->m0(Lfa/c;)V

    .line 17
    iget-object v0, p0, Lya/d0;->i:Lya/d;

    .line 18
    invoke-interface {p1}, Lfa/o;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lya/d0;->i:Lya/d;

    .line 20
    iget-object p1, p1, Lya/d;->n:Lfa/c;

    .line 21
    sget-object v1, Lfa/k$t;->h:Lfa/k$t;

    invoke-static {p1, v3, v3, v1, v4}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p1

    goto :goto_1

    .line 22
    :cond_3
    iget-object p1, p0, Lya/d0;->i:Lya/d;

    .line 23
    iget-object p1, p1, Lya/d;->n:Lfa/c;

    .line 24
    new-instance v1, Lfa/k$x;

    const-string v2, "Slots were malformed"

    invoke-direct {v1, v2}, Lfa/k$x;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v3, v1, v4}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p1

    .line 25
    :goto_1
    invoke-virtual {v0, p1}, Lya/d;->m0(Lfa/c;)V

    .line 26
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
