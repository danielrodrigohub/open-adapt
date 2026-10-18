.class final Lcom/nike/adapt/analytics/NikeReporterImpl;
.super Ljava/lang/Object;
.source "ReportingGateKeeper.kt"

# interfaces
.implements Lcom/nike/adapt/analytics/NikeReporter;


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/analytics/NikeReporterImpl;

.field private static final KEY_CAUSE:Ljava/lang/String; = "cause"

.field private static final KEY_TAG:Ljava/lang/String; = "tag"

.field private static final SHOE_IDENTIFIER_BOTH:Ljava/lang/String; = "shoeIdentifierBoth"

.field private static final SHOE_IDENTIFIER_LEFT:Ljava/lang/String; = "shoeIdentifierLeft"

.field private static final SHOE_IDENTIFIER_RIGHT:Ljava/lang/String; = "shoeIdentifierRight"

.field private static final eventType:Ljava/lang/String; = "Log"

.field private static final isRelease$delegate:Lfd/d;

.field private static final lock:Ljava/lang/Object;

.field private static final logTypeEvent:Ljava/lang/String; = "Log"

.field private static final performanceTypeEvent:Ljava/lang/String; = "Performance"

.field private static final sessionId$delegate:Lfd/d;

.field private static final timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/nike/adapt/analytics/NikeReporterImpl;

    invoke-direct {v0}, Lcom/nike/adapt/analytics/NikeReporterImpl;-><init>()V

    sput-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->INSTANCE:Lcom/nike/adapt/analytics/NikeReporterImpl;

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;->INSTANCE:Lcom/nike/adapt/analytics/NikeReporterImpl$isRelease$2;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->isRelease$delegate:Lfd/d;

    .line 2
    sget-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl$sessionId$2;->INSTANCE:Lcom/nike/adapt/analytics/NikeReporterImpl$sessionId$2;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->sessionId$delegate:Lfd/d;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEEE, MMMMM dd, yyyy hh:mm:ss aaa zzzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addShoeSerialNumber(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lf1/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shoeIdentifierLeft"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1}, Lf1/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shoeIdentifierRight"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf1/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shoeIdentifierBoth"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private final getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/nike/adapt/BigfootApplicationState;->h:Lcom/nike/adapt/BigfootApplicationState;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-boolean v2, Lcom/nike/adapt/BigfootApplicationState;->k:Z

    if-eqz v2, :cond_0

    const-string v2, "bg"

    goto :goto_0

    :cond_0
    const-string v2, "fg"

    :goto_0
    const-string v3, " \u2192 "

    const-string v4, " \u2192 "

    .line 6
    invoke-static {v1, v3, p1, v4, v2}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "applicationName"

    const-string v3, "Bigfoot Android"

    .line 7
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    .line 8
    invoke-static {p3}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    :goto_2
    if-nez v4, :cond_3

    const-string v4, "duration"

    .line 9
    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    sget-object p3, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p3}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    if-eqz v5, :cond_5

    const-string v5, "firmwareLeft"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_5
    invoke-virtual {p3}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p3

    invoke-interface {p3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    if-eqz v4, :cond_7

    const-string v4, "firmwareRight"

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    invoke-direct {p0, v0}, Lcom/nike/adapt/analytics/NikeReporterImpl;->addShoeSerialNumber(Ljava/util/HashMap;)V

    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_8

    goto :goto_5

    :cond_8
    move v1, v3

    :goto_5
    if-eqz v1, :cond_a

    const-string p3, "message"

    const/16 v1, 0xfff

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v1, v4, :cond_9

    move v1, v4

    :cond_9
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string p1, "sessionID"

    .line 17
    invoke-direct {p0}, Lcom/nike/adapt/analytics/NikeReporterImpl;->getSessionId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "logType"

    .line 18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p1, Lcom/nike/adapt/analytics/NikeReporterImpl;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p2, "time"

    .line 20
    sget-object p3, Lcom/nike/adapt/analytics/NikeReporterImpl;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "timeFormat.format(Calendar.getInstance().time)"

    invoke-static {p3, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p1

    const-string p1, "applicationState"

    .line 22
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "os"

    const-string p2, "Android"

    .line 23
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "applicationVersion"

    const-string p2, "1.29.3"

    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p1, Lh8/c;->b:Lh8/c;

    .line 26
    invoke-virtual {p1}, Lh8/c;->R()Lcom/nike/adapt/presenter/profile/AdaptUser;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string p2, "userId"

    .line 27
    invoke-virtual {p1}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getNuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object v0

    :catchall_0
    move-exception p2

    .line 28
    monitor-exit p1

    throw p2
.end method

.method public static synthetic getAttributes$default(Lcom/nike/adapt/analytics/NikeReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/analytics/NikeReporterImpl;->getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final getSessionId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->sessionId$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final isRelease()Z
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->isRelease$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final notifyEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nike/adapt/analytics/NikeReporterImpl;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Log"

    if-nez p2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "action"

    move-object v1, p0

    move-object v2, p1

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/nike/adapt/analytics/NikeReporterImpl;->getAttributes$default(Lcom/nike/adapt/analytics/NikeReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/NewRelic;->recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "action"

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/nike/adapt/analytics/NikeReporterImpl;->getAttributes$default(Lcom/nike/adapt/analytics/NikeReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lgd/z;->F(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/NewRelic;->recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic notifyEvent$default(Lcom/nike/adapt/analytics/NikeReporterImpl;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nike/adapt/analytics/NikeReporterImpl;->notifyEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/NikeReporterImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    const-string v0, "AAb9fcb58709db55cac5bbcb2047a26c65c1122fb5"

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v0

    sget-object v1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    return-void
.end method

.method public log(Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/u;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p3, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 4
    invoke-virtual {p5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p5, "cause"

    invoke-interface {v1, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p6, :cond_2

    .line 5
    invoke-static {p6}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_3

    const-string p2, "Performance"

    goto :goto_2

    :cond_3
    const-string p2, "Log"

    :goto_2
    sget-object p5, Lcom/nike/adapt/analytics/NikeReporterImpl;->INSTANCE:Lcom/nike/adapt/analytics/NikeReporterImpl;

    invoke-direct {p5, p3, p1, p6}, Lcom/nike/adapt/analytics/NikeReporterImpl;->getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lgd/z;->F(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 7
    invoke-interface {p1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p4, :cond_4

    .line 8
    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    :cond_4
    invoke-static {p2, p1}, Lcom/newrelic/agent/android/NewRelic;->recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method public report(Lcom/nike/adapt/analytics/Track;)V
    .locals 1

    const-string v0, "track"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/Track;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/Track;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/nike/adapt/analytics/NikeReporterImpl;->notifyEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
