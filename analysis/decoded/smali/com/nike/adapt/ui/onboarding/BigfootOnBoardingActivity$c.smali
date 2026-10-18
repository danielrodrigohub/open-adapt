.class public final Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$c;
.super Lrd/o;
.source "BigfootOnBoardingActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->onBackPressed()V
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
.field public final synthetic h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;

.field public final synthetic i:Lv7/g;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;Lv7/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$c;->h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;

    iput-object p2, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$c;->i:Lv7/g;

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

    const-string v1, "Multi-Pair Go Back - Pressed: Okay"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$c;->h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;

    iget-object v1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$c;->i:Lv7/g;

    sget v2, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->I:I

    .line 5
    sget-object v2, Lv7/g;->s:Lv7/g;

    if-ne v1, v2, :cond_0

    .line 6
    sget-object v1, Lv7/i;->j:Lv7/i;

    invoke-virtual {v0, v2, v1}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->q0(Lv7/g;Lv7/i;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lv7/i;->i:Lv7/i;

    invoke-virtual {v0, v2, v1}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->p0(Lv7/i;Lv7/g;)V

    .line 8
    :goto_0
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->multipairOnBackPressed()V

    .line 9
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 10
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
