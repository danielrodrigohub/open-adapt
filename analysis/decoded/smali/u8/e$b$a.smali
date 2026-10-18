.class public final Lu8/e$b$a;
.super Lld/i;
.source "ConnectingFragment.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.error.ConnectingFragment$onCreateView$1$2$1$1"
    f = "ConnectingFragment.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lu8/e;

.field public final synthetic j:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Lu8/e;Landroidx/fragment/app/p;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu8/e;",
            "Landroidx/fragment/app/p;",
            "Ljd/d<",
            "-",
            "Lu8/e$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu8/e$b$a;->i:Lu8/e;

    iput-object p2, p0, Lu8/e$b$a;->j:Landroidx/fragment/app/p;

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

    new-instance p1, Lu8/e$b$a;

    iget-object v0, p0, Lu8/e$b$a;->i:Lu8/e;

    iget-object v1, p0, Lu8/e$b$a;->j:Landroidx/fragment/app/p;

    invoke-direct {p1, v0, v1, p2}, Lu8/e$b$a;-><init>(Lu8/e;Landroidx/fragment/app/p;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lu8/e$b$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lu8/e$b$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lu8/e$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lu8/e$b$a;->h:I

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
    iget-object p1, p0, Lu8/e$b$a;->i:Lu8/e;

    .line 5
    iget p1, p1, Lu8/e;->e0:I

    .line 6
    iget-object v1, p0, Lu8/e$b$a;->j:Landroidx/fragment/app/p;

    const-string v3, "it"

    invoke-static {v1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lu8/e$b$a;->h:I

    .line 7
    new-instance v2, Ljd/i;

    invoke-static {p0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object v3

    invoke-direct {v2, v3}, Ljd/i;-><init>(Ljd/d;)V

    .line 8
    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    new-instance v4, Lx8/o;

    invoke-direct {v4, v1, p1, v2, v3}, Lx8/o;-><init>(Landroid/app/Activity;ILjd/d;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_2
    invoke-virtual {v2}, Ljd/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
