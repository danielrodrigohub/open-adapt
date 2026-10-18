.class public final Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;
.super Lp8/q;
.source "BigfootOnBoardingActivity.kt"

# interfaces
.implements Li9/a0;
.implements Lo7/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic I:I


# instance fields
.field public final E:Lfd/d;

.field public final F:Lfd/h;

.field public G:Lv7/h;

.field public H:Lv7/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/q;-><init>()V

    .line 2
    sget-object v0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$e;->h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$e;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->E:Lfd/d;

    .line 3
    new-instance v0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$d;

    invoke-direct {v0, p0}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$d;-><init>(Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->F:Lfd/h;

    return-void
.end method


# virtual methods
.method public final Y()Lv7/h;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "currentType"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->F:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj8/a;

    .line 2
    sget-object v1, Lj8/d;->h:Lj8/d;

    invoke-interface {v0, v1}, Li8/e;->d(Li8/a;)V

    return-void
.end method

.method public final o0()Lh8/d;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->E:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/d;

    return-object v0
.end method

.method public final onBackPressed()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v0

    const-string v1, "ON_BOARDING_FRAGMENT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    instance-of v1, v0, Li9/e0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Li9/e0;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Li9/e0;->u0()Lh8/d;

    move-result-object v0

    invoke-interface {v0}, Lh8/d;->k()Lv7/g;

    move-result-object v0

    sget-object v1, Lv7/g;->k:Lv7/g;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Lv7/g;->j:Lv7/g;

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    if-eqz v0, :cond_5

    sget-object v2, Lv7/h;->k:Lv7/h;

    if-ne v0, v2, :cond_3

    sget-object v0, Lv7/g;->l:Lv7/g;

    if-eq v1, v0, :cond_2

    sget-object v0, Lv7/g;->m:Lv7/g;

    if-eq v1, v0, :cond_2

    sget-object v0, Lv7/g;->n:Lv7/g;

    if-ne v1, v0, :cond_3

    .line 5
    :cond_2
    sget-object v2, Ls9/y;->a:Ls9/y;

    sget-object v11, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$b;->h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$b;

    new-instance v12, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$c;

    invoke-direct {v12, p0, v1}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$c;-><init>(Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;Lv7/g;)V

    const-string v0, "cancel"

    .line 6
    invoke-static {v11, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v13, Ls9/y$a;

    const/16 v0, 0x8

    const-string v1, "MULTIPAIRING_ON_BACK_PRESSES_DIALOG"

    const-string v3, "DISMISS"

    const-string v4, "OK"

    invoke-direct {v13, v1, v3, v4, v0}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v4, 0x7f11010b

    const/4 v5, 0x0

    const v6, 0x7f11016b

    const/4 v7, 0x0

    const v8, 0x7f110092

    const v9, 0x7f11015f

    const/4 v10, 0x0

    const/16 v14, 0x94

    move-object v3, p0

    .line 8
    invoke-static/range {v2 .. v14}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    goto :goto_2

    .line 9
    :cond_3
    sget-object v0, Lv7/g;->s:Lv7/g;

    if-ne v1, v0, :cond_4

    .line 10
    sget-object v1, Lv7/i;->j:Lv7/i;

    invoke-virtual {p0, v0, v1}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->q0(Lv7/g;Lv7/i;)V

    goto :goto_2

    .line 11
    :cond_4
    sget-object v0, Lv7/i;->i:Lv7/i;

    invoke-virtual {p0, v0, v1}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->p0(Lv7/i;Lv7/g;)V

    goto :goto_2

    :cond_5
    const-string v0, "currentType"

    .line 12
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    .line 2
    invoke-virtual {p0, p1}, Lf/e;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public final onOnBoardingStateActionResult(Lj8/f;)V
    .locals 2
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lj8/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lv7/o;

    check-cast p1, Lj8/c;

    .line 3
    iget-object v1, p1, Lj8/c;->j:Lv7/h;

    .line 4
    iget-object v1, v1, Lv7/h;->h:Lv7/j;

    .line 5
    invoke-direct {v0, v1}, Lv7/o;-><init>(Lv7/j;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->H:Lv7/o;

    .line 6
    iget-object v0, p1, Lj8/c;->j:Lv7/h;

    .line 7
    iput-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    .line 8
    sget-object v0, Lv7/i;->j:Lv7/i;

    .line 9
    iget-object p1, p1, Lj8/c;->i:Lv7/g;

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->p0(Lv7/i;Lv7/g;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/x;->I()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v2

    .line 3
    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 4
    invoke-virtual {v3, v1}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/m;)Landroidx/fragment/app/g0;

    invoke-virtual {v3}, Landroidx/fragment/app/g0;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Lp8/q;->onStop()V

    return-void
.end method

.method public final p0(Lv7/i;Lv7/g;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lv7/g;->s:Lv7/g;

    if-ne v2, v3, :cond_0

    .line 2
    sget-object v1, Lv7/i;->j:Lv7/i;

    invoke-virtual {v0, v2, v1}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->q0(Lv7/g;Lv7/i;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-string v5, "stateEngine"

    const-string v6, "currentState"

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    const/4 v8, 0x1

    if-eq v4, v8, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lj2/a;

    invoke-direct {v1}, Lj2/a;-><init>()V

    throw v1

    .line 5
    :cond_2
    iget-object v3, v0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->H:Lv7/o;

    if-eqz v3, :cond_3

    .line 6
    invoke-static {v2, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v3, v3, Lv7/o;->h:Lv7/j;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object v2, v3, Lv7/j;->j:Lv7/g;

    .line 9
    iget-object v4, v3, Lv7/j;->h:Lp/h;

    invoke-virtual {v4, v2}, Lp/h;->d(Ljava/lang/Object;)I

    move-result v5

    .line 10
    iget-object v6, v4, Lp/h;->h:[I

    aget v5, v6, v5

    .line 11
    invoke-virtual {v3}, Lv7/j;->a()I

    move-result v3

    add-int/2addr v3, v5

    .line 12
    invoke-virtual {v4, v3, v7}, Lp/h;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Lv7/g;

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 15
    :cond_4
    iget-object v3, v0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->H:Lv7/o;

    if-eqz v3, :cond_8

    .line 16
    invoke-static {v2, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v3, v3, Lv7/o;->h:Lv7/j;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iput-object v2, v3, Lv7/j;->j:Lv7/g;

    .line 19
    iget-object v4, v3, Lv7/j;->h:Lp/h;

    invoke-virtual {v4, v2}, Lp/h;->d(Ljava/lang/Object;)I

    move-result v5

    .line 20
    iget-object v6, v4, Lp/h;->h:[I

    aget v5, v6, v5

    .line 21
    invoke-virtual {v3}, Lv7/j;->b()I

    move-result v3

    add-int/2addr v3, v5

    .line 22
    invoke-virtual {v4, v3, v7}, Lp/h;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Lv7/g;

    :cond_5
    :goto_0
    if-eqz v3, :cond_7

    .line 24
    iget-object v4, v0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->F:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj8/a;

    .line 25
    new-instance v5, Lj8/g;

    iget-object v6, v0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    if-eqz v6, :cond_6

    invoke-direct {v5, v3, v6}, Lj8/g;-><init>(Lv7/g;Lv7/h;)V

    invoke-interface {v4, v5}, Li8/e;->d(Li8/a;)V

    goto :goto_1

    :cond_6
    const-string v1, "currentType"

    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7

    .line 26
    :cond_7
    :goto_1
    sget-object v8, Lo7/x;->a:Lo7/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lo7/u;->h:Lo7/u;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x38

    const/16 v17, 0x0

    const-string v9, "BigfootOnBoardingActivity"

    invoke-static/range {v8 .. v17}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 27
    invoke-virtual {v0, v3, v1}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->q0(Lv7/g;Lv7/i;)V

    return-void

    .line 28
    :cond_8
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v7
.end method

.method public final q0(Lv7/g;Lv7/i;)V
    .locals 9

    .line 1
    const-class v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget-object v1, Lv7/g;->s:Lv7/g;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x7f010023

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v5, :cond_1

    const/4 v6, 0x2

    if-eq p2, v6, :cond_2

    if-ne p2, v3, :cond_0

    .line 2
    new-instance p2, Lfd/e;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p2, v6, v7}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 3
    :cond_1
    new-instance p2, Lfd/e;

    const v6, 0x7f01002b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f010033

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p2, v6, v7}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p2, Lfd/e;

    const v6, 0x7f01002d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f010030

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p2, v6, v7}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object v6, p2, Lfd/e;->h:Ljava/lang/Object;

    .line 6
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 7
    iget-object p2, p2, Lfd/e;->i:Ljava/lang/Object;

    .line 8
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-nez p1, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    .line 9
    :cond_3
    sget-object v7, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v7, p1

    :goto_1
    const-string v7, "currentType"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10
    iget-object p1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    if-eqz p1, :cond_15

    goto :goto_2

    .line 11
    :pswitch_0
    iget-object p1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lv7/h;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->multipairCalibrateFitCompleted()V

    .line 13
    :cond_4
    new-instance p1, Lh9/v0;

    invoke-direct {p1, v2, v5, v8}, Lh9/v0;-><init>(ZILrd/h;)V

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 14
    :cond_5
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 15
    :pswitch_1
    new-instance p1, Lh9/m;

    invoke-direct {p1, v2, v5, v8}, Lh9/m;-><init>(ZILrd/h;)V

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 16
    :pswitch_2
    new-instance p1, Lh9/c0;

    invoke-direct {p1, v2, v2, v3, v8}, Lh9/c0;-><init>(ZZILrd/h;)V

    invoke-virtual {p1, p0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 17
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object p1

    .line 18
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 19
    invoke-virtual {v0, v6, p2}, Landroidx/fragment/app/g0;->g(II)Landroidx/fragment/app/g0;

    const p1, 0x7f0a0052

    new-instance p2, Li9/e0;

    invoke-direct {p2}, Li9/e0;-><init>()V

    const-string v1, "ON_BOARDING_FRAGMENT"

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()V

    goto/16 :goto_9

    .line 20
    :pswitch_4
    sget-object p1, Ls9/m;->a:Ls9/m;

    const/4 p1, 0x7

    invoke-static {v2, v2, p1}, Ls9/m;->b(ZZI)V

    goto/16 :goto_9

    .line 21
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    invoke-virtual {p0}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->o0()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->g()V

    .line 23
    invoke-virtual {p0}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->o0()Lh8/d;

    move-result-object p1

    invoke-interface {p1, v1}, Lh8/d;->h(Lv7/g;)V

    .line 24
    invoke-virtual {p0}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->o0()Lh8/d;

    move-result-object p1

    sget-object p2, Lv7/h;->i:Lv7/h;

    invoke-interface {p1, p2}, Lh8/d;->i(Lv7/h;)V

    goto/16 :goto_9

    .line 25
    :goto_2
    sget-object p2, Lv7/h;->i:Lv7/h;

    if-eq p1, p2, :cond_7

    sget-object p2, Lv7/h;->j:Lv7/h;

    if-ne p1, p2, :cond_6

    goto :goto_3

    :cond_6
    move p2, v2

    goto :goto_4

    :cond_7
    :goto_3
    move p2, v5

    :goto_4
    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    .line 26
    sget-object p2, Lv7/h;->k:Lv7/h;

    if-eq p1, p2, :cond_9

    sget-object p2, Lv7/h;->l:Lv7/h;

    if-ne p1, p2, :cond_8

    goto :goto_5

    :cond_8
    move p1, v2

    goto :goto_6

    :cond_9
    :goto_5
    move p1, v5

    :goto_6
    if-eqz p1, :cond_a

    goto/16 :goto_a

    .line 27
    :cond_a
    invoke-virtual {p0}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->o0()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->g()V

    .line 28
    invoke-virtual {p0}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->o0()Lh8/d;

    move-result-object p1

    invoke-interface {p1, v1}, Lh8/d;->h(Lv7/g;)V

    .line 29
    iget-object p1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lv7/h;->b()Z

    move-result p1

    const p2, 0x1000c000

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    const v3, 0x10008000

    const-string v6, "extra_unlace_gesture_on"

    if-eqz p1, :cond_c

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lh9/w0;->c:Lh9/w0;

    invoke-virtual {v0, p0}, Lh9/a;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-array v0, v2, [Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    .line 39
    new-instance v0, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    .line 40
    sget-object p2, Ly/a;->a:Ljava/lang/Object;

    .line 41
    invoke-static {p0, p1, v8}, Ly/a$a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_8

    .line 42
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_c
    iget-object p1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    if-eqz p1, :cond_11

    .line 44
    sget-object v7, Lv7/h;->o:Lv7/h;

    if-eq p1, v7, :cond_e

    sget-object v7, Lv7/h;->p:Lv7/h;

    if-ne p1, v7, :cond_d

    goto :goto_7

    :cond_d
    move v5, v2

    :cond_e
    :goto_7
    if-eqz v5, :cond_10

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lh9/a0;->c:Lh9/a0;

    invoke-virtual {v0, p0}, Lh9/a;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    new-array v0, v2, [Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    .line 55
    sget-object p2, Ly/a;->a:Ljava/lang/Object;

    .line 56
    invoke-static {p0, p1, v8}, Ly/a$a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_8

    .line 57
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_8
    const p1, 0x7f010024

    .line 58
    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_9
    return-void

    .line 59
    :cond_11
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 60
    :cond_12
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 61
    :cond_13
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    .line 62
    :cond_14
    :goto_a
    invoke-virtual {p0}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->o0()Lh8/d;

    move-result-object p1

    sget-object p2, Lv7/g;->k:Lv7/g;

    invoke-interface {p1, p2}, Lh8/d;->h(Lv7/g;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_15
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Lv7/h;Lv7/g;)V
    .locals 2

    sget-object v0, Lv7/i;->h:Lv7/i;

    const-string v1, "type"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->G:Lv7/h;

    .line 2
    new-instance v1, Lv7/o;

    .line 3
    iget-object p1, p1, Lv7/h;->h:Lv7/j;

    .line 4
    invoke-direct {v1, p1}, Lv7/o;-><init>(Lv7/j;)V

    iput-object v1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->H:Lv7/o;

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->p0(Lv7/i;Lv7/g;)V

    return-void
.end method
