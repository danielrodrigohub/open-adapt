.class public final synthetic Lx8/w0;
.super Lrd/m;
.source "ShoeControllerUiHelper.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/m;",
        "Lqd/l<",
        "Lx8/d1;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lx8/q0;

    const/4 v1, 0x1

    const-string v4, "reporter"

    const-string v5, "reporter(Lcom/nike/adapt/ui/helper/ShoeLocationReporter;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lrd/m;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v4, p1

    check-cast v4, Lx8/d1;

    const-string v0, "p0"

    .line 2
    invoke-static {v4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p0

    .line 3
    iget-object v0, v7, Lrd/d;->receiver:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lx8/q0;

    .line 4
    iget-boolean v0, v1, Lx8/q0;->k:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x57

    int-to-long v2, v0

    const/16 v0, 0x15

    int-to-long v5, v0

    .line 7
    div-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iput-wide v2, v1, Lx8/q0;->j:J

    .line 8
    iget-boolean v0, v4, Lx8/d1;->g:Z

    if-nez v0, :cond_1

    .line 9
    iget v0, v4, Lx8/d1;->d:I

    .line 10
    iget v2, v4, Lx8/d1;->c:I

    if-eq v0, v2, :cond_1

    .line 11
    iget-object v0, v1, Lx8/q0;->h:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    int-to-long v2, v2

    .line 12
    iget v5, v4, Lx8/d1;->d:I

    int-to-long v5, v5

    mul-long/2addr v5, v2

    add-long/2addr v5, v2

    .line 13
    invoke-static {v0, v5, v6}, Lc3/d;->r(Landroid/content/Context;J)V

    .line 14
    :cond_1
    iget-object v0, v4, Lx8/d1;->e:Lx8/b0;

    .line 15
    instance-of v2, v0, Lx8/f1;

    const-string v3, "indicators"

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v1}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-static {v8, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget v10, v4, Lx8/d1;->b:I

    .line 18
    iget-boolean v11, v1, Lx8/q0;->f:Z

    const-wide/16 v12, 0x0

    const/16 v14, 0x18

    const/4 v9, 0x1

    invoke-static/range {v8 .. v14}, Lf1/b;->e(Landroid/view/ViewGroup;ZIZJI)V

    goto/16 :goto_7

    .line 19
    :cond_2
    instance-of v2, v0, Lx8/l0;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 20
    sget-object v8, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    new-instance v11, Lx8/a1;

    invoke-direct {v11, v1, v4, v5}, Lx8/a1;-><init>(Lx8/q0;Lx8/d1;Ljd/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_7

    .line 21
    :cond_3
    instance-of v2, v0, Lx8/a;

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    .line 22
    iget v2, v4, Lx8/d1;->b:I

    .line 23
    iget v3, v4, Lx8/d1;->d:I

    if-ge v2, v3, :cond_4

    move v5, v8

    goto :goto_1

    :cond_4
    move v5, v6

    .line 24
    :goto_1
    invoke-virtual {v0}, Lx8/b0;->a()J

    move-result-wide v2

    .line 25
    sget-object v8, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lx8/r0;

    const/4 v6, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lx8/r0;-><init>(Lx8/q0;JLx8/d1;ZLjd/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_7

    .line 26
    :cond_5
    instance-of v2, v0, Lx8/u;

    if-eqz v2, :cond_6

    .line 27
    sget-object v9, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v10

    new-instance v12, Lx8/u0;

    invoke-direct {v12, v1, v4, v5}, Lx8/u0;-><init>(Lx8/q0;Lx8/d1;Ljd/d;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_7

    .line 28
    :cond_6
    instance-of v2, v0, Lx8/h1;

    if-eqz v2, :cond_8

    .line 29
    iget v0, v4, Lx8/d1;->d:I

    .line 30
    iget v2, v4, Lx8/d1;->b:I

    if-le v0, v2, :cond_7

    move v6, v8

    .line 31
    :cond_7
    sget-object v8, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    new-instance v11, Lx8/y0;

    invoke-direct {v11, v4, v1, v6, v5}, Lx8/y0;-><init>(Lx8/d1;Lx8/q0;ZLjd/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_7

    .line 32
    :cond_8
    instance-of v0, v0, Lx8/g1;

    if-eqz v0, :cond_f

    .line 33
    invoke-virtual {v1}, Lx8/q0;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v6

    move v5, v3

    :goto_2
    const-string v9, "getChildAt(index)"

    if-ge v3, v2, :cond_a

    .line 35
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v9, v10, Landroid/widget/Space;

    if-eqz v9, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v5, v5, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, -0x1

    add-int/2addr v5, v2

    if-lez v5, :cond_b

    move v8, v2

    .line 37
    :cond_b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v6

    :goto_4
    if-ge v3, v2, :cond_f

    .line 38
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v11, v10, Landroid/widget/Space;

    if-eqz v11, :cond_c

    goto :goto_6

    :cond_c
    const v11, 0x7f0a0482

    .line 40
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a0483

    .line 41
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 42
    iget v12, v4, Lx8/d1;->d:I

    const-string v13, "indicatorView"

    if-ne v5, v12, :cond_d

    .line 43
    invoke-static {v11, v13}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v13, v1, Lx8/q0;->m:I

    iget v14, v1, Lx8/q0;->l:I

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x30

    move-object v12, v11

    invoke-static/range {v12 .. v21}, Lf1/b;->a(Landroid/view/View;IIJJZZI)V

    .line 44
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v12, v1, Lx8/q0;->x:I

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 46
    :cond_d
    iget v12, v4, Lx8/d1;->c:I

    if-ne v5, v12, :cond_e

    .line 47
    invoke-static {v11, v13}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v13, v1, Lx8/q0;->m:I

    iget v14, v1, Lx8/q0;->l:I

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x20

    move-object v12, v11

    invoke-static/range {v12 .. v21}, Lf1/b;->a(Landroid/view/View;IIJJZZI)V

    .line 48
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v12, v1, Lx8/q0;->w:I

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v11, 0x8

    .line 49
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 50
    :cond_e
    iget v10, v1, Lx8/q0;->m:I

    invoke-virtual {v11, v10}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_5
    add-int/2addr v5, v8

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 51
    :cond_f
    :goto_7
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
