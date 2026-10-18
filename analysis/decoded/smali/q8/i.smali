.class public final Lq8/i;
.super Lld/i;
.source "BatteryStateActivity.kt"

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
    c = "com.nike.adapt.ui.battery.BatteryStateActivity$updateUI$1"
    f = "BatteryStateActivity.kt"
    l = {
        0x93,
        0x94
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/battery/BatteryStateActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/battery/BatteryStateActivity;",
            "Ljd/d<",
            "-",
            "Lq8/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

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

    new-instance p1, Lq8/i;

    iget-object v0, p0, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    invoke-direct {p1, v0, p2}, Lq8/i;-><init>(Lcom/nike/adapt/ui/battery/BatteryStateActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lq8/i;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lq8/i;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lq8/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lq8/i;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

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

    move-object p1, p0

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object p1, p0

    .line 4
    :cond_3
    new-instance v1, Lq8/f;

    iget-object v5, p1, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    .line 5
    iget-object v6, v5, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->L:Lq8/e;

    if-eqz v6, :cond_17

    .line 6
    iget-object v5, v5, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->M:Lq8/e;

    if-eqz v5, :cond_16

    .line 7
    invoke-direct {v1, v6, v5}, Lq8/f;-><init>(Lq8/e;Lq8/e;)V

    .line 8
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 9
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 10
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 12
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 13
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lb9/b;

    const v6, 0x7f110066

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f110050

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 14
    :cond_4
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 15
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 16
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 18
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 19
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lb9/b;

    const v6, 0x7f110053

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f110052

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :cond_5
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 21
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 22
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lb9/b;

    const v6, 0x7f110064

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f110062

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :cond_6
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 24
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 25
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lb9/b;

    const v6, 0x7f110065

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f110056

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26
    :cond_7
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 27
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 28
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_8

    .line 29
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 30
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 31
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-ne v5, v6, :cond_8

    new-instance v5, Lb9/b;

    const v6, 0x7f11005f

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f11005e

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 32
    :cond_8
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 33
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 34
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    const v6, 0x7f110060

    const/16 v7, 0x1e

    if-le v5, v7, :cond_9

    .line 35
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 36
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 37
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lb9/b;

    const v7, 0x7f110061

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 38
    :cond_9
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 39
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 40
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    const v8, 0x7f110054

    if-le v5, v7, :cond_a

    .line 41
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 42
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 43
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Lb9/b;

    const v6, 0x7f110055

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 44
    :cond_a
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 45
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 46
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    const v9, 0x7f11005b

    const/16 v10, 0x14

    if-le v5, v10, :cond_b

    .line 47
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 48
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 49
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lb9/b;

    invoke-static {v9}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 50
    :cond_b
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 51
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 52
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-le v5, v10, :cond_c

    .line 53
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 54
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 55
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Lb9/b;

    invoke-static {v9}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 56
    :cond_c
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 57
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 58
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    const v11, 0x7f110059

    const/4 v12, -0x1

    if-le v5, v12, :cond_d

    .line 59
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 60
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 61
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Lb9/b;

    invoke-static {v11}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 62
    :cond_d
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 63
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 64
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-le v5, v12, :cond_e

    .line 65
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 66
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 67
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Lb9/b;

    invoke-static {v11}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 68
    :cond_e
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 69
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 70
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-le v5, v7, :cond_f

    .line 71
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 72
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 73
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-le v5, v7, :cond_f

    new-instance v5, Lb9/b;

    const v6, 0x7f11005d

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f11005c

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_f
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 75
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 76
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-le v5, v10, :cond_10

    .line 77
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 78
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 79
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-le v5, v10, :cond_10

    new-instance v5, Lb9/b;

    invoke-static {v9}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f11005a

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_10
    iget-object v5, v1, Lq8/f;->i:Lq8/e;

    .line 81
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 82
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-le v5, v12, :cond_11

    .line 83
    iget-object v5, v1, Lq8/f;->h:Lq8/e;

    .line 84
    iget-object v5, v5, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 85
    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    if-le v5, v12, :cond_11

    new-instance v5, Lb9/b;

    invoke-static {v11}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f110058

    invoke-static {v7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_11
    new-instance v5, Lb9/b;

    const-string v6, ""

    invoke-direct {v5, v6, v6}, Lb9/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_1
    iget-object v6, p1, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    invoke-virtual {v6}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object v6

    iget-object v6, v6, Lq7/c;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 88
    iget-object v7, v5, Lb9/b;->a:Ljava/lang/String;

    .line 89
    invoke-static {v6, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 90
    iget-object v6, p1, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    invoke-virtual {v6}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object v6

    iget-object v6, v6, Lq7/c;->f:Landroid/widget/TextView;

    const-string v7, "binding.batteryStateExplanationTitle"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v7, v5, Lb9/b;->a:Ljava/lang/String;

    .line 92
    invoke-static {v6, v7}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 93
    iget-object v6, p1, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    invoke-virtual {v6}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object v6

    iget-object v6, v6, Lq7/c;->f:Landroid/widget/TextView;

    invoke-static {v6, v2}, Lj0/a0;->q(Landroid/view/View;Z)V

    .line 94
    :cond_12
    iget-object v6, p1, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    invoke-virtual {v6}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object v6

    iget-object v6, v6, Lq7/c;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 95
    iget-object v7, v5, Lb9/b;->b:Ljava/lang/String;

    .line 96
    invoke-static {v6, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 97
    iget-object v6, p1, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    invoke-virtual {v6}, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->p0()Lq7/c;

    move-result-object v6

    iget-object v6, v6, Lq7/c;->e:Landroid/widget/TextView;

    const-string v7, "binding.batteryStateExplanationMessage"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v5, v5, Lb9/b;->b:Ljava/lang/String;

    .line 99
    invoke-static {v6, v5}, Lf1/b;->p(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 100
    :cond_13
    iget-object v5, p1, Lq8/i;->i:Lcom/nike/adapt/ui/battery/BatteryStateActivity;

    .line 101
    iget-object v5, v5, Lcom/nike/adapt/ui/battery/BatteryStateActivity;->N:Lq8/d;

    if-eqz v5, :cond_15

    .line 102
    iput v2, p1, Lq8/i;->h:I

    invoke-virtual {v5, v1, p1}, Lq8/d;->i(Lq8/f;Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_14

    return-object v0

    .line 103
    :cond_14
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v5, Lq8/i$a;

    invoke-direct {v5, v4}, Lq8/i$a;-><init>(Ljd/d;)V

    iput v3, p1, Lq8/i;->h:I

    invoke-static {v1, v5, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_15
    const-string p1, "batteryEventAnimator"

    .line 104
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_16
    const-string p1, "rightBatteryInfoState"

    .line 105
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    :cond_17
    const-string p1, "leftBatteryInfoState"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4
.end method
