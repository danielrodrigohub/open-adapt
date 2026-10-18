.class final Lcom/newrelic/agent/android/NewRelicConfig;
.super Ljava/lang/Object;
.source "NewRelicConfig.java"


# static fields
.field public static final BUILD_ID:Ljava/lang/String; = "3c7a874e-f322-4626-ba07-ad8dcac43207"

.field public static final MAP_PROVIDER:Ljava/lang/String; = "r8"

.field public static final OBFUSCATED:Ljava/lang/Boolean;

.field public static final VERSION:Ljava/lang/String; = "6.8.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/newrelic/agent/android/NewRelicConfig;->OBFUSCATED:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildId()Ljava/lang/String;
    .locals 1

    const-string v0, "3c7a874e-f322-4626-ba07-ad8dcac43207"

    return-object v0
.end method
