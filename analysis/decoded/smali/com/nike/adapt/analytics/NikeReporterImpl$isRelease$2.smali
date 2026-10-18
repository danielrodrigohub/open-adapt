.class final Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;
.super Lrd/o;
.source "ReportingGateKeeper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/analytics/NikeReporterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;

    invoke-direct {v0}, Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;-><init>()V

    sput-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;->INSTANCE:Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "release"

    const-string v1, "RELEASE"

    .line 1
    invoke-static {v0, v1}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
