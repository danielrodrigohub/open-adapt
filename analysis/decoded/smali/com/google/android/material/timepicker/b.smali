.class public final Lcom/google/android/material/timepicker/b;
.super Lj0/a;
.source "ClockFaceView.java"


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/b;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Lj0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lk0/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj0/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lk0/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    sget v0, Lcom/google/android/material/R$id;->material_value_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 6
    iget-object v1, v1, Lcom/google/android/material/timepicker/ClockFaceView;->F:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, -0x1

    .line 7
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Lk0/f;->A(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2, v0, v2, p1}, Lk0/f$c;->a(IIIIZ)Lk0/f$c;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Lk0/f;->q(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p2, v2}, Lk0/f;->o(Z)V

    .line 12
    sget-object p1, Lk0/f$a;->e:Lk0/f$a;

    invoke-virtual {p2, p1}, Lk0/f;->b(Lk0/f$a;)V

    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 10

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr p1, v1

    .line 4
    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 5
    iget-object v9, v1, Lcom/google/android/material/timepicker/ClockFaceView;->C:Lcom/google/android/material/timepicker/ClockHandView;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, v0

    move v7, p1

    .line 6
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 7
    invoke-virtual {v9, v1}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    iget-object v1, p0, Lcom/google/android/material/timepicker/b;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 9
    iget-object v9, v1, Lcom/google/android/material/timepicker/ClockFaceView;->C:Lcom/google/android/material/timepicker/ClockHandView;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, v0

    move v7, p1

    .line 10
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 11
    invoke-virtual {v9, p1}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lj0/a;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
