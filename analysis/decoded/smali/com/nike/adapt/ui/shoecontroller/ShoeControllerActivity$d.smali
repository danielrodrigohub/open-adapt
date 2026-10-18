.class public final Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;
.super Lld/i;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
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
    c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onAdaptDeviceControllerActionResult$4"
    f = "ShoeControllerActivity.kt"
    l = {
        0x378,
        0x37b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lrd/w;

.field public i:I

.field public final synthetic j:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->j:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

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

    new-instance p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->j:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-direct {p1, v0, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->h:Lrd/w;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    sget-boolean p1, Lg0/n;->b:Z

    if-nez p1, :cond_a

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->j:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    const-string v1, "context"

    .line 6
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "connectivity"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 8
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-eqz p1, :cond_a

    .line 10
    sget-object p1, Lt8/a;->a:Lt8/a;

    .line 11
    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object v5

    invoke-interface {v5}, Lh8/a;->T()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object v5

    invoke-interface {v5}, Lh8/a;->y()I

    move-result v5

    if-lez v5, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    sget v5, Lt8/a;->b:I

    add-int/2addr v5, v4

    sput v5, Lt8/a;->b:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_5

    .line 13
    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object v5

    invoke-interface {v5, v4}, Lh8/a;->j0(I)V

    move v5, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v1

    :goto_2
    if-nez v5, :cond_8

    .line 14
    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object v5

    invoke-interface {v5}, Lh8/a;->T()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object v5

    invoke-interface {v5}, Lh8/a;->y()I

    move-result v5

    if-eq v5, v4, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object v5

    invoke-interface {v5}, Lh8/a;->G()I

    move-result v5

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_7

    .line 16
    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object p1

    invoke-interface {p1, v3}, Lh8/a;->j0(I)V

    move v1, v4

    :cond_7
    :goto_3
    if-eqz v1, :cond_a

    .line 17
    :cond_8
    new-instance v1, Lrd/w;

    invoke-direct {v1}, Lrd/w;-><init>()V

    .line 18
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v5, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$a;

    invoke-direct {v5, v1, v2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$a;-><init>(Lrd/w;Ljd/d;)V

    iput-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->h:Lrd/w;

    iput v4, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->i:I

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 19
    :cond_9
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v4, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;

    iget-object v5, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->j:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-direct {v4, v1, v5, v2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;-><init>(Lrd/w;Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V

    iput-object v2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->h:Lrd/w;

    iput v3, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->i:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 20
    :cond_a
    :goto_5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
