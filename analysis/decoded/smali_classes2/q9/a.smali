.class public final synthetic Lq9/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/util/AdjustLacingActivity;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/nike/adapt/ui/util/AdjustLacingActivity;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/a;->a:Lcom/nike/adapt/ui/util/AdjustLacingActivity;

    iput p2, p0, Lq9/a;->b:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lq9/a;->a:Lcom/nike/adapt/ui/util/AdjustLacingActivity;

    iget v1, p0, Lq9/a;->b:F

    sget v2, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->Q:I

    const-string v2, "this$0"

    .line 1
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "animator"

    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3
    iget-object v0, v0, Lcom/nike/adapt/ui/util/AdjustLacingActivity;->N:Ljava/util/Vector;

    .line 4
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb9/a;

    .line 5
    iget-object v3, v2, Lb9/a;->b:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 7
    iget-object v4, v2, Lb9/a;->b:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Ly/a;->a:Ljava/lang/Object;

    const v5, 0x7f060091

    .line 9
    invoke-static {v4, v5}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v4

    .line 10
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    iget-object v3, v2, Lb9/a;->b:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 13
    invoke-static {v4, v5}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v4

    .line 14
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    :cond_0
    iget-object v3, v2, Lb9/a;->b:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 17
    iget-object v3, v2, Lb9/a;->b:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 19
    :cond_2
    iget-object v3, v2, Lb9/a;->b:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v3, p1}, Landroid/view/View;->setScaleX(F)V

    .line 21
    iget-object v2, v2, Lb9/a;->b:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_3
    return-void
.end method
