.class public final Li9/h;
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
    c = "com.nike.adapt.ui.onboarding.AdaptShoesOnboardingFragment$animateFromFitScreen$1"
    f = "AdaptShoesOnboardingFragment.kt"
    l = {
        0x10c
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
            "Li9/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Li9/h;->i:Li9/g;

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

    new-instance p1, Li9/h;

    iget-object v0, p0, Li9/h;->i:Li9/g;

    invoke-direct {p1, v0, p2}, Li9/h;-><init>(Li9/g;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Li9/h;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Li9/h;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Li9/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Li9/h;->h:I

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

    const-wide/16 v3, 0x1f4

    .line 4
    iput v2, p0, Li9/h;->h:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Li9/h;->i:Li9/g;

    .line 6
    iget-object p1, p1, Li9/g;->p0:Lx8/g0;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v2, v0}, Lx8/e1;->f(Lx8/e1;ZILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Li9/h;->i:Li9/g;

    .line 9
    iget-object p1, p1, Li9/g;->q0:Lx8/o0;

    if-eqz p1, :cond_3

    .line 10
    invoke-static {p1, v1, v2, v0}, Lx8/e1;->f(Lx8/e1;ZILjava/lang/Object;)V

    .line 11
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_3
    const-string p1, "rightShoeScaleControllerUiHelper"

    .line 12
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "leftShoeScaleControllerUiHelper"

    .line 13
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method
