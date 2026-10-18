.class public final Lo9/l;
.super Lld/i;
.source "ShoeControllerActivity.kt"

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
    c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$onUnlaceClicked$1$1"
    f = "ShoeControllerActivity.kt"
    l = {
        0x239
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;",
            "Ljd/d<",
            "-",
            "Lo9/l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo9/l;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

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

    new-instance p1, Lo9/l;

    iget-object v0, p0, Lo9/l;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-direct {p1, v0, p2}, Lo9/l;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo9/l;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo9/l;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo9/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lo9/l;->h:I

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

    const-wide/16 v3, 0xbb8

    .line 4
    iput v2, p0, Lo9/l;->h:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lo9/l;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 6
    iget-object v0, p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lo9/s;->d(Ln3/r;Z)V

    .line 9
    invoke-virtual {v0, p1, v2}, Lo9/s;->d(Ln3/r;Z)V

    .line 10
    :cond_3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
