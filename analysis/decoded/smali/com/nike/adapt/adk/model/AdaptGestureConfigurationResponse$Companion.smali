.class public final Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;
.super Ljava/lang/Object;
.source "AdaptGestureConfigurationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion$WhenMappings;
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

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lga/b;)Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;
    .locals 1

    const-string v0, "configurationResponse"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->CONFIG_SET:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->ACTIVE_SESSION:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    :goto_0
    return-object p1
.end method
