.class public final enum Lcom/nike/adapt/adk/model/BatteryState;
.super Ljava/lang/Enum;
.source "BatteryState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/model/BatteryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/model/BatteryState;

.field public static final enum CHARGING_ERROR:Lcom/nike/adapt/adk/model/BatteryState;

.field public static final enum ERROR:Lcom/nike/adapt/adk/model/BatteryState;

.field public static final enum OFF_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

.field public static final enum ON_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

.field public static final enum ON_CHARGING:Lcom/nike/adapt/adk/model/BatteryState;


# instance fields
.field private final isCharging$delegate:Lfd/d;

.field private final isError$delegate:Lfd/d;

.field private final isNotError$delegate:Lfd/d;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/model/BatteryState;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nike/adapt/adk/model/BatteryState;

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->ON_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->OFF_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->ON_CHARGING:Lcom/nike/adapt/adk/model/BatteryState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->CHARGING_ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/model/BatteryState;

    const-string v1, "ON_CHARGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/BatteryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/BatteryState;->ON_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/BatteryState;

    const-string v1, "OFF_CHARGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/BatteryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/BatteryState;->OFF_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/model/BatteryState;

    const-string v1, "ON_CHARGING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/BatteryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/BatteryState;->ON_CHARGING:Lcom/nike/adapt/adk/model/BatteryState;

    .line 4
    new-instance v0, Lcom/nike/adapt/adk/model/BatteryState;

    const-string v1, "CHARGING_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/BatteryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/BatteryState;->CHARGING_ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    .line 5
    new-instance v0, Lcom/nike/adapt/adk/model/BatteryState;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/BatteryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    invoke-static {}, Lcom/nike/adapt/adk/model/BatteryState;->$values()[Lcom/nike/adapt/adk/model/BatteryState;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/model/BatteryState;->$VALUES:[Lcom/nike/adapt/adk/model/BatteryState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Lcom/nike/adapt/adk/model/BatteryState$isError$2;

    invoke-direct {p1, p0}, Lcom/nike/adapt/adk/model/BatteryState$isError$2;-><init>(Lcom/nike/adapt/adk/model/BatteryState;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/adk/model/BatteryState;->isError$delegate:Lfd/d;

    .line 3
    new-instance p1, Lcom/nike/adapt/adk/model/BatteryState$isNotError$2;

    invoke-direct {p1, p0}, Lcom/nike/adapt/adk/model/BatteryState$isNotError$2;-><init>(Lcom/nike/adapt/adk/model/BatteryState;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/adk/model/BatteryState;->isNotError$delegate:Lfd/d;

    .line 4
    new-instance p1, Lcom/nike/adapt/adk/model/BatteryState$isCharging$2;

    invoke-direct {p1, p0}, Lcom/nike/adapt/adk/model/BatteryState$isCharging$2;-><init>(Lcom/nike/adapt/adk/model/BatteryState;)V

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/adk/model/BatteryState;->isCharging$delegate:Lfd/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/BatteryState;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/model/BatteryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/model/BatteryState;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/model/BatteryState;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/model/BatteryState;->$VALUES:[Lcom/nike/adapt/adk/model/BatteryState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/model/BatteryState;

    return-object v0
.end method


# virtual methods
.method public final isCharging()Z
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/BatteryState;->isCharging$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isError()Z
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/BatteryState;->isError$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isNotError()Z
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/BatteryState;->isNotError$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
