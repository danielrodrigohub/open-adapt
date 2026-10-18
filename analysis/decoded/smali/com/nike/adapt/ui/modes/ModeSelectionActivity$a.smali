.class public final synthetic Lcom/nike/adapt/ui/modes/ModeSelectionActivity$a;
.super Ljava/lang/Object;
.source "ModeSelectionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/modes/ModeSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/nike/adapt/adk/Shoe;->values()[Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sput-object v0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$a;->a:[I

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->values()[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->BATTERY_OVERTEMP:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$a;->b:[I

    return-void
.end method
