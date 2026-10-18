.class public final Lr5/a;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lg6/l$b;


# static fields
.field public static final u:I

.field public static final v:I


# instance fields
.field public final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lm6/f;

.field public final j:Lg6/l;

.field public final k:Landroid/graphics/Rect;

.field public final l:Lr5/b;

.field public m:F

.field public n:F

.field public o:I

.field public p:F

.field public q:F

.field public r:F

.field public s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    sput v0, Lr5/a;->u:I

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    sput v0, Lr5/a;->v:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr5/a;->h:Ljava/lang/ref/WeakReference;

    .line 3
    sget-object v1, Lg6/n;->b:[I

    const-string v2, "Theme.MaterialComponents"

    invoke-static {p1, v1, v2}, Lg6/n;->c(Landroid/content/Context;[ILjava/lang/String;)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lr5/a;->k:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Lm6/f;

    invoke-direct {v1}, Lm6/f;-><init>()V

    iput-object v1, p0, Lr5/a;->i:Lm6/f;

    .line 6
    new-instance v2, Lg6/l;

    invoke-direct {v2, p0}, Lg6/l;-><init>(Lg6/l$b;)V

    iput-object v2, p0, Lr5/a;->j:Lg6/l;

    .line 7
    iget-object v3, v2, Lg6/l;->a:Landroid/text/TextPaint;

    .line 8
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 9
    sget v3, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v5, Lj6/d;

    invoke-direct {v5, v4, v3}, Lj6/d;-><init>(Landroid/content/Context;I)V

    .line 12
    iget-object v3, v2, Lg6/l;->f:Lj6/d;

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v2, v5, v0}, Lg6/l;->b(Lj6/d;Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lr5/a;->g()V

    .line 16
    :goto_0
    new-instance v0, Lr5/b;

    invoke-direct {v0, p1}, Lr5/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lr5/a;->l:Lr5/b;

    .line 17
    iget-object p1, v0, Lr5/b;->b:Lr5/b$a;

    .line 18
    iget p1, p1, Lr5/b$a;->m:I

    int-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 19
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int p1, v3

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr5/a;->o:I

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, v2, Lg6/l;->d:Z

    .line 21
    invoke-virtual {p0}, Lr5/a;->g()V

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    iput-boolean p1, v2, Lg6/l;->d:Z

    .line 24
    invoke-virtual {p0}, Lr5/a;->g()V

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 26
    iget-object p1, v2, Lg6/l;->a:Landroid/text/TextPaint;

    .line 27
    invoke-virtual {p0}, Lr5/a;->getAlpha()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 29
    iget-object p1, v0, Lr5/b;->b:Lr5/b$a;

    .line 30
    iget-object p1, p1, Lr5/b$a;->i:Ljava/lang/Integer;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 32
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 33
    iget-object v3, v1, Lm6/f;->h:Lm6/f$b;

    iget-object v3, v3, Lm6/f$b;->c:Landroid/content/res/ColorStateList;

    if-eq v3, p1, :cond_3

    .line 34
    invoke-virtual {v1, p1}, Lm6/f;->o(Landroid/content/res/ColorStateList;)V

    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 36
    :cond_3
    iget-object p1, v2, Lg6/l;->a:Landroid/text/TextPaint;

    .line 37
    iget-object v1, v0, Lr5/b;->b:Lr5/b$a;

    .line 38
    iget-object v1, v1, Lr5/b$a;->j:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 42
    iget-object p1, p0, Lr5/a;->s:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 43
    iget-object p1, p0, Lr5/a;->s:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lr5/a;->t:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 45
    :goto_1
    invoke-virtual {p0, p1, v1}, Lr5/a;->f(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 46
    :cond_5
    invoke-virtual {p0}, Lr5/a;->g()V

    .line 47
    iget-object p1, v0, Lr5/b;->b:Lr5/b$a;

    .line 48
    iget-object p1, p1, Lr5/b$a;->s:Ljava/lang/Boolean;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lr5/a;->d()I

    move-result v0

    iget v1, p0, Lr5/a;->o:I

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lr5/a;->l:Lr5/b;

    .line 3
    iget-object v0, v0, Lr5/b;->b:Lr5/b$a;

    .line 4
    iget-object v0, v0, Lr5/b$a;->n:Ljava/util/Locale;

    .line 5
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lr5/a;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lr5/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 7
    :cond_1
    iget-object v1, p0, Lr5/a;->l:Lr5/b;

    .line 8
    iget-object v1, v1, Lr5/b;->b:Lr5/b$a;

    .line 9
    iget-object v1, v1, Lr5/b$a;->n:Ljava/util/Locale;

    .line 10
    sget v2, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lr5/a;->o:I

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "+"

    aput-object v4, v2, v3

    .line 13
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lr5/a;->t:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr5/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr5/a;->l:Lr5/b;

    .line 2
    iget-object v0, v0, Lr5/b;->b:Lr5/b$a;

    .line 3
    iget v0, v0, Lr5/b$a;->l:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr5/a;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lr5/a;->i:Lm6/f;

    invoke-virtual {v0, p1}, Lm6/f;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0}, Lr5/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {p0}, Lr5/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lr5/a;->j:Lg6/l;

    .line 8
    iget-object v2, v2, Lg6/l;->a:Landroid/text/TextPaint;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 10
    iget v2, p0, Lr5/a;->m:F

    iget v3, p0, Lr5/a;->n:F

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lr5/a;->j:Lg6/l;

    .line 12
    iget-object v0, v0, Lg6/l;->a:Landroid/text/TextPaint;

    .line 13
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lr5/a;->l:Lr5/b;

    .line 2
    iget-object v0, v0, Lr5/b;->b:Lr5/b$a;

    .line 3
    iget v0, v0, Lr5/b$a;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr5/a;->s:Ljava/lang/ref/WeakReference;

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr5/a;->t:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 6
    invoke-virtual {p0}, Lr5/a;->g()V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final g()V
    .locals 8

    .line 1
    iget-object v0, p0, Lr5/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lr5/a;->s:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_e

    if-nez v1, :cond_1

    goto/16 :goto_b

    .line 3
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v4, p0, Lr5/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 7
    iget-object v5, p0, Lr5/a;->t:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 9
    :cond_4
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lr5/a;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    .line 11
    iget-object v2, v2, Lr5/b;->b:Lr5/b$a;

    .line 12
    iget-object v2, v2, Lr5/b$a;->w:Ljava/lang/Integer;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 14
    :cond_5
    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    .line 15
    iget-object v2, v2, Lr5/b;->b:Lr5/b$a;

    .line 16
    iget-object v2, v2, Lr5/b$a;->u:Ljava/lang/Integer;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 18
    :goto_2
    iget-object v5, p0, Lr5/a;->l:Lr5/b;

    .line 19
    iget-object v5, v5, Lr5/b;->b:Lr5/b$a;

    .line 20
    iget-object v5, v5, Lr5/b$a;->y:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    .line 22
    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    .line 23
    iget-object v2, v2, Lr5/b;->b:Lr5/b$a;

    .line 24
    iget-object v2, v2, Lr5/b$a;->r:Ljava/lang/Integer;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v6, 0x800053

    if-eq v2, v6, :cond_6

    const v7, 0x800055

    if-eq v2, v7, :cond_6

    .line 26
    iget v2, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iput v2, p0, Lr5/a;->n:F

    goto :goto_3

    .line 27
    :cond_6
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iput v2, p0, Lr5/a;->n:F

    .line 28
    :goto_3
    invoke-virtual {p0}, Lr5/a;->d()I

    move-result v2

    const/16 v5, 0x9

    if-gt v2, v5, :cond_8

    .line 29
    invoke-virtual {p0}, Lr5/a;->e()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    iget v2, v2, Lr5/b;->c:F

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    iget v2, v2, Lr5/b;->d:F

    :goto_4
    iput v2, p0, Lr5/a;->p:F

    .line 30
    iput v2, p0, Lr5/a;->r:F

    .line 31
    iput v2, p0, Lr5/a;->q:F

    goto :goto_5

    .line 32
    :cond_8
    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    iget v2, v2, Lr5/b;->d:F

    iput v2, p0, Lr5/a;->p:F

    .line 33
    iput v2, p0, Lr5/a;->r:F

    .line 34
    invoke-virtual {p0}, Lr5/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v5, p0, Lr5/a;->j:Lg6/l;

    invoke-virtual {v5, v2}, Lg6/l;->a(Ljava/lang/String;)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget-object v5, p0, Lr5/a;->l:Lr5/b;

    iget v5, v5, Lr5/b;->e:F

    add-float/2addr v2, v5

    iput v2, p0, Lr5/a;->q:F

    .line 36
    :goto_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lr5/a;->e()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 38
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    goto :goto_6

    .line 39
    :cond_9
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    .line 40
    :goto_6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lr5/a;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    .line 42
    iget-object v2, v2, Lr5/b;->b:Lr5/b$a;

    .line 43
    iget-object v2, v2, Lr5/b$a;->v:Ljava/lang/Integer;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_7

    .line 45
    :cond_a
    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    .line 46
    iget-object v2, v2, Lr5/b;->b:Lr5/b$a;

    .line 47
    iget-object v2, v2, Lr5/b$a;->t:Ljava/lang/Integer;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 49
    :goto_7
    iget-object v5, p0, Lr5/a;->l:Lr5/b;

    .line 50
    iget-object v5, v5, Lr5/b;->b:Lr5/b$a;

    .line 51
    iget-object v5, v5, Lr5/b$a;->x:Ljava/lang/Integer;

    .line 52
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    .line 53
    iget-object v2, p0, Lr5/a;->l:Lr5/b;

    .line 54
    iget-object v2, v2, Lr5/b;->b:Lr5/b$a;

    .line 55
    iget-object v2, v2, Lr5/b$a;->r:Ljava/lang/Integer;

    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v7, 0x800033

    if-eq v2, v7, :cond_c

    if-eq v2, v6, :cond_c

    .line 57
    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 58
    invoke-static {v1}, Lj0/a0$e;->d(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_b

    .line 59
    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lr5/a;->q:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v5

    sub-float/2addr v1, v0

    goto :goto_8

    .line 60
    :cond_b
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lr5/a;->q:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v5

    add-float/2addr v1, v0

    :goto_8
    iput v1, p0, Lr5/a;->m:F

    goto :goto_a

    .line 61
    :cond_c
    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 62
    invoke-static {v1}, Lj0/a0$e;->d(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_d

    .line 63
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lr5/a;->q:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v5

    add-float/2addr v1, v0

    goto :goto_9

    .line 64
    :cond_d
    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lr5/a;->q:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v5

    sub-float/2addr v1, v0

    :goto_9
    iput v1, p0, Lr5/a;->m:F

    .line 65
    :goto_a
    iget-object v0, p0, Lr5/a;->k:Landroid/graphics/Rect;

    iget v1, p0, Lr5/a;->m:F

    iget v2, p0, Lr5/a;->n:F

    iget v4, p0, Lr5/a;->q:F

    iget v5, p0, Lr5/a;->r:F

    sub-float v6, v1, v4

    float-to-int v6, v6

    sub-float v7, v2, v5

    float-to-int v7, v7

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 66
    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    iget-object v0, p0, Lr5/a;->i:Lm6/f;

    iget v1, p0, Lr5/a;->p:F

    .line 68
    iget-object v2, v0, Lm6/f;->h:Lm6/f$b;

    iget-object v2, v2, Lm6/f$b;->a:Lm6/i;

    invoke-virtual {v2, v1}, Lm6/i;->f(F)Lm6/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm6/f;->setShapeAppearanceModel(Lm6/i;)V

    .line 69
    iget-object v0, p0, Lr5/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 70
    iget-object v0, p0, Lr5/a;->i:Lm6/f;

    iget-object v1, p0, Lr5/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_e
    :goto_b
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr5/a;->l:Lr5/b;

    .line 2
    iget-object v0, v0, Lr5/b;->b:Lr5/b$a;

    .line 3
    iget v0, v0, Lr5/b$a;->k:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lr5/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lr5/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr5/a;->l:Lr5/b;

    .line 2
    iget-object v1, v0, Lr5/b;->a:Lr5/b$a;

    .line 3
    iput p1, v1, Lr5/b$a;->k:I

    .line 4
    iget-object v0, v0, Lr5/b;->b:Lr5/b$a;

    .line 5
    iput p1, v0, Lr5/b$a;->k:I

    .line 6
    iget-object p1, p0, Lr5/a;->j:Lg6/l;

    .line 7
    iget-object p1, p1, Lg6/l;->a:Landroid/text/TextPaint;

    .line 8
    invoke-virtual {p0}, Lr5/a;->getAlpha()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
