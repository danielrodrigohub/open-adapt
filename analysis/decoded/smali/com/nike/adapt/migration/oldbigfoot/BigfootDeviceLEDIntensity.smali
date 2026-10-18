.class public final enum Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;
.super Ljava/lang/Enum;
.source "BigfootDeviceLEDIntensity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

.field public static final Companion:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity$Companion;

.field public static final enum HIGH:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

.field public static final enum HIGHEST:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

.field public static final enum LOW:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

.field public static final enum MEDIUM:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;


# instance fields
.field private final meter:I


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->LOW:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->MEDIUM:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->HIGH:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->HIGHEST:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->LOW:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    .line 2
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->MEDIUM:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    .line 3
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->HIGH:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    .line 4
    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    const-string v1, "HIGHEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->HIGHEST:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    invoke-static {}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->$values()[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->$VALUES:[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->Companion:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->meter:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;
    .locals 1

    const-class v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;
    .locals 1

    sget-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->$VALUES:[Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;

    return-object v0
.end method


# virtual methods
.method public final getMeter()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceLEDIntensity;->meter:I

    return v0
.end method
