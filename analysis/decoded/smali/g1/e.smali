.class public final Lg1/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# instance fields
.field public final synthetic a:Landroidx/transition/f;


# direct methods
.method public constructor <init>(Landroidx/transition/f;)V
    .locals 0

    iput-object p1, p0, Lg1/e;->a:Landroidx/transition/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/e;->a:Landroidx/transition/f;

    invoke-virtual {v0}, Landroidx/transition/f;->m()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
