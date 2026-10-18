.class public final Lcom/google/android/material/datepicker/o;
.super Landroidx/fragment/app/l;
.source "MaterialDatePicker.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic M0:I


# instance fields
.field public A0:Ljava/lang/CharSequence;

.field public B0:Z

.field public C0:I

.field public D0:I

.field public E0:Ljava/lang/CharSequence;

.field public F0:I

.field public G0:Ljava/lang/CharSequence;

.field public H0:Landroid/widget/TextView;

.field public I0:Lcom/google/android/material/internal/CheckableImageButton;

.field public J0:Lm6/f;

.field public K0:Landroid/widget/Button;

.field public L0:Z

.field public final q0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/datepicker/r<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final r0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public final s0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field public final t0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field public u0:I

.field public v0:Lcom/google/android/material/datepicker/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public w0:Lcom/google/android/material/datepicker/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/y;"
        }
    .end annotation
.end field

.field public x0:Lcom/google/android/material/datepicker/a;

.field public y0:Lcom/google/android/material/datepicker/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/l;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->q0:Ljava/util/LinkedHashSet;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->r0:Ljava/util/LinkedHashSet;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->s0:Ljava/util/LinkedHashSet;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->t0:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static t0(Landroid/content/Context;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_content_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/google/android/material/datepicker/b0;->d()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 5
    invoke-static {v1}, Lcom/google/android/material/datepicker/b0;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    const/4 v5, 0x7

    .line 8
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v5

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 10
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 11
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 12
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_horizontal_padding:I

    .line 13
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/2addr v0, v4

    mul-int/2addr v1, v5

    add-int/2addr v1, v0

    sub-int/2addr v5, v3

    mul-int/2addr v5, p0

    add-int/2addr v5, v1

    return v5
.end method

.method public static u0(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x101020d

    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/o;->v0(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static v0(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/datepicker/g;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0, v0, v1}, Lj6/b;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method


# virtual methods
.method public final H(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MaterialDatePicker#onCreate"

    const-string v1, "MaterialDatePicker"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :catch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/l;->H(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/o;->u0:I

    const-string v0, "DATE_SELECTOR_KEY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/d;

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->v0:Lcom/google/android/material/datepicker/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->x0:Lcom/google/android/material/datepicker/a;

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/o;->z0:I

    const-string v0, "TITLE_TEXT_KEY"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->A0:Ljava/lang/CharSequence;

    const-string v0, "INPUT_MODE_KEY"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/o;->C0:I

    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/o;->D0:I

    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->E0:Ljava/lang/CharSequence;

    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/o;->F0:I

    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/o;->G0:Ljava/lang/CharSequence;

    .line 13
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "MaterialDatePicker#onCreateView"

    :catch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p3, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/o;->B0:Z

    if-eqz p3, :cond_0

    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_fullscreen:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_dialog:I

    .line 2
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 4
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/o;->B0:Z

    if-eqz p3, :cond_1

    .line 5
    sget p3, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    invoke-static {p2}, Lcom/google/android/material/datepicker/o;->t0(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 9
    :cond_1
    sget p3, Lcom/google/android/material/R$id;->mtrl_calendar_main_pane:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    invoke-static {p2}, Lcom/google/android/material/datepicker/o;->t0(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :goto_1
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_header_selection_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/material/datepicker/o;->H0:Landroid/widget/TextView;

    .line 14
    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    .line 15
    invoke-static {p3, v1}, Lj0/a0$g;->f(Landroid/view/View;I)V

    .line 16
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_header_toggle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p3, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_title_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 18
    iget-object v2, p0, Lcom/google/android/material/datepicker/o;->A0:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 20
    :cond_2
    iget v2, p0, Lcom/google/android/material/datepicker/o;->z0:I

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 21
    :goto_2
    iget-object p3, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    const-string v2, "TOGGLE_BUTTON_TAG"

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object p3, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 23
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v3, v1, [I

    const v4, 0x10100a0

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 24
    sget v4, Lcom/google/android/material/R$drawable;->material_ic_calendar_black_24dp:I

    .line 25
    invoke-static {p2, v4}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v5, [I

    .line 27
    sget v4, Lcom/google/android/material/R$drawable;->material_ic_edit_black_24dp:I

    .line 28
    invoke-static {p2, v4}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 29
    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p3, v2}, Landroidx/appcompat/widget/q;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    iget p3, p0, Lcom/google/android/material/datepicker/o;->C0:I

    if-eqz p3, :cond_3

    move p3, v1

    goto :goto_3

    :cond_3
    move p3, v5

    :goto_3
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 32
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p2, v0}, Lj0/a0;->p(Landroid/view/View;Lj0/a;)V

    .line 33
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/o;->y0(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 34
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance p3, Lcom/google/android/material/datepicker/q;

    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/q;-><init>(Lcom/google/android/material/datepicker/o;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    sget p2, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/google/android/material/datepicker/o;->K0:Landroid/widget/Button;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->s0()Lcom/google/android/material/datepicker/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/material/datepicker/d;->q()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 37
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->K0:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 38
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->K0:Landroid/widget/Button;

    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    :goto_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->K0:Landroid/widget/Button;

    const-string p3, "CONFIRM_BUTTON_TAG"

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->E0:Ljava/lang/CharSequence;

    if-eqz p2, :cond_5

    .line 41
    iget-object p3, p0, Lcom/google/android/material/datepicker/o;->K0:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 42
    :cond_5
    iget p2, p0, Lcom/google/android/material/datepicker/o;->D0:I

    if-eqz p2, :cond_6

    .line 43
    iget-object p3, p0, Lcom/google/android/material/datepicker/o;->K0:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->K0:Landroid/widget/Button;

    new-instance p3, Lcom/google/android/material/datepicker/o$a;

    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/o$a;-><init>(Lcom/google/android/material/datepicker/o;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget p2, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const-string p3, "CANCEL_BUTTON_TAG"

    .line 46
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p3, p0, Lcom/google/android/material/datepicker/o;->G0:Ljava/lang/CharSequence;

    if-eqz p3, :cond_7

    .line 48
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 49
    :cond_7
    iget p3, p0, Lcom/google/android/material/datepicker/o;->F0:I

    if-eqz p3, :cond_8

    .line 50
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 51
    :cond_8
    :goto_6
    new-instance p3, Lcom/google/android/material/datepicker/o$b;

    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/o$b;-><init>(Lcom/google/android/material/datepicker/o;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p1
.end method

.method public final R(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/l;->R(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lcom/google/android/material/datepicker/o;->u0:I

    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->v0:Lcom/google/android/material/datepicker/d;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    new-instance v0, Lcom/google/android/material/datepicker/a$b;

    iget-object v1, p0, Lcom/google/android/material/datepicker/o;->x0:Lcom/google/android/material/datepicker/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/a$b;-><init>(Lcom/google/android/material/datepicker/a;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/datepicker/o;->y0:Lcom/google/android/material/datepicker/g;

    .line 6
    iget-object v1, v1, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    if-eqz v1, :cond_0

    .line 7
    iget-wide v1, v1, Lcom/google/android/material/datepicker/t;->m:J

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/datepicker/a$b;->c:Ljava/lang/Long;

    .line 9
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v2, v0, Lcom/google/android/material/datepicker/a$b;->d:Lcom/google/android/material/datepicker/a$c;

    const-string v3, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    new-instance v2, Lcom/google/android/material/datepicker/a;

    iget-wide v4, v0, Lcom/google/android/material/datepicker/a$b;->a:J

    .line 12
    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/t;->o(J)Lcom/google/android/material/datepicker/t;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/material/datepicker/a$b;->b:J

    .line 13
    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/t;->o(J)Lcom/google/android/material/datepicker/t;

    move-result-object v5

    .line 14
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/a$c;

    .line 15
    iget-object v0, v0, Lcom/google/android/material/datepicker/a$b;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/material/datepicker/t;->o(J)Lcom/google/android/material/datepicker/t;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v4, v5, v1, v0}, Lcom/google/android/material/datepicker/a;-><init>(Lcom/google/android/material/datepicker/t;Lcom/google/android/material/datepicker/t;Lcom/google/android/material/datepicker/a$c;Lcom/google/android/material/datepicker/t;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 16
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    iget v0, p0, Lcom/google/android/material/datepicker/o;->z0:I

    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->A0:Ljava/lang/CharSequence;

    const-string v1, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 19
    iget v0, p0, Lcom/google/android/material/datepicker/o;->D0:I

    const-string v1, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->E0:Ljava/lang/CharSequence;

    const-string v1, "POSITIVE_BUTTON_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 21
    iget v0, p0, Lcom/google/android/material/datepicker/o;->F0:I

    const-string v1, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->G0:Ljava/lang/CharSequence;

    const-string v1, "NEGATIVE_BUTTON_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final S()V
    .locals 12

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/l;->S()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/l;->r0()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/o;->B0:Z

    if-eqz v1, :cond_d

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/datepicker/o;->J0:Lm6/f;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/o;->L0:Z

    if-eqz v1, :cond_0

    goto/16 :goto_9

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/m;->g0()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$id;->fullscreen_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 10
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v4

    :goto_2
    const/high16 v7, -0x1000000

    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1010031

    invoke-static {v8, v9, v7}, La6/a;->a(Landroid/content/Context;II)I

    move-result v8

    if-eqz v6, :cond_4

    .line 13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 14
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x1e

    if-lt v3, v8, :cond_5

    .line 15
    invoke-static {v0, v5}, Lj0/k0;->a(Landroid/view/Window;Z)V

    goto :goto_3

    .line 16
    :cond_5
    invoke-static {v0, v5}, Lj0/j0;->a(Landroid/view/Window;Z)V

    .line 17
    :goto_3
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1010452

    const/16 v11, 0x1b

    if-ge v3, v11, :cond_6

    .line 19
    invoke-static {v9, v10, v7}, La6/a;->a(Landroid/content/Context;II)I

    move-result v3

    const/16 v7, 0x80

    .line 20
    invoke-static {v3, v7}, La0/a;->e(II)I

    move-result v3

    goto :goto_4

    :cond_6
    move v3, v5

    .line 21
    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, La6/a;->c(I)Z

    move-result v2

    .line 24
    invoke-static {v5}, La6/a;->c(I)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v2, v5

    goto :goto_6

    :cond_8
    :goto_5
    move v2, v4

    .line 25
    :goto_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, La6/a;->c(I)Z

    move-result v6

    .line 26
    invoke-static {v3}, La6/a;->c(I)Z

    move-result v7

    if-nez v7, :cond_9

    if-nez v3, :cond_a

    if-eqz v6, :cond_a

    :cond_9
    move v5, v4

    .line 27
    :cond_a
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 28
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_b

    .line 29
    new-instance v3, Lj0/p0;

    invoke-direct {v3, v0}, Lj0/p0;-><init>(Landroid/view/Window;)V

    goto :goto_8

    :cond_b
    const/16 v7, 0x1a

    if-lt v6, v7, :cond_c

    .line 30
    new-instance v6, Lj0/o0;

    invoke-direct {v6, v0, v3}, Lj0/o0;-><init>(Landroid/view/Window;Landroid/view/View;)V

    goto :goto_7

    .line 31
    :cond_c
    new-instance v6, Lj0/n0;

    invoke-direct {v6, v0, v3}, Lj0/n0;-><init>(Landroid/view/Window;Landroid/view/View;)V

    :goto_7
    move-object v3, v6

    .line 32
    :goto_8
    invoke-virtual {v3, v2}, Lj0/q0;->b(Z)V

    .line 33
    invoke-virtual {v3, v5}, Lj0/q0;->a(Z)V

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    new-instance v3, Lcom/google/android/material/datepicker/p;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/material/datepicker/p;-><init>(ILandroid/view/View;I)V

    sget-object v0, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 37
    invoke-static {v1, v3}, Lj0/a0$i;->u(Landroid/view/View;Lj0/q;)V

    .line 38
    iput-boolean v4, p0, Lcom/google/android/material/datepicker/o;->L0:Z

    goto :goto_9

    :cond_d
    const/4 v1, -0x2

    .line 39
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/m;->w()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_dialog_background_inset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lcom/google/android/material/datepicker/o;->J0:Lm6/f;

    move-object v3, v2

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lb6/a;

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/l;->r0()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lb6/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->w0()V

    return-void
.end method

.method public final T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->w0:Lcom/google/android/material/datepicker/y;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/datepicker/y;->a0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->s0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 2
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->t0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 2
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/l;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final q0()Landroid/app/Dialog;
    .locals 7

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    .line 2
    iget v2, p0, Lcom/google/android/material/datepicker/o;->u0:I

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->s0()Lcom/google/android/material/datepicker/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/material/datepicker/d;->k()I

    move-result v2

    .line 4
    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/google/android/material/datepicker/o;->u0(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/datepicker/o;->B0:Z

    .line 7
    sget v2, Lcom/google/android/material/R$attr;->colorSurface:I

    const-class v3, Lcom/google/android/material/datepicker/o;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v1, v2, v3}, Lj6/b;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 10
    new-instance v3, Lm6/f;

    const/4 v4, 0x0

    sget v5, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    sget v6, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialCalendar:I

    invoke-direct {v3, v1, v4, v5, v6}, Lm6/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/google/android/material/datepicker/o;->J0:Lm6/f;

    .line 11
    invoke-virtual {v3, v1}, Lm6/f;->m(Landroid/content/Context;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/material/datepicker/o;->J0:Lm6/f;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm6/f;->o(Landroid/content/res/ColorStateList;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/material/datepicker/o;->J0:Lm6/f;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-static {v2}, Lj0/a0$i;->i(Landroid/view/View;)F

    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Lm6/f;->n(F)V

    return-object v0
.end method

.method public final s0()Lcom/google/android/material/datepicker/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->v0:Lcom/google/android/material/datepicker/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    const-string v1, "DATE_SELECTOR_KEY"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/d;

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->v0:Lcom/google/android/material/datepicker/d;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->v0:Lcom/google/android/material/datepicker/d;

    return-object v0
.end method

.method public final w0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    .line 2
    iget v0, p0, Lcom/google/android/material/datepicker/o;->u0:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->s0()Lcom/google/android/material/datepicker/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/material/datepicker/d;->k()I

    move-result v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->s0()Lcom/google/android/material/datepicker/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/o;->x0:Lcom/google/android/material/datepicker/a;

    .line 5
    new-instance v3, Lcom/google/android/material/datepicker/g;

    invoke-direct {v3}, Lcom/google/android/material/datepicker/g;-><init>()V

    .line 6
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "THEME_RES_ID_KEY"

    .line 7
    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "GRID_SELECTOR_KEY"

    .line 8
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    .line 9
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    iget-object v2, v2, Lcom/google/android/material/datepicker/a;->k:Lcom/google/android/material/datepicker/t;

    const-string v6, "CURRENT_MONTH_KEY"

    .line 11
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    invoke-virtual {v3, v4}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 13
    iput-object v3, p0, Lcom/google/android/material/datepicker/o;->y0:Lcom/google/android/material/datepicker/g;

    .line 14
    iget-object v2, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->s0()Lcom/google/android/material/datepicker/d;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/datepicker/o;->x0:Lcom/google/android/material/datepicker/a;

    .line 16
    new-instance v4, Lcom/google/android/material/datepicker/s;

    invoke-direct {v4}, Lcom/google/android/material/datepicker/s;-><init>()V

    .line 17
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-virtual {v6, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DATE_SELECTOR_KEY"

    .line 19
    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    invoke-virtual {v4, v6}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/datepicker/o;->y0:Lcom/google/android/material/datepicker/g;

    :goto_1
    iput-object v4, p0, Lcom/google/android/material/datepicker/o;->w0:Lcom/google/android/material/datepicker/y;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->x0()V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/m;->k()Landroidx/fragment/app/x;

    move-result-object v0

    .line 25
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 26
    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    iget-object v2, p0, Lcom/google/android/material/datepicker/o;->w0:Lcom/google/android/material/datepicker/y;

    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/a;->c()V

    .line 29
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->w0:Lcom/google/android/material/datepicker/y;

    new-instance v1, Lcom/google/android/material/datepicker/o$c;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/o$c;-><init>(Lcom/google/android/material/datepicker/o;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/y;->p0(Lcom/google/android/material/datepicker/x;)Z

    return-void
.end method

.method public final x0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->s0()Lcom/google/android/material/datepicker/d;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/d;->j()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/datepicker/o;->H0:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection:I

    .line 3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/m;->z(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/datepicker/o;->H0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final y0(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_calendar_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_text_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->I0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
