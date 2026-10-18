.class final Lcom/nike/adapt/adk/DeviceController$pairListener$1$2$1;
.super Lrd/o;
.source "DeviceController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/DeviceController$pairListener$1$2;->invoke(Lv9/g2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/f;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/DeviceController;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/DeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceController$pairListener$1$2$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/f;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/DeviceController$pairListener$1$2$1;->invoke(Lv9/f;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/f;)V
    .locals 3

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController$pairListener$1$2$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {v0, p1}, Lcom/nike/adapt/adk/DeviceController;->access$mapAndPublishError(Lcom/nike/adapt/adk/DeviceController;Lv9/f;)V

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceController : allError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    return-void
.end method
