.class public final Lcom/nike/adapt/ui/PairingActivity$b;
.super Ljava/lang/Object;
.source "PairingActivity.kt"

# interfaces
.implements Ln3/o1$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/PairingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/PairingActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/PairingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/PairingActivity$b;->h:Lcom/nike/adapt/ui/PairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final U(I)V
    .locals 12

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/PairingActivity$b;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 2
    iget-object v1, p1, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    if-eqz v1, :cond_5

    .line 3
    iget v2, v1, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 4
    :cond_0
    iget-object v2, p1, Lcom/nike/adapt/ui/PairingActivity;->P:Ln3/k0;

    if-eqz v2, :cond_4

    const-wide/16 v6, 0x0

    .line 5
    invoke-virtual {v2, v6, v7}, Ln3/e;->R(J)V

    .line 6
    iput v4, p1, Lcom/nike/adapt/ui/PairingActivity;->O:I

    .line 7
    sget-object v2, Ls9/o;->a:Ls9/o;

    .line 8
    iget v3, v1, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    .line 9
    iget-object v6, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    const-string v7, "itemMessagingHeadlineBinding"

    if-eqz v6, :cond_3

    .line 10
    iget-object v6, v6, Lq7/i1;->c:Landroid/widget/TextView;

    const-string v8, "itemMessagingHeadlineBin\u2026ng.messagingHeadlineTitle"

    invoke-static {v6, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v8, p1, Lcom/nike/adapt/ui/PairingActivity;->F:Lq7/i1;

    if-eqz v8, :cond_2

    .line 12
    iget-object v7, v8, Lq7/i1;->a:Landroid/widget/TextView;

    const-string v8, "itemMessagingHeadlineBin\u2026messagingHeadlineMessage1"

    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6, v7}, Ls9/o;->a(ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 13
    :cond_1
    iget v1, v1, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    if-ne v1, v0, :cond_5

    .line 14
    iput-boolean v4, p1, Lcom/nike/adapt/ui/PairingActivity;->R:Z

    .line 15
    iget-object v6, p1, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 16
    new-instance v9, Lo8/q;

    invoke-direct {v9, p1, v5}, Lo8/q;-><init>(Lcom/nike/adapt/ui/PairingActivity;Ljd/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 17
    invoke-virtual {p1}, Lcom/nike/adapt/ui/PairingActivity;->s0()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_4
    const-string p1, "exoPlayer"

    .line 19
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v5

    :cond_5
    :goto_0
    return-void
.end method
