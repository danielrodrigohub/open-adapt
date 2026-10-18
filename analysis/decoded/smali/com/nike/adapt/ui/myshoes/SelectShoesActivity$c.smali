.class public final Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SelectShoesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$c;->a:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    new-instance p1, Lh9/v0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lh9/v0;-><init>(ZILrd/h;)V

    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$c;->a:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$c;->a:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
