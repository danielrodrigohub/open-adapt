.class final Lcom/nike/adapt/adk/DeviceController$pairListener$1$1;
.super Lrd/o;
.source "DeviceController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/DeviceController$pairListener$1;->invoke(Lv9/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/h2<",
        "Lv9/g;",
        ">;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/DeviceController;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/DeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceController$pairListener$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/h2;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/DeviceController$pairListener$1$1;->invoke(Lv9/h2;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/h2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/h2<",
            "Lv9/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/DeviceController$pairListener$1$1$1;

    iget-object v1, p0, Lcom/nike/adapt/adk/DeviceController$pairListener$1$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/DeviceController$pairListener$1$1$1;-><init>(Lcom/nike/adapt/adk/DeviceController;)V

    .line 3
    iput-object v0, p1, Lv9/h2;->c:Lqd/p;

    return-void
.end method
