.class public final Lx8/a1;
.super Lld/i;
.source "ShoeControllerUiHelper.kt"

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
    c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$ratchetAction$1"
    f = "ShoeControllerUiHelper.kt"
    l = {
        0x1f0,
        0x1f3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lx8/q0;

.field public i:Lx8/q0;

.field public j:Lx8/d1;

.field public k:I

.field public final synthetic l:Lx8/q0;

.field public final synthetic m:Lx8/d1;


# direct methods
.method public constructor <init>(Lx8/q0;Lx8/d1;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx8/q0;",
            "Lx8/d1;",
            "Ljd/d<",
            "-",
            "Lx8/a1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx8/a1;->l:Lx8/q0;

    iput-object p2, p0, Lx8/a1;->m:Lx8/d1;

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

    new-instance p1, Lx8/a1;

    iget-object v0, p0, Lx8/a1;->l:Lx8/q0;

    iget-object v1, p0, Lx8/a1;->m:Lx8/d1;

    invoke-direct {p1, v0, v1, p2}, Lx8/a1;-><init>(Lx8/q0;Lx8/d1;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lx8/a1;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lx8/a1;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lx8/a1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lx8/a1;->k:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "indicators"

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lx8/a1;->h:Lx8/q0;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Lx8/a1;->j:Lx8/d1;

    iget-object v4, v0, Lx8/a1;->i:Lx8/q0;

    iget-object v6, v0, Lx8/a1;->h:Lx8/q0;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object/from16 v22, v6

    move-object v6, v2

    move-object/from16 v2, v22

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lx8/a1;->l:Lx8/q0;

    .line 5
    iget-object v6, v2, Lx8/q0;->a:Lcom/nike/adapt/adk/IDeviceController;

    .line 6
    iget-object v2, v2, Lx8/q0;->b:Lcom/nike/adapt/adk/Shoe;

    .line 7
    sget-object v7, Lp8/k0;->a:Lp8/k0;

    invoke-interface {v6, v2, v7}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 8
    iget-object v2, v0, Lx8/a1;->l:Lx8/q0;

    iget-object v6, v0, Lx8/a1;->m:Lx8/d1;

    .line 9
    invoke-virtual {v2}, Lx8/q0;->l()V

    .line 10
    iget-object v7, v2, Lx8/q0;->h:Landroid/content/Context;

    const-string v8, "context"

    .line 11
    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x32

    invoke-static {v7, v8, v9}, Lc3/d;->r(Landroid/content/Context;J)V

    .line 12
    invoke-virtual {v2}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 13
    invoke-static {v7, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    const-string v12, "getChildAt(index)"

    if-ge v10, v8, :cond_4

    .line 15
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v12}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v12, v13, Landroid/widget/Space;

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, -0x1

    add-int/2addr v11, v8

    if-lez v11, :cond_5

    goto :goto_2

    :cond_5
    move v8, v4

    .line 17
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    :goto_3
    if-ge v9, v10, :cond_8

    .line 18
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v12}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v14, v13, Landroid/widget/Space;

    if-eqz v14, :cond_6

    goto :goto_4

    .line 20
    :cond_6
    iget v14, v6, Lx8/d1;->d:I

    if-ne v11, v14, :cond_7

    const v14, 0x7f0a0482

    .line 21
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 22
    new-instance v15, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x40a00000    # 5.0f

    const/16 v20, 0x0

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    move/from16 v21, v14

    move-object v14, v15

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v14, 0x96

    .line 23
    invoke-virtual {v3, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 24
    new-instance v14, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 25
    new-instance v14, Lx8/a1$a;

    invoke-direct {v14, v13}, Lx8/a1$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v14}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 26
    invoke-virtual {v13, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    add-int/2addr v11, v8

    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x2

    goto :goto_3

    :cond_8
    const-wide/16 v7, 0x12c

    .line 27
    iput-object v2, v0, Lx8/a1;->h:Lx8/q0;

    iput-object v2, v0, Lx8/a1;->i:Lx8/q0;

    iput-object v6, v0, Lx8/a1;->j:Lx8/d1;

    iput v4, v0, Lx8/a1;->k:I

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    return-object v1

    :cond_9
    move-object v4, v2

    .line 28
    :goto_5
    invoke-virtual {v4}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 29
    invoke-static {v7, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 30
    iget v9, v6, Lx8/d1;->d:I

    .line 31
    iget-boolean v10, v4, Lx8/q0;->f:Z

    const-wide/16 v11, 0x64

    const/16 v13, 0x10

    .line 32
    invoke-static/range {v7 .. v13}, Lf1/b;->e(Landroid/view/ViewGroup;ZIZJI)V

    .line 33
    iget v3, v6, Lx8/d1;->d:I

    .line 34
    invoke-virtual {v4, v3}, Lx8/q0;->u(I)V

    const-wide/16 v3, 0x6e

    .line 35
    iput-object v2, v0, Lx8/a1;->h:Lx8/q0;

    const/4 v5, 0x0

    iput-object v5, v0, Lx8/a1;->i:Lx8/q0;

    iput-object v5, v0, Lx8/a1;->j:Lx8/d1;

    const/4 v5, 0x2

    iput v5, v0, Lx8/a1;->k:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_a

    return-object v1

    :cond_a
    move-object v1, v2

    .line 36
    :goto_6
    invoke-virtual {v1}, Lx8/q0;->r()V

    .line 37
    sget-object v1, Lfd/o;->a:Lfd/o;

    return-object v1
.end method
