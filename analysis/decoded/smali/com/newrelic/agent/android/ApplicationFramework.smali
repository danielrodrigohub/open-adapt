.class public final enum Lcom/newrelic/agent/android/ApplicationFramework;
.super Ljava/lang/Enum;
.source "ApplicationFramework.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/newrelic/agent/android/ApplicationFramework;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/newrelic/agent/android/ApplicationFramework;

.field public static final enum Cordova:Lcom/newrelic/agent/android/ApplicationFramework;

.field public static final enum Flutter:Lcom/newrelic/agent/android/ApplicationFramework;

.field public static final enum Native:Lcom/newrelic/agent/android/ApplicationFramework;

.field public static final enum ReactNative:Lcom/newrelic/agent/android/ApplicationFramework;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/ApplicationFramework;

    const-string v1, "Native"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/ApplicationFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/ApplicationFramework;->Native:Lcom/newrelic/agent/android/ApplicationFramework;

    .line 2
    new-instance v1, Lcom/newrelic/agent/android/ApplicationFramework;

    const-string v3, "ReactNative"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/newrelic/agent/android/ApplicationFramework;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/newrelic/agent/android/ApplicationFramework;->ReactNative:Lcom/newrelic/agent/android/ApplicationFramework;

    .line 3
    new-instance v3, Lcom/newrelic/agent/android/ApplicationFramework;

    const-string v5, "Cordova"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/newrelic/agent/android/ApplicationFramework;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/newrelic/agent/android/ApplicationFramework;->Cordova:Lcom/newrelic/agent/android/ApplicationFramework;

    .line 4
    new-instance v5, Lcom/newrelic/agent/android/ApplicationFramework;

    const-string v7, "Flutter"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/newrelic/agent/android/ApplicationFramework;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/newrelic/agent/android/ApplicationFramework;->Flutter:Lcom/newrelic/agent/android/ApplicationFramework;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/newrelic/agent/android/ApplicationFramework;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/newrelic/agent/android/ApplicationFramework;->$VALUES:[Lcom/newrelic/agent/android/ApplicationFramework;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/ApplicationFramework;
    .locals 1

    const-class v0, Lcom/newrelic/agent/android/ApplicationFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/newrelic/agent/android/ApplicationFramework;

    return-object p0
.end method

.method public static values()[Lcom/newrelic/agent/android/ApplicationFramework;
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/ApplicationFramework;->$VALUES:[Lcom/newrelic/agent/android/ApplicationFramework;

    invoke-virtual {v0}, [Lcom/newrelic/agent/android/ApplicationFramework;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/newrelic/agent/android/ApplicationFramework;

    return-object v0
.end method
