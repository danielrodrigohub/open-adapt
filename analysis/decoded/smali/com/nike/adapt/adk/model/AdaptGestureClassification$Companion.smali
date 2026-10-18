.class public final Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;
.super Ljava/lang/Object;
.source "AdaptGestureNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptGestureClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lga/a$f;)Lcom/nike/adapt/adk/model/AdaptGestureClassification;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_DOUBLETAP_TRAINING:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_DOUBLETAP:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->CLASSIFICATION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    :goto_0
    return-object p1
.end method
