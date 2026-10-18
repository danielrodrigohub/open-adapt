.class public final synthetic Lx8/p0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic h:Lx8/q0;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lx8/q0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/p0;->h:Lx8/q0;

    iput p2, p0, Lx8/p0;->i:I

    iput p3, p0, Lx8/p0;->j:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p1, p0, Lx8/p0;->h:Lx8/q0;

    iget v0, p0, Lx8/p0;->i:I

    iget v1, p0, Lx8/p0;->j:I

    const-string v2, "this$0"

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 4
    invoke-virtual {p1}, Lx8/q0;->g()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 5
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    invoke-direct {v4, v5, v6, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v4, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 7
    invoke-virtual {p1}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget p2, p2, v1

    int-to-float v2, p2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_0

    .line 8
    invoke-virtual {p1}, Lx8/q0;->i()Lx8/w;

    move-result-object p1

    invoke-virtual {p1, v1}, Lx8/w;->f(Z)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float p2, v1

    cmpl-float p2, v3, p2

    if-lez p2, :cond_1

    .line 10
    invoke-virtual {p1}, Lx8/q0;->i()Lx8/w;

    move-result-object p1

    invoke-virtual {p1, v0}, Lx8/w;->f(Z)V

    :cond_1
    :goto_0
    return v0
.end method
