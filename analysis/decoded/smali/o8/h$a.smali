.class public final Lo8/h$a;
.super Lld/i;
.source "GoogleVoicePromptActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo8/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.nike.adapt.ui.GoogleVoicePromptActivity$typeWriteAnimWithTextFade$1$1"
    f = "GoogleVoicePromptActivity.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/String;

.field public i:Lrd/w;

.field public j:Ljava/util/List;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final synthetic p:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/GoogleVoicePromptActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/GoogleVoicePromptActivity;",
            "Ljd/d<",
            "-",
            "Lo8/h$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo8/h$a;->p:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

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

    new-instance p1, Lo8/h$a;

    iget-object v0, p0, Lo8/h$a;->p:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    invoke-direct {p1, v0, p2}, Lo8/h$a;-><init>(Lcom/nike/adapt/ui/GoogleVoicePromptActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo8/h$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo8/h$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo8/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lo8/h$a;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lo8/h$a;->n:I

    iget v5, v0, Lo8/h$a;->m:I

    iget v6, v0, Lo8/h$a;->l:I

    iget v7, v0, Lo8/h$a;->k:I

    iget-object v8, v0, Lo8/h$a;->j:Ljava/util/List;

    iget-object v9, v0, Lo8/h$a;->i:Lrd/w;

    iget-object v10, v0, Lo8/h$a;->h:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    move v3, v4

    move v14, v6

    move v15, v7

    move-object v13, v8

    move-object v12, v9

    move-object v11, v10

    move-object v10, v0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    const v2, 0x7f11035b

    .line 4
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v5, Lrd/w;

    invoke-direct {v5}, Lrd/w;-><init>()V

    .line 6
    iget-object v6, v0, Lo8/h$a;->p:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    const v7, 0x7f060029

    sget-object v8, Ly/a;->a:Ljava/lang/Object;

    .line 7
    invoke-static {v6, v7}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v6

    .line 8
    iget-object v7, v0, Lo8/h$a;->p:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    const v8, 0x7f06002a

    .line 9
    invoke-static {v7, v8}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v7

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v3

    :goto_0
    if-ge v10, v9, :cond_4

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_2

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-ne v11, v12, :cond_3

    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v10, v0

    move-object v11, v2

    move-object v12, v5

    move v15, v6

    move v14, v7

    move-object v13, v8

    move v2, v9

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_6

    add-int/lit8 v6, v5, -0x1

    .line 13
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 14
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v17

    new-array v6, v4, [I

    .line 15
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    aput v7, v6, v3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    add-int/lit8 v6, v5, 0x1

    mul-int/lit8 v6, v6, 0x32

    rsub-int v6, v6, 0x258

    int-to-long v6, v6

    .line 16
    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 19
    new-instance v6, Landroid/text/SpannableString;

    add-int/lit8 v8, v17, 0x1

    invoke-virtual {v11, v3, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, v12, Lrd/w;->h:Ljava/lang/Object;

    .line 20
    iget-object v8, v10, Lo8/h$a;->p:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    new-instance v6, Lo8/g;

    move-object/from16 p1, v6

    move-object/from16 v18, v8

    move v8, v15

    move-object v3, v9

    move v9, v14

    move-object v4, v10

    move-object v10, v12

    move-object v0, v11

    move/from16 v11, v16

    move-object/from16 v16, v1

    move-object v1, v12

    move/from16 v12, v17

    move/from16 v17, v2

    move-object v2, v13

    move-object/from16 v13, v18

    invoke-direct/range {v6 .. v13}, Lo8/g;-><init>(Landroid/animation/ArgbEvaluator;IILrd/w;IILcom/nike/adapt/ui/GoogleVoicePromptActivity;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    const-wide/16 v6, 0x12c

    .line 22
    iput-object v0, v4, Lo8/h$a;->h:Ljava/lang/String;

    iput-object v1, v4, Lo8/h$a;->i:Lrd/w;

    iput-object v2, v4, Lo8/h$a;->j:Ljava/util/List;

    iput v15, v4, Lo8/h$a;->k:I

    iput v14, v4, Lo8/h$a;->l:I

    iput v5, v4, Lo8/h$a;->m:I

    move/from16 v9, v17

    iput v9, v4, Lo8/h$a;->n:I

    const/4 v3, 0x1

    iput v3, v4, Lo8/h$a;->o:I

    invoke-static {v6, v7, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, v16

    if-ne v6, v7, :cond_5

    return-object v7

    :cond_5
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v10, v4

    move-object v1, v7

    move v2, v9

    :goto_2
    add-int/2addr v5, v3

    move-object/from16 v0, p0

    move v4, v3

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    move-object v4, v10

    .line 23
    iget-object v0, v4, Lo8/h$a;->p:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    .line 24
    iget-object v1, v0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->E:Lq7/i;

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    iget-object v1, v1, Lq7/i;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 25
    iget-object v1, v0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->E:Lq7/i;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lq7/i;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 26
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    .line 28
    invoke-static {v2}, Lg7/b;->b(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 29
    new-instance v2, Lo8/i;

    invoke-direct {v2, v0}, Lo8/i;-><init>(Lcom/nike/adapt/ui/GoogleVoicePromptActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "private fun unlaceIconAn\u2026  animator1.start()\n    }"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 31
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    .line 32
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_8
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3
.end method
