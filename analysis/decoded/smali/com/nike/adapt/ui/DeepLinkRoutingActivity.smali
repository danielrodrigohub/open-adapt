.class public final Lcom/nike/adapt/ui/DeepLinkRoutingActivity;
.super Lp8/q;
.source "DeepLinkRoutingActivity.kt"


# instance fields
.field public E:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp8/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "routing_deep_link_result Request Code: "

    const-string v2, " Result Code: "

    const-string v3, " Data: "

    .line 3
    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 2
    invoke-virtual {p0, p1}, Lf/e;->setContentView(I)V

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lp8/q;->B:Li8/d;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pairID"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    move-object v3, v0

    .line 6
    sget-object v4, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$a;->h:Lcom/nike/adapt/ui/DeepLinkRoutingActivity$a;

    sget-object v5, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$b;->h:Lcom/nike/adapt/ui/DeepLinkRoutingActivity$b;

    move-object v0, p1

    check-cast v0, Lo7/f;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lo7/f;->c(Landroidx/lifecycle/q;Li8/d;Ljava/lang/String;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    .line 7
    invoke-static {p0}, Landroidx/activity/k;->m(Landroidx/lifecycle/q;)Landroidx/lifecycle/l;

    move-result-object p1

    new-instance v0, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c;-><init>(Lcom/nike/adapt/ui/DeepLinkRoutingActivity;Ljd/d;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->c(Lqd/p;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/q;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/nike/adapt/ui/DeepLinkRoutingActivity;->E:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
