.class public final Lj0/g0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/g0;->e(Landroid/view/View;Lj0/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj0/h0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lj0/h0;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lj0/g0$a;->a:Lj0/h0;

    iput-object p2, p0, Lj0/g0$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lj0/g0$a;->a:Lj0/h0;

    iget-object v0, p0, Lj0/g0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lj0/h0;->b(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lj0/g0$a;->a:Lj0/h0;

    invoke-interface {p1}, Lj0/h0;->a()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lj0/g0$a;->a:Lj0/h0;

    invoke-interface {p1}, Lj0/h0;->c()V

    return-void
.end method
