.class public final Lz8/n;
.super Ljava/lang/Object;
.source "LightPacksSubtitleManager.kt"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lh8/a;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lh8/a;)V
    .locals 1

    const-string v0, "preferenceHelper"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/n;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lz8/n;->b:Lh8/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lz8/n;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lz8/n;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method public final b(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final c(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    new-instance v1, Lw8/j;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lw8/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final d(Lz8/a;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lz8/a;->m:Lz8/a;

    if-ne p1, v0, :cond_0

    const p1, 0x7f110108

    .line 2
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f110379

    .line 3
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    .line 4
    iget p1, p1, Lz8/a;->j:I

    .line 5
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "lightPack"

    invoke-direct {v3, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final e(Lz8/a;Lz8/a;)V
    .locals 8

    const-string v0, "activeLightPack"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lz8/a;->m:Lz8/a;

    const/4 v1, 0x1

    const-string v2, "animation"

    const v3, 0x7f1100ed

    const/4 v4, 0x0

    if-ne p1, v0, :cond_7

    if-eq p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lz8/n;->d(Lz8/a;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 3
    :cond_0
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightEffect()Lv7/c;

    move-result-object p2

    sget-object v0, Lv7/c$d;->c:Lv7/c$d;

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightEffect()Lv7/c;

    move-result-object p2

    invoke-static {p2}, Landroidx/lifecycle/o;->s(Lv7/c;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getNeedToDisplayEffectsSubtitleForFirstTime()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lz8/n;->b:Lh8/a;

    invoke-interface {p1}, Lh8/a;->j()I

    move-result p1

    const/4 v0, 0x4

    .line 7
    invoke-static {v0}, Lq/g;->b(I)[I

    move-result-object v2

    .line 8
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget v6, v2, v5

    .line 9
    invoke-static {v6}, Landroidx/appcompat/widget/o;->a(I)I

    move-result v7

    if-ne v7, p1, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-static {v0}, Landroidx/appcompat/widget/o;->a(I)I

    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f11030e

    .line 12
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-string v5, "effect"

    invoke-direct {v3, v5, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v4

    new-instance p2, Landroid/util/Pair;

    const-string v3, "minutes"

    invoke-direct {p2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_8

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    .line 14
    :cond_5
    iget-object p1, p0, Lz8/n;->b:Lh8/a;

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f110108

    .line 15
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-string p1, ""

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    .line 17
    iget p1, p1, Lz8/a;->j:I

    .line 18
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    .line 19
    iget-object p2, p0, Lz8/n;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lz8/n;->a:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 21
    :cond_9
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1, v4}, Lcom/nike/adapt/adk/InMemoryCache;->setNeedToDisplayEffectsSubtitleForFirstTime(Z)V

    return-void
.end method

.method public final f(Lz8/a;)V
    .locals 6

    .line 1
    sget-object v0, Lz8/a;->m:Lz8/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightEffect()Lv7/c;

    move-result-object v4

    sget-object v5, Lv7/c$d;->c:Lv7/c$d;

    invoke-static {v4, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightEffect()Lv7/c;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/o;->s(Lv7/c;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1100ed

    .line 4
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    const-string v5, "animation"

    invoke-direct {v4, v5, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lz8/n;->b:Lh8/a;

    invoke-interface {p1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lz8/n;->d(Lz8/a;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v3

    goto :goto_1

    :cond_2
    const v0, 0x7f1100e9

    .line 7
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    .line 8
    iget p1, p1, Lz8/a;->j:I

    .line 9
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "lightPack"

    invoke-direct {v4, v5, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 10
    iget-object v0, p0, Lz8/n;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lz8/n;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_4
    if-nez v3, :cond_5

    .line 11
    iget-object p1, p0, Lz8/n;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lz8/n;->c(Landroid/widget/TextView;)V

    :cond_5
    return-void
.end method

.method public final g(Lz8/a;)V
    .locals 5

    .line 1
    sget-object v0, Lz8/a;->m:Lz8/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f1100ec

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    .line 3
    iget p1, p1, Lz8/a;->j:I

    .line 4
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "lightPack"

    invoke-direct {v3, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lz8/n;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lz8/n;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final h(Lz8/a;)V
    .locals 1

    invoke-virtual {p0, p1}, Lz8/n;->d(Lz8/a;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz8/n;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lz8/n;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final i(Lz8/a;)V
    .locals 5

    .line 1
    sget-object v0, Lz8/a;->m:Lz8/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f1100ea

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    .line 3
    iget p1, p1, Lz8/a;->j:I

    .line 4
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "lightPack"

    invoke-direct {v3, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lz8/n;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lz8/n;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
