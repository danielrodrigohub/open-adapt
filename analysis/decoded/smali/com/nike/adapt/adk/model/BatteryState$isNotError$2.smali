.class final Lcom/nike/adapt/adk/model/BatteryState$isNotError$2;
.super Lrd/o;
.source "BatteryState.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/model/BatteryState;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/model/BatteryState;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/model/BatteryState;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/model/BatteryState$isNotError$2;->this$0:Lcom/nike/adapt/adk/model/BatteryState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/adk/model/BatteryState$isNotError$2;->this$0:Lcom/nike/adapt/adk/model/BatteryState;

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->CHARGING_ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/BatteryState$isNotError$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
