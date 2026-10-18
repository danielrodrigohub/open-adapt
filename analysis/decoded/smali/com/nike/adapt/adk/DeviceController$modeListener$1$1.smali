.class final Lcom/nike/adapt/adk/DeviceController$modeListener$1$1;
.super Lrd/o;
.source "DeviceController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/DeviceController$modeListener$1;->invoke(Lv9/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lea/r;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/DeviceController;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/DeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceController$modeListener$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lea/r;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/DeviceController$modeListener$1$1;->invoke(Lea/r;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lea/r;)V
    .locals 3

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController$modeListener$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    new-instance v1, Lcom/nike/adapt/adk/SnapshotListUpdated;

    iget-object v2, p0, Lcom/nike/adapt/adk/DeviceController$modeListener$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {v2}, Lcom/nike/adapt/adk/DeviceController;->access$getControllerEventUUID$p(Lcom/nike/adapt/adk/DeviceController;)Li8/d;

    move-result-object v2

    .line 3
    iget-object p1, p1, Lea/r;->i:Lea/m;

    .line 4
    invoke-direct {v1, v2, p1}, Lcom/nike/adapt/adk/SnapshotListUpdated;-><init>(Li8/d;Lea/m;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/adk/DeviceController;->access$publish(Lcom/nike/adapt/adk/DeviceController;Li8/b;)V

    return-void
.end method
