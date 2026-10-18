.class public final Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$b;
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


# static fields
.field public static final h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$b;

    invoke-direct {v0}, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$b;-><init>()V

    sput-object v0, Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$b;->h:Lcom/nike/adapt/ui/onboarding/BigfootOnBoardingActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Multi-Pair Go Back - Pressed: Dismiss"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
