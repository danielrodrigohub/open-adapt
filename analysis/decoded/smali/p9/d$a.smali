.class public final Lp9/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TooltipPopUpView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp9/d;


# direct methods
.method public constructor <init>(Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lp9/d$a;->a:Lp9/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lp9/d$a;->a:Lp9/d;

    .line 2
    iget-object p1, p1, Lp9/d;->l:Landroid/view/View;

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lp9/d$a;->a:Lp9/d;

    .line 5
    iget-object p1, p1, Lp9/d;->l:Landroid/view/View;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lp9/d$a;->a:Lp9/d;

    .line 8
    invoke-virtual {p1}, Lp9/d;->b()V

    return-void
.end method
