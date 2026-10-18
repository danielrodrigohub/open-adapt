.class synthetic Lcom/newrelic/agent/android/harvest/HarvestResponse$1;
.super Ljava/lang/Object;
.source "HarvestResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/harvest/HarvestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->values()[Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/newrelic/agent/android/harvest/HarvestResponse$1;->$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I

    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->OK:Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/HarvestResponse$1;->$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I

    sget-object v1, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->ACCEPTED:Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
