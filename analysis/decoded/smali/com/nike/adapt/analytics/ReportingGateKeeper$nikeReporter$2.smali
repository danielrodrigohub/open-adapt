.class final Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;
.super Lrd/o;
.source "ReportingGateKeeper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/analytics/ReportingGateKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lcom/nike/adapt/analytics/NikeReporterImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;

    invoke-direct {v0}, Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;-><init>()V

    sput-object v0, Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;->INSTANCE:Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/nike/adapt/analytics/NikeReporterImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->INSTANCE:Lcom/nike/adapt/analytics/NikeReporterImpl;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/NikeReporterImpl;->initialize()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/analytics/ReportingGateKeeper$nikeReporter$2;->invoke()Lcom/nike/adapt/analytics/NikeReporterImpl;

    move-result-object v0

    return-object v0
.end method
