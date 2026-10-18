.class public final Lx8/y0;
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
    c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$moveCursorToLace$1"
    f = "ShoeControllerUiHelper.kt"
    l = {
        0x16c,
        0x16e,
        0x179
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:J

.field public i:Lx8/q0;

.field public j:Lx8/q0;

.field public k:Lx8/d1;

.field public l:Z

.field public m:I

.field public final synthetic n:Lx8/d1;

.field public final synthetic o:Lx8/q0;

.field public final synthetic p:Z


# direct methods
.method public constructor <init>(Lx8/d1;Lx8/q0;ZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx8/d1;",
            "Lx8/q0;",
            "Z",
            "Ljd/d<",
            "-",
            "Lx8/y0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx8/y0;->n:Lx8/d1;

    iput-object p2, p0, Lx8/y0;->o:Lx8/q0;

    iput-boolean p3, p0, Lx8/y0;->p:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 3
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

    new-instance p1, Lx8/y0;

    iget-object v0, p0, Lx8/y0;->n:Lx8/d1;

    iget-object v1, p0, Lx8/y0;->o:Lx8/q0;

    iget-boolean v2, p0, Lx8/y0;->p:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lx8/y0;-><init>(Lx8/d1;Lx8/q0;ZLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lx8/y0;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lx8/y0;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lx8/y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p0

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lx8/y0;->m:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "indicators"

    const/4 v6, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lx8/y0;->i:Lx8/q0;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-boolean v2, v0, Lx8/y0;->l:Z

    iget-wide v6, v0, Lx8/y0;->h:J

    iget-object v8, v0, Lx8/y0;->k:Lx8/d1;

    iget-object v9, v0, Lx8/y0;->j:Lx8/q0;

    iget-object v10, v0, Lx8/y0;->i:Lx8/q0;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-boolean v2, v0, Lx8/y0;->l:Z

    iget-wide v7, v0, Lx8/y0;->h:J

    iget-object v9, v0, Lx8/y0;->k:Lx8/d1;

    iget-object v10, v0, Lx8/y0;->j:Lx8/q0;

    iget-object v11, v0, Lx8/y0;->i:Lx8/q0;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lx8/y0;->n:Lx8/d1;

    .line 5
    iget-boolean v2, v2, Lx8/d1;->f:Z

    if-nez v2, :cond_5

    .line 6
    iget-object v2, v0, Lx8/y0;->o:Lx8/q0;

    .line 7
    iget-object v7, v2, Lx8/q0;->d:Lx8/q0$a;

    if-eqz v7, :cond_4

    .line 8
    iget-object v2, v2, Lx8/q0;->b:Lcom/nike/adapt/adk/Shoe;

    .line 9
    invoke-interface {v7, v2}, Lx8/q0$a;->W(Lcom/nike/adapt/adk/Shoe;)V

    .line 10
    :cond_4
    iget-object v2, v0, Lx8/y0;->o:Lx8/q0;

    .line 11
    iget-object v7, v2, Lx8/q0;->a:Lcom/nike/adapt/adk/IDeviceController;

    .line 12
    iget-object v8, v2, Lx8/q0;->b:Lcom/nike/adapt/adk/Shoe;

    .line 13
    new-instance v9, Lp8/d0;

    .line 14
    iget-object v2, v2, Lx8/q0;->z:[F

    .line 15
    iget-object v10, v0, Lx8/y0;->n:Lx8/d1;

    .line 16
    iget v10, v10, Lx8/d1;->d:I

    .line 17
    aget v2, v2, v10

    float-to-int v2, v2

    invoke-direct {v9, v2, v4}, Lp8/d0;-><init>(II)V

    invoke-interface {v7, v8, v9}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 18
    iget-object v2, v0, Lx8/y0;->o:Lx8/q0;

    .line 19
    iget-wide v7, v2, Lx8/q0;->j:J

    goto :goto_0

    :cond_5
    const-wide/16 v7, 0x64

    .line 20
    :goto_0
    iget-object v2, v0, Lx8/y0;->o:Lx8/q0;

    .line 21
    invoke-virtual {v2}, Lx8/q0;->j()Landroid/widget/ImageView;

    .line 22
    iget-object v2, v0, Lx8/y0;->o:Lx8/q0;

    .line 23
    invoke-static {v2}, Lx8/q0;->b(Lx8/q0;)V

    .line 24
    iget-object v2, v0, Lx8/y0;->o:Lx8/q0;

    .line 25
    invoke-virtual {v2}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v2

    .line 26
    sget-object v9, Lx8/h0;->h:Lx8/h0;

    invoke-virtual {v2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 27
    iget-object v11, v0, Lx8/y0;->o:Lx8/q0;

    iget-object v2, v0, Lx8/y0;->n:Lx8/d1;

    iget-boolean v9, v0, Lx8/y0;->p:Z

    .line 28
    invoke-virtual {v11}, Lx8/q0;->l()V

    .line 29
    iget v10, v2, Lx8/d1;->d:I

    .line 30
    invoke-virtual {v11, v10}, Lx8/q0;->u(I)V

    const-wide/16 v12, 0xa

    .line 31
    iput-object v11, v0, Lx8/y0;->i:Lx8/q0;

    iput-object v11, v0, Lx8/y0;->j:Lx8/q0;

    iput-object v2, v0, Lx8/y0;->k:Lx8/d1;

    iput-wide v7, v0, Lx8/y0;->h:J

    iput-boolean v9, v0, Lx8/y0;->l:Z

    iput v4, v0, Lx8/y0;->m:I

    invoke-static {v12, v13, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    return-object v1

    :cond_6
    move-object v10, v11

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    .line 32
    :goto_1
    invoke-virtual {v10}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v12

    .line 33
    invoke-static {v12, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 34
    iget v14, v9, Lx8/d1;->d:I

    .line 35
    iget-boolean v15, v10, Lx8/q0;->f:Z

    const-wide/16 v16, 0xc8

    const/16 v18, 0x10

    .line 36
    invoke-static/range {v12 .. v18}, Lf1/b;->e(Landroid/view/ViewGroup;ZIZJI)V

    const-wide/16 v12, 0xdc

    .line 37
    iput-object v11, v0, Lx8/y0;->i:Lx8/q0;

    iput-object v10, v0, Lx8/y0;->j:Lx8/q0;

    iput-object v9, v0, Lx8/y0;->k:Lx8/d1;

    iput-wide v7, v0, Lx8/y0;->h:J

    iput-boolean v2, v0, Lx8/y0;->l:Z

    iput v6, v0, Lx8/y0;->m:I

    invoke-static {v12, v13, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    return-object v1

    :cond_7
    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    .line 38
    :goto_2
    iget-boolean v11, v8, Lx8/d1;->f:Z

    if-nez v11, :cond_12

    .line 39
    invoke-virtual {v9}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v15

    .line 40
    invoke-static {v15, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    :goto_3
    const-string v14, "getChildAt(index)"

    if-ge v12, v5, :cond_9

    .line 42
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v14}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v4, v4, Landroid/widget/Space;

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v13, v13, 0x1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    const/4 v4, -0x1

    add-int/2addr v13, v4

    if-lez v13, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x1

    .line 44
    :goto_5
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v12, v11

    :goto_6
    if-ge v12, v5, :cond_10

    .line 45
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v14}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    instance-of v11, v3, Landroid/widget/Space;

    if-eqz v11, :cond_b

    move/from16 v23, v2

    move/from16 v30, v12

    move-object/from16 v32, v14

    move-object v3, v15

    goto/16 :goto_9

    :cond_b
    if-eqz v2, :cond_c

    .line 47
    iget v11, v8, Lx8/d1;->b:I

    if-lt v13, v11, :cond_c

    .line 48
    iget v11, v8, Lx8/d1;->d:I

    if-gt v13, v11, :cond_c

    goto :goto_7

    :cond_c
    if-nez v2, :cond_d

    .line 49
    iget v11, v8, Lx8/d1;->b:I

    if-gt v13, v11, :cond_d

    .line 50
    iget v11, v8, Lx8/d1;->d:I

    if-lt v13, v11, :cond_d

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_e

    .line 51
    iget v11, v8, Lx8/d1;->d:I

    move/from16 v23, v2

    .line 52
    iget v2, v8, Lx8/d1;->b:I

    if-eq v11, v2, :cond_f

    .line 53
    iget-boolean v11, v9, Lx8/q0;->f:Z

    sub-int/2addr v2, v13

    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v17, v11

    move/from16 v16, v12

    int-to-long v11, v2

    mul-long v18, v11, v6

    const v2, 0x7f0a0482

    .line 55
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v11, 0x7f0a0483

    .line 56
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v20, v11

    check-cast v20, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Ly/a;->a:Ljava/lang/Object;

    const v12, 0x7f06008f

    .line 58
    invoke-static {v11, v12}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v21

    .line 59
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f060090

    .line 60
    invoke-static {v11, v12}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v22

    .line 61
    sget-object v24, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v25

    const/16 v26, 0x0

    new-instance v27, Lx8/k;

    const/16 v28, 0x0

    move-object/from16 v11, v27

    move/from16 v31, v13

    move/from16 v30, v16

    move-wide/from16 v12, v18

    move-object/from16 v32, v14

    move-object v14, v3

    move-object v3, v15

    move/from16 v15, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v2

    move/from16 v18, v21

    move-wide/from16 v19, v6

    move/from16 v21, v22

    move-object/from16 v22, v28

    invoke-direct/range {v11 .. v22}, Lx8/k;-><init>(JLandroid/view/View;ZLandroid/widget/TextView;Landroid/view/View;IJILjd/d;)V

    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v24 .. v29}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_8

    :cond_e
    move/from16 v23, v2

    :cond_f
    move/from16 v30, v12

    move/from16 v31, v13

    move-object/from16 v32, v14

    move-object v3, v15

    :goto_8
    add-int v13, v31, v4

    :goto_9
    add-int/lit8 v12, v30, 0x1

    move-object v15, v3

    move/from16 v2, v23

    move-object/from16 v14, v32

    const/4 v3, 0x3

    goto/16 :goto_6

    .line 62
    :cond_10
    iget v2, v8, Lx8/d1;->b:I

    .line 63
    iget v3, v8, Lx8/d1;->d:I

    sub-int/2addr v2, v3

    .line 64
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    add-long/2addr v2, v6

    iput-object v10, v0, Lx8/y0;->i:Lx8/q0;

    const/4 v4, 0x0

    iput-object v4, v0, Lx8/y0;->j:Lx8/q0;

    iput-object v4, v0, Lx8/y0;->k:Lx8/d1;

    const/4 v4, 0x3

    iput v4, v0, Lx8/y0;->m:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_11

    return-object v1

    :cond_11
    move-object v1, v10

    :goto_a
    move-object v10, v1

    .line 65
    :cond_12
    invoke-virtual {v10}, Lx8/q0;->r()V

    .line 66
    sget-object v1, Lfd/o;->a:Lfd/o;

    return-object v1
.end method
