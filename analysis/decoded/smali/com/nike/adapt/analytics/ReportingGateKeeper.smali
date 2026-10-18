.class public final Lcom/nike/adapt/analytics/ReportingGateKeeper;
.super Ljava/lang/Object;
.source "ReportingGateKeeper.kt"


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/analytics/ReportingGateKeeper;

.field private static final externalReporter$delegate:Lfd/d;

.field private static final nikeReporter$delegate:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/analytics/ReportingGateKeeper;

    invoke-direct {v0}, Lcom/nike/adapt/analytics/ReportingGateKeeper;-><init>()V

    sput-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper;->INSTANCE:Lcom/nike/adapt/analytics/ReportingGateKeeper;

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;->INSTANCE:Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper;->nikeReporter$delegate:Lfd/d;

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper$externalReporter$2;->INSTANCE:Lcom/nike/adapt/analytics/ReportingGateKeeper$externalReporter$2;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper;->externalReporter$delegate:Lfd/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getNikeReporter$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getExternalReporter()Lo7/o;
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper;->externalReporter$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/o;

    return-object v0
.end method

.method public final getNikeReporter()Lcom/nike/adapt/analytics/NikeReporter;
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper;->nikeReporter$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/analytics/NikeReporter;

    return-object v0
.end method

.method public final report(Lcom/nike/adapt/analytics/AnalysisEvent;)V
    .locals 1

    const-string v0, "analysisEvent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/analytics/AnalysisEvent;->getBreadCrumb()Lcom/nike/adapt/analytics/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper;->INSTANCE:Lcom/nike/adapt/analytics/ReportingGateKeeper;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/ReportingGateKeeper;->getNikeReporter()Lcom/nike/adapt/analytics/NikeReporter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nike/adapt/analytics/NikeReporter;->report(Lcom/nike/adapt/analytics/Track;)V

    :cond_0
    return-void
.end method
