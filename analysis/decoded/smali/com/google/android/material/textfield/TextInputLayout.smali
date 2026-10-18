.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$e;,
        Lcom/google/android/material/textfield/TextInputLayout$h;,
        Lcom/google/android/material/textfield/TextInputLayout$g;,
        Lcom/google/android/material/textfield/TextInputLayout$f;
    }
.end annotation


# static fields
.field public static final P0:I


# instance fields
.field public A:Landroidx/appcompat/widget/AppCompatTextView;

.field public A0:I

.field public B:Landroid/content/res/ColorStateList;

.field public B0:I

.field public C:I

.field public C0:Landroid/content/res/ColorStateList;

.field public D:Landroidx/transition/b;

.field public D0:I

.field public E:Landroidx/transition/b;

.field public E0:I

.field public F:Landroid/content/res/ColorStateList;

.field public F0:I

.field public G:Landroid/content/res/ColorStateList;

.field public G0:I

.field public H:Ljava/lang/CharSequence;

.field public H0:I

.field public final I:Landroidx/appcompat/widget/AppCompatTextView;

.field public I0:Z

.field public J:Z

.field public final J0:Lg6/e;

.field public K:Ljava/lang/CharSequence;

.field public K0:Z

.field public L:Z

.field public L0:Z

.field public M:Lm6/f;

.field public M0:Landroid/animation/ValueAnimator;

.field public N:Lm6/f;

.field public N0:Z

.field public O:Lm6/f;

.field public O0:Z

.field public P:Lm6/i;

.field public Q:Z

.field public final R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a0:I

.field public b0:I

.field public final c0:Landroid/graphics/Rect;

.field public final d0:Landroid/graphics/Rect;

.field public final e0:Landroid/graphics/RectF;

.field public f0:Landroid/graphics/Typeface;

.field public g0:Landroid/graphics/drawable/ColorDrawable;

.field public final h:Landroid/widget/FrameLayout;

.field public h0:I

.field public final i:Lq6/p;

.field public final i0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Landroid/widget/LinearLayout;

.field public j0:I

.field public final k:Landroid/widget/FrameLayout;

.field public final k0:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lq6/i;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroid/widget/EditText;

.field public final l0:Lcom/google/android/material/internal/CheckableImageButton;

.field public m:Ljava/lang/CharSequence;

.field public final m0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public n0:Landroid/content/res/ColorStateList;

.field public o:I

.field public o0:Landroid/graphics/PorterDuff$Mode;

.field public p:I

.field public p0:Landroid/graphics/drawable/ColorDrawable;

.field public q:I

.field public q0:I

.field public final r:Lq6/k;

.field public r0:Landroid/graphics/drawable/Drawable;

.field public s:Z

.field public s0:Landroid/view/View$OnLongClickListener;

.field public t:I

.field public t0:Landroid/view/View$OnLongClickListener;

.field public u:Z

.field public final u0:Lcom/google/android/material/internal/CheckableImageButton;

.field public v:Landroidx/appcompat/widget/AppCompatTextView;

.field public v0:Landroid/content/res/ColorStateList;

.field public w:I

.field public w0:Landroid/graphics/PorterDuff$Mode;

.field public x:I

.field public x0:Landroid/content/res/ColorStateList;

.field public y:Ljava/lang/CharSequence;

.field public y0:Landroid/content/res/ColorStateList;

.field public z:Z

