.class public final synthetic Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$a;
.super Ljava/lang/Object;
.source "GestureIntroModalActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

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

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;->UNKNOWN:Lcom/nike/adapt/adk/model/AdaptGestureConfigurationResponse;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$a;->a:[I

    return-void
.end method
