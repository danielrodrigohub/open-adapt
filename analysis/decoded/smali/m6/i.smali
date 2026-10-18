.class public final Lm6/i;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm6/i$a;
    }
.end annotation


# static fields
.field public static final m:Lm6/g;


# instance fields
.field public a:Landroidx/lifecycle/k0;

.field public b:Landroidx/lifecycle/k0;

.field public c:Landroidx/lifecycle/k0;

.field public d:Landroidx/lifecycle/k0;

.field public e:Lm6/c;

.field public f:Lm6/c;

.field public g:Lm6/c;

.field public h:Lm6/c;

.field public i:Lm6/e;

.field public j:Lm6/e;

.field public k:Lm6/e;

.field public l:Lm6/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm6/g;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lm6/g;-><init>(F)V

    sput-object v0, Lm6/i;->m:Lm6/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lm6/h;

    invoke-direct {v0}, Lm6/h;-><init>()V

    .line 28
    iput-object v0, p0, Lm6/i;->a:Landroidx/lifecycle/k0;

    .line 29
    new-instance v0, Lm6/h;

    invoke-direct {v0}, Lm6/h;-><init>()V

    .line 30
    iput-object v0, p0, Lm6/i;->b:Landroidx/lifecycle/k0;

    .line 31
    new-instance v0, Lm6/h;

    invoke-direct {v0}, Lm6/h;-><init>()V

    .line 32
    iput-object v0, p0, Lm6/i;->c:Landroidx/lifecycle/k0;

    .line 33
    new-instance v0, Lm6/h;

    invoke-direct {v0}, Lm6/h;-><init>()V

    .line 34
    iput-object v0, p0, Lm6/i;->d:Landroidx/lifecycle/k0;

    .line 35
    new-instance v0, Lm6/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm6/a;-><init>(F)V

    iput-object v0, p0, Lm6/i;->e:Lm6/c;

    .line 36
    new-instance v0, Lm6/a;

    invoke-direct {v0, v1}, Lm6/a;-><init>(F)V

    iput-object v0, p0, Lm6/i;->f:Lm6/c;

    .line 37
    new-instance v0, Lm6/a;

    invoke-direct {v0, v1}, Lm6/a;-><init>(F)V

    iput-object v0, p0, Lm6/i;->g:Lm6/c;

    .line 38
    new-instance v0, Lm6/a;

    invoke-direct {v0, v1}, Lm6/a;-><init>(F)V

    iput-object v0, p0, Lm6/i;->h:Lm6/c;

    .line 39
    new-instance v0, Lm6/e;

    invoke-direct {v0}, Lm6/e;-><init>()V

    .line 40
    iput-object v0, p0, Lm6/i;->i:Lm6/e;

    .line 41
    new-instance v0, Lm6/e;

    invoke-direct {v0}, Lm6/e;-><init>()V

    .line 42
    iput-object v0, p0, Lm6/i;->j:Lm6/e;

    .line 43
    new-instance v0, Lm6/e;

    invoke-direct {v0}, Lm6/e;-><init>()V

    .line 44
    iput-object v0, p0, Lm6/i;->k:Lm6/e;

    .line 45
    new-instance v0, Lm6/e;

    invoke-direct {v0}, Lm6/e;-><init>()V

    .line 46
    iput-object v0, p0, Lm6/i;->l:Lm6/e;

    return-void
.end method

