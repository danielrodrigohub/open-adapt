.class public final enum Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;
.super Ljava/lang/Enum;
.source "AdaptCurrentAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationEndingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

.field public static final enum BATTERY_OVERTEMP:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

.field public static final enum CANCELED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

.field public static final enum CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

.field public static final enum NOT_SET:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

.field public static final enum TIMEOUT:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

.field public static final enum UNRECOGNIZED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->NOT_SET:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->TIMEOUT:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->CANCELED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->BATTERY_OVERTEMP:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->UNRECOGNIZED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->NOT_SET:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->TIMEOUT:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const-string v1, "CANCELED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->CANCELED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    .line 4
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const-string v1, "BATTERY_OVERTEMP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->BATTERY_OVERTEMP:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    .line 5
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const-string v1, "CRITICAL_BATTERY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    .line 6
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->UNRECOGNIZED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->$values()[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    return-object v0
.end method
