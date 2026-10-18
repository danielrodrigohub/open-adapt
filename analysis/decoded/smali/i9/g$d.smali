.class public final Li9/g$d;
.super Lrd/o;
.source "AdaptShoesOnboardingFragment.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li9/g;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Li9/g;


# direct methods
.method public constructor <init>(Li9/g;)V
    .locals 0

    iput-object p1, p0, Li9/g$d;->h:Li9/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Find Your Fit - Pressed: Skip"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->isDisconnectedCalibrationErrorSkipButtonSelected()V

    .line 5
    iget-object v0, p0, Li9/g$d;->h:Li9/g;

    .line 6
    iget-object v0, v0, Li9/g;->o0:Lj9/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x64

    .line 7
    iput v2, v0, Lj9/b;->c:I

    .line 8
    iput v2, v0, Lj9/b;->d:I

    .line 9
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 10
    iget-object p1, p0, Li9/g$d;->h:Li9/g;

    .line 11
    iput-object v1, p1, Li9/g;->x0:Landroidx/appcompat/app/d;

    .line 12
    iget-object p1, p1, Li9/g;->u0:Lo8/d;

    if-eqz p1, :cond_0

    .line 13
    sget-object v0, Lo8/a;->l:Lo8/a;

    invoke-interface {p1, v0}, Lo8/d;->O(Lo8/a;)V

    .line 14
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_0
    const-string p1, "stateListener"

    .line 15
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "adaptShoeUtils"

    .line 16
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
