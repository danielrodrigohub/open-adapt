.class Lcom/newrelic/agent/android/ndk/NativeReporting$1;
.super Ljava/util/HashSet;
.source "NativeReporting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/ndk/NativeReporting;->onNativeCrash(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/newrelic/agent/android/ndk/NativeReporting;

.field public final synthetic val$analyticsController:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/ndk/NativeReporting;Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/newrelic/agent/android/ndk/NativeReporting$1;->this$0:Lcom/newrelic/agent/android/ndk/NativeReporting;

    iput-object p2, p0, Lcom/newrelic/agent/android/ndk/NativeReporting$1;->val$analyticsController:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributes()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
