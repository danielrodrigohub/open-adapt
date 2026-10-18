.class public final Lq6/p;
.super Landroid/widget/LinearLayout;
.source "StartCompoundLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public final h:Lcom/google/android/material/textfield/TextInputLayout;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public j:Ljava/lang/CharSequence;

.field public final k:Lcom/google/android/material/internal/CheckableImageButton;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/PorterDuff$Mode;

.field public n:Landroid/view/View$OnLongClickListener;

.field public o:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/f1;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lq6/p;->h:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const v4, 0x800003

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 7
    sget v4, Lcom/google/android/material/R$layout;->design_text_input_start_icon:I

    .line 8
    invoke-virtual {v1, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    .line 9
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 10
    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput-object v4, p0, Lq6/p;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lj6/c;->d(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    invoke-static {v5, v0}, Lj0/h;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 15
    :cond_0
    invoke-virtual {p0, v6}, Lq6/p;->c(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0, v6}, Lq6/p;->d(Landroid/view/View$OnLongClickListener;)V

    .line 17
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 19
    invoke-static {v7, p2, v5}, Lj6/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/f1;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lq6/p;->l:Landroid/content/res/ColorStateList;

    .line 20
    :cond_1
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 21
    invoke-virtual {p2, v5, v3}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v3

    .line 22
    invoke-static {v3, v6}, Lg6/s;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lq6/p;->m:Landroid/graphics/PorterDuff$Mode;

    .line 23
    :cond_2
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/f1;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lq6/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 25
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 26
    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 27
    invoke-virtual {p0, v3}, Lq6/p;->a(Ljava/lang/CharSequence;)V

    .line 28
    :cond_3
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconCheckable:I

    invoke-virtual {p2, v3, v7}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v3

    .line 29
    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 30
    :cond_4
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    sget p1, Lcom/google/android/material/R$id;->textinput_prefix_text:I

    invoke-virtual {v4, p1}, Landroid/view/View;->setId(I)V

    .line 32
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    sget-object p1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 34
    invoke-static {v4, v7}, Lj0/a0$g;->f(Landroid/view/View;I)V

    .line 35
    sget p1, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextAppearance:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result p1

    .line 36
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 37
    sget p1, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 39
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 40
    :cond_5
    sget p1, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixText:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    move-object v6, p1

    :goto_0
    iput-object v6, p0, Lq6/p;->j:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lq6/p;->g()V

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/q;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lq6/p;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lq6/p;->l:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lq6/p;->m:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0, v1, v2}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lq6/p;->e(Z)V

    .line 4
    iget-object p1, p0, Lq6/p;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lq6/p;->l:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0, v1}, Lq6/j;->c(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lq6/p;->e(Z)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lq6/p;->c(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0, p1}, Lq6/p;->d(Landroid/view/View$OnLongClickListener;)V

    .line 8
    invoke-virtual {p0, p1}, Lq6/p;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lq6/p;->n:Landroid/view/View$OnLongClickListener;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {v0, v1}, Lq6/j;->d(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final d(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lq6/p;->n:Landroid/view/View$OnLongClickListener;

    .line 2
    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    invoke-static {v0, p1}, Lq6/j;->d(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, p1, :cond_2

    .line 2
    iget-object v0, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lq6/p;->f()V

    .line 4
    invoke-virtual {p0}, Lq6/p;->g()V

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lq6/p;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {v0}, Lj0/a0$e;->f(Landroid/view/View;)I

    move-result v2

    .line 5
    :goto_1
    iget-object v1, p0, Lq6/p;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    .line 9
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 11
    sget-object v5, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {v1, v2, v3, v4, v0}, Lj0/a0$e;->k(Landroid/view/View;IIII)V

    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq6/p;->j:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lq6/p;->o:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    move v1, v2

    .line 4
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lq6/p;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lq6/p;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->v()Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Lq6/p;->f()V

    return-void
.end method
