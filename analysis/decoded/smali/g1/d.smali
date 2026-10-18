.class public final Lg1/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# instance fields
.field public final synthetic a:Lp/a;

.field public final synthetic b:Landroidx/transition/f;


# direct methods
.method public constructor <init>(Landroidx/transition/f;Lp/a;)V
    .locals 0

    iput-object p1, p0, Lg1/d;->b:Landroidx/transition/f;

    iput-object p2, p0, Lg1/d;->a:Lp/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/d;->a:Lp/a;

    invoke-virtual {v0, p1}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lg1/d;->b:Landroidx/transition/f;

    iget-object v0, v0, Landroidx/transition/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lg1/d;->b:Landroidx/transition/f;

    iget-object v0, v0, Landroidx/transition/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
