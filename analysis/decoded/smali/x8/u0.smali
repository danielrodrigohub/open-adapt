.class public final Lx8/u0;
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
    c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$incrementalAction$1"
    f = "ShoeControllerUiHelper.kt"
    l = {
        0x19c,
        0x19e
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
            "Lx8/u0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx8/u0;->l:Lx8/q0;

    iput-object p2, p0, Lx8/u0;->m:Lx8/d1;

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

    new-instance p1, Lx8/u0;

    iget-object v0, p0, Lx8/u0;->l:Lx8/q0;

    iget-object v1, p0, Lx8/u0;->m:Lx8/d1;

    invoke-direct {p1, v0, v1, p2}, Lx8/u0;-><init>(Lx8/q0;Lx8/d1;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lx8/u0;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lx8/u0;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lx8/u0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lx8/u0;->k:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "indicators"

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lx8/u0;->h:Lx8/q0;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Lx8/u0;->j:Lx8/d1;

    iget-object v4, v0, Lx8/u0;->i:Lx8/q0;

    iget-object v6, v0, Lx8/u0;->h:Lx8/q0;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object/from16 v26, v6

    move-object v6, v2

    move-object/from16 v2, v26

    goto/16 :goto_6

    :cond_2
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lx8/u0;->l:Lx8/q0;

    .line 5
    iget-object v6, v2, Lx8/q0;->d:Lx8/q0$a;

    if-eqz v6, :cond_3

    .line 6
    iget-object v2, v2, Lx8/q0;->b:Lcom/nike/adapt/adk/Shoe;

    .line 7
    invoke-interface {v6, v2}, Lx8/q0$a;->W(Lcom/nike/adapt/adk/Shoe;)V

    .line 8
    :cond_3
    iget-object v2, v0, Lx8/u0;->l:Lx8/q0;

    .line 9
    iget-object v6, v2, Lx8/q0;->a:Lcom/nike/adapt/adk/IDeviceController;

    .line 10
    iget-object v7, v2, Lx8/q0;->b:Lcom/nike/adapt/adk/Shoe;

    .line 11
    new-instance v8, Lp8/d0;

    .line 12
    iget-object v2, v2, Lx8/q0;->z:[F

    .line 13
    iget-object v9, v0, Lx8/u0;->m:Lx8/d1;

    .line 14
    iget v9, v9, Lx8/d1;->d:I

    .line 15
    aget v2, v2, v9

    float-to-int v2, v2

    invoke-direct {v8, v2, v4}, Lp8/d0;-><init>(II)V

    invoke-interface {v6, v7, v8}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 16
    iget-object v2, v0, Lx8/u0;->l:Lx8/q0;

    iget-object v6, v0, Lx8/u0;->m:Lx8/d1;

    .line 17
    iget v6, v6, Lx8/d1;->d:I

    .line 18
    invoke-virtual {v2, v6}, Lx8/q0;->u(I)V

    .line 19
    iget-object v2, v0, Lx8/u0;->l:Lx8/q0;

    iget-object v6, v0, Lx8/u0;->m:Lx8/d1;

    .line 20
    invoke-virtual {v2}, Lx8/q0;->l()V

    .line 21
    invoke-virtual {v2}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 22
    invoke-static {v7, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    const-string v12, "getChildAt(index)"

    if-ge v10, v8, :cond_5

    .line 24
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v12}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v12, v13, Landroid/widget/Space;

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, -0x1

    add-int/2addr v11, v8

    if-lez v11, :cond_6

    goto :goto_2

    :cond_6
    move v8, v4

    .line 26
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    move v13, v9

    :goto_3
    if-ge v13, v10, :cond_a

    .line 27
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14, v12}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v15, v14, Landroid/widget/Space;

    if-eqz v15, :cond_7

    goto :goto_5

    :cond_7
    const v15, 0x7f0a0482

    .line 29
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const v3, 0x7f0a0483

    .line 30
    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 31
    iget v14, v6, Lx8/d1;->d:I

    const-string v4, "indicatorView"

    if-ne v11, v14, :cond_8

    .line 32
    invoke-static {v15, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget v4, v2, Lx8/q0;->m:I

    .line 34
    iget v14, v2, Lx8/q0;->l:I

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x30

    move-object/from16 v16, v15

    move/from16 v17, v4

    move/from16 v18, v14

    .line 35
    invoke-static/range {v16 .. v25}, Lf1/b;->a(Landroid/view/View;IIJJZZI)V

    .line 36
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 37
    iget v14, v2, Lx8/q0;->x:I

    .line 38
    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 40
    :cond_8
    iget v14, v6, Lx8/d1;->c:I

    if-ne v11, v14, :cond_9

    .line 41
    invoke-static {v15, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget v4, v2, Lx8/q0;->m:I

    .line 43
    iget v14, v2, Lx8/q0;->l:I

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x20

    move-object/from16 v16, v15

    move/from16 v17, v4

    move/from16 v18, v14

    .line 44
    invoke-static/range {v16 .. v25}, Lf1/b;->a(Landroid/view/View;IIJJZZI)V

    .line 45
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 46
    iget v14, v2, Lx8/q0;->w:I

    .line 47
    iput v14, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v4, 0x8

    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 49
    :cond_9
    iget v3, v2, Lx8/q0;->m:I

    .line 50
    invoke-virtual {v15, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4
    add-int/2addr v11, v8

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto/16 :goto_3

    .line 51
    :cond_a
    iget v3, v6, Lx8/d1;->c:I

    if-nez v3, :cond_b

    .line 52
    iget v3, v6, Lx8/d1;->d:I

    if-lez v3, :cond_b

    .line 53
    iget v3, v2, Lx8/q0;->e:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    .line 54
    invoke-static {v2}, Lx8/q0;->b(Lx8/q0;)V

    .line 55
    :cond_b
    iget-wide v3, v2, Lx8/q0;->j:J

    .line 56
    iput-object v2, v0, Lx8/u0;->h:Lx8/q0;

    iput-object v2, v0, Lx8/u0;->i:Lx8/q0;

    iput-object v6, v0, Lx8/u0;->j:Lx8/d1;

    const/4 v7, 0x1

    iput v7, v0, Lx8/u0;->k:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    return-object v1

    :cond_c
    move-object v4, v2

    .line 57
    :goto_6
    invoke-virtual {v4}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 58
    invoke-static {v7, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 59
    iget v9, v6, Lx8/d1;->d:I

    .line 60
    iget-boolean v10, v4, Lx8/q0;->f:Z

    .line 61
    iget-wide v11, v4, Lx8/q0;->j:J

    const/16 v13, 0x10

    .line 62
    invoke-static/range {v7 .. v13}, Lf1/b;->e(Landroid/view/ViewGroup;ZIZJI)V

    .line 63
    iget-wide v3, v4, Lx8/q0;->j:J

    const/4 v5, 0x2

    int-to-long v6, v5

    mul-long/2addr v3, v6

    .line 64
    iput-object v2, v0, Lx8/u0;->h:Lx8/q0;

    const/4 v6, 0x0

    iput-object v6, v0, Lx8/u0;->i:Lx8/q0;

    iput-object v6, v0, Lx8/u0;->j:Lx8/d1;

    iput v5, v0, Lx8/u0;->k:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_d

    return-object v1

    :cond_d
    move-object v1, v2

    .line 65
    :goto_7
    invoke-virtual {v1}, Lx8/q0;->r()V

    .line 66
    sget-object v1, Lfd/o;->a:Lfd/o;

    return-object v1
.end method
