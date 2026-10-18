.class public final Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;
.super Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;
.source "AdaptGestureNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomGesture"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final customAction:Lcom/nike/adapt/adk/model/AdaptGestureAction;

.field private final customClassification:Lcom/nike/adapt/adk/model/AdaptGestureClassification;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/nike/adapt/adk/model/AdaptGestureAction;Lcom/nike/adapt/adk/model/AdaptGestureClassification;)V
    .locals 1

    const-string v0, "customAction"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customClassification"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;-><init>(Lcom/nike/adapt/adk/model/AdaptGestureAction;Lcom/nike/adapt/adk/model/AdaptGestureClassification;Lrd/h;)V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;->customAction:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;->customClassification:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;->customAction:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptGestureAction;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;->customClassification:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
