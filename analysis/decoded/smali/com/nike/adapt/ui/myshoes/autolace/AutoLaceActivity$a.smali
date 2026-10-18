.class public final Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;
.super Lld/i;
.source "AutoLaceActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->onResume()V
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
    c = "com.nike.adapt.ui.myshoes.autolace.AutoLaceActivity$onResume$1"
    f = "AutoLaceActivity.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;->i:Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;

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

    new-instance p1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;->i:Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;

    invoke-direct {p1, v0, p2}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;-><init>(Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;->h:I

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
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a$a;

    iget-object v3, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;->i:Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a$a;-><init>(Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;Ljd/d;)V

    iput v2, p0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity$a;->h:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
