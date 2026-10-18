.class public final Lx8/r0;
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
    c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$abortAction$1"
    f = "ShoeControllerUiHelper.kt"
    l = {
        0x1c0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lx8/q0;

.field public i:Lx8/q0;

.field public j:Lx8/d1;

.field public k:I

.field public final synthetic l:Lx8/q0;

.field public final synthetic m:J

.field public final synthetic n:Lx8/d1;

.field public final synthetic o:Z


# direct methods
.method public constructor <init>(Lx8/q0;JLx8/d1;ZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx8/q0;",
            "J",
            "Lx8/d1;",
            "Z",
            "Ljd/d<",
            "-",
            "Lx8/r0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx8/r0;->l:Lx8/q0;

    iput-wide p2, p0, Lx8/r0;->m:J

    iput-object p4, p0, Lx8/r0;->n:Lx8/d1;

    iput-boolean p5, p0, Lx8/r0;->o:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 7
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

    new-instance p1, Lx8/r0;

    iget-object v1, p0, Lx8/r0;->l:Lx8/q0;

    iget-wide v2, p0, Lx8/r0;->m:J

    iget-object v4, p0, Lx8/r0;->n:Lx8/d1;

    iget-boolean v5, p0, Lx8/r0;->o:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lx8/r0;-><init>(Lx8/q0;JLx8/d1;ZLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lx8/r0;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lx8/r0;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lx8/r0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lx8/r0;->k:I

    const/4 v3, 0x1

    const-string v4, "indicators"

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lx8/r0;->j:Lx8/d1;

    iget-object v2, v0, Lx8/r0;->i:Lx8/q0;

    iget-object v3, v0, Lx8/r0;->h:Lx8/q0;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object/from16 v21, v4

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lx8/r0;->l:Lx8/q0;

    iget-wide v13, v0, Lx8/r0;->m:J

    iget-object v15, v0, Lx8/r0;->n:Lx8/d1;

    iget-boolean v11, v0, Lx8/r0;->o:Z

    .line 5
    invoke-virtual {v2}, Lx8/q0;->l()V

    .line 6
    invoke-virtual {v2}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v12

    .line 7
    invoke-static {v12, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/16 v16, 0x0

    move/from16 v6, v16

    move v7, v6

    :goto_0
    const-string v9, "getChildAt(index)"

    if-ge v6, v5, :cond_3

    .line 9
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v8, v8, Landroid/widget/Space;

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    add-int/2addr v7, v5

    if-lez v7, :cond_4

    move/from16 v17, v5

    goto :goto_2

    :cond_4
    move/from16 v17, v3

    .line 11
    :goto_2
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    move v8, v7

    move/from16 v7, v16

    :goto_3
    if-ge v7, v10, :cond_b

    .line 12
    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    instance-of v6, v5, Landroid/widget/Space;

    if-eqz v6, :cond_5

    move-object/from16 v21, v4

    move v3, v7

    move-object/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move-object/from16 v25, v12

    goto/16 :goto_8

    :cond_5
    const v6, 0x7f0a0482

    .line 14
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v6, 0x7f0a0483

    .line 15
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 16
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 17
    iget v3, v15, Lx8/d1;->b:I

    if-ne v3, v8, :cond_6

    move/from16 p1, v7

    .line 18
    iget v7, v2, Lx8/q0;->x:I

    goto :goto_4

    :cond_6
    move/from16 p1, v7

    .line 19
    iget v7, v2, Lx8/q0;->w:I

    .line 20
    :goto_4
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v8, :cond_7

    move/from16 v3, v16

    goto :goto_5

    :cond_7
    const/16 v3, 0x8

    .line 21
    :goto_5
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget v3, v15, Lx8/d1;->d:I

    if-eq v3, v8, :cond_8

    sub-int/2addr v3, v8

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v5, v3

    mul-long/2addr v5, v13

    goto :goto_6

    :cond_8
    const-wide/16 v5, 0x0

    :goto_6
    move-wide/from16 v19, v5

    if-eqz v11, :cond_9

    .line 24
    iget v3, v15, Lx8/d1;->b:I

    if-lt v8, v3, :cond_9

    .line 25
    iget v3, v15, Lx8/d1;->d:I

    if-gt v8, v3, :cond_9

    move-object v5, v2

    move-object v6, v15

    move/from16 v3, p1

    move v7, v8

    move-object/from16 v21, v4

    move v4, v8

    move-object/from16 v8, v18

    move-object/from16 v22, v9

    move/from16 v23, v10

    move-wide/from16 v9, v19

    move/from16 v24, v11

    move-object/from16 v25, v12

    move-wide v11, v13

    .line 26
    invoke-static/range {v5 .. v12}, Lx8/q0;->a(Lx8/q0;Lx8/d1;ILandroid/view/View;JJ)V

    goto :goto_7

    :cond_9
    move/from16 v3, p1

    move-object/from16 v21, v4

    move v4, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move-object/from16 v25, v12

    :goto_7
    if-nez v24, :cond_a

    .line 27
    iget v5, v15, Lx8/d1;->b:I

    if-gt v4, v5, :cond_a

    .line 28
    iget v5, v15, Lx8/d1;->d:I

    if-lt v4, v5, :cond_a

    move-object v5, v2

    move-object v6, v15

    move v7, v4

    move-object/from16 v8, v18

    move-wide/from16 v9, v19

    move-wide v11, v13

    .line 29
    invoke-static/range {v5 .. v12}, Lx8/q0;->a(Lx8/q0;Lx8/d1;ILandroid/view/View;JJ)V

    :cond_a
    add-int v8, v4, v17

    :goto_8
    add-int/lit8 v7, v3, 0x1

    move-object/from16 v4, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move-object/from16 v12, v25

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v21, v4

    .line 30
    iget v3, v15, Lx8/d1;->b:I

    .line 31
    iget v4, v15, Lx8/d1;->d:I

    sub-int/2addr v3, v4

    .line 32
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v13

    add-long/2addr v3, v13

    iput-object v2, v0, Lx8/r0;->h:Lx8/q0;

    iput-object v2, v0, Lx8/r0;->i:Lx8/q0;

    iput-object v15, v0, Lx8/r0;->j:Lx8/d1;

    const/4 v5, 0x1

    iput v5, v0, Lx8/r0;->k:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    return-object v1

    :cond_c
    move-object v3, v2

    move-object v1, v15

    .line 33
    :goto_9
    invoke-virtual {v2}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v4

    move-object/from16 v5, v21

    .line 34
    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 35
    iget v6, v1, Lx8/d1;->b:I

    .line 36
    iget-boolean v7, v2, Lx8/q0;->f:Z

    const-wide/16 v8, 0x0

    const/16 v10, 0x18

    .line 37
    invoke-static/range {v4 .. v10}, Lf1/b;->e(Landroid/view/ViewGroup;ZIZJI)V

    .line 38
    iget v1, v1, Lx8/d1;->b:I

    .line 39
    invoke-virtual {v2, v1}, Lx8/q0;->u(I)V

    .line 40
    invoke-virtual {v3}, Lx8/q0;->r()V

    .line 41
    sget-object v1, Lfd/o;->a:Lfd/o;

    return-object v1
.end method
