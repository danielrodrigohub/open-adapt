.class public final enum Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;
.super Ljava/lang/Enum;
.source "AdaptDeviceLEDIntensityADK.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

.field public static final Companion:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK$Companion;

.field public static final enum HIGH:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

.field public static final enum HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

.field public static final enum LOW:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

.field public static final enum MEDIUM:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;


# instance fields
.field private final meter:I


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->LOW:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->MEDIUM:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGH:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->LOW:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->MEDIUM:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGH:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    .line 4
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    const-string v1, "HIGHEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->$values()[Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->Companion:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->meter:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    return-object v0
.end method


# virtual methods
.method public final getMeter()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->meter:I

    return v0
.end method
