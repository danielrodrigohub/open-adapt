.class public final Li9/s;
.super Lld/i;
.source "AdaptShoesOnboardingFragment.kt"

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
    c = "com.nike.adapt.ui.onboarding.AdaptShoesOnboardingFragment$showFineTune$1"
    f = "AdaptShoesOnboardingFragment.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Li9/g;


# direct methods
.method public constructor <init>(Li9/g;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/g;",
            "Ljd/d<",
            "-",
            "Li9/s;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Li9/s;->i:Li9/g;

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

    new-instance p1, Li9/s;

    iget-object v0, p0, Li9/s;->i:Li9/g;

    invoke-direct {p1, v0, p2}, Li9/s;-><init>(Li9/g;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Li9/s;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Li9/s;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Li9/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Li9/s;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "messagingHeadlineBinding"

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_3

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
    iget-object p1, p0, Li9/s;->i:Li9/g;

    .line 5
    iget-object v1, p1, Li9/g;->j0:Lq7/i1;

    if-eqz v1, :cond_e

    .line 6
    iget-object v1, v1, Lq7/i1;->c:Landroid/widget/TextView;

    .line 7
    iget-object v5, p1, Li9/g;->o0:Lj9/b;

    if-eqz v5, :cond_d

    .line 8
    iget-object p1, p1, Li9/g;->v0:Landroid/util/Pair;

    const-string v5, "pairModeName"

    if-eqz p1, :cond_c

    .line 9
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v6, "pairModeName.first"

    invoke-static {p1, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    iget-object v6, p0, Li9/s;->i:Li9/g;

    .line 10
    iget-object v6, v6, Li9/g;->v0:Landroid/util/Pair;

    if-eqz v6, :cond_b

    .line 11
    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v6, "pairModeName.second"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    .line 12
    sget-object v6, Lh8/c;->b:Lh8/c;

    .line 13
    invoke-virtual {v6}, Lh8/c;->getShoeType()Ls9/r;

    move-result-object v6

    const-string v7, "<this>"

    .line 14
    invoke-static {v6, v7}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v7, Ls9/r;->l:Ls9/r;

    const/4 v8, 0x0

    if-eq v6, v7, :cond_3

    sget-object v7, Ls9/r;->m:Ls9/r;

    if-ne v6, v7, :cond_2

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v2

    :goto_1
    if-eqz v6, :cond_4

    const p1, 0x7f11009c

    .line 16
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const v6, 0x7f11009a

    .line 17
    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Landroid/util/Pair;

    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, p1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "format(R.string.adapt_fi\u2026ring(), Pair(key, value))"

    invoke-static {p1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Li9/s;->i:Li9/g;

    .line 20
    iget-object p1, p1, Li9/g;->j0:Lq7/i1;

    if-eqz p1, :cond_a

    .line 21
    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 22
    iget-object p1, p0, Li9/s;->i:Li9/g;

    .line 23
    iget-object p1, p1, Li9/g;->j0:Lq7/i1;

    if-eqz p1, :cond_9

    .line 24
    iget-object p1, p1, Lq7/i1;->a:Landroid/widget/TextView;

    const v1, 0x7f11009b

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v5, 0xc8

    .line 25
    iput v2, p0, Li9/s;->h:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 26
    :cond_5
    :goto_3
    iget-object p1, p0, Li9/s;->i:Li9/g;

    sget-object v0, Li9/g;->K0:Li9/g$a;

    .line 27
    iget-object v0, p1, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 28
    iget-object v0, p1, Li9/g;->j0:Lq7/i1;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lq7/i1;->c:Landroid/widget/TextView;

    const-string v1, "messagingHeadlineBinding.messagingHeadlineTitle"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v2}, Lf1/b;->o(Landroid/view/View;ZI)V

    .line 29
    iget-object p1, p1, Li9/g;->j0:Lq7/i1;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/i1;->a:Landroid/widget/TextView;

    const-string v0, "messagingHeadlineBinding.messagingHeadlineMessage1"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, v2}, Lf1/b;->o(Landroid/view/View;ZI)V

    goto :goto_4

    :cond_6
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_7
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 31
    :cond_8
    :goto_4
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 32
    :cond_9
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_a
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 34
    :cond_b
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_c
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_d
    const-string p1, "adaptShoeUtils"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    :cond_e
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3
.end method
