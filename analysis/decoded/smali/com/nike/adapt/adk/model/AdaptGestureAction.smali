.class public final enum Lcom/nike/adapt/adk/model/AdaptGestureAction;
.super Ljava/lang/Enum;
.source "AdaptGestureNotification.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/model/AdaptGestureAction;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureAction;

.field public static final enum ACTION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

.field public static final enum ACTION_UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureAction;

.field public static final enum ACTION_UNLACE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptGestureAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;


# instance fields
.field private final state:I

.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/model/AdaptGestureAction;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nike/adapt/adk/model/AdaptGestureAction;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_UNLACE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;

    const-string v1, "ACTION_UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/nike/adapt/adk/model/AdaptGestureAction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;

    const-string v1, "ACTION_NONE"

    const/4 v2, 0x1

    const-string v3, "None"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/nike/adapt/adk/model/AdaptGestureAction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;

    const-string v1, "ACTION_UNLACE"

    const/4 v2, 0x2

    const-string v3, "Unlace"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/nike/adapt/adk/model/AdaptGestureAction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_UNLACE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptGestureAction;->$values()[Lcom/nike/adapt/adk/model/AdaptGestureAction;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureAction;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->Companion:Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureAction$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptGestureAction$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput p3, p0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->state:I

    iput-object p4, p0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptGestureAction;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/model/AdaptGestureAction;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/model/AdaptGestureAction;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->$VALUES:[Lcom/nike/adapt/adk/model/AdaptGestureAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/model/AdaptGestureAction;

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

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->state:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->type:Ljava/lang/String;

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
