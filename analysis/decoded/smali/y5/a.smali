.class public final Ly5/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealCompat.java"


# instance fields
.field public final synthetic a:Ly5/d;


# direct methods
.method public constructor <init>(Ly5/d;)V
    .locals 0

    iput-object p1, p0, Ly5/a;->a:Ly5/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ly5/a;->a:Ly5/d;

    invoke-interface {p1}, Ly5/d;->a()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ly5/a;->a:Ly5/d;

    invoke-interface {p1}, Ly5/d;->b()V

    return-void
.end method