.field public z0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_TextInputLayout:I

    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->P0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 1
    sget v8, Lcom/google/android/material/R$attr;->textInputStyle:I

    .line 2
    sget v9, Lcom/google/android/material/textfield/TextInputLayout;->P0:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lr6/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v10, -0x1

    .line 3
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    .line 4
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    .line 5
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 6
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 7
    new-instance v1, Lq6/k;

    invoke-direct {v1, v0}, Lq6/k;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/Rect;

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/graphics/Rect;

    .line 10
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    .line 11
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Ljava/util/LinkedHashSet;

    const/4 v11, 0x0

    .line 12
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    .line 13
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/util/SparseArray;

    .line 14
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Ljava/util/LinkedHashSet;

    .line 15
    new-instance v1, Lg6/e;

    invoke-direct {v1, v0}, Lg6/e;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    .line 17
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    invoke-virtual {v0, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 19
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 20
    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    .line 21
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/FrameLayout;

    .line 22
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/LinearLayout;

    .line 23
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    .line 24
    invoke-direct {v4, v13, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x8

    .line 26
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 30
    sget v3, Lcom/google/android/material/R$layout;->design_text_input_end_icon:I

    .line 31
    invoke-virtual {v2, v3, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 32
    invoke-virtual {v2, v3, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 33
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 34
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v14, 0x800005

    const/4 v11, -0x2

    move-object/from16 v17, v3

    const/4 v3, -0x1

    invoke-direct {v2, v11, v3, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    sget-object v2, Lp5/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 38
    iput-object v2, v1, Lg6/e;->O:Landroid/animation/TimeInterpolator;

    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v3}, Lg6/e;->k(Z)V

    .line 40
    iput-object v2, v1, Lg6/e;->N:Landroid/animation/TimeInterpolator;

    .line 41
    invoke-virtual {v1, v3}, Lg6/e;->k(Z)V

    const v2, 0x800033

    .line 42
    invoke-virtual {v1, v2}, Lg6/e;->m(I)V

    .line 43
    sget-object v14, Lcom/google/android/material/R$styleable;->TextInputLayout:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    aput v1, v2, v3

    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    const/16 v16, 0x1

    aput v3, v2, v16

    sget v11, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    move-object/from16 v18, v15

    const/4 v15, 0x2

    aput v11, v2, v15

    sget v15, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    move-object/from16 v19, v12

    const/4 v12, 0x3

    aput v15, v2, v12

    const/16 v20, 0x4

    sget v12, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    aput v12, v2, v20

    .line 44
    invoke-static {v13, v7, v8, v9}, Lg6/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move/from16 v21, v1

    move-object v1, v13

    move-object/from16 v20, v2

    move-object/from16 v2, p2

    move/from16 v23, v3

    move/from16 p1, v15

    move-object/from16 v22, v17

    const/4 v15, 0x0

    move-object v3, v14

    move-object/from16 v24, v4

    move v4, v8

    move-object/from16 v25, v5

    move v5, v9

    move-object/from16 v26, v6

    move-object/from16 v6, v20

    .line 45
    invoke-static/range {v1 .. v6}, Lg6/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 46
    new-instance v1, Landroidx/appcompat/widget/f1;

    .line 47
    invoke-virtual {v13, v7, v14, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v1, v13, v2}, Landroidx/appcompat/widget/f1;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 48
    new-instance v2, Lq6/p;

    invoke-direct {v2, v0, v1}, Lq6/p;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/f1;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 49
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintEnabled:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 50
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 51
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z

    .line 52
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_expandedHintEnabled:I

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Z

    .line 53
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minEms:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    .line 54
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 55
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minWidth:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->f(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 57
    :cond_1
    :goto_0
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxEms:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    goto :goto_1

    .line 59
    :cond_2
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxWidth:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 60
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->f(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 61
    :cond_3
    :goto_1
    invoke-static {v13, v7, v8, v9}, Lm6/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lm6/i$a;

    move-result-object v3

    .line 62
    new-instance v4, Lm6/i;

    invoke-direct {v4, v3}, Lm6/i;-><init>(Lm6/i$a;)V

    .line 63
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 64
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 65
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 66
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->e(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 68
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeWidth:I

    .line 69
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 70
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 71
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->f(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 72
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeWidthFocused:I

    .line 73
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 74
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 75
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->f(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 76
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 77
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopStart:I

    .line 78
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->d(I)F

    move-result v3

    .line 79
    sget v4, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopEnd:I

    .line 80
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/f1;->d(I)F

    move-result v4

    .line 81
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomEnd:I

    .line 82
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/f1;->d(I)F

    move-result v5

    .line 83
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomStart:I

    .line 84
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/f1;->d(I)F

    move-result v6

    .line 85
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v8, Lm6/i$a;

    invoke-direct {v8, v7}, Lm6/i$a;-><init>(Lm6/i;)V

    const/4 v7, 0x0

    cmpl-float v9, v3, v7

    if-ltz v9, :cond_4

    .line 87
    invoke-virtual {v8, v3}, Lm6/i$a;->e(F)Lm6/i$a;

    :cond_4
    cmpl-float v3, v4, v7

    if-ltz v3, :cond_5

    .line 88
    invoke-virtual {v8, v4}, Lm6/i$a;->f(F)Lm6/i$a;

    :cond_5
    cmpl-float v3, v5, v7

    if-ltz v3, :cond_6

    .line 89
    invoke-virtual {v8, v5}, Lm6/i$a;->d(F)Lm6/i$a;

    :cond_6
    cmpl-float v3, v6, v7

    if-ltz v3, :cond_7

    .line 90
    invoke-virtual {v8, v6}, Lm6/i$a;->c(F)Lm6/i$a;

    .line 91
    :cond_7
    new-instance v3, Lm6/i;

    invoke-direct {v3, v8}, Lm6/i;-><init>(Lm6/i$a;)V

    .line 92
    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 93
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundColor:I

    .line 94
    invoke-static {v13, v1, v3}, Lj6/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/f1;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 95
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    .line 96
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    .line 97
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    const v5, -0x101009e

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    new-array v6, v4, [I

    const/4 v4, 0x0

    aput v5, v6, v4

    const/4 v4, -0x1

    .line 98
    invoke-virtual {v3, v6, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 99
    fill-array-data v6, :array_0

    .line 100
    invoke-virtual {v3, v6, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    new-array v6, v5, [I

    .line 101
    fill-array-data v6, :array_1

    .line 102
    invoke-virtual {v3, v6, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    goto :goto_2

    :cond_8
    const/4 v4, -0x1

    .line 103
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    .line 104
    sget v3, Lcom/google/android/material/R$color;->mtrl_filled_background_color:I

    .line 105
    invoke-static {v13, v3}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v5, v7, v8

    .line 106
    invoke-virtual {v3, v7, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    new-array v5, v6, [I

    const v6, 0x1010367

    aput v6, v5, v8

    .line 107
    invoke-virtual {v3, v5, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    .line 108
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    .line 109
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    .line 110
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    .line 111
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    .line 112
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    .line 113
    :goto_2
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 114
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/content/res/ColorStateList;

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    .line 115
    :cond_a
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    .line 116
    invoke-static {v13, v1, v3}, Lj6/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/f1;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 117
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->b(I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    .line 118
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 119
    sget-object v5, Ly/a;->a:Ljava/lang/Object;

    .line 120
    invoke-static {v13, v3}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v3

    .line 121
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    .line 122
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_disabled_color:I

    .line 123
    invoke-static {v13, v3}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v3

    .line 124
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 125
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 126
    invoke-static {v13, v3}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v3

    .line 127
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->A0:I

    if-eqz v4, :cond_b

    .line 128
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 129
    :cond_b
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeErrorColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 130
    invoke-static {v13, v1, v3}, Lj6/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/f1;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 131
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    :cond_c
    const/4 v3, -0x1

    .line 132
    invoke-virtual {v1, v12, v3}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v4

    if-eq v4, v3, :cond_d

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v1, v12, v3}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    .line 134
    :goto_3
    invoke-virtual {v1, v11, v3}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v4

    .line 135
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_errorContentDescription:I

    .line 136
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 137
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {v1, v6, v3}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v6

    .line 138
    sget v7, Lcom/google/android/material/R$id;->text_input_error_icon:I

    invoke-virtual {v10, v7}, Landroid/view/View;->setId(I)V

    .line 139
    invoke-static {v13}, Lj6/c;->d(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 140
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 141
    invoke-static {v7, v3}, Lj0/h;->h(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 142
    :cond_e
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 143
    invoke-static {v13, v1, v3}, Lj6/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/f1;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    .line 144
    :cond_f
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTintMode:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, -0x1

    .line 145
    invoke-virtual {v1, v3, v7}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v3

    .line 146
    invoke-static {v3, v15}, Lg6/s;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/PorterDuff$Mode;

    .line 147
    :cond_10
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 148
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/google/android/material/R$string;->error_icon_content_description:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 150
    invoke-virtual {v10, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    sget-object v3, Lj0/a0;->a:Ljava/util/WeakHashMap;

    const/4 v3, 0x2

    .line 152
    invoke-static {v10, v3}, Lj0/a0$d;->s(Landroid/view/View;I)V

    const/4 v3, 0x0

    .line 153
    invoke-virtual {v10, v3}, Landroid/view/View;->setClickable(Z)V

    .line 154
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 155
    invoke-virtual {v10, v3}, Landroid/view/View;->setFocusable(Z)V

    move/from16 v7, p1

    .line 156
    invoke-virtual {v1, v7, v3}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v7

    .line 157
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextEnabled:I

    .line 158
    invoke-virtual {v1, v8, v3}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v8

    .line 159
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 160
    sget v11, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextAppearance:I

    .line 161
    invoke-virtual {v1, v11, v3}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v11

    .line 162
    sget v12, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderText:I

    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 163
    sget v14, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextAppearance:I

    .line 164
    invoke-virtual {v1, v14, v3}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v14

    .line 165
    sget v15, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixText:I

    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 p2, v15

    .line 166
    sget v15, Lcom/google/android/material/R$styleable;->TextInputLayout_counterEnabled:I

    invoke-virtual {v1, v15, v3}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v15

    .line 167
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterMaxLength:I

    move-object/from16 v17, v9

    const/4 v9, -0x1

    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    move/from16 v3, v21

    const/4 v9, 0x0

    .line 168
    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    move/from16 v3, v23

    .line 169
    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 170
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundMode:I

    .line 171
    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v3

    .line 172
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 173
    invoke-static {v13}, Lj6/c;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 174
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 175
    invoke-static {v3, v9}, Lj0/h;->h(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 176
    :cond_12
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v3

    .line 177
    new-instance v9, Lq6/d;

    invoke-direct {v9, v0, v3}, Lq6/d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    move/from16 v20, v15

    move-object/from16 v15, v19

    move/from16 v19, v6

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 178
    new-instance v6, Lq6/o;

    invoke-direct {v6, v0}, Lq6/o;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v9, 0x0

    invoke-virtual {v15, v9, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 179
    new-instance v6, Lcom/google/android/material/textfield/c;

    if-nez v3, :cond_13

    move/from16 v21, v8

    .line 180
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v1, v8, v9}, Landroidx/appcompat/widget/f1;->l(II)I

    move-result v8

    goto :goto_4

    :cond_13
    move/from16 v21, v8

    move v8, v3

    .line 181
    :goto_4
    invoke-direct {v6, v0, v8}, Lcom/google/android/material/textfield/c;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v8, 0x1

    .line 182
    invoke-virtual {v15, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 183
    new-instance v6, Lcom/google/android/material/textfield/a;

    invoke-direct {v6, v0, v3}, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v8, 0x2

    invoke-virtual {v15, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 184
    new-instance v6, Lcom/google/android/material/textfield/b;

    invoke-direct {v6, v0, v3}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v3, 0x3

    invoke-virtual {v15, v3, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 185
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v6

    if-nez v6, :cond_15

    .line 186
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTint:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 187
    invoke-static {v13, v1, v6}, Lj6/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/f1;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 188
    :cond_14
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTintMode:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v8, -0x1

    .line 189
    invoke-virtual {v1, v6, v8}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v6

    const/4 v8, 0x0

    .line 190
    invoke-static {v6, v8}, Lg6/s;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    .line 191
    :cond_15
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconMode:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x0

    .line 192
    invoke-virtual {v1, v6, v8}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 193
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconContentDescription:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 194
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 195
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    :cond_16
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconCheckable:I

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    goto :goto_5

    .line 197
    :cond_17
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 198
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 199
    invoke-static {v13, v1, v6}, Lj6/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/f1;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 200
    :cond_18
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v8, -0x1

    .line 201
    invoke-virtual {v1, v6, v8}, Landroidx/appcompat/widget/f1;->j(II)I

    move-result v6

    const/4 v8, 0x0

    .line 202
    invoke-static {v6, v8}, Lg6/s;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    :cond_19
    const/4 v6, 0x0

    .line 203
    invoke-virtual {v1, v3, v6}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v3

    .line 204
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 205
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 206
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->n(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 207
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 208
    :cond_1a
    :goto_5
    sget v3, Lcom/google/android/material/R$id;->textinput_suffix_text:I

    move-object/from16 v6, v24

    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    .line 209
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x50

    const/4 v9, -0x2

    invoke-direct {v3, v9, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 210
    invoke-static {v6, v3}, Lj0/a0$g;->f(Landroid/view/View;I)V

    .line 211
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    .line 213
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 214
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 215
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    .line 216
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 218
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextAppearance(I)V

    .line 219
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 220
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_1b
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 222
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 223
    :cond_1c
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 224
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 225
    :cond_1d
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 226
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 227
    :cond_1e
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 228
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 229
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 230
    :cond_1f
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 231
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 232
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 233
    :cond_20
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->o(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 234
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/f1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextColor(Landroid/content/res/ColorStateList;)V

    .line 235
    :cond_21
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_android_enabled:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/f1;->a(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 236
    invoke-virtual {v1}, Landroidx/appcompat/widget/f1;->r()V

    const/4 v1, 0x2

    .line 237
    invoke-static {v0, v1}, Lj0/a0$d;->s(Landroid/view/View;I)V

    .line 238
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_22

    if-lt v1, v3, :cond_22

    .line 239
    invoke-static {v0, v4}, Lj0/a0$l;->l(Landroid/view/View;I)V

    :cond_22
    move-object/from16 v3, v22

    move-object/from16 v1, v26

    .line 240
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v3, v25

    .line 241
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v18

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v1, v21

    .line 247
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    move/from16 v1, v19

    .line 248
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    move/from16 v1, v20

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    move-object/from16 v1, v17

    .line 250
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    move-object/from16 v1, p2

    .line 251
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method private getEndIconDelegate()Lq6/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6/i;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6/i;

    :goto_0
    return-object v0
.end method

.method private getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static o(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->o(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 1
    sget-object v0, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Lj0/a0$c;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    .line 3
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    .line 7
    :goto_1
    invoke-static {p0, v2}, Lj0/a0$d;->s(Landroid/view/View;I)V

    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-nez v0, :cond_c

    .line 2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 8
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    if-eq v0, v1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 12
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$e;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg6/e;->q(Landroid/graphics/Typeface;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 15
    iget v2, v0, Lg6/e;->i:F

    cmpl-float v2, v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 16
    iput v1, v0, Lg6/e;->i:F

    .line 17
    invoke-virtual {v0, v3}, Lg6/e;->k(Z)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result v1

    .line 19
    iget v2, v0, Lg6/e;->U:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    .line 20
    iput v1, v0, Lg6/e;->U:F

    .line 21
    invoke-virtual {v0, v3}, Lg6/e;->k(Z)V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lg6/e;->m(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 25
    iget v2, v1, Lg6/e;->g:I

    if-eq v2, v0, :cond_5

    .line 26
    iput v0, v1, Lg6/e;->g:I

    .line 27
    invoke-virtual {v1, v3}, Lg6/e;->k(Z)V

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_6

    .line 30
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    .line 31
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 36
    :cond_7
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->t(I)V

    .line 39
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    .line 40
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v0}, Lq6/k;->b()V

    .line 41
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 42
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 43
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 44
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 45
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout$f;

    .line 46
    invoke-interface {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout$f;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_2

    .line 47
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 49
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 50
    :cond_b
    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/textfield/TextInputLayout;->A(ZZ)V

    return-void

    .line 51
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "We already have an EditText, can only have one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, v0, Lg6/e;->A:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_0
    iput-object p1, v0, Lg6/e;->A:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Lg6/e;->B:Ljava/lang/CharSequence;

    .line 7
    iget-object v1, v0, Lg6/e;->D:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    iput-object p1, v0, Lg6/e;->D:Landroid/graphics/Bitmap;

    :cond_1
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Lg6/e;->k(Z)V

    .line 11
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-nez p1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()V

    :cond_3
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    return-void
.end method


# virtual methods
.method public final A(ZZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 4
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v5}, Lq6/k;->e()Z

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    .line 6
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v7, v6}, Lg6/e;->l(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    .line 8
    iget-object v8, v6, Lg6/e;->k:Landroid/content/res/ColorStateList;

    if-eq v8, v7, :cond_2

    .line 9
    iput-object v7, v6, Lg6/e;->k:Landroid/content/res/ColorStateList;

    .line 10
    invoke-virtual {v6, v3}, Lg6/e;->k(Z)V

    :cond_2
    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    new-array v5, v2, [I

    const v6, -0x101009e

    aput v6, v5, v3

    .line 12
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    .line 13
    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 14
    :goto_2
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg6/e;->l(Landroid/content/res/ColorStateList;)V

    .line 15
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 16
    iget-object v6, v5, Lg6/e;->k:Landroid/content/res/ColorStateList;

    if-eq v6, v0, :cond_8

    .line 17
    iput-object v0, v5, Lg6/e;->k:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {v5, v3}, Lg6/e;->k(Z)V

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_6

    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 20
    iget-object v5, v5, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 21
    :goto_3
    invoke-virtual {v0, v5}, Lg6/e;->l(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 22
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_7

    .line 23
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v5, v0}, Lg6/e;->l(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    .line 24
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    .line 25
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v5, v0}, Lg6/e;->l(Landroid/content/res/ColorStateList;)V

    :cond_8
    :goto_4
    if-nez v1, :cond_e

    .line 26
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    if-nez p2, :cond_a

    .line 27
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-nez p2, :cond_14

    .line 28
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 29
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    const/4 p2, 0x0

    if-eqz p1, :cond_c

    .line 30
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z

    if-eqz p1, :cond_c

    .line 31
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->c(F)V

    goto :goto_5

    .line 32
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {p1, p2}, Lg6/e;->o(F)V

    .line 33
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    check-cast p1, Lq6/e;

    .line 34
    iget-object p1, p1, Lq6/e;->G:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_d

    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 36
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    check-cast p1, Lq6/e;

    .line 37
    invoke-virtual {p1, p2, p2, p2, p2}, Lq6/e;->x(FFFF)V

    .line 38
    :cond_d
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 40
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 41
    iput-boolean v2, p1, Lq6/p;->o:Z

    .line 42
    invoke-virtual {p1}, Lq6/p;->g()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()V

    goto :goto_9

    :cond_e
    :goto_6
    if-nez p2, :cond_f

    .line 44
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-eqz p2, :cond_14

    .line 45
    :cond_f
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 46
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_11

    .line 47
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z

    if-eqz p1, :cond_11

    .line 48
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->c(F)V

    goto :goto_7

    .line 49
    :cond_11
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {p1, p2}, Lg6/e;->o(F)V

    .line 50
    :goto_7
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    .line 51
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()V

    .line 53
    :cond_12
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-nez p1, :cond_13

    move p1, v3

    goto :goto_8

    :cond_13
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->B(I)V

    .line 54
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 55
    iput-boolean v3, p1, Lq6/p;->o:Z

    .line 56
    invoke-virtual {p1}, Lq6/p;->g()V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()V

    :cond_14
    :goto_9
    return-void
.end method

.method public final B(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroidx/transition/b;

    invoke-static {p1, v0}, Landroidx/transition/h;->a(Landroid/view/ViewGroup;Landroidx/transition/f;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final C(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 3
    invoke-virtual {v1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 4
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 5
    invoke-virtual {v3, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eqz p1, :cond_0

    .line 6
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    goto :goto_0

    .line 8
    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x10102fe
        0x101009e
    .end array-data
.end method

.method public final D()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {v0}, Lj0/a0$e;->e(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 10
    sget-object v5, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {v1, v2, v3, v0, v4}, Lj0/a0$e;->k(Landroid/view/View;IIII)V

    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    if-eq v0, v1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lq6/i;

    move-result-object v0

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lq6/i;->c(Z)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()Z

    return-void
.end method

.method public final F()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 4
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 5
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    goto :goto_2

    .line 6
    :cond_5
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v3}, Lq6/k;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_6

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->C(ZZ)V

    goto :goto_2

    .line 9
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v3}, Lq6/k;->g()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    goto :goto_2

    .line 10
    :cond_7
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_9

    .line 11
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_8

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->C(ZZ)V

    goto :goto_2

    .line 13
    :cond_8
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_a

    .line 14
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    .line 15
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    goto :goto_2

    .line 16
    :cond_b
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 17
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    .line 18
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v3, v4}, Lq6/j;->c(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 19
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 20
    iget-object v4, v3, Lq6/p;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v5, v3, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v3, v3, Lq6/p;->l:Landroid/content/res/ColorStateList;

    invoke-static {v4, v5, v3}, Lq6/j;->c(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 22
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lq6/i;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    instance-of v3, v3, Lcom/google/android/material/textfield/b;

    if-eqz v3, :cond_d

    .line 24
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v3}, Lq6/k;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 28
    invoke-virtual {v4}, Lq6/k;->g()I

    move-result v4

    .line 29
    invoke-static {v3, v4}, Lb0/a$b;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 30
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/q;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 31
    :cond_c
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v3, v4, v5}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 32
    :cond_d
    :goto_3
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 33
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    if-eqz v0, :cond_e

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 35
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_4

    .line 36
    :cond_e
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 37
    :goto_4
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    if-eq v4, v3, :cond_10

    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-nez v3, :cond_10

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 40
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    check-cast v3, Lq6/e;

    const/4 v4, 0x0

    .line 41
    invoke-virtual {v3, v4, v4, v4, v4}, Lq6/e;->x(FFFF)V

    .line 42
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()V

    .line 43
    :cond_10
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-ne v3, v2, :cond_14

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 45
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    goto :goto_5

    :cond_11
    if-eqz v1, :cond_12

    if-nez v0, :cond_12

    .line 46
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    goto :goto_5

    :cond_12
    if-eqz v0, :cond_13

    .line 47
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    goto :goto_5

    .line 48
    :cond_13
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    .line 49
    :cond_14
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()V

    :cond_15
    :goto_6
    return-void
.end method

.method public final a(Lcom/google/android/material/textfield/TextInputLayout$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$f;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 7
    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final b(Lcom/google/android/material/textfield/TextInputLayout$g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 2
    iget v0, v0, Lg6/e;->c:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    .line 5
    sget-object v1, Lp5/a;->b:Lt0/b;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$d;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 9
    iget v3, v3, Lg6/e;->c:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 10
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lm6/f;->h:Lm6/f$b;

    iget-object v1, v1, Lm6/f$b;->a:Lm6/i;

    .line 3
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_3

    .line 4
    invoke-virtual {v0, v2}, Lm6/f;->setShapeAppearanceModel(Lm6/i;)V

    .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-ne v0, v4, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/b;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-nez v2, :cond_3

    .line 9
    iget-object v2, v0, Lq6/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/b;->i(Landroid/widget/AutoCompleteTextView;)V

    .line 13
    :cond_3
    :goto_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    const/4 v1, -0x1

    if-ne v0, v4, :cond_5

    .line 14
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    if-eqz v0, :cond_4

    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    invoke-virtual {v0, v2, v4}, Lm6/f;->q(FI)V

    .line 16
    :cond_6
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    .line 17
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-ne v2, v6, :cond_7

    .line 18
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v5}, La6/a;->a(Landroid/content/Context;II)I

    move-result v0

    .line 20
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    .line 21
    invoke-static {v2, v0}, La0/a;->b(II)I

    move-result v0

    .line 22
    :cond_7
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    .line 23
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lm6/f;->o(Landroid/content/res/ColorStateList;)V

    .line 24
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    if-ne v0, v3, :cond_8

    .line 25
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lm6/f;

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    if-nez v2, :cond_9

    goto :goto_5

    .line 27
    :cond_9
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    if-le v2, v1, :cond_a

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    if-eqz v1, :cond_a

    move v5, v6

    :cond_a
    if-eqz v5, :cond_c

    .line 28
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 29
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_4

    .line 30
    :cond_b
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 31
    :goto_4
    invoke-virtual {v0, v1}, Lm6/f;->o(Landroid/content/res/ColorStateList;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm6/f;->o(Landroid/content/res/ColorStateList;)V

    .line 33
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 34
    :cond_d
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 5
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 10
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 12
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 13
    throw p1

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 20
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 22
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-ne v0, v3, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 5
    iget-object v2, v0, Lg6/e;->B:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lg6/e;->b:Z

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, v0, Lg6/e;->L:Landroid/text/TextPaint;

    iget v3, v0, Lg6/e;->F:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget v2, v0, Lg6/e;->q:F

    .line 8
    iget v3, v0, Lg6/e;->r:F

    .line 9
    iget v4, v0, Lg6/e;->E:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 11
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    iget-object v0, v0, Lg6/e;->W:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lm6/f;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0, p1}, Lm6/f;->draw(Landroid/graphics/Canvas;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lm6/f;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 20
    iget v2, v2, Lg6/e;->c:F

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 22
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 23
    invoke-static {v3, v4, v2}, Lp5/a;->b(IIF)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 24
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 25
    invoke-static {v3, v1, v2}, Lp5/a;->b(IIF)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 26
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    invoke-virtual {v0, p1}, Lm6/f;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N0:Z

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 6
    iput-object v1, v2, Lg6/e;->J:[I

    .line 7
    iget-object v1, v2, Lg6/e;->l:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v2, Lg6/e;->k:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v2, v3}, Lg6/e;->k(Z)V

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    or-int/2addr v1, v3

    goto :goto_2

    :cond_5
    move v1, v3

    .line 10
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    .line 11
    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {p0}, Lj0/a0$g;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    .line 14
    :goto_3
    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->A(ZZ)V

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    :cond_8
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->N0:Z

    return-void
.end method

.method public final e()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v0}, Lg6/e;->e()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v0}, Lg6/e;->e()F

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    instance-of v0, v0, Lq6/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(IZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public getBaseline()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getBoxBackground()Lm6/f;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    return-object v0
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    return v0
.end method

.method public getBoxBackgroundMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    return v0
.end method

.method public getBoxCollapsedPaddingTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 2

    .line 1
    invoke-static {p0}, Lg6/s;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 3
    iget-object v0, v0, Lm6/i;->h:Lm6/c;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 6
    iget-object v0, v0, Lm6/i;->g:Lm6/c;

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 2

    .line 1
    invoke-static {p0}, Lg6/s;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 3
    iget-object v0, v0, Lm6/i;->g:Lm6/c;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 6
    iget-object v0, v0, Lm6/i;->h:Lm6/c;

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 2

    .line 1
    invoke-static {p0}, Lg6/s;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 3
    iget-object v0, v0, Lm6/i;->e:Lm6/c;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 6
    iget-object v0, v0, Lm6/i;->f:Lm6/c;

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 2

    .line 1
    invoke-static {p0}, Lg6/s;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 3
    iget-object v0, v0, Lm6/i;->f:Lm6/c;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 6
    iget-object v0, v0, Lm6/i;->e:Lm6/c;

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    :goto_0
    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    return v0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBoxStrokeWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    return v0
.end method

.method public getBoxStrokeWidthFocused()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    return v0
.end method

.method public getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    return v0
.end method

.method public getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iget-boolean v1, v0, Lq6/k;->k:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lq6/k;->j:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iget-object v0, v0, Lq6/k;->m:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v0}, Lq6/k;->g()I

    move-result v0

    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getErrorTextCurrentColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v0}, Lq6/k;->g()I

    move-result v0

    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iget-boolean v1, v0, Lq6/k;->q:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lq6/k;->p:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iget-object v0, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v0}, Lg6/e;->e()F

    move-result v0

    return v0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v0}, Lg6/e;->f()I

    move-result v0

    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMaxEms()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    return v0
.end method

.method public getMinEms()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPlaceholderTextAppearance()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    return v0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v0, v0, Lq6/p;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v0, v0, Lq6/p;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v0, v0, Lq6/p;->i:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v0, v0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v0, v0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final h(IZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroidx/transition/b;

    invoke-static {v0, v1}, Landroidx/transition/h;->a(Landroid/view/ViewGroup;Landroidx/transition/f;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    instance-of v0, v0, Lq6/e;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lq6/e;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    invoke-direct {v0, v3}, Lq6/e;-><init>(Lm6/i;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lm6/f;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    invoke-direct {v0, v3}, Lm6/f;-><init>(Lm6/i;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    .line 5
    :goto_0
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lm6/f;

    .line 6
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    const-string v3, " is illegal; only @BoxBackgroundMode constants are supported."

    .line 8
    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance v0, Lm6/f;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    invoke-direct {v0, v1}, Lm6/f;-><init>(Lm6/i;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    .line 11
    new-instance v0, Lm6/f;

    invoke-direct {v0}, Lm6/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lm6/f;

    .line 12
    new-instance v0, Lm6/f;

    invoke-direct {v0}, Lm6/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    goto :goto_1

    .line 13
    :cond_3
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    .line 14
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lm6/f;

    .line 15
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    sget-object v4, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 19
    invoke-static {v0, v3}, Lj0/a0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    .line 21
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_8

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/material/R$dimen;->material_font_2_0_box_collapsed_padding_top:I

    .line 25
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lj6/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/material/R$dimen;->material_font_1_3_box_collapsed_padding_top:I

    .line 28
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 29
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-eq v0, v2, :cond_9

    goto :goto_6

    .line 30
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_a

    goto :goto_5

    :cond_a
    move v2, v1

    :goto_5
    if-eqz v2, :cond_b

    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 33
    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 34
    invoke-static {v0}, Lj0/a0$e;->f(Landroid/view/View;)I

    move-result v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_2_0_padding_top:I

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 37
    invoke-static {v3}, Lj0/a0$e;->e(Landroid/view/View;)I

    move-result v3

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_2_0_padding_bottom:I

    .line 39
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 40
    invoke-static {v0, v1, v2, v3, v4}, Lj0/a0$e;->k(Landroid/view/View;IIII)V

    goto :goto_6

    .line 41
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lj6/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 43
    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 44
    invoke-static {v0}, Lj0/a0$e;->f(Landroid/view/View;)I

    move-result v1

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_1_3_padding_top:I

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 47
    invoke-static {v3}, Lj0/a0$e;->e(Landroid/view/View;)I

    move-result v3

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_1_3_padding_bottom:I

    .line 49
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 50
    invoke-static {v0, v1, v2, v3, v4}, Lj0/a0$e;->k(Landroid/view/View;IIII)V

    .line 51
    :cond_c
    :goto_6
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-eqz v0, :cond_d

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    :cond_d
    return-void
.end method

.method public final n()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    .line 5
    iget-object v4, v1, Lg6/e;->A:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lg6/e;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v1, Lg6/e;->C:Z

    const v5, 0x800005

    const/4 v6, 0x1

    const/16 v7, 0x11

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x5

    if-eq v3, v7, :cond_6

    and-int/lit8 v10, v3, 0x7

    if-ne v10, v6, :cond_1

    goto :goto_2

    :cond_1
    and-int v10, v3, v5

    if-eq v10, v5, :cond_4

    and-int/lit8 v10, v3, 0x5

    if-ne v10, v9, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v10, v1, Lg6/e;->e:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget v11, v1, Lg6/e;->X:F

    goto :goto_3

    :cond_3
    iget v10, v10, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 7
    :cond_4
    :goto_0
    iget-object v10, v1, Lg6/e;->e:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    iget v10, v10, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float v10, v10

    goto :goto_4

    :cond_5
    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget v11, v1, Lg6/e;->X:F

    goto :goto_3

    :cond_6
    :goto_2
    int-to-float v10, v2

    div-float/2addr v10, v8

    .line 8
    iget v11, v1, Lg6/e;->X:F

    div-float/2addr v11, v8

    :goto_3
    sub-float/2addr v10, v11

    .line 9
    :goto_4
    iput v10, v0, Landroid/graphics/RectF;->left:F

    .line 10
    iget-object v11, v1, Lg6/e;->e:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iput v12, v0, Landroid/graphics/RectF;->top:F

    if-eq v3, v7, :cond_c

    and-int/lit8 v7, v3, 0x7

    if-ne v7, v6, :cond_7

    goto :goto_7

    :cond_7
    and-int v2, v3, v5

    if-eq v2, v5, :cond_a

    and-int/lit8 v2, v3, 0x5

    if-ne v2, v9, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 11
    iget v2, v11, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_9
    iget v2, v1, Lg6/e;->X:F

    add-float/2addr v2, v10

    goto :goto_8

    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    .line 12
    iget v2, v1, Lg6/e;->X:F

    add-float/2addr v2, v10

    goto :goto_8

    :cond_b
    iget v2, v11, Landroid/graphics/Rect;->right:I

    :goto_6
    int-to-float v2, v2

    goto :goto_8

    :cond_c
    :goto_7
    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 13
    iget v3, v1, Lg6/e;->X:F

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    .line 14
    :goto_8
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 15
    invoke-virtual {v1}, Lg6/e;->e()F

    move-result v1

    add-float/2addr v1, v12

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 16
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 17
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 20
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    check-cast v1, Lq6/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lq6/e;->x(FFFF)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v0, p1}, Lg6/e;->i(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p1, :cond_10

    .line 3
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/Rect;

    .line 4
    invoke-static {p0, p1, p2}, Lg6/f;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lm6/f;

    if-eqz p1, :cond_0

    .line 6
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    sub-int p4, p3, p4

    .line 7
    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p5, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lm6/f;

    if-eqz p1, :cond_1

    .line 9
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    sub-int p4, p3, p4

    .line 10
    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p5, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-eqz p1, :cond_10

    .line 12
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    .line 13
    iget p4, p1, Lg6/e;->i:F

    cmpl-float p4, p4, p3

    const/4 p5, 0x0

    if-eqz p4, :cond_2

    .line 14
    iput p3, p1, Lg6/e;->i:F

    .line 15
    invoke-virtual {p1, p5}, Lg6/e;->k(Z)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    .line 17
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    and-int/lit8 p4, p1, -0x71

    or-int/lit8 p4, p4, 0x30

    invoke-virtual {p3, p4}, Lg6/e;->m(I)V

    .line 18
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 19
    iget p4, p3, Lg6/e;->g:I

    if-eq p4, p1, :cond_3

    .line 20
    iput p1, p3, Lg6/e;->g:I

    .line 21
    invoke-virtual {p3, p5}, Lg6/e;->k(Z)V

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 23
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p3, :cond_f

    .line 24
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/graphics/Rect;

    .line 25
    invoke-static {p0}, Lg6/s;->b(Landroid/view/View;)Z

    move-result p4

    .line 26
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    .line 28
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->g(IZ)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 30
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->h(IZ)I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 31
    :cond_4
    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p4

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 32
    iget p4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 33
    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 34
    :cond_5
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->g(IZ)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 35
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    add-int/2addr v0, v2

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 36
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->h(IZ)I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 37
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 39
    iget-object v3, p1, Lg6/e;->e:Landroid/graphics/Rect;

    .line 40
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ne v4, p4, :cond_6

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ne v4, v0, :cond_6

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-ne v4, v2, :cond_6

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v4, p3, :cond_6

    move v4, v1

    goto :goto_1

    :cond_6
    move v4, p5

    :goto_1
    if-nez v4, :cond_7

    .line 41
    invoke-virtual {v3, p4, v0, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 42
    iput-boolean v1, p1, Lg6/e;->K:Z

    .line 43
    invoke-virtual {p1}, Lg6/e;->j()V

    .line 44
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 45
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p3, :cond_e

    .line 46
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/graphics/Rect;

    .line 47
    iget-object p4, p1, Lg6/e;->M:Landroid/text/TextPaint;

    .line 48
    iget v0, p1, Lg6/e;->i:F

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v0, p1, Lg6/e;->v:Landroid/graphics/Typeface;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 50
    iget v0, p1, Lg6/e;->U:F

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 51
    iget-object p4, p1, Lg6/e;->M:Landroid/text/TextPaint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->ascent()F

    move-result p4

    neg-float p4, p4

    .line 52
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 53
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 54
    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    if-gt v0, v1, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, p5

    :goto_2
    if-eqz v0, :cond_9

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p4, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3

    .line 56
    :cond_9
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 57
    :goto_3
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 58
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 59
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    if-gt v0, v1, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    move v0, p5

    :goto_4
    if-eqz v0, :cond_b

    .line 61
    iget p2, p3, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p4

    float-to-int p2, p2

    goto :goto_5

    .line 62
    :cond_b
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    .line 63
    :goto_5
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 66
    iget-object v2, p1, Lg6/e;->d:Landroid/graphics/Rect;

    .line 67
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ne v3, p2, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, p4, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, v0, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, p3, :cond_c

    move v3, v1

    goto :goto_6

    :cond_c
    move v3, p5

    :goto_6
    if-nez v3, :cond_d

    .line 68
    invoke-virtual {v2, p2, p4, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    iput-boolean v1, p1, Lg6/e;->K:Z

    .line 70
    invoke-virtual {p1}, Lg6/e;->j()V

    .line 71
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 72
    invoke-virtual {p1, p5}, Lg6/e;->k(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-nez p1, :cond_10

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()V

    goto :goto_7

    .line 75
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 76
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_10
    :goto_7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-ge p2, p1, :cond_1

    .line 5
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()Z

    move-result p2

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout$c;

    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout$c;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 12
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 14
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 15
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    .line 16
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$h;

    .line 4
    iget-object v0, p1, Lp0/a;->h:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->j:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 7
    iget-boolean v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->k:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->l:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout$h;->n:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Z

    if-eq p1, v2, :cond_b

    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    move v0, v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 4
    iget-object p1, p1, Lm6/i;->e:Lm6/c;

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {p1, v1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 7
    iget-object v1, v1, Lm6/i;->f:Lm6/c;

    .line 8
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v1, v2}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 10
    iget-object v2, v2, Lm6/i;->h:Lm6/c;

    .line 11
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v2, v3}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v2

    .line 12
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 13
    iget-object v3, v3, Lm6/i;->g:Lm6/c;

    .line 14
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/RectF;

    invoke-interface {v3, v4}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    if-eqz v0, :cond_2

    move v4, p1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v0, :cond_3

    move p1, v1

    :cond_3
    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eqz v0, :cond_5

    move v2, v3

    .line 15
    :cond_5
    invoke-static {p0}, Lg6/s;->b(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Z

    if-eqz v0, :cond_6

    move v3, p1

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v4, p1

    :goto_4
    if-eqz v0, :cond_8

    move p1, v2

    goto :goto_5

    :cond_8
    move p1, v1

    :goto_5
    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v1, v2

    .line 16
    :goto_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {v0}, Lm6/f;->k()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    .line 18
    iget-object v2, v0, Lm6/f;->h:Lm6/f$b;

    iget-object v2, v2, Lm6/f$b;->a:Lm6/i;

    .line 19
    iget-object v2, v2, Lm6/i;->f:Lm6/c;

    .line 20
    invoke-virtual {v0}, Lm6/f;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v2, v0}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_a

    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    .line 22
    iget-object v2, v0, Lm6/f;->h:Lm6/f$b;

    iget-object v2, v2, Lm6/f$b;->a:Lm6/i;

    .line 23
    iget-object v2, v2, Lm6/i;->h:Lm6/c;

    .line 24
    invoke-virtual {v0}, Lm6/f;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v2, v0}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_a

    .line 25
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lm6/f;

    .line 26
    iget-object v2, v0, Lm6/f;->h:Lm6/f$b;

    iget-object v2, v2, Lm6/f$b;->a:Lm6/i;

    .line 27
    iget-object v2, v2, Lm6/i;->g:Lm6/c;

    .line 28
    invoke-virtual {v0}, Lm6/f;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v2, v0}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    .line 29
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Lm6/i$a;

    invoke-direct {v2, v0}, Lm6/i$a;-><init>(Lm6/i;)V

    .line 32
    invoke-virtual {v2, v3}, Lm6/i$a;->e(F)Lm6/i$a;

    .line 33
    invoke-virtual {v2, v4}, Lm6/i$a;->f(F)Lm6/i$a;

    .line 34
    invoke-virtual {v2, p1}, Lm6/i$a;->c(F)Lm6/i$a;

    .line 35
    invoke-virtual {v2, v1}, Lm6/i$a;->d(F)Lm6/i$a;

    .line 36
    invoke-virtual {v2}, Lm6/i$a;->a()Lm6/i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lm6/i;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()V

    :cond_b
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$h;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$h;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v0}, Lq6/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->j:Ljava/lang/CharSequence;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->k:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->l:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->m:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$h;->n:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, v1}, Lq6/j;->c(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final r(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :catch_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3
    sget p2, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Caption:I

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$color;->design_error:I

    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {p2, v0}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->t(I)V

    :cond_1
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    .line 3
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    .line 4
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()V

    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 2
    invoke-static {v0, p1}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    .line 2
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 4
    fill-array-data v2, :array_0

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    :cond_1
    return-void
.end method

.method public setBoxCollapsedPaddingTop(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    :cond_0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 4
    fill-array-data v2, :array_0

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:I

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    return-void

    :array_0
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    :cond_0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 2
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3
    invoke-direct {v2, v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    sget v0, Lcom/google/android/material/R$id;->textinput_counter:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2, v1}, Lq6/k;->a(Landroid/widget/TextView;I)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_textinput_counter_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 13
    invoke-static {v0, v1}, Lj0/h;->h(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v3, v1}, Lq6/k;->j(Landroid/widget/TextView;I)V

    .line 17
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    :cond_2
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    if-eq v0, p1, :cond_1

    if-lez p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 4
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    :cond_1
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    :cond_0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/content/res/ColorStateList;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->A(ZZ)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->o(Landroid/view/ViewGroup;Z)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/q;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1, v0, v1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    :cond_0
    return-void
.end method

.method public setEndIconMode(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout$g;

    .line 4
    invoke-interface {v2, p0, v0}, Lcom/google/android/material/textfield/TextInputLayout$g;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lq6/i;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    invoke-virtual {v0, v1}, Lq6/i;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lq6/i;

    move-result-object p1

    invoke-virtual {p1}, Lq6/i;->a()V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1, v0, v1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The current box background mode "

    .line 10
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported by the end icon mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/view/View$OnLongClickListener;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/view/View$OnLongClickListener;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, p1, v1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, v1, p1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()Z

    :cond_1
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iget-boolean v0, v0, Lq6/k;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 7
    invoke-virtual {v0}, Lq6/k;->c()V

    .line 8
    iput-object p1, v0, Lq6/k;->j:Ljava/lang/CharSequence;

    .line 9
    iget-object v2, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget v2, v0, Lq6/k;->h:I

    if-eq v2, v1, :cond_2

    .line 11
    iput v1, v0, Lq6/k;->i:I

    .line 12
    :cond_2
    iget v1, v0, Lq6/k;->i:I

    iget-object v3, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    invoke-virtual {v0, v3, p1}, Lq6/k;->k(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 14
    invoke-virtual {v0, v2, v1, p1}, Lq6/k;->l(IIZ)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {p1}, Lq6/k;->i()V

    :goto_0
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iput-object p1, v0, Lq6/k;->m:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iget-boolean v1, v0, Lq6/k;->k:Z

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lq6/k;->c()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 4
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, v0, Lq6/k;->a:Landroid/content/Context;

    .line 5
    invoke-direct {v3, v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v3, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    sget v1, Lcom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 8
    iget-object v1, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/view/View;->setTextAlignment(I)V

    .line 9
    iget-object v1, v0, Lq6/k;->u:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 10
    iget-object v3, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    :cond_1
    iget v1, v0, Lq6/k;->n:I

    .line 12
    iput v1, v0, Lq6/k;->n:I

    .line 13
    iget-object v3, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_2

    .line 14
    iget-object v4, v0, Lq6/k;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/material/textfield/TextInputLayout;->r(Landroid/widget/TextView;I)V

    .line 15
    :cond_2
    iget-object v1, v0, Lq6/k;->o:Landroid/content/res/ColorStateList;

    .line 16
    iput-object v1, v0, Lq6/k;->o:Landroid/content/res/ColorStateList;

    .line 17
    iget-object v3, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 19
    :cond_3
    iget-object v1, v0, Lq6/k;->m:Ljava/lang/CharSequence;

    .line 20
    iput-object v1, v0, Lq6/k;->m:Ljava/lang/CharSequence;

    .line 21
    iget-object v3, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    :cond_4
    iget-object v1, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v1, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x1

    sget-object v4, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 25
    invoke-static {v1, v3}, Lj0/a0$g;->f(Landroid/view/View;I)V

    .line 26
    iget-object v1, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1, v2}, Lq6/k;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 27
    :cond_5
    invoke-virtual {v0}, Lq6/k;->i()V

    .line 28
    iget-object v3, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3, v2}, Lq6/k;->j(Landroid/widget/TextView;I)V

    .line 29
    iput-object v1, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    iget-object v1, v0, Lq6/k;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    .line 31
    iget-object v1, v0, Lq6/k;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    .line 32
    :goto_0
    iput-boolean p1, v0, Lq6/k;->k:Z

    :goto_1
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    invoke-static {p0, p1, v0}, Lq6/j;->c(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/q;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1, v0, v1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Landroid/view/View$OnLongClickListener;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Landroid/view/View$OnLongClickListener;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, p1, v1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, v1, p1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iput p1, v0, Lq6/k;->n:I

    .line 3
    iget-object v1, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lq6/k;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->r(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iput-object p1, v0, Lq6/k;->o:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->A(ZZ)V

    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 3
    iget-boolean p1, p1, Lq6/k;->q:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 6
    iget-boolean v0, v0, Lq6/k;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 9
    invoke-virtual {v0}, Lq6/k;->c()V

    .line 10
    iput-object p1, v0, Lq6/k;->p:Ljava/lang/CharSequence;

    .line 11
    iget-object v1, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget v1, v0, Lq6/k;->h:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 13
    iput v2, v0, Lq6/k;->i:I

    .line 14
    :cond_2
    iget v2, v0, Lq6/k;->i:I

    iget-object v3, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    invoke-virtual {v0, v3, p1}, Lq6/k;->k(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 16
    invoke-virtual {v0, v1, v2, p1}, Lq6/k;->l(IIZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iput-object p1, v0, Lq6/k;->t:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iget-boolean v1, v0, Lq6/k;->q:Z

    if-ne v1, p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lq6/k;->c()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 4
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, v0, Lq6/k;->a:Landroid/content/Context;

    .line 5
    invoke-direct {v3, v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v3, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    sget v1, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 8
    iget-object v1, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/view/View;->setTextAlignment(I)V

    .line 9
    iget-object v1, v0, Lq6/k;->u:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 10
    iget-object v3, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    :cond_1
    iget-object v1, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v3, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {v1, v2}, Lj0/a0$g;->f(Landroid/view/View;I)V

    .line 14
    iget v1, v0, Lq6/k;->s:I

    .line 15
    iput v1, v0, Lq6/k;->s:I

    .line 16
    iget-object v3, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 18
    :cond_2
    iget-object v1, v0, Lq6/k;->t:Landroid/content/res/ColorStateList;

    .line 19
    iput-object v1, v0, Lq6/k;->t:Landroid/content/res/ColorStateList;

    .line 20
    iget-object v3, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 22
    :cond_3
    iget-object v1, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1, v2}, Lq6/k;->a(Landroid/widget/TextView;I)V

    .line 23
    iget-object v1, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Lq6/l;

    invoke-direct {v2, v0}, Lq6/l;-><init>(Lq6/k;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {v0}, Lq6/k;->c()V

    .line 25
    iget v3, v0, Lq6/k;->h:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v4, 0x0

    .line 26
    iput v4, v0, Lq6/k;->i:I

    .line 27
    :cond_5
    iget v4, v0, Lq6/k;->i:I

    iget-object v5, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, ""

    .line 28
    invoke-virtual {v0, v5, v6}, Lq6/k;->k(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 29
    invoke-virtual {v0, v3, v4, v5}, Lq6/k;->l(IIZ)V

    .line 30
    iget-object v3, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3, v2}, Lq6/k;->j(Landroid/widget/TextView;I)V

    .line 31
    iput-object v1, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    iget-object v1, v0, Lq6/k;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    .line 33
    iget-object v1, v0, Lq6/k;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    .line 34
    :goto_0
    iput-boolean p1, v0, Lq6/k;->q:Z

    :goto_1
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iput p1, v0, Lq6/k;->s:I

    .line 3
    iget-object v0, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setHint(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-eq p1, v0, :cond_4

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 2
    new-instance v1, Lj6/d;

    iget-object v2, v0, Lg6/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lj6/d;-><init>(Landroid/content/Context;I)V

    .line 3
    iget-object p1, v1, Lj6/d;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, v0, Lg6/e;->l:Landroid/content/res/ColorStateList;

    .line 5
    :cond_0
    iget p1, v1, Lj6/d;->k:F

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 6
    iput p1, v0, Lg6/e;->j:F

    .line 7
    :cond_1
    iget-object p1, v1, Lj6/d;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 8
    iput-object p1, v0, Lg6/e;->S:Landroid/content/res/ColorStateList;

    .line 9
    :cond_2
    iget p1, v1, Lj6/d;->e:F

    iput p1, v0, Lg6/e;->Q:F

    .line 10
    iget p1, v1, Lj6/d;->f:F

    iput p1, v0, Lg6/e;->R:F

    .line 11
    iget p1, v1, Lj6/d;->g:F

    iput p1, v0, Lg6/e;->P:F

    .line 12
    iget p1, v1, Lj6/d;->i:F

    iput p1, v0, Lg6/e;->T:F

    .line 13
    iget-object p1, v0, Lg6/e;->z:Lj6/a;

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p1, Lj6/a;->c:Z

    .line 15
    :cond_3
    new-instance p1, Lj6/a;

    new-instance v2, Lg6/d;

    invoke-direct {v2, v0}, Lg6/d;-><init>(Lg6/e;)V

    .line 16
    invoke-virtual {v1}, Lj6/d;->a()V

    .line 17
    iget-object v3, v1, Lj6/d;->n:Landroid/graphics/Typeface;

    .line 18
    invoke-direct {p1, v2, v3}, Lj6/a;-><init>(Lj6/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, v0, Lg6/e;->z:Lj6/a;

    .line 19
    iget-object p1, v0, Lg6/e;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, v0, Lg6/e;->z:Lj6/a;

    invoke-virtual {v1, p1, v2}, Lj6/d;->c(Landroid/content/Context;Lj6/f;)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Lg6/e;->k(Z)V

    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    .line 22
    iget-object v0, v0, Lg6/e;->l:Landroid/content/res/ColorStateList;

    .line 23
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/content/res/ColorStateList;

    .line 24
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->A(ZZ)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    :cond_4
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v0, p1}, Lg6/e;->l(Landroid/content/res/ColorStateList;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/content/res/ColorStateList;

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->A(ZZ)V

    :cond_1
    return-void
.end method

.method public setMaxEms(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxEms(I)V

    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public setMaxWidthResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    return-void
.end method

.method public setMinEms(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinEms(I)V

    :cond_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_0
    return-void
.end method

.method public setMinWidthResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/q;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, p1, v1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, v1, p1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    sget v1, Lcom/google/android/material/R$id;->textinput_placeholder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x2

    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {v0, v1}, Lj0/a0$d;->s(Landroid/view/View;I)V

    .line 8
    new-instance v0, Landroidx/transition/b;

    invoke-direct {v0}, Landroidx/transition/b;-><init>()V

    const-wide/16 v1, 0x57

    .line 9
    iput-wide v1, v0, Landroidx/transition/f;->j:J

    .line 10
    sget-object v3, Lp5/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 11
    iput-object v3, v0, Landroidx/transition/f;->k:Landroid/animation/TimeInterpolator;

    .line 12
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroidx/transition/b;

    const-wide/16 v4, 0x43

    .line 13
    iput-wide v4, v0, Landroidx/transition/f;->i:J

    .line 14
    new-instance v0, Landroidx/transition/b;

    invoke-direct {v0}, Landroidx/transition/b;-><init>()V

    .line 15
    iput-wide v1, v0, Landroidx/transition/f;->j:J

    .line 16
    iput-object v3, v0, Landroidx/transition/f;->k:Landroid/animation/TimeInterpolator;

    .line 17
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroidx/transition/b;

    .line 18
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 20
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 21
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 24
    :cond_2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->B(I)V

    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v0, Lq6/p;->j:Ljava/lang/CharSequence;

    .line 3
    iget-object v1, v0, Lq6/p;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0}, Lq6/p;->g()V

    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v0, v0, Lq6/p;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v0, v0, Lq6/p;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v0, v0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-virtual {v0, p1}, Lq6/p;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-virtual {v0, p1}, Lq6/p;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-virtual {v0, p1}, Lq6/p;->c(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-virtual {v0, p1}, Lq6/p;->d(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v1, v0, Lq6/p;->l:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Lq6/p;->l:Landroid/content/res/ColorStateList;

    .line 4
    iget-object v1, v0, Lq6/p;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lq6/p;->m:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, p1, v0}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 2
    iget-object v1, v0, Lq6/p;->m:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Lq6/p;->m:Landroid/graphics/PorterDuff$Mode;

    .line 4
    iget-object v1, v0, Lq6/p;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lq6/p;->k:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lq6/p;->l:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v0, p1}, Lq6/j;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-virtual {v0, p1}, Lq6/p;->e(Z)V

    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()V

    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lj0/a0;->p(Landroid/view/View;Lj0/a;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_2

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Lg6/e;

    invoke-virtual {v0, p1}, Lg6/e;->q(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 5
    iget-object v1, v0, Lq6/k;->u:Landroid/graphics/Typeface;

    if-eq p1, v1, :cond_1

    .line 6
    iput-object p1, v0, Lq6/k;->u:Landroid/graphics/Typeface;

    .line 7
    iget-object v1, v0, Lq6/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    :cond_0
    iget-object v0, v0, Lq6/k;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method

.method public final t(I)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 2
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    goto :goto_3

    :cond_0
    const/4 v4, 0x1

    if-le p1, v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 6
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    iget-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eqz v7, :cond_2

    .line 8
    sget v7, Lcom/google/android/material/R$string;->character_counter_overflowed_content_description:I

    goto :goto_1

    .line 9
    :cond_2
    sget v7, Lcom/google/android/material/R$string;->character_counter_content_description:I

    :goto_1
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v4

    .line 12
    invoke-virtual {v1, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eq v0, v1, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    .line 16
    :cond_3
    invoke-static {}, Lh0/a;->c()Lh0/a;

    move-result-object v1

    .line 17
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$string;->character_counter_pattern:I

    new-array v8, v8, [Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v3

    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v4, v1, Lh0/a;->c:Lh0/c;

    if-nez p1, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v1, p1, v4}, Lh0/a;->d(Ljava/lang/CharSequence;Lh0/c;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eq v0, p1, :cond_5

    .line 24
    invoke-virtual {p0, v3, v3}, Lcom/google/android/material/textfield/TextInputLayout;->A(ZZ)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    :cond_5
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 3
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->r(Landroid/widget/TextView;I)V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final v()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lq6/p;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    .line 6
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:I

    if-eq v6, v0, :cond_4

    .line 7
    :cond_3
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/graphics/drawable/ColorDrawable;

    .line 8
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:I

    .line 9
    invoke-virtual {v6, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 11
    invoke-static {v0}, Ln0/k$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12
    aget-object v6, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/graphics/drawable/ColorDrawable;

    if-eq v6, v7, :cond_6

    .line 13
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    aget-object v8, v0, v2

    aget-object v9, v0, v5

    aget-object v0, v0, v4

    .line 14
    invoke-static {v6, v7, v8, v9, v0}, Ln0/k$b;->e(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 17
    invoke-static {v0}, Ln0/k$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 18
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    aget-object v7, v0, v2

    aget-object v8, v0, v5

    aget-object v0, v0, v4

    .line 19
    invoke-static {v6, v3, v7, v8, v0}, Ln0/k$b;->e(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 20
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/graphics/drawable/ColorDrawable;

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    .line 21
    :goto_2
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/LinearLayout;

    .line 23
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-lez v6, :cond_9

    move v6, v2

    goto :goto_3

    :cond_9
    move v6, v1

    :goto_3
    if-eqz v6, :cond_e

    .line 24
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v3, v6

    .line 25
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 26
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    .line 27
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 28
    invoke-static {v3}, Lj0/h;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    add-int/2addr v3, v7

    .line 29
    :cond_a
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 30
    invoke-static {v6}, Ln0/k$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 31
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_b

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    if-eq v8, v3, :cond_b

    .line 32
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 33
    invoke-virtual {v7, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v3, v6, v2

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/drawable/ColorDrawable;

    aget-object v4, v6, v4

    .line 35
    invoke-static {v0, v1, v3, v5, v4}, Ln0/k$b;->e(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_b
    if-nez v7, :cond_c

    .line 36
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/drawable/ColorDrawable;

    .line 37
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 38
    invoke-virtual {v7, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    :cond_c
    aget-object v3, v6, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/drawable/ColorDrawable;

    if-eq v3, v7, :cond_d

    .line 40
    aget-object v0, v6, v5

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v3, v6, v2

    aget-object v4, v6, v4

    .line 42
    invoke-static {v0, v1, v3, v7, v4}, Ln0/k$b;->e(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_d
    move v2, v0

    goto :goto_5

    .line 43
    :cond_e
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_10

    .line 44
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    .line 45
    invoke-static {v6}, Ln0/k$b;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 46
    aget-object v5, v6, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/drawable/ColorDrawable;

    if-ne v5, v7, :cond_f

    .line 47
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v5, v6, v2

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/graphics/drawable/Drawable;

    aget-object v4, v6, v4

    .line 48
    invoke-static {v0, v1, v5, v7, v4}, Ln0/k$b;->e(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_f
    move v2, v0

    .line 49
    :goto_4
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/drawable/ColorDrawable;

    :goto_5
    move v0, v2

    :cond_10
    return v0
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v1, Landroidx/appcompat/widget/l0;->a:[I

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    invoke-virtual {v1}, Lq6/k;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 7
    invoke-virtual {v1}, Lq6/k;->g()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 8
    invoke-static {v1, v2}, Landroidx/appcompat/widget/k;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 12
    invoke-static {v1, v2}, Landroidx/appcompat/widget/k;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/FrameLayout;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 7
    :goto_3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lq6/k;

    .line 2
    iget-boolean v2, v0, Lq6/k;->k:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lq6/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()Z

    :cond_2
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    move-result v1

    .line 4
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
