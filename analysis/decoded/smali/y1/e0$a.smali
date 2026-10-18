.class public final Ly1/e0$a;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly1/e0;


# direct methods
.method public constructor <init>(Ly1/e0;)V
    .locals 0

    iput-object p1, p0, Ly1/e0$a;->a:Ly1/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ly1/e0$a;->a:Ly1/e0;

    .line 2
    iget-object v0, p1, Ly1/e0;->w:Lg2/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Ly1/e0;->i:Lk2/d;

    .line 4
    invoke-virtual {p1}, Lk2/d;->e()F

    move-result p1

    invoke-virtual {v0, p1}, Lg2/c;->v(F)V

    :cond_0
    return-void
.end method
