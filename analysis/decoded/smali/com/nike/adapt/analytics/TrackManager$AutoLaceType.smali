.class public final enum Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;
.super Ljava/lang/Enum;
.source "TrackManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/analytics/TrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoLaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

.field public static final enum CUSTOM:Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

.field public static final enum DEFAULT:Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->CUSTOM:Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->DEFAULT:Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    const-string v3, "custom autolace"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->CUSTOM:Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    .line 2
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x1

    const-string v3, "default autolace"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->DEFAULT:Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    invoke-static {}, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->$values()[Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->$VALUES:[Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

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

    iput-object p3, p0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;
    .locals 1

    const-class v0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->$VALUES:[Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;->value:Ljava/lang/String;

    return-object v0
.end method
