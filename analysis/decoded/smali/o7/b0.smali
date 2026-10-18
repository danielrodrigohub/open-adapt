.class public final Lo7/b0;
.super Ljava/lang/Object;
.source "SplashScreenActivity.kt"

# interfaces
.implements Ln3/o1$c;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/SplashScreenActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/SplashScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lo7/b0;->h:Lcom/nike/adapt/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final U(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lo7/b0;->h:Lcom/nike/adapt/SplashScreenActivity;

    .line 2
    iget p1, p1, Lcom/nike/adapt/SplashScreenActivity;->I:I

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->isOnboardingVideoCompleted()V

    .line 4
    iget-object p1, p0, Lo7/b0;->h:Lcom/nike/adapt/SplashScreenActivity;

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lh8/a;->A()V

    .line 7
    iget-object p1, p0, Lo7/b0;->h:Lcom/nike/adapt/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/nike/adapt/SplashScreenActivity;->n0()V

    :cond_0
    return-void
.end method
