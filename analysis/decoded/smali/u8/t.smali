.class public final Lu8/t;
.super Lld/i;
.source "NoInternetView.kt"

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
    c = "com.nike.adapt.ui.error.NoInternetViewKt$showNoInternetWebView$2$1$1"
    f = "NoInternetView.kt"
    l = {
        0x24,
        0x29
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:J

.field public i:I

.field public final synthetic j:Lu8/r;

.field public final synthetic k:Landroid/webkit/WebView;

.field public final synthetic l:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lu8/r;Landroid/webkit/WebView;Landroid/view/ViewGroup;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu8/r;",
            "Landroid/webkit/WebView;",
            "Landroid/view/ViewGroup;",
            "Ljd/d<",
            "-",
            "Lu8/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu8/t;->j:Lu8/r;

    iput-object p2, p0, Lu8/t;->k:Landroid/webkit/WebView;

    iput-object p3, p0, Lu8/t;->l:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 3
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

    new-instance p1, Lu8/t;

    iget-object v0, p0, Lu8/t;->j:Lu8/r;

    iget-object v1, p0, Lu8/t;->k:Landroid/webkit/WebView;

    iget-object v2, p0, Lu8/t;->l:Landroid/view/ViewGroup;

    invoke-direct {p1, v0, v1, v2, p2}, Lu8/t;-><init>(Lu8/r;Landroid/webkit/WebView;Landroid/view/ViewGroup;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lu8/t;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lu8/t;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lu8/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lu8/t;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-wide v4, p0, Lu8/t;->h:J

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lu8/t;->j:Lu8/r;

    const v1, 0x7f0a0484

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v5, 0x7d

    .line 5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lu8/t$a;

    invoke-direct {v1, v5, v6, v2}, Lu8/t$a;-><init>(JLjd/d;)V

    iput-wide v5, p0, Lu8/t;->h:J

    iput v4, p0, Lu8/t;->i:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-wide v4, v5

    .line 6
    :goto_0
    iget-object p1, p0, Lu8/t;->k:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lu8/t$b;

    invoke-direct {v1, v4, v5, v2}, Lu8/t$b;-><init>(JLjd/d;)V

    iput v3, p0, Lu8/t;->i:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_1
    iget-object p1, p0, Lu8/t;->l:Landroid/view/ViewGroup;

    iget-object v0, p0, Lu8/t;->j:Lu8/r;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
