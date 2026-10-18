.class public final Lo8/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GoogleVoicePromptActivity.kt"


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/GoogleVoicePromptActivity;)V
    .locals 0

    iput-object p1, p0, Lo8/i;->a:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lo8/i;->a:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    .line 2
    iget-object p1, p1, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->E:Lq7/i;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lq7/i;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
