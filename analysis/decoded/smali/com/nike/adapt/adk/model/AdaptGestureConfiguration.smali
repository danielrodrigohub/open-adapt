.class public abstract Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;
.super Ljava/lang/Object;
.source "AdaptGestureNotification.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;,
        Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapTraining;,
        Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;,
        Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;
    }
.end annotation


# instance fields
.field private final action:Lcom/nike/adapt/adk/model/AdaptGestureAction;

.field private final classification:Lcom/nike/adapt/adk/model/AdaptGestureClassification;


# direct methods
.method private constructor <init>(Lcom/nike/adapt/adk/model/AdaptGestureAction;Lcom/nike/adapt/adk/model/AdaptGestureClassification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;->action:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;->classification:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nike/adapt/adk/model/AdaptGestureAction;Lcom/nike/adapt/adk/model/AdaptGestureClassification;Lrd/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;-><init>(Lcom/nike/adapt/adk/model/AdaptGestureAction;Lcom/nike/adapt/adk/model/AdaptGestureClassification;)V

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/nike/adapt/adk/model/AdaptGestureAction;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;->action:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    return-object v0
.end method

.method public final getClassification()Lcom/nike/adapt/adk/model/AdaptGestureClassification;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;->classification:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    return-object v0
.end method
