.class public Lcom/newrelic/agent/android/ndk/NativeReporting;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "NativeReporting.java"

# interfaces
.implements Lcom/newrelic/agent/android/ndk/AgentNDKListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/ndk/NativeReporting$ANRException;,
        Lcom/newrelic/agent/android/ndk/NativeReporting$NativeUnhandledException;,
        Lcom/newrelic/agent/android/ndk/NativeReporting$NativeCrashException;
    }
.end annotation


# static fields
.field public static instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/newrelic/agent/android/ndk/NativeReporting;",
            ">;"
        }
    .end annotation
.end field

.field public static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getBuildId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;->withBuildId(Ljava/lang/String;)Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/newrelic/agent/android/AgentConfiguration;->getSessionID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;->withSessionId(Ljava/lang/String;)Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;->withReportListener(Lcom/newrelic/agent/android/ndk/AgentNDKListener;)Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;

    move-result-object p1

    sget-object p2, Lcom/newrelic/agent/android/ndk/NativeReporting;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 6
    invoke-virtual {p1, p2}, Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;->withLogger(Lcom/newrelic/agent/android/logging/AgentLog;)Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/AgentNDK$Builder;->build()Lcom/newrelic/agent/android/ndk/AgentNDK;

    return-void
.end method

.method public static crashNow(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/ndk/NativeReporting;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/ndk/AgentNDK;->getInstance()Lcom/newrelic/agent/android/ndk/AgentNDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/ndk/AgentNDK;->crashNow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/newrelic/agent/android/ndk/NativeReporting;
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/ndk/NativeReporting;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)Lcom/newrelic/agent/android/ndk/NativeReporting;
    .locals 2

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/newrelic/agent/android/ndk/NativeReporting;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/ndk/NativeReporting;-><init>(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    sget-object p0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object p0

    const-string p1, "Supportability/Mobile/Android/NDK/Init"

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/newrelic/agent/android/ndk/NativeReporting;

    return-object p0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/ndk/AgentNDK;->getInstance()Lcom/newrelic/agent/android/ndk/AgentNDK;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRooted()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/ndk/NativeReporting;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/Mobile/Android/NDK/RootedDevice"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/ndk/AgentNDK;->getInstance()Lcom/newrelic/agent/android/ndk/AgentNDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/ndk/AgentNDK;->isRooted()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shutdown()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/ndk/NativeReporting;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 3
    sget-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/ndk/NativeReporting;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/ndk/NativeReporting;->stop()V

    .line 4
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onApplicationNotResponding(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/Mobile/Android/NDK/Reports/ANR"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/ndk/NativeReporting$3;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/ndk/NativeReporting$3;-><init>(Lcom/newrelic/agent/android/ndk/NativeReporting;)V

    .line 3
    new-instance v1, Lcom/newrelic/agent/android/ndk/NativeReporting$ANRException;

    invoke-direct {v1, p1}, Lcom/newrelic/agent/android/ndk/NativeReporting$ANRException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/newrelic/agent/android/ndk/NativeException;->getNativeStackTrace()Lcom/newrelic/agent/android/ndk/NativeStackTrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/NativeStackTrace;->getCrashedThread()Lcom/newrelic/agent/android/ndk/NativeThreadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/NativeThreadInfo;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "crashingThreadId"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Lcom/newrelic/agent/android/ndk/NativeException;->getNativeStackTrace()Lcom/newrelic/agent/android/ndk/NativeStackTrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/NativeStackTrace;->getThreads()Ljava/util/List;

    move-result-object p1

    const-string v2, "nativeThreads"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Lcom/newrelic/agent/android/ndk/NativeException;->getNativeStackTrace()Lcom/newrelic/agent/android/ndk/NativeStackTrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/NativeStackTrace;->getExceptionMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "exceptionMessage"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/agentdata/AgentDataController;->sendAgentData(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public onHarvestStart()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/ndk/AgentNDK;->getInstance()Lcom/newrelic/agent/android/ndk/AgentNDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/ndk/AgentNDK;->flushPendingReports()V

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/Mobile/Android/NDK/Reports/Flush"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    return-void
.end method

.method public onNativeCrash(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/Mobile/Android/NDK/Reports/NativeCrash"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/newrelic/agent/android/ndk/NativeReporting$1;

    invoke-direct {v1, p0, v0}, Lcom/newrelic/agent/android/ndk/NativeReporting$1;-><init>(Lcom/newrelic/agent/android/ndk/NativeReporting;Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;)V

    .line 4
    new-instance v2, Lcom/newrelic/agent/android/ndk/NativeReporting$NativeCrashException;

    invoke-direct {v2, p1}, Lcom/newrelic/agent/android/ndk/NativeReporting$NativeCrashException;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    const-string v3, "platform"

    const-string v4, "native"

    invoke-direct {p1, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    const-string v3, "nativeCrash"

    const/4 v4, 0x1

    invoke-direct {p1, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/ndk/NativeException;->getNativeStackTrace()Lcom/newrelic/agent/android/ndk/NativeStackTrace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/ndk/NativeStackTrace;->getExceptionMessage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "exceptionMessage"

    invoke-direct {p1, v5, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/ndk/NativeException;->getNativeStackTrace()Lcom/newrelic/agent/android/ndk/NativeStackTrace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/ndk/NativeStackTrace;->getCrashedThread()Lcom/newrelic/agent/android/ndk/NativeThreadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/ndk/NativeThreadInfo;->getThreadId()J

    move-result-wide v5

    long-to-double v5, v5

    const-string v3, "crashingThreadId"

    invoke-direct {p1, v3, v5, v6}, Lcom/newrelic/agent/android/analytics/AnalyticsAttribute;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p1, Lcom/newrelic/agent/android/ndk/NativeCrash;

    .line 10
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/EventManager;->getQueuedEvents()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v2, v1, v0}, Lcom/newrelic/agent/android/ndk/NativeCrash;-><init>(Lcom/newrelic/agent/android/ndk/NativeException;Ljava/util/Set;Ljava/util/Collection;)V

    .line 11
    invoke-static {}, Lcom/newrelic/agent/android/crash/CrashReporter;->getInstance()Lcom/newrelic/agent/android/crash/CrashReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/crash/CrashReporter;->storeAndReportCrash(Lcom/newrelic/agent/android/crash/Crash;)V

    return v4
.end method

.method public onNativeException(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/Mobile/Android/NDK/Reports/NativeException"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/newrelic/agent/android/ndk/NativeReporting$2;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/ndk/NativeReporting$2;-><init>(Lcom/newrelic/agent/android/ndk/NativeReporting;)V

    .line 3
    new-instance v1, Lcom/newrelic/agent/android/ndk/NativeReporting$NativeUnhandledException;

    invoke-direct {v1, p1}, Lcom/newrelic/agent/android/ndk/NativeReporting$NativeUnhandledException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/newrelic/agent/android/ndk/NativeException;->getNativeStackTrace()Lcom/newrelic/agent/android/ndk/NativeStackTrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/NativeStackTrace;->getCrashedThread()Lcom/newrelic/agent/android/ndk/NativeThreadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/NativeThreadInfo;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "crashingThreadId"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Lcom/newrelic/agent/android/ndk/NativeException;->getNativeStackTrace()Lcom/newrelic/agent/android/ndk/NativeStackTrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/NativeStackTrace;->getThreads()Ljava/util/List;

    move-result-object p1

    const-string v2, "nativeThreads"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Lcom/newrelic/agent/android/ndk/NativeException;->getNativeStackTrace()Lcom/newrelic/agent/android/ndk/NativeStackTrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/ndk/NativeStackTrace;->getExceptionMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "exceptionMessage"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/agentdata/AgentDataController;->sendAgentData(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/ndk/NativeReporting;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/ndk/AgentNDK;->getInstance()Lcom/newrelic/agent/android/ndk/AgentNDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/ndk/AgentNDK;->start()Z

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/Mobile/Android/NDK/Start"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/newrelic/agent/android/ndk/NativeReporting;->isRooted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "RootedDevice"

    .line 5
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/NewRelic;->setAttribute(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/ndk/NativeReporting;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "CrashReporter: Must first initialize native module."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/newrelic/agent/android/ndk/NativeReporting;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/ndk/AgentNDK;->getInstance()Lcom/newrelic/agent/android/ndk/AgentNDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/ndk/AgentNDK;->stop()V

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/Mobile/Android/NDK/Stop"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
