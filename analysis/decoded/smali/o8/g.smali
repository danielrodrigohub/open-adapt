.class public final synthetic Lo8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/animation/ArgbEvaluator;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lrd/w;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ArgbEvaluator;IILrd/w;IILcom/nike/adapt/ui/GoogleVoicePromptActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/g;->a:Landroid/animation/ArgbEvaluator;

    iput p2, p0, Lo8/g;->b:I

    iput p3, p0, Lo8/g;->c:I

    iput-object p4, p0, Lo8/g;->d:Lrd/w;

    iput p5, p0, Lo8/g;->e:I

    iput p6, p0, Lo8/g;->f:I

    iput-object p7, p0, Lo8/g;->g:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lo8/g;->a:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lo8/g;->b:I

    iget v2, p0, Lo8/g;->c:I

    iget-object v3, p0, Lo8/g;->d:Lrd/w;

    iget v4, p0, Lo8/g;->e:I

    iget v5, p0, Lo8/g;->f:I

    iget-object v6, p0, Lo8/g;->g:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, v3, Lrd/w;->h:Ljava/lang/Object;

    check-cast v0, Landroid/text/SpannableString;

    .line 4
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p1, 0x12

    .line 5
    invoke-virtual {v0, v1, v4, v5, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6
    iget-object p1, v6, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->E:Lq7/i;

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p1, Lq7/i;->c:Landroid/widget/TextView;

    iget-object v0, v3, Lrd/w;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
