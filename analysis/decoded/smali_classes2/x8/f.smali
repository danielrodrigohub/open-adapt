.class public final synthetic Lx8/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/f;->a:Landroid/animation/ValueAnimator;

    iput p2, p0, Lx8/f;->b:I

    iput-object p3, p0, Lx8/f;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lx8/f;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lx8/f;->b:I

    iget-object v2, p0, Lx8/f;->c:Landroid/view/ViewGroup;

    const-string v3, "$viewGroup"

    .line 1
    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "it"

    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f06008f

    sget-object v6, Ly/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v3, v5}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v3

    .line 6
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f060090

    sget-object v6, Ly/a;->a:Ljava/lang/Object;

    .line 8
    invoke-static {v3, v5}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v3

    .line 9
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index: "

    const-string v1, ", Size: "

    .line 11
    invoke-static {v0, v3, v1}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
