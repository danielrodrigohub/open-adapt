.class public final Lx8/q$f;
.super Ljava/lang/Object;
.source "BottomSheetManagers.kt"

# interfaces
.implements Lcom/nike/adapt/ui/helper/BottomSheet$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx8/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lx8/q$f;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p2}, Lcom/nike/adapt/analytics/TrackManager;->googleVoiceLacingNotificationTryNow()V

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VOICE_COMMAND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->googleVoiceLacingNotificationDismiss()V

    return-void
.end method

.method public final c(ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v0, 0x1

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 3
    iget v2, p0, Lx8/q$f;->a:I

    if-ne v2, v1, :cond_1

    .line 4
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->googleVoiceLacingNotificationPresented()V

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v1, -0x1

    int-to-float v1, v1

    mul-float/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0x190

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    if-eq p1, v0, :cond_2

    .line 6
    iput p1, p0, Lx8/q$f;->a:I

    :cond_2
    return-void
.end method

.method public final d(Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 0

    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->googleVoiceLacingNotificationDismiss()V

    return-void
.end method
