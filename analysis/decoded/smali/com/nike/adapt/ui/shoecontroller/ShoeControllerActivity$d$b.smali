.class public final Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;
.super Lld/i;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onAdaptDeviceControllerActionResult$4$2"
    f = "ShoeControllerActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lrd/w;Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->h:Lrd/w;

    iput-object p2, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

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

    new-instance p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->h:Lrd/w;

    iget-object v1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;-><init>(Lrd/w;Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->h:Lrd/w;

    iget-object p1, p1, Lrd/w;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 4
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lh8/a;->w(Z)V

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lt8/a;->a:Lt8/a;

    .line 7
    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object v0

    invoke-virtual {p1}, Lt8/a;->a()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->y()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lh8/a;->j0(I)V

    .line 8
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 9
    :cond_0
    sget-object p1, Lh9/k;->c:Lh9/k;

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$d$b;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 10
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 11
    :cond_1
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
