.class public final synthetic Lx8/s$b;
.super Ljava/lang/Object;
.source "EffectsHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx8/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->values()[Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->RUNNING:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->QUEUED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->INTERRUPTED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lx8/s$b;->a:[I

    return-void
.end method
