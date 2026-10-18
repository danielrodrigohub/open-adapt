.class public final Li9/j;
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
    c = "com.nike.adapt.ui.onboarding.AdaptShoesOnboardingFragment$displayFinishedCreatingModes$2"
    f = "AdaptShoesOnboardingFragment.kt"
    l = {
        0x1cc,
        0x1ce
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
            "Li9/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Li9/j;->i:Li9/g;

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

    new-instance p1, Li9/j;

    iget-object v0, p0, Li9/j;->i:Li9/g;

    invoke-direct {p1, v0, p2}, Li9/j;-><init>(Li9/g;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Li9/j;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Li9/j;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Li9/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Li9/j;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "binding"

    const-string v5, "binding.presetCreationCheckmarkText"

    const/4 v6, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v6, :cond_0

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    const-wide/16 v7, 0x384

    .line 4
    iput v3, p0, Li9/j;->h:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Li9/j;->i:Li9/g;

    .line 6
    iget-object p1, p1, Li9/g;->i0:Lq7/o0;

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p1, Lq7/o0;->f:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3, v3}, Lf1/b;->o(Landroid/view/View;ZI)V

    const-wide/16 v7, 0xcb2

    .line 8
    iput v6, p0, Li9/j;->h:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    :goto_1
    iget-object p1, p0, Li9/j;->i:Li9/g;

    .line 10
    iget-object p1, p1, Li9/g;->i0:Lq7/o0;

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p1, Lq7/o0;->f:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lf1/b;->o(Landroid/view/View;ZI)V

    .line 12
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 13
    :cond_5
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_6
    invoke-static {v4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method
