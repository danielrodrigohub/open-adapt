.class public final Lp9/d;
.super Landroid/widget/FrameLayout;
.source "TooltipPopUpView.kt"


# static fields
.field public static final synthetic C:I


# instance fields
.field public final A:Landroid/os/Handler;

.field public B:Z

.field public final h:Lp9/a;

.field public i:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;

.field public final m:Landroid/view/View;

.field public final n:Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;

.field public final o:Landroid/view/View;

.field public final p:Landroid/widget/ImageView;

.field public q:Landroid/widget/Button;

.field public final r:Landroid/view/WindowManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation
.end field

.field public s:I

.field public t:Ljava/lang/Float;

.field public u:Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:Landroid/view/ViewPropertyAnimator;

.field public x:Landroid/view/ViewPropertyAnimator;

.field public y:Landroid/view/ViewPropertyAnimator;

.field public z:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Lp9/a;Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p1, p0, Lp9/d;->h:Lp9/a;

    const-string v0, "window"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lp9/d;->r:Landroid/view/WindowManager;

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lp9/d;->s:I

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lp9/d;->A:Landroid/os/Handler;

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d011c

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0a048a

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.view_tooltip_pop_up_parent_view)"

    invoke-static {p2, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lp9/d;->k:Landroid/view/View;

    const v0, 0x7f0a0465

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "toolTip.findViewById(R.id.tooltipPopUpView)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lp9/d;->l:Landroid/view/View;

    const v1, 0x7f0a0460

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "toolTip.findViewById(R.id.tooltipArrowTop)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lp9/d;->m:Landroid/view/View;

    const v2, 0x7f0a0462

    .line 11
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "toolTip.findViewById(R.id.tooltipOverlayView)"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;

    iput-object v2, p0, Lp9/d;->n:Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;

    const v3, 0x7f0a0466

    .line 12
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "toolTip.findViewById(R.id.tootTipPopUpContent)"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lp9/d;->o:Landroid/view/View;

    const v3, 0x7f0a0219

    .line 13
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "toolTip.findViewById(R.id.focused_view_image)"

    invoke-static {p2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lp9/d;->p:Landroid/widget/ImageView;

    const p2, 0x7f0a0464

    .line 14
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, p1, Lp9/a;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p2, 0x7f0a0463

    .line 17
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    iget-object v3, p1, Lp9/a;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_1
    iget-object p2, p1, Lp9/a;->d:Ljava/lang/String;

    const v3, 0x7f0a045b

    if-eqz p2, :cond_3

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_3
    :goto_2
    iget-object p2, p1, Lp9/a;->e:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 23
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    const p2, 0x7f0a0461

    .line 24
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lp9/d;->q:Landroid/widget/Button;

    if-nez p2, :cond_6

    goto :goto_4

    .line 25
    :cond_6
    iget-object v3, p1, Lp9/a;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :goto_4
    iget-object p2, p0, Lp9/d;->q:Landroid/widget/Button;

    if-eqz p2, :cond_7

    new-instance v3, Lz8/f;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lz8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_7
    iget-boolean p1, p1, Lp9/a;->f:Z

    .line 29
    invoke-virtual {v2, p1}, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->setUseBlendingForViewOverlay(Z)V

    .line 30
    new-instance p1, Lz8/e;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lz8/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {v0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 33
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setId(I)V

    .line 34
    invoke-virtual {v1, p1, p1}, Landroid/view/View;->measure(II)V

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    return-void
.end method

.method public static a(Lp9/d;)V
    .locals 12

    const-string v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    iget-object v2, p0, Lp9/d;->u:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 3
    invoke-direct {p0}, Lp9/d;->getOffset()I

    move-result v5

    sub-int/2addr v1, v5

    .line 4
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v3, 0xf

    add-int/lit8 v7, v1, 0xf

    iget-object v8, p0, Lp9/d;->u:Landroid/view/View;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v9

    :goto_0
    invoke-static {v8}, Lg7/b;->i(Ljava/lang/Integer;)I

    move-result v8

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0xf

    iget-object v10, p0, Lp9/d;->u:Landroid/view/View;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v9

    :goto_1
    invoke-static {v10}, Lg7/b;->i(Ljava/lang/Integer;)I

    move-result v10

    add-int/2addr v10, v1

    const/16 v11, 0x14

    sub-int/2addr v10, v11

    invoke-direct {v5, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    iget-object v6, p0, Lp9/d;->n:Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;

    iget-object v7, p0, Lp9/d;->t:Ljava/lang/Float;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Lg7/b;->b(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v9

    :goto_2
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v8, v6, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->h:Z

    if-nez v8, :cond_4

    goto :goto_6

    .line 7
    :cond_4
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v6, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->i:Landroid/graphics/RectF;

    const/4 v5, 0x0

    if-eqz v7, :cond_5

    .line 8
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_3

    :cond_5
    move v8, v5

    :goto_3
    cmpl-float v8, v8, v5

    if-lez v8, :cond_7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/16 v7, 0xa

    int-to-float v7, v7

    add-float/2addr v5, v7

    goto :goto_4

    :cond_6
    move-object v5, v9

    goto :goto_5

    :cond_7
    :goto_4
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_5
    iput-object v5, v6, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->l:Ljava/lang/Float;

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 10
    :goto_6
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-object v6, p0, Lp9/d;->v:Landroid/view/View;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 12
    :cond_8
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v11}, Lg7/b;->c(I)I

    move-result v6

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    const/16 v7, 0x18

    invoke-static {v7}, Lg7/b;->c(I)I

    move-result v7

    mul-int/2addr v7, v0

    add-int/2addr v7, v6

    sub-int/2addr v5, v7

    .line 13
    iget-object v6, p0, Lp9/d;->h:Lp9/a;

    .line 14
    iget v6, v6, Lp9/a;->h:I

    if-nez v6, :cond_a

    .line 15
    iget-object v6, p0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v5, v6, :cond_9

    move v6, v4

    goto :goto_7

    :cond_9
    move v6, v0

    :cond_a
    :goto_7
    iput v6, p0, Lp9/d;->s:I

    .line 16
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 17
    iget-object v6, p0, Lp9/d;->u:Landroid/view/View;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_8

    :cond_b
    move-object v6, v9

    :goto_8
    invoke-static {v6}, Lg7/b;->i(Ljava/lang/Integer;)I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v6, v3

    iget-object v3, p0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr v6, v3

    invoke-static {v4}, Lg7/b;->c(I)I

    move-result v3

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, p0, Lp9/d;->s:I

    const/4 v6, 0x4

    if-ne v3, v0, :cond_d

    .line 19
    iget-object v3, p0, Lp9/d;->u:Landroid/view/View;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_c
    invoke-static {v9}, Lg7/b;->i(Ljava/lang/Integer;)I

    move-result v3

    iget-object v7, p0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v4}, Lg7/b;->c(I)I

    move-result v3

    add-int/2addr v3, v7

    add-int/2addr v3, v1

    .line 20
    iget-object v1, p0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v3, v1

    invoke-static {v6}, Lg7/b;->c(I)I

    move-result v6

    add-int/2addr v6, v1

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_9

    .line 21
    :cond_d
    iget-object v3, p0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v7, p0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v4}, Lg7/b;->c(I)I

    move-result v3

    add-int/2addr v3, v7

    sub-int v3, v1, v3

    .line 22
    iget-object v1, p0, Lp9/d;->m:Landroid/view/View;

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v1, v7}, Landroid/view/View;->setRotation(F)V

    .line 23
    iget-object v1, p0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v6}, Lg7/b;->c(I)I

    move-result v6

    sub-int/2addr v1, v6

    iput v1, v5, Landroid/graphics/Point;->y:I

    .line 24
    :goto_9
    iget-object v1, p0, Lp9/d;->m:Landroid/view/View;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 25
    iget-object v1, p0, Lp9/d;->m:Landroid/view/View;

    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget-object v7, p0, Lp9/d;->h:Lp9/a;

    .line 26
    iget v7, v7, Lp9/a;->g:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 27
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 28
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 29
    iget v5, v5, Landroid/graphics/Point;->x:I

    new-array v6, v0, [I

    .line 30
    fill-array-data v6, :array_0

    .line 31
    iget-object v7, p0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v6, v2

    .line 32
    iget-object v7, p0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 33
    iget-object v8, p0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v9, v5, v8

    .line 34
    iget-object v10, p0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v8

    if-le v6, v9, :cond_e

    sub-int/2addr v9, v6

    goto :goto_a

    :cond_e
    if-ge v7, v10, :cond_f

    sub-int v9, v10, v7

    goto :goto_a

    :cond_f
    move v9, v2

    .line 35
    :goto_a
    iput v9, v1, Landroid/graphics/Point;->x:I

    .line 36
    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 37
    iget-object v3, p0, Lp9/d;->l:Landroid/view/View;

    int-to-float v5, v9

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 38
    iget-object v3, p0, Lp9/d;->l:Landroid/view/View;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v5, p0, Lp9/d;->h:Lp9/a;

    .line 39
    iget v5, v5, Lp9/a;->g:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 40
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 41
    iget-object v1, p0, Lp9/d;->u:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 42
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-array v5, v0, [I

    .line 43
    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v5, v2

    .line 44
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    new-array v0, v0, [I

    .line 45
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v0, v4

    .line 46
    invoke-direct {p0}, Lp9/d;->getOffset()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 47
    iget-object v0, p0, Lp9/d;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p0, p0, Lp9/d;->p:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const-string v1, "bitmap"

    .line 52
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_10
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static d(Lp9/d;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x40500000    # 3.25f

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lg7/b;->b(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lp9/d;->t:Ljava/lang/Float;

    .line 3
    iput-object p2, p0, Lp9/d;->u:Landroid/view/View;

    .line 4
    iput-object p1, p0, Lp9/d;->v:Landroid/view/View;

    .line 5
    iget-object p2, p0, Lp9/d;->k:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "parentLayout.windowToken"

    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v0, 0x800033

    .line 8
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x1

    .line 9
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    .line 11
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x3e8

    .line 12
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 13
    iput-object p1, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p1, 0x2

    .line 14
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TooltipPopUpView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lp9/d;->r:Landroid/view/WindowManager;

    invoke-interface {p1, p0, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p1, p0, Lp9/d;->A:Landroid/os/Handler;

    new-instance p2, Landroidx/activity/g;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v0}, Landroidx/activity/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    iget-object p1, p0, Lp9/d;->A:Landroid/os/Handler;

    new-instance p2, Landroidx/appcompat/widget/k1;

    invoke-direct {p2, p0, v0}, Landroidx/appcompat/widget/k1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private final getOffset()I
    .locals 7

    .line 1
    iget-object v0, p0, Lp9/d;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lg7/b;->i(Ljava/lang/Integer;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lp9/d;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v1

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 6
    :goto_1
    iget-object v3, p0, Lp9/d;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lt v0, v1, :cond_3

    move v2, v1

    :cond_3
    return v2
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/d;->w:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2
    :cond_0
    iget-object v0, p0, Lp9/d;->x:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3
    :cond_1
    iget-object v0, p0, Lp9/d;->y:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4
    :cond_2
    iget-object v0, p0, Lp9/d;->z:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5
    :cond_3
    iget-object v0, p0, Lp9/d;->A:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lp9/d;->r:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp9/d;->n:Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;

    iget-object v1, p0, Lp9/d;->h:Lp9/a;

    .line 2
    iget-wide v1, v1, Lp9/a;->r:J

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5
    iget-object v0, p0, Lp9/d;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 7
    iget-object v1, p0, Lp9/d;->h:Lp9/a;

    .line 8
    iget-wide v1, v1, Lp9/a;->r:J

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 11
    iput-object v0, p0, Lp9/d;->w:Landroid/view/ViewPropertyAnimator;

    .line 12
    iget-object v0, p0, Lp9/d;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 14
    iget-object v1, p0, Lp9/d;->h:Lp9/a;

    .line 15
    iget-wide v1, v1, Lp9/a;->r:J

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 18
    iput-object v0, p0, Lp9/d;->x:Landroid/view/ViewPropertyAnimator;

    .line 19
    iget-object v0, p0, Lp9/d;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 21
    iget-object v1, p0, Lp9/d;->h:Lp9/a;

    .line 22
    iget-wide v1, v1, Lp9/a;->r:J

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 24
    new-instance v1, Lp9/d$a;

    invoke-direct {v1, p0}, Lp9/d$a;-><init>(Lp9/d;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 25
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 26
    iput-object v0, p0, Lp9/d;->y:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean p1, p0, Lp9/d;->B:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lp9/d;->j:Lqd/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lp9/d;->c()V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final getCtaAction()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp9/d;->i:Lqd/a;

    return-object v0
.end method

.method public final getOverlayDismiss()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp9/d;->j:Lqd/a;

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lp9/d;->b()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final setCtaAction(Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp9/d;->i:Lqd/a;

    return-void
.end method

.method public final setOverlayDismiss(Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp9/d;->j:Lqd/a;

    return-void
.end method
