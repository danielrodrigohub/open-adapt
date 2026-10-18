.class public final enum Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;
.super Ljava/lang/Enum;
.source "AdaptGestureConfigurationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

.field public static final enum ACTIVE_SESSION:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

.field public static final enum CONFIG_SET:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

.field public static final enum CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

.field public static final Companion:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;

.field public static final enum UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;


# instance fields
.field private final state:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->ACTIVE_SESSION:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->CONFIG_SET:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    const-string v1, "CRITICAL_BATTERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    const-string v1, "ACTIVE_SESSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->ACTIVE_SESSION:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    const-string v1, "CONFIG_SET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->CONFIG_SET:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    .line 4
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->$values()[Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->Companion:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->state:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    return-object v0
.end method


# virtual methods
.method public final getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->state:Ljava/lang/String;

    return-object v0
.end method
