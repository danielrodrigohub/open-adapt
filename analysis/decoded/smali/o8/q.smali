.class public final Lo8/q;
.super Lld/i;
.source "PairingActivity.kt"

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
    c = "com.nike.adapt.ui.PairingActivity$endOfPairing$1"
    f = "PairingActivity.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/PairingActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/PairingActivity;",
            "Ljd/d<",
            "-",
            "Lo8/q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo8/q;->i:Lcom/nike/adapt/ui/PairingActivity;

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

    new-instance p1, Lo8/q;

    iget-object v0, p0, Lo8/q;->i:Lcom/nike/adapt/ui/PairingActivity;

    invoke-direct {p1, v0, p2}, Lo8/q;-><init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo8/q;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo8/q;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo8/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lo8/q;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lo8/q;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 5
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->V:Lh8/c;

    .line 6
    invoke-virtual {p1, v2}, Lh8/c;->C(Z)V

    .line 7
    iget-object p1, p0, Lo8/q;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 8
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->V:Lh8/c;

    .line 9
    invoke-virtual {p1, v2}, Lh8/c;->g(Z)V

    .line 10
    iget-object p1, p0, Lo8/q;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 11
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->V:Lh8/c;

    .line 12
    invoke-virtual {p1, v2}, Lh8/c;->g0(Z)V

    .line 13
    sget-object p1, Ls9/o;->a:Ls9/o;

    .line 14
    sget-object p1, Ls9/o;->c:Lh8/c;

    invoke-virtual {p1}, Lh8/c;->z()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->multipairPairingFlowFinished()V

    goto :goto_0

    .line 16
    :cond_2
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->isPairingComplete()V

    .line 17
    :goto_0
    sget-object p1, Ls9/o;->b:Lh8/e;

    sget-object v1, Lv7/g;->q:Lv7/g;

    invoke-virtual {p1, v1}, Lh8/e;->h(Lv7/g;)V

    .line 18
    sget-object v1, Lv7/h;->i:Lv7/h;

    invoke-virtual {p1, v1}, Lh8/e;->i(Lv7/h;)V

    .line 19
    sget-object p1, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    iput v2, p0, Lo8/q;->h:I

    invoke-virtual {p1, p0}, Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 20
    :cond_3
    :goto_1
    new-instance p1, Lh9/m;

    iget-object v0, p0, Lo8/q;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 21
    iget-boolean v1, v0, Lcom/nike/adapt/ui/PairingActivity;->T:Z

    .line 22
    invoke-direct {p1, v1}, Lh9/m;-><init>(Z)V

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 23
    iget-object p1, p0, Lo8/q;->i:Lcom/nike/adapt/ui/PairingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 24
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
