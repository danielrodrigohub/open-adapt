.class public final Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;
.super Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;
.source "AdaptGestureNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Off"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;-><init>(Lcom/nike/adapt/adk/model/AdaptGestureAction;Lcom/nike/adapt/adk/model/AdaptGestureClassification;Lrd/h;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
