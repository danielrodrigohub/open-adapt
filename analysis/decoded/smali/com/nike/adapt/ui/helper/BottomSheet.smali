.class public final Lcom/nike/adapt/ui/helper/BottomSheet;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "BottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/helper/BottomSheet$a;
    }
.end annotation


# static fields
.field public static final synthetic F:I


# instance fields
.field public A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

.field public C:Landroid/view/View;

.field public D:Z

.field public E:Z

.field public final z:Lq7/j0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "context"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 1
    invoke-direct {v9, v0, v10, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v12, 0x1

    .line 2
    iput-boolean v12, v9, Lcom/nike/adapt/ui/helper/BottomSheet;->D:Z

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0049

    .line 4
    invoke-virtual {v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0a00ef

    .line 5
    invoke-static {v9, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v13, :cond_7

    const v1, 0x7f0a00f0

    .line 6
    invoke-static {v9, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Space;

    if-eqz v2, :cond_7

    const v1, 0x7f0a00f1

    .line 7
    invoke-static {v9, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_7

    const v1, 0x7f0a00f2

    .line 8
    invoke-static {v9, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_7

    const v1, 0x7f0a00f3

    .line 9
    invoke-static {v9, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_7

    const v1, 0x7f0a00f4

    .line 10
    invoke-static {v9, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    const v1, 0x7f0a00f6

    .line 11
    invoke-static {v9, v1}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 12
    new-instance v5, Lq7/j0;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v14

    move-object v12, v5

    move-object v5, v15

    move-object/from16 v16, v6

    move-object v6, v8

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lq7/j0;-><init>(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 13
    iput-object v12, v9, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    .line 14
    sget-object v1, Lcom/nike/adapt/R$styleable;->BottomSheet:[I

    invoke-virtual {v0, v10, v1, v11, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "context.obtainStyledAttr\u2026leable.BottomSheet, 0, 0)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 15
    :try_start_0
    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x3

    .line 16
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 v5, 0x6

    .line 17
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v6, 0x2

    .line 18
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v7, 0x4

    .line 19
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/4 v8, 0x5

    .line 20
    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/16 v2, 0x8

    .line 21
    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v9, Lcom/nike/adapt/ui/helper/BottomSheet;->E:Z

    const/4 v10, 0x7

    const v12, 0x7f080184

    .line 22
    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/16 v12, 0xb

    .line 23
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x9

    .line 25
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v9, 0xa

    .line 26
    :try_start_1
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v19, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v21, v1

    move/from16 v1, v19

    goto :goto_0

    :cond_0
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v21, v1

    move/from16 v1, v20

    .line 27
    :goto_0
    :try_start_2
    invoke-virtual {v13, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz v3, :cond_1

    const/high16 v19, 0x43160000    # 150.0f

    :cond_1
    move/from16 v1, v19

    .line 28
    invoke-virtual {v13, v1}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v1, v17

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 29
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v3, v16

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    .line 30
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v4, v18

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    .line 31
    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v7, :cond_5

    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/16 v5, 0x8

    .line 32
    :goto_4
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v8, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    const/16 v5, 0x8

    .line 33
    :goto_5
    invoke-virtual {v15, v5}, Landroid/view/View;->setVisibility(I)V

    .line 34
    sget-object v5, Ly/a;->a:Ljava/lang/Object;

    .line 35
    invoke-static {v0, v10}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    move-object/from16 v2, p0

    .line 41
    :try_start_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 42
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v21, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v21, v1

    move-object v2, v9

    :goto_6
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_7
    move-object v2, v9

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 5
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static s(Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 3

    const-string v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nike/adapt/ui/helper/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    const-string v2, "getActivity() ?: context"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lcom/nike/adapt/ui/helper/BottomSheet$a;->a(Landroid/content/Context;Lcom/nike/adapt/ui/helper/BottomSheet;)V

    return-void

    :cond_1
    const-string p0, "bottomSheetStateManager"

    invoke-static {p0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    :goto_0
    return-void
.end method

.method public final u()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    return v1

    :cond_1
    return v2
.end method

.method public final v(Lcom/nike/adapt/ui/helper/BottomSheet$a;)Lcom/nike/adapt/ui/helper/BottomSheet;
    .locals 1

    const-string v0, "bottomSheetStateManager"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    return-object p0
.end method

.method public final w(Ljava/lang/String;)Lcom/nike/adapt/ui/helper/BottomSheet;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    iget-object v0, v0, Lq7/j0;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    iget-object v0, v0, Lq7/j0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final x()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    instance-of v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v4, :cond_6

    .line 6
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 7
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    .line 8
    instance-of v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v4, :cond_5

    .line 9
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 10
    iput-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->A:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/nike/adapt/ui/helper/BottomSheet$b;

    invoke-direct {v1, p0}, Lcom/nike/adapt/ui/helper/BottomSheet$b;-><init>(Lcom/nike/adapt/ui/helper/BottomSheet;)V

    const-string v4, "BottomSheetBehavior"

    const-string v5, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    .line 13
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    iget-object v0, v0, Lq7/j0;->b:Landroid/widget/Button;

    new-instance v1, Lw8/b;

    invoke-direct {v1, p0, v2}, Lw8/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->z:Lq7/j0;

    iget-object v0, v0, Lq7/j0;->c:Landroid/widget/Button;

    new-instance v1, Lw8/c;

    invoke-direct {v1, p0, v2}, Lw8/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    if-eqz v0, :cond_4

    new-instance v1, Lx8/p;

    invoke-direct {v1, p0, v3}, Lx8/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    .line 19
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The view is not a child of CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
