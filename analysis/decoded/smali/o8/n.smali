.class public final Lo8/n;
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
    c = "com.nike.adapt.ui.PairingActivity$createConnectingJob$1"
    f = "PairingActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/PairingActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/PairingActivity;",
            "Ljd/d<",
            "-",
            "Lo8/n;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo8/n;->h:Lcom/nike/adapt/ui/PairingActivity;

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

    new-instance p1, Lo8/n;

    iget-object v0, p0, Lo8/n;->h:Lcom/nike/adapt/ui/PairingActivity;

    invoke-direct {p1, v0, p2}, Lo8/n;-><init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo8/n;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo8/n;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo8/n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lo8/n;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 3
    iget-object v0, p1, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz v0, :cond_2

    .line 4
    iget v0, v0, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    sget-object v1, Ls9/o;->a:Ls9/o;

    .line 6
    iget-object v2, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    const-string v3, "itemMessagingHeadlineBinding"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v2, Lq7/i1;->c:Landroid/widget/TextView;

    const-string v5, "itemMessagingHeadlineBin\u2026ng.messagingHeadlineTitle"

    invoke-static {v2, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p1, Lq7/i1;->a:Landroid/widget/TextView;

    const-string v3, "itemMessagingHeadlineBin\u2026messagingHeadlineMessage1"

    invoke-static {p1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, p1}, Ls9/o;->a(ILandroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lo8/n;->h:Lcom/nike/adapt/ui/PairingActivity;

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lc3/d;->r(Landroid/content/Context;J)V

    .line 11
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
