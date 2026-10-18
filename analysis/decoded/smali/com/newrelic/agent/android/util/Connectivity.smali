.class public final Lcom/newrelic/agent/android/util/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# static fields
.field private static final ANDROID:Ljava/lang/String; = "Android"

.field private static log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/Connectivity;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static carrierNameFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "unknown"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "none"

    return-object p0

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isHardwired(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "ethernet"

    return-object p0

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isWan(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->carrierNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "wifi"

    return-object p0

    .line 7
    :cond_3
    invoke-static {v1}, Lcom/newrelic/agent/android/util/Connectivity;->isBluetooth(Landroid/net/NetworkInfo;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "bluetooth"

    return-object p0

    .line 8
    :cond_4
    sget-object p0, Lcom/newrelic/agent/android/util/Connectivity;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Unknown network type: {0} [{1}]"

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    :catch_0
    return-object v0
.end method

.method private static carrierNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sdk_x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Android"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string p0, "wifi"

    :cond_3
    return-object p0

    :cond_4
    :goto_2
    const-string p0, "unknown"

    return-object p0
.end method

.method private static connectionNameFromNetworkSubtype(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "HSPAP"

    return-object p0

    :pswitch_1
    const-string p0, "HRPD"

    return-object p0

    :pswitch_2
    const-string p0, "LTE"

    return-object p0

    :pswitch_3
    const-string p0, "EVDO rev B"

    return-object p0

    :pswitch_4
    const-string p0, "IDEN"

    return-object p0

    :pswitch_5
    const-string p0, "HSPA"

    return-object p0

    :pswitch_6
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_7
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_8
    const-string p0, "1xRTT"

    return-object p0

    :pswitch_9
    const-string p0, "EVDO rev A"

    return-object p0

    :pswitch_a
    const-string p0, "EVDO rev 0"

    return-object p0

    :pswitch_b
    const-string p0, "CDMA"

    return-object p0

    :pswitch_c
    const-string p0, "UMTS"

    return-object p0

    :pswitch_d
    const-string p0, "EDGE"

    return-object p0

    :pswitch_e
    const-string p0, "GPRS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/newrelic/agent/android/util/Connectivity;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Cannot determine network state. Enable android.permission.ACCESS_NETWORK_STATE in your manifest."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 4
    throw p0
.end method

.method private static isBluetooth(Landroid/net/NetworkInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isConnected(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isHardwired(Landroid/net/NetworkInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isWan(Landroid/net/NetworkInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isWifi(Landroid/net/NetworkInfo;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static wanType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "none"

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "wifi"

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->isHardwired(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->connectionNameFromNetworkSubtype(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->isWan(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {p0}, Lcom/newrelic/agent/android/util/Connectivity;->connectionNameFromNetworkSubtype(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_3
    return-object v0
.end method
