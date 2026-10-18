.class public final Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;
.super Lld/i;
.source "AdaptUniteLoginActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/AdaptUniteLoginActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.nike.adapt.ui.AdaptUniteLoginActivity$onCreate$1"
    f = "AdaptUniteLoginActivity.kt"
    l = {
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/AdaptUniteLoginActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;->i:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

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

    new-instance p1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;->i:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    invoke-direct {p1, v0, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;-><init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;->i:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    sget-object v1, Landroidx/lifecycle/i$c;->j:Landroidx/lifecycle/i$c;

    new-instance v3, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;-><init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V

    iput v2, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;->h:I

    .line 5
    invoke-interface {p1}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object p1

    const-string v2, "lifecycle"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object v2

    sget-object v5, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    if-ne v2, v5, :cond_2

    .line 7
    sget-object p1, Lfd/o;->a:Lfd/o;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v2, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;

    invoke-direct {v2, p1, v1, v3, v4}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;-><init>(Landroidx/lifecycle/i;Landroidx/lifecycle/i$c;Lqd/p;Ljd/d;)V

    invoke-static {v2, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lfd/o;->a:Lfd/o;

    :goto_0
    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    sget-object p1, Lfd/o;->a:Lfd/o;

    :goto_1
    if-ne p1, v0, :cond_5

    return-object v0

    .line 10
    :cond_5
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
