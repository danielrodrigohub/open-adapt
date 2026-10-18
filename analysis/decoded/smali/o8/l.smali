.class public final Lo8/l;
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
    c = "com.nike.adapt.ui.PairingActivity$createConnectedJob$1"
    f = "PairingActivity.kt"
    l = {
        0x141
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
            "Lo8/l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo8/l;->i:Lcom/nike/adapt/ui/PairingActivity;

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

    new-instance p1, Lo8/l;

    iget-object v0, p0, Lo8/l;->i:Lcom/nike/adapt/ui/PairingActivity;

    invoke-direct {p1, v0, p2}, Lo8/l;-><init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo8/l;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo8/l;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo8/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lo8/l;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "itemMessagingHeadlineBinding"

    const-string v5, "itemMessagingHeadlineBin\u2026ng.messagingHeadlineTitle"

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v6, :cond_0

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
    iget-object p1, p0, Lo8/l;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 5
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz p1, :cond_7

    .line 6
    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {p1, v2, v1}, Lf1/b;->o(Landroid/view/View;ZI)V

    const-wide/16 v7, 0x640

    .line 7
    iput v6, p0, Lo8/l;->h:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Ls9/o;->a:Ls9/o;

    iget-object p1, p0, Lo8/l;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 9
    iget-object v0, p1, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz v0, :cond_3

    .line 10
    iget v2, v0, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    .line 11
    :cond_3
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne v2, v0, :cond_4

    const v0, 0x7f110177

    .line 13
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const v0, 0x7f11016f

    .line 15
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v0, -0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object p1, p0, Lo8/l;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 19
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->M:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_5

    .line 20
    invoke-static {p1, v3, v6, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 21
    :cond_5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 22
    :cond_6
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 23
    :cond_7
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3
.end method
