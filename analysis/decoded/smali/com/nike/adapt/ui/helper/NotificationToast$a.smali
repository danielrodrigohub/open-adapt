.class public final Lcom/nike/adapt/ui/helper/NotificationToast$a;
.super Ljava/lang/Object;
.source "NotificationToast.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/helper/NotificationToast;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/helper/NotificationToast;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/helper/NotificationToast;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/helper/NotificationToast$a;->a:Lcom/nike/adapt/ui/helper/NotificationToast;

    iput-boolean p2, p0, Lcom/nike/adapt/ui/helper/NotificationToast$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nike/adapt/ui/helper/NotificationToast$a;->a:Lcom/nike/adapt/ui/helper/NotificationToast;

    iget-boolean v0, p0, Lcom/nike/adapt/ui/helper/NotificationToast$a;->b:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nike/adapt/ui/helper/NotificationToast$a;->a:Lcom/nike/adapt/ui/helper/NotificationToast;

    iget-boolean v0, p0, Lcom/nike/adapt/ui/helper/NotificationToast$a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
