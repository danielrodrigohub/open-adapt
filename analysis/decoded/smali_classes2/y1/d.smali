.class public final synthetic Ly1/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/d;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Ly1/d;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly1/d;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Ly1/d;->b:I

    .line 1
    iget-boolean v2, v0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0, v1}, Ly1/q;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ly1/q;->e(Landroid/content/Context;ILjava/lang/String;)Ly1/j0;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ly1/q;->e(Landroid/content/Context;ILjava/lang/String;)Ly1/j0;

    move-result-object v0

    :goto_0
    return-object v0
.end method
