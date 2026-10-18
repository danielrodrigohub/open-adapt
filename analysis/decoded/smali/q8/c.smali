.class public final Lq8/c;
.super Ljava/lang/Object;
.source "BatteryAnimationUtil.kt"


# static fields
.field public static final a:Lq8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq8/c;

    invoke-direct {v0}, Lq8/c;-><init>()V

    sput-object v0, Lq8/c;->a:Lq8/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Lq8/e;Lq8/e;Lqd/l;Ljd/d;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lq8/e;",
            "Lq8/e;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lfd/o;",
            ">;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    instance-of v3, v2, Lq8/c$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lq8/c$a;

    iget v4, v3, Lq8/c$a;->p:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lq8/c$a;->p:I

    move-object/from16 v4, p0

    goto :goto_0

    :cond_0
    new-instance v3, Lq8/c$a;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v2}, Lq8/c$a;-><init>(Lq8/c;Ljd/d;)V

    :goto_0
    iget-object v2, v3, Lq8/c$a;->n:Ljava/lang/Object;

    sget-object v5, Lkd/a;->h:Lkd/a;

    .line 1
    iget v6, v3, Lq8/c$a;->p:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget v0, v3, Lq8/c$a;->m:I

    iget v1, v3, Lq8/c$a;->l:I

    iget v6, v3, Lq8/c$a;->k:F

    iget v10, v3, Lq8/c$a;->j:F

    iget-object v11, v3, Lq8/c$a;->i:Landroid/animation/ValueAnimator;

    iget-object v12, v3, Lq8/c$a;->h:Landroid/widget/ImageView;

    invoke-static {v2}, Ld3/e;->p(Ljava/lang/Object;)V

    move v2, v0

    move v14, v6

    move v4, v7

    move-object v0, v12

    move v6, v1

    move-object v1, v11

    goto/16 :goto_7

    :cond_3
    invoke-static {v2}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object/from16 v2, p3

    .line 4
    iget-object v6, v2, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 5
    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/BatteryState;->isNotError()Z

    move-result v6

    const/4 v10, 0x0

    if-eqz v6, :cond_4

    invoke-virtual/range {p3 .. p3}, Lq8/e;->a()F

    move-result v6

    goto :goto_1

    :cond_4
    move v6, v10

    .line 6
    :goto_1
    iget-object v11, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 7
    invoke-virtual {v11}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nike/adapt/adk/model/BatteryState;->isNotError()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p2 .. p2}, Lq8/e;->a()F

    move-result v10

    .line 8
    :cond_5
    iget-object v11, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 9
    invoke-virtual {v11}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nike/adapt/adk/model/BatteryState;->isError()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v0, v2

    .line 10
    :cond_6
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 11
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    const/16 v2, 0x14

    if-gt v0, v2, :cond_7

    const/high16 v0, -0x10000

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    :goto_2
    if-eqz v1, :cond_8

    .line 12
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 13
    invoke-interface {v1, v2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-array v1, v7, [F

    aput v6, v1, v8

    aput v10, v1, v9

    .line 14
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 15
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v2, 0x190

    move v14, v10

    move v10, v6

    move v6, v0

    move-object/from16 v0, p1

    .line 16
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    if-nez v11, :cond_9

    goto/16 :goto_6

    .line 17
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 19
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v15, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 20
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 21
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v7, "batteryImageView.context"

    invoke-static {v9, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v13, v15}, Landroidx/lifecycle/o;->b(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 23
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    cmpg-float v4, v10, v14

    if-nez v4, :cond_a

    const/16 v16, 0x1

    goto :goto_4

    :cond_a
    const/16 v16, 0x0

    :goto_4
    if-eqz v16, :cond_b

    .line 24
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v22

    const/16 v23, 0x0

    new-instance v24, Lq8/c$b;

    const/16 v21, 0x0

    move-object v4, v11

    move-object/from16 v11, v24

    move-object v9, v12

    move-object v12, v8

    move v10, v13

    move-object v13, v7

    move/from16 v19, v15

    move-object v15, v0

    move/from16 v16, v6

    move-object/from16 v17, v4

    move/from16 v18, v10

    move-object/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Lq8/c$b;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FLandroid/widget/ImageView;ILandroid/graphics/Paint;IILandroid/graphics/Bitmap;Ljd/d;)V

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-object/from16 v21, v1

    invoke-static/range {v21 .. v26}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 25
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :cond_b
    move-object v4, v11

    move-object v9, v12

    move v10, v13

    move/from16 v19, v15

    .line 26
    new-instance v15, Lq8/a;

    move-object v11, v15

    move-object v12, v8

    move-object v13, v7

    move-object v14, v0

    move-object v0, v15

    move v15, v6

    move-object/from16 v16, v4

    move/from16 v17, v10

    move/from16 v18, v19

    move-object/from16 v19, v9

    invoke-direct/range {v11 .. v19}, Lq8/a;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/widget/ImageView;ILandroid/graphics/Paint;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v6, v2

    .line 27
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    new-instance v2, Lq8/c$c;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lq8/c$c;-><init>(Landroid/animation/ValueAnimator;Ljd/d;)V

    iput-object v4, v3, Lq8/c$a;->h:Landroid/widget/ImageView;

    iput-object v4, v3, Lq8/c$a;->i:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    iput v4, v3, Lq8/c$a;->p:I

    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_c

    return-object v5

    .line 29
    :cond_c
    :goto_5
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :cond_d
    :goto_6
    move v4, v7

    const-wide/16 v7, 0x64

    .line 30
    iput-object v0, v3, Lq8/c$a;->h:Landroid/widget/ImageView;

    iput-object v1, v3, Lq8/c$a;->i:Landroid/animation/ValueAnimator;

    iput v10, v3, Lq8/c$a;->j:F

    iput v14, v3, Lq8/c$a;->k:F

    iput v6, v3, Lq8/c$a;->l:I

    iput v2, v3, Lq8/c$a;->m:I

    const/4 v9, 0x1

    iput v9, v3, Lq8/c$a;->p:I

    invoke-static {v7, v8, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_e

    return-object v5

    :cond_e
    :goto_7
    move v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_3
.end method

.method public final b(Landroid/widget/ImageView;Lq8/e;ILjd/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lq8/e;",
            "I",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 3
    iget-object v0, p2, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 4
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const/high16 v0, -0x10000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-ne p3, v0, :cond_1

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput v0, v1, p3

    .line 6
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v0, 0x64

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 7
    new-instance v0, Lq8/c$e;

    invoke-direct {v0, p1}, Lq8/c$e;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v9

    .line 8
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "battery.context"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/o;->b(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 11
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 14
    new-instance v10, Lq8/b;

    move-object v0, v10

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lq8/b;-><init>(Lq8/e;Landroid/widget/ImageView;Landroid/graphics/Paint;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;Lfd/d;)V

    invoke-virtual {p3, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance p2, Lq8/c$d;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lq8/c$d;-><init>(Landroid/animation/ValueAnimator;Ljd/d;)V

    invoke-static {p1, p2, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkd/a;->h:Lkd/a;

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
