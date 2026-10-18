.class public final Lx8/q$d;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 3

    const-string v0, "bottomSheet"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lh9/v0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lh9/v0;-><init>(ZILrd/h;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksActivatedActionSheetOkButtonSelected()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksActivatedActionSheetDismissButtonSelected()V

    return-void
.end method

.method public final c(ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/Context;)V
    .locals 0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->lightPacksActivatedActionSheetPresented()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 0

    return-void
.end method
