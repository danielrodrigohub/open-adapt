.class public final Lf9/h$a;
.super Lld/i;
.source "SelectShoesActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf9/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nike.adapt.ui.myshoes.SelectShoesActivity$onRemoveShoes$2$1$1"
    f = "SelectShoesActivity.kt"
    l = {
        0x8a,
        0x8b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

.field public final synthetic j:Landroidx/appcompat/app/d;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;Landroidx/appcompat/app/d;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;",
            "Landroidx/appcompat/app/d;",
            "Ljd/d<",
            "-",
            "Lf9/h$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lf9/h$a;->i:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    iput-object p2, p0, Lf9/h$a;->j:Landroidx/appcompat/app/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
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

    new-instance p1, Lf9/h$a;

    iget-object v0, p0, Lf9/h$a;->i:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    iget-object v1, p0, Lf9/h$a;->j:Landroidx/appcompat/app/d;

    invoke-direct {p1, v0, v1, p2}, Lf9/h$a;-><init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;Landroidx/appcompat/app/d;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lf9/h$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lf9/h$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lf9/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lf9/h$a;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lf9/h$a;->i:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    .line 5
    iget-object v1, p1, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v1, :cond_5

    .line 6
    iget-object p1, p1, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->M:Lea/m;

    .line 7
    invoke-interface {v1, p1}, Lcom/nike/adapt/adk/IDeviceController;->deleteDisconnectedShoes(Lea/m;)V

    .line 8
    iget-object p1, p0, Lf9/h$a;->j:Landroidx/appcompat/app/d;

    invoke-virtual {p1}, Lf/n;->dismiss()V

    const-wide/16 v4, 0x12c

    .line 9
    iput v3, p0, Lf9/h$a;->h:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_0
    sget-object p1, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    iput v2, p0, Lf9/h$a;->h:I

    invoke-virtual {p1, p0}, Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    :goto_1
    iget-object p1, p0, Lf9/h$a;->i:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lf9/h$a;->i:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 13
    iget-object p1, p0, Lf9/h$a;->i:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 14
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_5
    const-string p1, "deviceController"

    .line 15
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
