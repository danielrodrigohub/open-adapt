.class public final synthetic Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$a;
.super Ljava/lang/Object;
.source "ShoeControllerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lq/g;->b(I)[I

    move-result-object v0

    .line 2
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v0, v2

    sput-object v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$a;->a:[I

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->values()[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v2, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2

    sget-object v2, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->BATTERY_OVERTEMP:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v3, v0, v2

    sput-object v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$a;->b:[I

    invoke-static {}, Ls9/r;->values()[Ls9/r;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v1, v0, v3

    sput-object v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$a;->c:[I

    return-void
.end method
