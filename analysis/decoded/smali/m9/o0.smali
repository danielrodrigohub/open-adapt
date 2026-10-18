.class public final Lm9/o0;
.super Lld/i;
.source "SupportDeleteAccountActivity.kt"

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
    c = "com.nike.adapt.ui.settings.SupportDeleteAccountActivity$deleteAccount$1"
    f = "SupportDeleteAccountActivity.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

.field public i:I

.field public final synthetic j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;",
            "Ljd/d<",
            "-",
            "Lm9/o0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

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

    new-instance p1, Lm9/o0;

    iget-object v0, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    invoke-direct {p1, v0, p2}, Lm9/o0;-><init>(Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lm9/o0;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lm9/o0;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lm9/o0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lm9/o0;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lm9/o0;->h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

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
    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 5
    sget-object v1, Lm8/e;->a:Lm8/e;

    .line 6
    iput-object p1, p0, Lm9/o0;->h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    iput v3, p0, Lm9/o0;->i:I

    .line 7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lm8/d;

    invoke-direct {v3, v2}, Lm8/d;-><init>(Ljd/d;)V

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 8
    :goto_0
    check-cast p1, Ld8/c;

    .line 9
    iput-object p1, v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->B:Ld8/c;

    .line 10
    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 11
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->B:Ld8/c;

    .line 12
    sget-object v0, Ld8/c$b;->a:Ld8/c$b;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 13
    invoke-virtual {p1}, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->l0()V

    goto :goto_1

    .line 14
    :cond_3
    sget-object v1, Ld8/c$c;->a:Ld8/c$c;

    invoke-static {p1, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    new-instance v1, Ly0/y;

    const/4 v3, 0x5

    invoke-direct {v1, p1, v3}, Ly0/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    new-instance v1, Ly0/s;

    const/4 v3, 0x6

    invoke-direct {v1, p1, v3}, Ly0/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    :goto_1
    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 17
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    const-string v1, "binding"

    if-eqz p1, :cond_8

    .line 18
    iget-object p1, p1, Lq7/v;->d:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 20
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_7

    .line 21
    iget-object p1, p1, Lq7/v;->a:Landroid/widget/Button;

    const v4, 0x7f11021b

    .line 22
    invoke-static {v4}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 25
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->B:Ld8/c;

    .line 26
    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 27
    iget-object p1, p0, Lm9/o0;->j:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 28
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_5

    .line 29
    iget-object p1, p1, Lq7/v;->e:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_6
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 31
    :cond_7
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_8
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method