.method public constructor <init>(Lm6/i$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lm6/i$a;->a:Landroidx/lifecycle/k0;

    .line 3
    iput-object v0, p0, Lm6/i;->a:Landroidx/lifecycle/k0;

    .line 4
    iget-object v0, p1, Lm6/i$a;->b:Landroidx/lifecycle/k0;

    .line 5
    iput-object v0, p0, Lm6/i;->b:Landroidx/lifecycle/k0;

    .line 6
    iget-object v0, p1, Lm6/i$a;->c:Landroidx/lifecycle/k0;

    .line 7
    iput-object v0, p0, Lm6/i;->c:Landroidx/lifecycle/k0;

    .line 8
    iget-object v0, p1, Lm6/i$a;->d:Landroidx/lifecycle/k0;

    .line 9
    iput-object v0, p0, Lm6/i;->d:Landroidx/lifecycle/k0;

    .line 10
    iget-object v0, p1, Lm6/i$a;->e:Lm6/c;

    .line 11
    iput-object v0, p0, Lm6/i;->e:Lm6/c;

    .line 12
    iget-object v0, p1, Lm6/i$a;->f:Lm6/c;

    .line 13
    iput-object v0, p0, Lm6/i;->f:Lm6/c;

    .line 14
    iget-object v0, p1, Lm6/i$a;->g:Lm6/c;

    .line 15
    iput-object v0, p0, Lm6/i;->g:Lm6/c;

    .line 16
    iget-object v0, p1, Lm6/i$a;->h:Lm6/c;

    .line 17
    iput-object v0, p0, Lm6/i;->h:Lm6/c;

    .line 18
    iget-object v0, p1, Lm6/i$a;->i:Lm6/e;

    .line 19
    iput-object v0, p0, Lm6/i;->i:Lm6/e;

    .line 20
    iget-object v0, p1, Lm6/i$a;->j:Lm6/e;

    .line 21
    iput-object v0, p0, Lm6/i;->j:Lm6/e;

    .line 22
    iget-object v0, p1, Lm6/i$a;->k:Lm6/e;

    .line 23
    iput-object v0, p0, Lm6/i;->k:Lm6/e;

    .line 24
    iget-object p1, p1, Lm6/i$a;->l:Lm6/e;

    .line 25
    iput-object p1, p0, Lm6/i;->l:Lm6/e;

    return-void
.end method

.method public static a(Landroid/content/Context;IILm6/c;)Lm6/i$a;
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 2
    :cond_0
    sget-object p2, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 4
    :try_start_0
    sget p1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 5
    sget p2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 7
    sget v0, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 9
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 10
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 11
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 12
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 13
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    .line 14
    invoke-static {p0, v2, p3}, Lm6/i;->d(Landroid/content/res/TypedArray;ILm6/c;)Lm6/c;

    move-result-object p3

    .line 15
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    .line 16
    invoke-static {p0, v2, p3}, Lm6/i;->d(Landroid/content/res/TypedArray;ILm6/c;)Lm6/c;

    move-result-object v2

    .line 17
    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    .line 18
    invoke-static {p0, v3, p3}, Lm6/i;->d(Landroid/content/res/TypedArray;ILm6/c;)Lm6/c;

    move-result-object v3

    .line 19
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    .line 20
    invoke-static {p0, v4, p3}, Lm6/i;->d(Landroid/content/res/TypedArray;ILm6/c;)Lm6/c;

    move-result-object v4

    .line 21
    sget v5, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 22
    invoke-static {p0, v5, p3}, Lm6/i;->d(Landroid/content/res/TypedArray;ILm6/c;)Lm6/c;

    move-result-object p3

    .line 23
    new-instance v5, Lm6/i$a;

    invoke-direct {v5}, Lm6/i$a;-><init>()V

    .line 24
    invoke-static {p2}, Landroidx/lifecycle/o;->i(I)Landroidx/lifecycle/k0;

    move-result-object p2

    .line 25
    iput-object p2, v5, Lm6/i$a;->a:Landroidx/lifecycle/k0;

    .line 26
    invoke-static {p2}, Lm6/i$a;->b(Landroidx/lifecycle/k0;)V

    .line 27
    iput-object v2, v5, Lm6/i$a;->e:Lm6/c;

    .line 28
    invoke-static {v0}, Landroidx/lifecycle/o;->i(I)Landroidx/lifecycle/k0;

    move-result-object p2

    .line 29
    iput-object p2, v5, Lm6/i$a;->b:Landroidx/lifecycle/k0;

    .line 30
    invoke-static {p2}, Lm6/i$a;->b(Landroidx/lifecycle/k0;)V

    .line 31
    iput-object v3, v5, Lm6/i$a;->f:Lm6/c;

    .line 32
    invoke-static {v1}, Landroidx/lifecycle/o;->i(I)Landroidx/lifecycle/k0;

    move-result-object p2

    .line 33
    iput-object p2, v5, Lm6/i$a;->c:Landroidx/lifecycle/k0;

    .line 34
    invoke-static {p2}, Lm6/i$a;->b(Landroidx/lifecycle/k0;)V

    .line 35
    iput-object v4, v5, Lm6/i$a;->g:Lm6/c;

    .line 36
    invoke-static {p1}, Landroidx/lifecycle/o;->i(I)Landroidx/lifecycle/k0;

    move-result-object p1

    .line 37
    iput-object p1, v5, Lm6/i$a;->d:Landroidx/lifecycle/k0;

    .line 38
    invoke-static {p1}, Lm6/i$a;->b(Landroidx/lifecycle/k0;)V

    .line 39
    iput-object p3, v5, Lm6/i$a;->h:Lm6/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lm6/i$a;
    .locals 2

    new-instance v0, Lm6/a;

    const/4 v1, 0x0

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lm6/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lm6/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILm6/c;)Lm6/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;IILm6/c;)Lm6/i$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4
    sget v0, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    .line 5
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-static {p0, p2, p3, p4}, Lm6/i;->a(Landroid/content/Context;IILm6/c;)Lm6/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/res/TypedArray;ILm6/c;)Lm6/c;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    new-instance p2, Lm6/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lm6/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    .line 5
    new-instance p0, Lm6/g;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lm6/g;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;)Z
    .locals 5

    .line 1
    const-class v0, Lm6/e;

    iget-object v1, p0, Lm6/i;->l:Lm6/e;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm6/i;->j:Lm6/e;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm6/i;->i:Lm6/e;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm6/i;->k:Lm6/e;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 6
    :goto_0
    iget-object v1, p0, Lm6/i;->e:Lm6/c;

    invoke-interface {v1, p1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 7
    iget-object v4, p0, Lm6/i;->f:Lm6/c;

    .line 8
    invoke-interface {v4, p1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lm6/i;->h:Lm6/c;

    .line 9
    invoke-interface {v4, p1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lm6/i;->g:Lm6/c;

    .line 10
    invoke-interface {v4, p1}, Lm6/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    .line 11
    :goto_1
    iget-object v1, p0, Lm6/i;->b:Landroidx/lifecycle/k0;

    instance-of v1, v1, Lm6/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm6/i;->a:Landroidx/lifecycle/k0;

    instance-of v1, v1, Lm6/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm6/i;->c:Landroidx/lifecycle/k0;

    instance-of v1, v1, Lm6/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm6/i;->d:Landroidx/lifecycle/k0;

    instance-of v1, v1, Lm6/h;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2
.end method

.method public final f(F)Lm6/i;
    .locals 1

    .line 1
    new-instance v0, Lm6/i$a;

    invoke-direct {v0, p0}, Lm6/i$a;-><init>(Lm6/i;)V

    .line 2
    invoke-virtual {v0, p1}, Lm6/i$a;->e(F)Lm6/i$a;

    .line 3
    invoke-virtual {v0, p1}, Lm6/i$a;->f(F)Lm6/i$a;

    .line 4
    invoke-virtual {v0, p1}, Lm6/i$a;->d(F)Lm6/i$a;

    .line 5
    invoke-virtual {v0, p1}, Lm6/i$a;->c(F)Lm6/i$a;

    .line 6
    invoke-virtual {v0}, Lm6/i$a;->a()Lm6/i;

    move-result-object p1

    return-object p1
.end method
