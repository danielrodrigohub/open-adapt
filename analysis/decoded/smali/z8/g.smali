.class public final Lz8/g;
.super Lld/i;
.source "LightPacksActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
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
    c = "com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity$displayTooltip1$1$1$1"
    f = "LightPacksActivity.kt"
    l = {
        0x212
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;",
            "Ljd/d<",
            "-",
            "Lz8/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz8/g;->i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

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

    new-instance p1, Lz8/g;

    iget-object v0, p0, Lz8/g;->i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    invoke-direct {p1, v0, p2}, Lz8/g;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lz8/g;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lz8/g;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lz8/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lz8/g;->h:I

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

    const-wide/16 v3, 0x1f4

    .line 4
    iput v2, p0, Lz8/g;->h:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lz8/g;->i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p1

    iget-object p1, p1, Lq7/j;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lz8/g;->i:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 6
    iget-object v0, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->O:Lz8/b;

    if-eqz v0, :cond_3

    .line 7
    sget-object v1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->g0:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;

    sget-object v1, Lz8/a;->m:Lz8/a;

    invoke-static {v1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$a;->a(Lz8/a;)I

    move-result v1

    .line 8
    iget v0, v0, Lz8/b;->f:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->k0(I)V

    .line 10
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_3
    const-string p1, "lightPackAdapter"

    .line 11
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
