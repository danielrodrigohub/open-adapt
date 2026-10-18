.class public final synthetic Le9/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Le9/i;

.field public final synthetic d:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Le9/i;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/e;->a:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Le9/e;->b:Landroid/view/View;

    iput-object p3, p0, Le9/e;->c:Le9/i;

    iput-object p4, p0, Le9/e;->d:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Le9/e;->a:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Le9/e;->b:Landroid/view/View;

    iget-object v2, p0, Le9/e;->c:Le9/i;

    iget-object v3, p0, Le9/e;->d:Landroid/animation/ValueAnimator;

    const-string v4, "$slideViewContent"

    .line 1
    invoke-static {v1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "this$0"

    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "it"

    invoke-static {p1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, ""

    .line 4
    invoke-static {v3, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p1, Le9/j;

    invoke-direct {p1, v2}, Le9/j;-><init>(Le9/i;)V

    invoke-virtual {v3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
