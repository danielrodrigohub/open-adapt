.class public final Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;
.super Lld/i;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onAdaptDeviceControllerActionResult$5$1"
    f = "ShoeControllerActivity.kt"
    l = {
        0x3e4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/adk/DeviceControllerResult;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/DeviceControllerResult;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/adk/DeviceControllerResult;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;->i:Lcom/nike/adapt/adk/DeviceControllerResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;->i:Lcom/nike/adapt/adk/DeviceControllerResult;

    invoke-direct {p1, v0, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;-><init>(Lcom/nike/adapt/adk/DeviceControllerResult;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lm8/c;->b:Lm8/c;

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;->i:Lcom/nike/adapt/adk/DeviceControllerResult;

    check-cast p1, Lcom/nike/adapt/adk/GetDeviceStatsResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetDeviceStatsResult;->getShoeStats()La8/d;

    move-result-object p1

    iput v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$e$a;->h:I

    .line 6
    sget-object v1, Lm8/c;->d:Lfd/h;

    invoke-virtual {v1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz7/a;

    .line 7
    invoke-interface {v1, p1, p0}, Lz7/a;->a(La8/d;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
