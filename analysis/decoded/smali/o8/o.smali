.class public final Lo8/o;
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
    c = "com.nike.adapt.ui.PairingActivity$createTapToConfirmJob$1"
    f = "PairingActivity.kt"
    l = {
        0x131
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/PairingActivity;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/PairingActivity;ZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/PairingActivity;",
            "Z",
            "Ljd/d<",
            "-",
            "Lo8/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    iput-boolean p2, p0, Lo8/o;->j:Z

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

    new-instance p1, Lo8/o;

    iget-object v0, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    iget-boolean v1, p0, Lo8/o;->j:Z

    invoke-direct {p1, v0, v1, p2}, Lo8/o;-><init>(Lcom/nike/adapt/ui/PairingActivity;ZLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo8/o;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo8/o;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo8/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lo8/o;->h:I

    const/4 v2, 0x0

    const v3, 0x7f110179

    const-string v4, "itemMessagingHeadlineBin\u2026ng.messagingHeadlineTitle"

    const/4 v5, 0x1

    const-string v6, "itemMessagingHeadlineBinding"

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

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
    iget-object p1, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    const-wide/16 v7, 0xc8

    invoke-static {p1, v7, v8}, Lc3/d;->r(Landroid/content/Context;J)V

    .line 5
    iget-object p1, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 6
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz p1, :cond_a

    .line 7
    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 9
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz p1, :cond_9

    .line 10
    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p1, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 12
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz p1, :cond_8

    .line 13
    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 14
    iget-object p1, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 15
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p1, Lq7/i1;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v7, 0x3e8

    .line 17
    iput v5, p0, Lo8/o;->h:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 18
    :cond_2
    :goto_0
    sget-object p1, Ls9/o;->a:Ls9/o;

    iget-boolean p1, p0, Lo8/o;->j:Z

    if-eqz p1, :cond_3

    .line 19
    sget-object p1, Lo7/x;->a:Lo7/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v7, Ls9/o;->d:J

    sub-long/2addr v0, v7

    const-string v7, "Right Shoe Connection Time while Pairing"

    invoke-virtual {p1, v7, v0, v1}, Lo7/x;->i(Ljava/lang/String;J)V

    const p1, 0x7f110175

    .line 20
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_3
    sget-object p1, Lo7/x;->a:Lo7/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v7, Ls9/o;->d:J

    sub-long/2addr v0, v7

    const-string v7, "Left Shoe Connection Time while Pairing"

    invoke-virtual {p1, v7, v0, v1}, Lo7/x;->i(Ljava/lang/String;J)V

    const p1, 0x7f110173

    .line 22
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    :goto_1
    iget-object v0, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 24
    iget-object v0, v0, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, v0, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 27
    iget-object v0, v0, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, v0, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 29
    iget-object v0, p0, Lo8/o;->i:Lcom/nike/adapt/ui/PairingActivity;

    .line 30
    iget-object v0, v0, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, v0, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 33
    :cond_4
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_5
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_6
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_7
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_8
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_9
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_a
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method
