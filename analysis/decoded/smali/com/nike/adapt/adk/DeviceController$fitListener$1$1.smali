.class final Lcom/nike/adapt/adk/DeviceController$fitListener$1$1;
.super Lrd/o;
.source "DeviceController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/DeviceController$fitListener$1;->invoke(Lv9/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lba/v;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/DeviceController;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/DeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceController$fitListener$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lba/v;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/DeviceController$fitListener$1$1;->invoke(Lba/v;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lba/v;)V
    .locals 6

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FindYouFit Update ::: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".toString()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController$fitListener$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    .line 4
    instance-of v1, p1, Lba/z;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/nike/adapt/adk/CalibrateResult;->MAXIMUM_FOUND_FIT:Lcom/nike/adapt/adk/CalibrateResult;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/nike/adapt/adk/CalibrateResult;->Companion:Lcom/nike/adapt/adk/CalibrateResult$Companion;

    invoke-virtual {v2, p1}, Lcom/nike/adapt/adk/CalibrateResult$Companion;->valueOf(Lba/v;)Lcom/nike/adapt/adk/CalibrateResult;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    move-object v1, p1

    check-cast v1, Lba/z;

    .line 6
    iget v1, v1, Lba/z;->k:I

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_1
    new-instance v3, Lcom/nike/adapt/adk/FitCalibrateResult;

    .line 9
    invoke-static {v0}, Lcom/nike/adapt/adk/DeviceController;->access$getControllerEventUUID$p(Lcom/nike/adapt/adk/DeviceController;)Li8/d;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lba/v;->a()I

    move-result p1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    sget-object p1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    .line 11
    :goto_2
    invoke-direct {v3, v4, p1, v2, v1}, Lcom/nike/adapt/adk/FitCalibrateResult;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lcom/nike/adapt/adk/CalibrateResult;Ljava/lang/String;)V

    .line 12
    invoke-static {v0, v3}, Lcom/nike/adapt/adk/DeviceController;->access$publish(Lcom/nike/adapt/adk/DeviceController;Li8/b;)V

    return-void
.end method
