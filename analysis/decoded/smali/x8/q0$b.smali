.class public final Lx8/q0$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShoeControllerUiHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/q0;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx8/q0;


# direct methods
.method public constructor <init>(Lx8/q0;)V
    .locals 0

    iput-object p1, p0, Lx8/q0$b;->a:Lx8/q0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lx8/q0$b;->a:Lx8/q0;

    .line 3
    invoke-virtual {p1}, Lx8/q0;->i()Lx8/w;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lx8/q0$b;->a:Lx8/q0;

    .line 5
    invoke-virtual {v0}, Lx8/q0;->j()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "shoeController"

    .line 6
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lx8/q0$b;->a:Lx8/q0;

    .line 7
    iget-object v1, v1, Lx8/q0;->z:[F

    .line 8
    invoke-virtual {p1, v0, v1}, Lx8/w;->h(Landroid/view/View;[F)V

    return-void
.end method
