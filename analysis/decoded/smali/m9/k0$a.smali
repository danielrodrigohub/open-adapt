.class public final Lm9/k0$a;
.super Lld/i;
.source "ShoeProfileActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm9/k0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nike.adapt.ui.settings.ShoeProfileActivity$onRemoveShoe$2$1$1"
    f = "ShoeProfileActivity.kt"
    l = {
        0x12a,
        0x12b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

.field public final synthetic j:Landroidx/appcompat/app/d;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/ShoeProfileActivity;Landroidx/appcompat/app/d;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/settings/ShoeProfileActivity;",
            "Landroidx/appcompat/app/d;",
            "Ljd/d<",
            "-",
            "Lm9/k0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    iput-object p2, p0, Lm9/k0$a;->j:Landroidx/appcompat/app/d;

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

    new-instance p1, Lm9/k0$a;

    iget-object v0, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    iget-object v1, p0, Lm9/k0$a;->j:Landroidx/appcompat/app/d;

    invoke-direct {p1, v0, v1, p2}, Lm9/k0$a;-><init>(Lcom/nike/adapt/ui/settings/ShoeProfileActivity;Landroidx/appcompat/app/d;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lm9/k0$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lm9/k0$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lm9/k0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lm9/k0$a;->h:I

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
    iget-object p1, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    .line 5
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->T:Lh8/c;

    .line 6
    invoke-virtual {p1, v3}, Lh8/c;->C(Z)V

    .line 7
    iget-object p1, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    .line 8
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->T:Lh8/c;

    .line 9
    invoke-virtual {p1, v3}, Lh8/c;->g(Z)V

    .line 10
    iget-object p1, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    .line 11
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->T:Lh8/c;

    .line 12
    invoke-virtual {p1, v3}, Lh8/c;->g0(Z)V

    .line 13
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->multipairConnectedRemove()V

    .line 14
    iget-object p1, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    .line 15
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->I:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 16
    sget-object v4, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v5, Lp8/o;

    invoke-direct {v5, v1, v3, v1}, Lp8/o;-><init>(Lea/m;ILrd/h;)V

    invoke-interface {p1, v4, v5}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 17
    iget-object p1, p0, Lm9/k0$a;->j:Landroidx/appcompat/app/d;

    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 18
    iget-object p1, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    const-wide/16 v4, 0x12c

    .line 19
    iput v3, p0, Lm9/k0$a;->h:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 20
    :cond_3
    :goto_0
    sget-object p1, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    iput v2, p0, Lm9/k0$a;->h:I

    invoke-virtual {p1, p0}, Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 21
    :cond_4
    :goto_1
    sget-object p1, Ls9/c;->a:Ls9/c;

    iget-object v0, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    invoke-virtual {p1, v0}, Ls9/c;->g(Landroid/content/Context;)V

    .line 22
    iget-object p1, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 23
    iget-object p1, p0, Lm9/k0$a;->i:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_5
    const-string p1, "deviceController"

    .line 25
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
