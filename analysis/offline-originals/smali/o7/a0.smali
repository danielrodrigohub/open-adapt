.class public final Lo7/a0;
.super Lld/i;
.source "SplashScreenActivity.kt"

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
    c = "com.nike.adapt.SplashScreenActivity$getNextActivity$1"
    f = "SplashScreenActivity.kt"
    l = {
        0xa8,
        0xac
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/SplashScreenActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/SplashScreenActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/SplashScreenActivity;",
            "Ljd/d<",
            "-",
            "Lo7/a0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

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

    new-instance p1, Lo7/a0;

    iget-object v0, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

    invoke-direct {p1, v0, p2}, Lo7/a0;-><init>(Lcom/nike/adapt/SplashScreenActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo7/a0;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo7/a0;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo7/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lo7/a0;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p1}, Lcom/nike/adapt/BigfootApplication$e;->c()Lg8/a;

    move-result-object p1

    invoke-virtual {p1}, Lg8/a;->a()Z

    move-result p1

    .line 5
    iget-object v1, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

    if-nez p1, :cond_3

    .line 6
    invoke-static {v1}, Lcom/nike/adapt/SplashScreenActivity;->l0(Lcom/nike/adapt/SplashScreenActivity;)Lh8/d;

    move-result-object v4

    sget-object v5, Lv7/g;->i:Lv7/g;

    invoke-interface {v4, v5}, Lh8/d;->h(Lv7/g;)V

    .line 7
    iget-object v4, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

    invoke-static {v4}, Lcom/nike/adapt/SplashScreenActivity;->l0(Lcom/nike/adapt/SplashScreenActivity;)Lh8/d;

    move-result-object v4

    invoke-interface {v4}, Lh8/d;->g()V

    goto :goto_3

    .line 8
    :cond_3
    sget v4, Lcom/nike/adapt/SplashScreenActivity;->K:I

    .line 9
    invoke-virtual {v1}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object v4

    .line 10
    invoke-interface {v4}, Lh8/a;->Y()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    goto :goto_4

    .line 11
    :cond_4
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v4

    check-cast v4, Lo7/f;

    invoke-virtual {v4}, Lo7/f;->d()Lcom/nike/adapt/adk/model/AdaptFirmwareStage;

    move-result-object v4

    .line 12
    instance-of v5, v4, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_0

    .line 13
    :cond_5
    instance-of v5, v4, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Reconnecting;

    :goto_0
    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_1

    .line 14
    :cond_6
    instance-of v5, v4, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Flashing;

    :goto_1
    if-eqz v5, :cond_7

    move v4, v3

    goto :goto_2

    .line 15
    :cond_7
    instance-of v4, v4, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$FetchingData;

    :goto_2
    if-eqz v4, :cond_8

    const/4 v4, 0x4

    goto :goto_4

    .line 16
    :cond_8
    iget-object v4, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

    invoke-static {v4}, Lcom/nike/adapt/SplashScreenActivity;->l0(Lcom/nike/adapt/SplashScreenActivity;)Lh8/d;

    move-result-object v4

    invoke-interface {v4}, Lh8/d;->k()Lv7/g;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v3, :cond_a

    const/16 v5, 0xb

    if-eq v4, v5, :cond_9

    const/4 v4, 0x3

    goto :goto_4

    :cond_9
    move v4, v2

    goto :goto_4

    :cond_a
    :goto_3
    move v4, v3

    .line 17
    :goto_4
    iput v4, v1, Lcom/nike/adapt/SplashScreenActivity;->I:I

    if-eqz p1, :cond_b

    .line 18
    sget-object p1, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    iput v3, p0, Lo7/a0;->h:I

    invoke-virtual {p1, p0}, Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 19
    :cond_b
    :goto_5
    sget-object p1, Lp7/a;->a:Lp7/a;

    iput v2, p0, Lo7/a0;->h:I

    invoke-virtual {p1, p0}, Lp7/a;->b(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 20
    :cond_c
    :goto_6
    iget-object p1, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

    .line 21
    iget-object p1, p1, Lcom/nike/adapt/SplashScreenActivity;->G:Lfd/h;

    invoke-virtual {p1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk8/h;

    .line 22
    sget-object v0, Lk8/e;->h:Lk8/e;

    invoke-interface {p1, v0}, Li8/e;->d(Li8/a;)V

    .line 23
    iget-object p1, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

    .line 24
    iget-boolean v0, p1, Lcom/nike/adapt/SplashScreenActivity;->J:Z

    if-nez v0, :cond_d

    .line 25
    invoke-virtual {p1}, Lcom/nike/adapt/SplashScreenActivity;->n0()V

    .line 26
    :cond_d
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
