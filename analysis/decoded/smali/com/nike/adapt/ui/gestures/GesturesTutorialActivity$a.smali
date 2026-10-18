.class public final synthetic Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$a;
.super Ljava/lang/Object;
.source "GesturesTutorialActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->values()[Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->CONFIG_SET:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$a;->a:[I

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Lq/g;->b(I)[I

    move-result-object v0

    .line 2
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v5, 0x6

    aput v4, v0, v5

    const/4 v4, 0x4

    aput v4, v0, v2

    aput v1, v0, v3

    aput v5, v0, v4

    return-void
.end method
