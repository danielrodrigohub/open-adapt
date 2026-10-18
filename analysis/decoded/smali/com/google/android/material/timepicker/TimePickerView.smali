.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TimePickerView.java"


# static fields
.field public static final synthetic B:I


# instance fields
.field public final A:Lcom/google/android/material/timepicker/TimePickerView$a;

.field public final z:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$a;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->A:Lcom/google/android/material/timepicker/TimePickerView$a;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$layout;->material_timepicker:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget p1, Lcom/google/android/material/R$id;->material_clock_face:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    .line 5
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->z:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 6
    new-instance v0, Lcom/google/android/material/timepicker/d;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/d;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 7
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8
    sget p1, Lcom/google/android/material/R$id;->material_minute_tv:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 9
    sget v0, Lcom/google/android/material/R$id;->material_hour_tv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 10
    sget v1, Lcom/google/android/material/R$id;->material_clock_hand:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView;

    .line 11
    new-instance v1, Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/timepicker/e;

    invoke-direct {v3, p0}, Lcom/google/android/material/timepicker/e;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 13
    new-instance v2, Lcom/google/android/material/timepicker/f;

    invoke-direct {v2, v1}, Lcom/google/android/material/timepicker/f;-><init>(Landroid/view/GestureDetector;)V

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/16 v2, 0xa

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "android.view.View"

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->s()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->s()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->z:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {p0}, Lj0/a0$e;->d(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 6
    :cond_1
    sget v1, Lcom/google/android/material/R$id;->material_clock_display:I

    .line 7
    iget-object v4, v0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    iget-object v4, v0, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/d$a;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    packed-switch v2, :pswitch_data_0

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :pswitch_0
    iget-object v1, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/d$b;->B:F

    .line 11
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->A:I

    .line 12
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->z:I

    goto :goto_1

    .line 13
    :pswitch_1
    iget-object v1, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->u:I

    .line 14
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->v:I

    .line 15
    iput v3, v1, Landroidx/constraintlayout/widget/d$b;->J:I

    .line 16
    iput v4, v1, Landroidx/constraintlayout/widget/d$b;->Q:I

    goto :goto_1

    .line 17
    :pswitch_2
    iget-object v1, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->s:I

    .line 18
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->t:I

    .line 19
    iput v3, v1, Landroidx/constraintlayout/widget/d$b;->K:I

    .line 20
    iput v4, v1, Landroidx/constraintlayout/widget/d$b;->R:I

    goto :goto_1

    .line 21
    :pswitch_3
    iget-object v1, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->p:I

    .line 22
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->q:I

    .line 23
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->r:I

    .line 24
    iput v3, v1, Landroidx/constraintlayout/widget/d$b;->L:I

    .line 25
    iput v4, v1, Landroidx/constraintlayout/widget/d$b;->S:I

    goto :goto_1

    .line 26
    :pswitch_4
    iget-object v1, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->n:I

    .line 27
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->o:I

    .line 28
    iput v3, v1, Landroidx/constraintlayout/widget/d$b;->I:I

    .line 29
    iput v4, v1, Landroidx/constraintlayout/widget/d$b;->P:I

    goto :goto_1

    .line 30
    :pswitch_5
    iget-object v1, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->m:I

    .line 31
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->l:I

    .line 32
    iput v3, v1, Landroidx/constraintlayout/widget/d$b;->H:I

    .line 33
    iput v4, v1, Landroidx/constraintlayout/widget/d$b;->N:I

    goto :goto_1

    .line 34
    :pswitch_6
    iget-object v1, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->k:I

    .line 35
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->j:I

    .line 36
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->G:I

    .line 37
    iput v4, v1, Landroidx/constraintlayout/widget/d$b;->O:I

    goto :goto_1

    .line 38
    :pswitch_7
    iget-object v1, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$b;

    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->i:I

    .line 39
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->h:I

    .line 40
    iput v5, v1, Landroidx/constraintlayout/widget/d$b;->F:I

    .line 41
    iput v4, v1, Landroidx/constraintlayout/widget/d$b;->M:I

    .line 42
    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
