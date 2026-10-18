.class public final Lo9/k;
.super Ljava/lang/Object;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lcom/nike/adapt/ui/helper/BottomSheet$a;


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 2

    const-string p1, "bottomSheet"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->appIconBottomSheetSetSelected()V

    .line 2
    sget-object p1, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->i:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    iget-object p2, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 3
    invoke-virtual {p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Lh8/a;->Q()Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object p1

    iget-object p1, p1, Lq7/e0;->o:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/helper/BottomSheet;->u()Z

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 7
    invoke-virtual {p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p2

    const/4 v0, 0x0

    .line 8
    invoke-interface {p2, v0}, Lh8/a;->i(Z)V

    .line 9
    iget-object p2, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 10
    invoke-virtual {p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p2

    .line 11
    invoke-interface {p2, p1}, Lh8/a;->L(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V

    .line 12
    sget-object p2, Ls9/y;->a:Ls9/y;

    iget-object v0, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    new-instance v1, Lo9/k$a;

    invoke-direct {v1, v0}, Lo9/k$a;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-virtual {p2, v0, p1, v1}, Ls9/y;->a(Landroid/app/Activity;Lcom/nike/adapt/ui/settings/AppIconsActivity$a;Lqd/l;)Landroidx/appcompat/app/d;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->appIconBottomSheetMaybeLater()V

    .line 2
    iget-object v0, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 3
    iget-object v0, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->X:Lx8/n;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lx8/n$a;->j:Lx8/n$a;

    invoke-static {v0, v1}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 6
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-interface {v0, v1}, Lh8/a;->i(Z)V

    return-void
.end method

.method public final c(ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/Context;)V
    .locals 0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget p2, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 2
    invoke-virtual {p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lh8/a;->r()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->appIconBottomSheetPresented()V

    .line 5
    iget-object p1, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lh8/a;->t()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->appIconBottomSheetMaybeLater()V

    .line 2
    iget-object p1, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 3
    iget-object p1, p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->X:Lx8/n;

    if-eqz p1, :cond_0

    .line 4
    sget-object v0, Lx8/n$a;->j:Lx8/n$a;

    invoke-static {p1, v0}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lo9/k;->a:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0}, Lh8/a;->i(Z)V

    return-void
.end method
