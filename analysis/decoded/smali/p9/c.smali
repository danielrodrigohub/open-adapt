.class public final Lp9/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TooltipPopUpView.kt"


# instance fields
.field public final synthetic a:Lp9/d;


# direct methods
.method public constructor <init>(Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lp9/c;->a:Lp9/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lp9/c;->a:Lp9/d;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lp9/d;->B:Z

    return-void
.end method
