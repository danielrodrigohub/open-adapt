.class public Lcom/newrelic/agent/android/analytics/BreadcrumbEvent;
.super Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
.source "BreadcrumbEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Breadcrumb:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v1, "MobileBreadcrumb"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
