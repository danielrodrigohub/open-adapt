.class public final Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;
.super Landroid/widget/FrameLayout;
.source "TooltipOverlayView.kt"


# instance fields
.field public h:Z

.field public i:Landroid/graphics/RectF;

.field public j:I

.field public k:Landroid/graphics/Paint;

.field public l:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->h:Z

    const-string p1, "#CC000000"

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->j:I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const-string p2, "#000101"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 6
    iput-object p1, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->k:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final getUseBlendingForViewOverlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->h:Z

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->j:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    iget-boolean v0, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->h:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->l:Ljava/lang/Float;

    iget-object v1, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->i:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 6
    sget-object v0, Lfd/o;->a:Lfd/o;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->i:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public final setUseBlendingForViewOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nike/adapt/ui/tooltip/TooltipOverlayView;->h:Z

    return-void
.end method
