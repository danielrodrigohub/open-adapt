.class public final enum Lcom/nike/adapt/analytics/TrackManager$Screen;
.super Ljava/lang/Enum;
.source "TrackManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/analytics/TrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/analytics/TrackManager$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum ANIMATEDSPLASH:Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum FIT:Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum HOME:Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum LOGIN:Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum ORTHOTICS:Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum PAIRING:Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum PUT_ON_YOUR_SHOES:Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum SETTINGS:Lcom/nike/adapt/analytics/TrackManager$Screen;

.field public static final enum WELCOME:Lcom/nike/adapt/analytics/TrackManager$Screen;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/analytics/TrackManager$Screen;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nike/adapt/analytics/TrackManager$Screen;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->LOGIN:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->WELCOME:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->PUT_ON_YOUR_SHOES:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->FIT:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->ORTHOTICS:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->PAIRING:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->ANIMATEDSPLASH:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->HOME:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->SETTINGS:Lcom/nike/adapt/analytics/TrackManager$Screen;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    const-string v3, "Login"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->LOGIN:Lcom/nike/adapt/analytics/TrackManager$Screen;

    .line 2
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "WELCOME"

    const/4 v2, 0x1

    const-string v3, "Welcome"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->WELCOME:Lcom/nike/adapt/analytics/TrackManager$Screen;

    .line 3
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "PUT_ON_YOUR_SHOES"

    const/4 v2, 0x2

    const-string v3, "Put On Your Shoe"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->PUT_ON_YOUR_SHOES:Lcom/nike/adapt/analytics/TrackManager$Screen;

    .line 4
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "FIT"

    const/4 v2, 0x3

    const-string v3, "Fit"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->FIT:Lcom/nike/adapt/analytics/TrackManager$Screen;

    .line 5
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "ORTHOTICS"

    const/4 v2, 0x4

    const-string v3, "Orthotics"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->ORTHOTICS:Lcom/nike/adapt/analytics/TrackManager$Screen;

    .line 6
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "PAIRING"

    const/4 v2, 0x5

    const-string v3, "Pairing"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->PAIRING:Lcom/nike/adapt/analytics/TrackManager$Screen;

    .line 7
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "ANIMATEDSPLASH"

    const/4 v2, 0x6

    const-string v3, "Animated Splash"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->ANIMATEDSPLASH:Lcom/nike/adapt/analytics/TrackManager$Screen;

    .line 8
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "HOME"

    const/4 v2, 0x7

    const-string v3, "Home"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->HOME:Lcom/nike/adapt/analytics/TrackManager$Screen;

    .line 9
    new-instance v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    const-string v1, "SETTINGS"

    const/16 v2, 0x8

    const-string v3, "Settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/analytics/TrackManager$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->SETTINGS:Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-static {}, Lcom/nike/adapt/analytics/TrackManager$Screen;->$values()[Lcom/nike/adapt/analytics/TrackManager$Screen;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->$VALUES:[Lcom/nike/adapt/analytics/TrackManager$Screen;

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

    iput-object p3, p0, Lcom/nike/adapt/analytics/TrackManager$Screen;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/analytics/TrackManager$Screen;
    .locals 1

    const-class v0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/analytics/TrackManager$Screen;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/analytics/TrackManager$Screen;
    .locals 1

    sget-object v0, Lcom/nike/adapt/analytics/TrackManager$Screen;->$VALUES:[Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/analytics/TrackManager$Screen;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/analytics/TrackManager$Screen;->value:Ljava/lang/String;

    return-object v0
.end method
