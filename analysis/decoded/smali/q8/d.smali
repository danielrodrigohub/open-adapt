.class public final Lq8/d;
.super Ljava/lang/Object;
.source "BatteryEventAnimator.kt"


# instance fields
.field public final a:Lq7/c;

.field public b:Lq8/f;

.field public c:Lq8/f;

.field public d:Z

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lq7/c;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/d;->a:Lq7/c;

    .line 2
    new-instance p1, Lq8/f;

    .line 3
    new-instance v0, Lq8/e;

    new-instance v1, Lcom/nike/adapt/adk/model/Battery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;ILrd/h;)V

    invoke-direct {v0, v2, v1}, Lq8/e;-><init>(ZLcom/nike/adapt/adk/model/Battery;)V

    .line 4
    new-instance v1, Lq8/e;

    new-instance v5, Lcom/nike/adapt/adk/model/Battery;

    invoke-direct {v5, v2, v3, v4, v3}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;ILrd/h;)V

    const/4 v2, 0x1

    invoke-direct {v1, v2, v5}, Lq8/e;-><init>(ZLcom/nike/adapt/adk/model/Battery;)V

    .line 5
    invoke-direct {p1, v0, v1}, Lq8/f;-><init>(Lq8/e;Lq8/e;)V

    iput-object p1, p0, Lq8/d;->b:Lq8/f;

    .line 6
    iput-object p1, p0, Lq8/d;->c:Lq8/f;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lq8/d;->e:I

    .line 8
    iput p1, p0, Lq8/d;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljd/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lq8/d$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lq8/d$a;

    iget v1, v0, Lq8/d$a;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq8/d$a;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq8/d$a;

    invoke-direct {v0, p0, p1}, Lq8/d$a;-><init>(Lq8/d;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lq8/d$a;->i:Ljava/lang/Object;

    sget-object v7, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, v0, Lq8/d$a;->k:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v1, v0, Lq8/d$a;->h:Lq8/d;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lq8/c;->a:Lq8/c;

    iget-object p1, p0, Lq8/d;->a:Lq7/c;

    iget-object p1, p1, Lq7/c;->c:Lq7/b1;

    iget-object p1, p1, Lq7/b1;->b:Landroid/widget/ImageView;

    const-string v3, "binding.batteryDetailsLeft.batteryDetailsIcon"

    invoke-static {p1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lq8/d;->c:Lq8/f;

    .line 5
    iget-object v3, v3, Lq8/f;->h:Lq8/e;

    .line 6
    iget-object v4, p0, Lq8/d;->b:Lq8/f;

    .line 7
    iget-object v4, v4, Lq8/f;->h:Lq8/e;

    .line 8
    new-instance v5, Lq8/d$b;

    invoke-direct {v5, p0}, Lq8/d$b;-><init>(Lq8/d;)V

    iput-object p0, v0, Lq8/d$a;->h:Lq8/d;

    iput v2, v0, Lq8/d$a;->k:I

    move-object v2, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lq8/c;->a(Landroid/widget/ImageView;Lq8/e;Lq8/e;Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_4

    return-object v7

    :cond_4
    move-object v1, p0

    .line 9
    :goto_1
    sget-object p1, Lq8/c;->a:Lq8/c;

    iget-object v2, v1, Lq8/d;->a:Lq7/c;

    iget-object v2, v2, Lq7/c;->d:Lq7/b1;

    iget-object v2, v2, Lq7/b1;->b:Landroid/widget/ImageView;

    const-string v3, "binding.batteryDetailsRight.batteryDetailsIcon"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lq8/d;->c:Lq8/f;

    .line 10
    iget-object v3, v3, Lq8/f;->i:Lq8/e;

    .line 11
    iget-object v4, v1, Lq8/d;->b:Lq8/f;

    .line 12
    iget-object v4, v4, Lq8/f;->i:Lq8/e;

    .line 13
    new-instance v5, Lq8/d$c;

    invoke-direct {v5, v1}, Lq8/d$c;-><init>(Lq8/d;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lq8/d$a;->h:Lq8/d;

    iput v8, v0, Lq8/d$a;->k:I

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lq8/c;->a(Landroid/widget/ImageView;Lq8/e;Lq8/e;Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_5

    return-object v7

    .line 14
    :cond_5
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final b(Ljd/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lq8/d$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lq8/d$d;

    iget v1, v0, Lq8/d$d;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq8/d$d;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq8/d$d;

    invoke-direct {v0, p0, p1}, Lq8/d$d;-><init>(Lq8/d;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lq8/d$d;->i:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lq8/d$d;->k:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lq8/d$d;->h:Lq8/d;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lq8/c;->a:Lq8/c;

    iget-object v2, p0, Lq8/d;->a:Lq7/c;

    iget-object v2, v2, Lq7/c;->c:Lq7/b1;

    iget-object v2, v2, Lq7/b1;->b:Landroid/widget/ImageView;

    const-string v5, "binding.batteryDetailsLeft.batteryDetailsIcon"

    invoke-static {v2, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lq8/d;->c:Lq8/f;

    .line 5
    iget-object v5, v5, Lq8/f;->h:Lq8/e;

    .line 6
    iget v6, p0, Lq8/d;->f:I

    iput-object p0, v0, Lq8/d$d;->h:Lq8/d;

    iput v4, v0, Lq8/d$d;->k:I

    invoke-virtual {p1, v2, v5, v6, v0}, Lq8/c;->b(Landroid/widget/ImageView;Lq8/e;ILjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 7
    :goto_1
    sget-object p1, Lq8/c;->a:Lq8/c;

    iget-object v4, v2, Lq8/d;->a:Lq7/c;

    iget-object v4, v4, Lq7/c;->d:Lq7/b1;

    iget-object v4, v4, Lq7/b1;->b:Landroid/widget/ImageView;

    const-string v5, "binding.batteryDetailsRight.batteryDetailsIcon"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v2, Lq8/d;->c:Lq8/f;

    .line 8
    iget-object v5, v5, Lq8/f;->i:Lq8/e;

    .line 9
    iget v2, v2, Lq8/d;->e:I

    const/4 v6, 0x0

    iput-object v6, v0, Lq8/d$d;->h:Lq8/d;

    iput v3, v0, Lq8/d$d;->k:I

    invoke-virtual {p1, v4, v5, v2, v0}, Lq8/c;->b(Landroid/widget/ImageView;Lq8/e;ILjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 10
    :cond_5
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final c(Ljd/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lq8/d$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lq8/d$e;

    iget v1, v0, Lq8/d$e;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq8/d$e;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq8/d$e;

    invoke-direct {v0, p0, p1}, Lq8/d$e;-><init>(Lq8/d;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lq8/d$e;->i:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lq8/d$e;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lq8/d$e;->h:Lq8/d;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lq8/d$e;->h:Lq8/d;

    iput v3, v0, Lq8/d$e;->k:I

    invoke-virtual {p0, v0}, Lq8/d;->g(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    iget-object p1, v0, Lq8/d;->a:Lq7/c;

    iget-object p1, p1, Lq7/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final d(Ljd/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lq8/d$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lq8/d$f;

    iget v1, v0, Lq8/d$f;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq8/d$f;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq8/d$f;

    invoke-direct {v0, p0, p1}, Lq8/d$f;-><init>(Lq8/d;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lq8/d$f;->i:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lq8/d$f;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lq8/d$f;->h:Lq8/d;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lq8/d$f;->h:Lq8/d;

    iput v3, v0, Lq8/d$f;->k:I

    invoke-virtual {p0}, Lq8/d;->e()V

    sget-object p1, Lfd/o;->a:Lfd/o;

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    iget-object p1, v0, Lq8/d;->a:Lq7/c;

    iget-object p1, p1, Lq7/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final e()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq8/d;->c:Lq8/f;

    .line 2
    iget-object v0, v0, Lq8/f;->i:Lq8/e;

    .line 3
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 4
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lq8/d;->c:Lq8/f;

    .line 5
    iget-object v0, v0, Lq8/f;->h:Lq8/e;

    .line 6
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 7
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->c:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->d:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lq8/d;->c:Lq8/f;

    .line 11
    iget-object v0, v0, Lq8/f;->h:Lq8/e;

    .line 12
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 13
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd

    const/high16 v4, -0x1000000

    const-string v5, "binding.batteryDetailsLeft.batteryDetailsBolt"

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->c:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 15
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->c:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->c:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->c:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 20
    :goto_0
    iget-object v0, p0, Lq8/d;->c:Lq8/f;

    .line 21
    iget-object v0, v0, Lq8/f;->i:Lq8/e;

    .line 22
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 23
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    const-string v5, "binding.batteryDetailsRight.batteryDetailsBolt"

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->d:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->d:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->d:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    iget-object v0, p0, Lq8/d;->a:Lq7/c;

    iget-object v0, v0, Lq7/c;->d:Lq7/b1;

    iget-object v0, v0, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public final f(Ljd/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lq8/d$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lq8/d$g;

    iget v1, v0, Lq8/d$g;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq8/d$g;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq8/d$g;

    invoke-direct {v0, p0, p1}, Lq8/d$g;-><init>(Lq8/d;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lq8/d$g;->j:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lq8/d$g;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lq8/d$g;->h:Lq8/d;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-wide v6, v0, Lq8/d$g;->i:J

    iget-object v2, v0, Lq8/d$g;->h:Lq8/d;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    const-wide/16 v7, 0xc8

    .line 4
    invoke-virtual {p0}, Lq8/d;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5
    iget-object v2, p0, Lq8/d;->a:Lq7/c;

    iget-object v2, v2, Lq7/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v9, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable"

    invoke-static {v2, v9}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v9, 0xc8

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 6
    :cond_5
    iget-object v2, p0, Lq8/d;->a:Lq7/c;

    iget-object v2, v2, Lq7/c;->d:Lq7/b1;

    iget-object v2, v2, Lq7/b1;->c:Landroid/widget/TextView;

    const-string v9, "binding.batteryDetailsRight.batteryDetailsPercent"

    invoke-static {v2, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lq8/d;->c:Lq8/f;

    .line 7
    iget-object v9, v9, Lq8/f;->i:Lq8/e;

    .line 8
    invoke-virtual {p0, v2, v9}, Lq8/d;->j(Landroid/widget/TextView;Lq8/e;)V

    .line 9
    iget-object v2, p0, Lq8/d;->a:Lq7/c;

    iget-object v2, v2, Lq7/c;->c:Lq7/b1;

    iget-object v2, v2, Lq7/b1;->c:Landroid/widget/TextView;

    const-string v9, "binding.batteryDetailsLeft.batteryDetailsPercent"

    invoke-static {v2, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lq8/d;->c:Lq8/f;

    .line 10
    iget-object v9, v9, Lq8/f;->h:Lq8/e;

    .line 11
    invoke-virtual {p0, v2, v9}, Lq8/d;->j(Landroid/widget/TextView;Lq8/e;)V

    if-eqz p1, :cond_7

    .line 12
    iget-object p1, p0, Lq8/d;->a:Lq7/c;

    iget-object p1, p1, Lq7/c;->c:Lq7/b1;

    iget-object p1, p1, Lq7/b1;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lq8/d;->a:Lq7/c;

    iget-object p1, p1, Lq7/c;->d:Lq7/b1;

    iget-object p1, p1, Lq7/b1;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iput-object p0, v0, Lq8/d$g;->h:Lq8/d;

    iput-wide v7, v0, Lq8/d$g;->i:J

    iput v6, v0, Lq8/d$g;->l:I

    invoke-virtual {p0}, Lq8/d;->e()V

    sget-object p1, Lfd/o;->a:Lfd/o;

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    move-wide v6, v7

    :goto_1
    move-wide v7, v6

    goto :goto_2

    :cond_7
    move-object v2, p0

    .line 15
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v6, Lq8/d$h;

    invoke-direct {v6, v7, v8, v3}, Lq8/d$h;-><init>(JLjd/d;)V

    iput-object v2, v0, Lq8/d$g;->h:Lq8/d;

    iput v5, v0, Lq8/d$g;->l:I

    invoke-static {p1, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 16
    :cond_8
    :goto_3
    iput-object v3, v0, Lq8/d$g;->h:Lq8/d;

    iput v4, v0, Lq8/d$g;->l:I

    invoke-virtual {v2, v0}, Lq8/d;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 17
    :cond_9
    :goto_4
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final g(Ljd/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lq8/d$i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lq8/d$i;

    iget v1, v0, Lq8/d$i;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq8/d$i;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq8/d$i;

    invoke-direct {v0, p0, p1}, Lq8/d$i;-><init>(Lq8/d;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lq8/d$i;->i:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lq8/d$i;->k:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lq8/d$i;->h:Lq8/d;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lq8/d$i;->h:Lq8/d;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lq8/d$j;

    invoke-direct {v2, v3}, Lq8/d$j;-><init>(Ljd/d;)V

    iput-object p0, v0, Lq8/d$i;->h:Lq8/d;

    iput v6, v0, Lq8/d$i;->k:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    iput-object v2, v0, Lq8/d$i;->h:Lq8/d;

    iput v5, v0, Lq8/d$i;->k:I

    invoke-virtual {v2, v0}, Lq8/d;->b(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 6
    :cond_6
    :goto_2
    iput-object v3, v0, Lq8/d$i;->h:Lq8/d;

    iput v4, v0, Lq8/d$i;->k:I

    invoke-virtual {v2}, Lq8/d;->e()V

    sget-object p1, Lfd/o;->a:Lfd/o;

    if-ne p1, v1, :cond_7

    return-object v1

    .line 7
    :cond_7
    :goto_3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/d;->c:Lq8/f;

    .line 2
    iget-object v0, v0, Lq8/f;->i:Lq8/e;

    .line 3
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 4
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq8/d;->c:Lq8/f;

    .line 5
    iget-object v0, v0, Lq8/f;->h:Lq8/e;

    .line 6
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 7
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final i(Lq8/f;Ljd/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq8/f;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lq8/d$k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lq8/d$k;

    iget v1, v0, Lq8/d$k;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq8/d$k;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq8/d$k;

    invoke-direct {v0, p0, p2}, Lq8/d$k;-><init>(Lq8/d;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lq8/d$k;->l:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lq8/d$k;->n:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, v0, Lq8/d$k;->h:Lq8/d;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    iget-boolean p1, v0, Lq8/d$k;->i:Z

    iget-object v2, v0, Lq8/d$k;->h:Lq8/d;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    iget-boolean p1, v0, Lq8/d$k;->j:Z

    iget-boolean v2, v0, Lq8/d$k;->i:Z

    iget-object v3, v0, Lq8/d$k;->h:Lq8/d;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3
    iget-boolean p1, v0, Lq8/d$k;->j:Z

    iget-boolean v2, v0, Lq8/d$k;->i:Z

    iget-object v3, v0, Lq8/d$k;->h:Lq8/d;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    iget-boolean p1, v0, Lq8/d$k;->k:Z

    iget-boolean v2, v0, Lq8/d$k;->j:Z

    iget-boolean v3, v0, Lq8/d$k;->i:Z

    iget-object v4, v0, Lq8/d$k;->h:Lq8/d;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, v0, Lq8/d$k;->h:Lq8/d;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Lq8/f;->h:Lq8/e;

    iget-object p1, p1, Lq8/f;->i:Lq8/e;

    const-string v2, "leftShoeBatteryInfoState"

    .line 5
    invoke-static {p2, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rightShoeBatteryInfoState"

    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lq8/f;

    invoke-direct {v2, p2, p1}, Lq8/f;-><init>(Lq8/e;Lq8/e;)V

    .line 6
    iput-object v2, p0, Lq8/d;->c:Lq8/f;

    .line 7
    iget-object p1, p0, Lq8/d;->b:Lq8/f;

    invoke-static {v2, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 8
    invoke-virtual {p0}, Lq8/d;->k()Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lq8/d;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v2

    .line 9
    :goto_1
    invoke-virtual {p0}, Lq8/d;->k()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v4, p0, Lq8/d;->b:Lq8/f;

    .line 11
    iget-object v4, v4, Lq8/f;->i:Lq8/e;

    .line 12
    iget-object v4, v4, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 13
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lq8/d;->c:Lq8/f;

    .line 14
    iget-object v4, v4, Lq8/f;->h:Lq8/e;

    .line 15
    iget-object v4, v4, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 16
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v4, p0, Lq8/d;->b:Lq8/f;

    .line 18
    iget-object v4, v4, Lq8/f;->h:Lq8/e;

    .line 19
    iget-object v4, v4, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 20
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lq8/d;->c:Lq8/f;

    .line 21
    iget-object v4, v4, Lq8/f;->i:Lq8/e;

    .line 22
    iget-object v4, v4, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 23
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    .line 24
    :goto_3
    invoke-virtual {p0}, Lq8/d;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lq8/d;->h()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    .line 25
    :cond_4
    iget-object v5, p0, Lq8/d;->b:Lq8/f;

    iget-object v6, p0, Lq8/d;->c:Lq8/f;

    invoke-static {v5, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 26
    iget-object v6, p0, Lq8/d;->a:Lq7/c;

    iget-object v6, v6, Lq7/c;->d:Lq7/b1;

    iget-object v6, v6, Lq7/b1;->c:Landroid/widget/TextView;

    const-string v7, "binding.batteryDetailsRight.batteryDetailsPercent"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lq8/d;->c:Lq8/f;

    .line 27
    iget-object v7, v7, Lq8/f;->i:Lq8/e;

    .line 28
    invoke-virtual {p0, v6, v7}, Lq8/d;->j(Landroid/widget/TextView;Lq8/e;)V

    .line 29
    iget-object v6, p0, Lq8/d;->a:Lq7/c;

    iget-object v6, v6, Lq7/c;->c:Lq7/b1;

    iget-object v6, v6, Lq7/b1;->c:Landroid/widget/TextView;

    const-string v7, "binding.batteryDetailsLeft.batteryDetailsPercent"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lq8/d;->c:Lq8/f;

    .line 30
    iget-object v7, v7, Lq8/f;->h:Lq8/e;

    .line 31
    invoke-virtual {p0, v6, v7}, Lq8/d;->j(Landroid/widget/TextView;Lq8/e;)V

    .line 32
    iget-boolean v6, p0, Lq8/d;->d:Z

    if-nez v6, :cond_6

    .line 33
    iput-object p0, v0, Lq8/d$k;->h:Lq8/d;

    iput v3, v0, Lq8/d$k;->n:I

    invoke-virtual {p0, v0}, Lq8/d;->f(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, p0

    .line 34
    :goto_4
    iput-boolean v3, p1, Lq8/d;->d:Z

    .line 35
    iget-object p2, p1, Lq8/d;->c:Lq8/f;

    iput-object p2, p1, Lq8/d;->b:Lq8/f;

    .line 36
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_6
    if-eqz p1, :cond_7

    .line 37
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_7
    if-eqz v5, :cond_9

    .line 38
    iput-object p0, v0, Lq8/d$k;->h:Lq8/d;

    iput-boolean p2, v0, Lq8/d$k;->i:Z

    iput-boolean v4, v0, Lq8/d$k;->j:Z

    iput-boolean v2, v0, Lq8/d$k;->k:Z

    const/4 p1, 0x2

    iput p1, v0, Lq8/d$k;->n:I

    invoke-virtual {p0, v0}, Lq8/d;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move v3, p2

    move p1, v2

    move v2, v4

    move-object v4, p0

    :goto_5
    move p2, v3

    move v8, v2

    move v2, p1

    move-object p1, v4

    move v4, v8

    goto :goto_6

    :cond_9
    move-object p1, p0

    :goto_6
    if-eqz v4, :cond_c

    .line 39
    iput-object p1, v0, Lq8/d$k;->h:Lq8/d;

    iput-boolean p2, v0, Lq8/d$k;->i:Z

    iput-boolean v2, v0, Lq8/d$k;->j:Z

    const/4 v3, 0x3

    iput v3, v0, Lq8/d$k;->n:I

    invoke-virtual {p1}, Lq8/d;->e()V

    sget-object v3, Lfd/o;->a:Lfd/o;

    if-ne v3, v1, :cond_a

    return-object v1

    :cond_a
    move-object v3, p1

    move p1, v2

    move v2, p2

    .line 40
    :goto_7
    iput-object v3, v0, Lq8/d$k;->h:Lq8/d;

    iput-boolean v2, v0, Lq8/d$k;->i:Z

    iput-boolean p1, v0, Lq8/d$k;->j:Z

    const/4 p2, 0x4

    iput p2, v0, Lq8/d$k;->n:I

    invoke-virtual {v3, v0}, Lq8/d;->b(Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    :goto_8
    move p2, v2

    move v2, p1

    move-object p1, v3

    :cond_c
    if-eqz p2, :cond_d

    .line 41
    iput-object p1, v0, Lq8/d$k;->h:Lq8/d;

    iput-boolean v2, v0, Lq8/d$k;->i:Z

    const/4 p2, 0x5

    iput p2, v0, Lq8/d$k;->n:I

    invoke-virtual {p1, v0}, Lq8/d;->c(Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_d

    return-object v1

    :cond_d
    move v8, v2

    move-object v2, p1

    move p1, v8

    :goto_9
    if-eqz p1, :cond_f

    .line 42
    iput-object v2, v0, Lq8/d$k;->h:Lq8/d;

    const/4 p1, 0x6

    iput p1, v0, Lq8/d$k;->n:I

    invoke-virtual {v2, v0}, Lq8/d;->d(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    return-object v1

    :cond_e
    move-object p1, v2

    :goto_a
    move-object v2, p1

    .line 43
    :cond_f
    iget-object p1, v2, Lq8/d;->c:Lq8/f;

    iput-object p1, v2, Lq8/d;->b:Lq8/f;

    .line 44
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Landroid/widget/TextView;Lq8/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p2, Lq8/e;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "R"

    goto :goto_0

    :cond_0
    const-string v0, "L"

    .line 2
    :goto_0
    iget-object v1, p2, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 3
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object p2, p2, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 5
    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/d;->b:Lq8/f;

    .line 2
    iget-object v0, v0, Lq8/f;->i:Lq8/e;

    .line 3
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 4
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq8/d;->b:Lq8/f;

    .line 5
    iget-object v0, v0, Lq8/f;->h:Lq8/e;

    .line 6
    iget-object v0, v0, Lq8/e;->i:Lcom/nike/adapt/adk/model/Battery;

    .line 7
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/Battery;->getState()Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/BatteryState;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
