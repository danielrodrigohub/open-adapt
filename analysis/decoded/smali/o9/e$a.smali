.class public final Lo9/e$a;
.super Lld/i;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo9/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nike.adapt.ui.shoecontroller.ShoeControllerActivity$handleOptInData$1$1"
    f = "ShoeControllerActivity.kt"
    l = {
        0x309
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

.field public final synthetic j:Lcom/nike/adapt/adk/Shoe;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Lcom/nike/adapt/adk/Shoe;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;",
            "Lcom/nike/adapt/adk/Shoe;",
            "Ljd/d<",
            "-",
            "Lo9/e$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo9/e$a;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    iput-object p2, p0, Lo9/e$a;->j:Lcom/nike/adapt/adk/Shoe;

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

    new-instance p1, Lo9/e$a;

    iget-object v0, p0, Lo9/e$a;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    iget-object v1, p0, Lo9/e$a;->j:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {p1, v0, v1, p2}, Lo9/e$a;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Lcom/nike/adapt/adk/Shoe;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo9/e$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo9/e$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo9/e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lo9/e$a;->h:I

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
    sget p1, Lm8/b;->a:I

    .line 5
    sget-object p1, Lm8/c;->b:Lm8/c;

    .line 6
    iput v2, p0, Lo9/e$a;->h:I

    invoke-virtual {p1, p0}, Lm8/c;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lo9/e$a;->i:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->w0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iget-object v0, p0, Lo9/e$a;->j:Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lp8/z;->a:Lp8/z;

    invoke-interface {p1, v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 10
    :cond_3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
