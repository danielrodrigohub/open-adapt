.class public final Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$d;
.super Lrd/o;
.source "BigfootOnBoardingActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lj8/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$d;->h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Lj8/a;->c:I

    iget-object v0, p0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$d;->h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;

    sget v1, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity;->I:I

    .line 2
    iget-object v0, v0, Lp8/q;->B:Li8/d;

    const-string v1, "eventUUID"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lj8/b;

    invoke-direct {v1, v0}, Lj8/b;-><init>(Li8/d;)V

    return-object v1
.end method
