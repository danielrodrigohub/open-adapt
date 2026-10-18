.class public final Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset$Companion;
.super Ljava/lang/Object;
.source "BigfootDevicePreset.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNO_PRESET()Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;
    .locals 1

    invoke-static {}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;->access$getNO_PRESET$cp()Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;

    move-result-object v0

    return-object v0
.end method
