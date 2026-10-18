.class final Lcom/nike/adapt/adk/DeviceController$pairListener$1$1$1;
.super Lrd/o;
.source "DeviceController.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/DeviceController$pairListener$1$1;->invoke(Lv9/h2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Lv9/g;",
        "Lw9/u1;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/DeviceController;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/DeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceController$pairListener$1$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/g;

    check-cast p2, Lw9/u1;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/DeviceController$pairListener$1$1$1;->invoke(Lv9/g;Lw9/u1;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/g;Lw9/u1;)V
    .locals 1

    const-string v0, "adaptKitControllerResult"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitShoe"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController$pairListener$1$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {v0, p2, p1}, Lcom/nike/adapt/adk/DeviceController;->access$mapAndUpdateDevice(Lcom/nike/adapt/adk/DeviceController;Lw9/u1;Lv9/g;)V

    return-void
.end method
