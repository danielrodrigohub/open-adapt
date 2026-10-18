.class public final Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;
.super Ljava/lang/Object;
.source "AdaptGestureNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptGestureAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion$WhenMappings;
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

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lga/a$e;)Lcom/nike/adapt/adk/model/AdaptGestureAction;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_UNLACE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureAction;->ACTION_NONE:Lcom/nike/adapt/adk/model/AdaptGestureAction;

    :goto_0
    return-object p1
.end method
