.class public final Lcom/google/android/material/appbar/a;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lm6/f;

.field public final synthetic b:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lm6/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/a;->b:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/google/android/material/appbar/a;->a:Lm6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Lm6/f;

    invoke-virtual {v0, p1}, Lm6/f;->n(F)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 5
    instance-of v1, v0, Lm6/f;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lm6/f;

    invoke-virtual {v0, p1}, Lm6/f;->n(F)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    iget-object p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->v:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$d;

    .line 10
    iget-object v1, p0, Lcom/google/android/material/appbar/a;->a:Lm6/f;

    .line 11
    iget v1, v1, Lm6/f;->B:I

    .line 12
    invoke-interface {v0}, Lcom/google/android/material/appbar/AppBarLayout$d;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
