.class public final Li9/g0;
.super Lrd/o;
.source "WelcomeOnBoardingFragment.kt"

# interfaces
.implements Lqd/l;


# annotations
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
.field public static final h:Li9/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li9/g0;

    invoke-direct {v0}, Li9/g0;-><init>()V

    sput-object v0, Li9/g0;->h:Li9/g0;

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
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Welcome - Pressed: Logout"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->isPairingLogout()V

    .line 5
    sget-object p1, Ls9/m;->a:Ls9/m;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Ls9/m;->b(ZZI)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
