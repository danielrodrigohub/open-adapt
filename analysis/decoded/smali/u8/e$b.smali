.class public final Lu8/e$b;
.super Lld/i;
.source "ConnectingFragment.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/e;->I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    c = "com.nike.adapt.ui.error.ConnectingFragment$onCreateView$1$2$1"
    f = "ConnectingFragment.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lu8/e;

.field public final synthetic j:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Lu8/e;Landroidx/fragment/app/p;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu8/e;",
            "Landroidx/fragment/app/p;",
            "Ljd/d<",
            "-",
            "Lu8/e$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu8/e$b;->i:Lu8/e;

    iput-object p2, p0, Lu8/e$b;->j:Landroidx/fragment/app/p;

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

    new-instance p1, Lu8/e$b;

    iget-object v0, p0, Lu8/e$b;->i:Lu8/e;

    iget-object v1, p0, Lu8/e$b;->j:Landroidx/fragment/app/p;

    invoke-direct {p1, v0, v1, p2}, Lu8/e$b;-><init>(Lu8/e;Landroidx/fragment/app/p;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lu8/e$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lu8/e$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lu8/e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lu8/e$b;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

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

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lu8/e$b$a;

    iget-object v4, p0, Lu8/e$b;->i:Lu8/e;

    iget-object v5, p0, Lu8/e$b;->j:Landroidx/fragment/app/p;

    invoke-direct {v1, v4, v5, v3}, Lu8/e$b$a;-><init>(Lu8/e;Landroidx/fragment/app/p;Ljd/d;)V

    iput v2, p0, Lu8/e$b;->h:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    const-string v0, "binding"

    if-eqz p1, :cond_4

    .line 6
    iget-object v1, p0, Lu8/e$b;->i:Lu8/e;

    .line 7
    iget-object v1, v1, Lu8/e;->c0:Lq7/r0;

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v1, Lq7/r0;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_4
    :goto_1
    iget-object p1, p0, Lu8/e$b;->i:Lu8/e;

    .line 10
    iget-object p1, p1, Lu8/e;->c0:Lq7/r0;

    if-eqz p1, :cond_9

    .line 11
    iget-object p1, p1, Lq7/r0;->b:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    iget-object p1, p0, Lu8/e$b;->i:Lu8/e;

    .line 13
    iget-object p1, p1, Lu8/e;->c0:Lq7/r0;

    if-eqz p1, :cond_8

    .line 14
    iget-object p1, p1, Lq7/r0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15
    iget-object p1, p0, Lu8/e$b;->i:Lu8/e;

    .line 16
    iget-object p1, p1, Lu8/e;->c0:Lq7/r0;

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p1, Lq7/r0;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 18
    iget-object p1, p0, Lu8/e$b;->i:Lu8/e;

    .line 19
    iget-object p1, p1, Lu8/e;->c0:Lq7/r0;

    if-eqz p1, :cond_6

    .line 20
    iget-object p1, p1, Lq7/r0;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 21
    iget-object p1, p0, Lu8/e$b;->i:Lu8/e;

    .line 22
    iget-object p1, p1, Lu8/e;->c0:Lq7/r0;

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p1, Lq7/r0;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 24
    iget-object p1, p0, Lu8/e$b;->i:Lu8/e;

    .line 25
    iput-boolean v2, p1, Lu8/e;->g0:Z

    .line 26
    invoke-virtual {p1}, Lu8/e;->q0()V

    .line 27
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 28
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_7
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 31
    :cond_8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_9
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3
.end method
