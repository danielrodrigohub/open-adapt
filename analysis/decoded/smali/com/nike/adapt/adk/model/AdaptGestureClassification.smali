.class public final enum Lcom/nike/adapt/adk/model/AdaptGestureClassification;
.super Ljava/lang/Enum;
.source "AdaptGestureNotification.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/model/AdaptGestureClassification;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureClassification;

.field public static final enum CLASSIFICATION_DOUBLETAP:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

.field public static final enum CLASSIFICATION_DOUBLETAP_TRAINING:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

.field public static final enum CLASSIFICATION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

.field public static final enum CLASSIFICATION_UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptGestureClassification;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;


# instance fields
.field private final state:I

.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/model/AdaptGestureClassification;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_DOUBLETAP:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_DOUBLETAP_TRAINING:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const-string v1, "CLASSIFICATION_UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/nike/adapt/adk/model/AdaptGestureClassification;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const-string v1, "CLASSIFICATION_NONE"

    const/4 v2, 0x1

    const-string v3, "None"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/nike/adapt/adk/model/AdaptGestureClassification;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const-string v1, "CLASSIFICATION_DOUBLETAP"

    const/4 v2, 0x2

    const-string v3, "DoubleTap"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/nike/adapt/adk/model/AdaptGestureClassification;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_DOUBLETAP:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    .line 4
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const-string v1, "CLASSIFICATION_DOUBLETAP_TRAINING"

    const/4 v2, 0x3

    const-string v3, "Training"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/nike/adapt/adk/model/AdaptGestureClassification;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_DOUBLETAP_TRAINING:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->$values()[Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->Companion:Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptGestureClassification$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->state:I

    iput-object p4, p0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptGestureClassification;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/model/AdaptGestureClassification;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->state:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
