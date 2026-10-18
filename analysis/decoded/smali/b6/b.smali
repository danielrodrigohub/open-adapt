.class public final Lb6/b;
.super Landroidx/appcompat/app/d$a;
.source "MaterialAlertDialogBuilder.java"


# static fields
.field public static final e:I

.field public static final f:I

.field public static final g:I


# instance fields
.field public c:Lm6/f;

.field public final d:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->alertDialogStyle:I

    sput v0, Lb6/b;->e:I

    .line 2
    sget v0, Lcom/google/android/material/R$style;->MaterialAlertDialog_MaterialComponents:I

    sput v0, Lb6/b;->f:I

    .line 3
    sget v0, Lcom/google/android/material/R$attr;->materialAlertDialogTheme:I

    sput v0, Lb6/b;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13

    .line 1
    sget v0, Lb6/b;->g:I

    .line 2
    invoke-static {p1, v0}, Lj6/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 4
    :goto_0
    sget v9, Lb6/b;->e:I

    sget v10, Lb6/b;->f:I

    const/4 v11, 0x0

    invoke-static {p1, v11, v9, v10}, Lr6/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v3

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v4, Lj/c;

    invoke-direct {v4, v3, v1}, Lj/c;-><init>(Landroid/content/Context;I)V

    move-object v3, v4

    :goto_1
    if-nez p2, :cond_3

    .line 6
    invoke-static {p1, v0}, Lj6/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_2

    move p2, v2

    goto :goto_2

    .line 7
    :cond_2
    iget p2, p1, Landroid/util/TypedValue;->data:I

    .line 8
    :cond_3
    :goto_2
    invoke-direct {p0, v3, p2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/d$a;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 11
    sget-object v5, Lcom/google/android/material/R$styleable;->MaterialAlertDialog:[I

    new-array v8, v2, [I

    const/4 v4, 0x0

    move-object v3, p1

    move v6, v9

    move v7, v10

    .line 12
    invoke-static/range {v3 .. v8}, Lg6/n;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 13
    sget v1, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetStart:I

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_start:I

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 17
    sget v2, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetTop:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_top:I

    .line 19
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 20
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 21
    sget v3, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetEnd:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_end:I

    .line 23
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 24
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 25
    sget v4, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetBottom:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_bottom:I

    .line 27
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 28
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    move v12, v3

    move v3, v1

    move v1, v12

    .line 31
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    iput-object v0, p0, Lb6/b;->d:Landroid/graphics/Rect;

    .line 33
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 34
    const-class v1, Lb6/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p1, v0, v1}, Lj6/b;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 36
    new-instance v1, Lm6/f;

    invoke-direct {v1, p1, v11, v9, v10}, Lm6/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    invoke-virtual {v1, p1}, Lm6/f;->m(Landroid/content/Context;)V

    .line 38
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lm6/f;->o(Landroid/content/res/ColorStateList;)V

    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_5

    .line 40
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x1010571

    .line 41
    invoke-virtual {p2, v0, p1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 42
    invoke-virtual {p0}, Landroidx/appcompat/app/d$a;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    .line 43
    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_5

    .line 44
    iget-object p1, v1, Lm6/f;->h:Lm6/f$b;

    iget-object p1, p1, Lm6/f$b;->a:Lm6/i;

    invoke-virtual {p1, p2}, Lm6/i;->f(F)Lm6/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lm6/f;->setShapeAppearanceModel(Lm6/i;)V

    .line 45
    :cond_5
    iput-object v1, p0, Lb6/b;->c:Lm6/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final c([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->n:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 3
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->s:[Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->t:Z

    return-object p0
.end method

.method public final create()Landroidx/appcompat/app/d;
    .locals 11

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d$a;->create()Landroidx/appcompat/app/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lb6/b;->c:Lm6/f;

    instance-of v4, v3, Lm6/f;

    if-eqz v4, :cond_0

    .line 5
    sget-object v4, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {v2}, Lj0/a0$i;->i(Landroid/view/View;)F

    move-result v4

    .line 7
    invoke-virtual {v3, v4}, Lm6/f;->n(F)V

    .line 8
    :cond_0
    iget-object v6, p0, Lb6/b;->c:Lm6/f;

    iget-object v3, p0, Lb6/b;->d:Landroid/graphics/Rect;

    .line 9
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 10
    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    new-instance v1, Lb6/a;

    iget-object v3, p0, Lb6/b;->d:Landroid/graphics/Rect;

    invoke-direct {v1, v0, v3}, Lb6/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public final d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    return-object p0
.end method

.method public final f([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->n:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->v:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->u:Z

    return-object p0
.end method

.method public final g(I)Lb6/b;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->r:Landroid/view/View;

    .line 2
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->q:I

    return-object p0
.end method

.method public final h(Landroid/view/View;)Lb6/b;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    check-cast p1, Lb6/b;

    return-object p1
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    check-cast p1, Lb6/b;

    return-object p1
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    check-cast p1, Lb6/b;

    return-object p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    check-cast p1, Lb6/b;

    return-object p1
.end method

.method public final setView(Landroid/view/View;)Landroidx/appcompat/app/d$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    check-cast p1, Lb6/b;

    return-object p1
.end method
