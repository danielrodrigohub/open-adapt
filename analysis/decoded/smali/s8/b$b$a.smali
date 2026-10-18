.class public final Ls8/b$b$a;
.super Lld/i;
.source "DataOptInHomeFragment.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls8/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nike.adapt.ui.dataoptin.DataOptInHomeFragment$onDataOptInAllow$1$1"
    f = "DataOptInHomeFragment.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lrd/w;

.field public i:I

.field public final synthetic j:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrd/w;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljd/d<",
            "-",
            "Ls8/b$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ls8/b$b$a;->j:Lrd/w;

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

    new-instance p1, Ls8/b$b$a;

    iget-object v0, p0, Ls8/b$b$a;->j:Lrd/w;

    invoke-direct {p1, v0, p2}, Ls8/b$b$a;-><init>(Lrd/w;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Ls8/b$b$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Ls8/b$b$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Ls8/b$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Ls8/b$b$a;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ls8/b$b$a;->h:Lrd/w;

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
    iget-object p1, p0, Ls8/b$b$a;->j:Lrd/w;

    .line 5
    sget-object v1, Lm8/c;->b:Lm8/c;

    .line 6
    iput-object p1, p0, Ls8/b$b$a;->h:Lrd/w;

    iput v2, p0, Ls8/b$b$a;->i:I

    .line 7
    sget-object v1, Lm8/c;->c:Lfd/h;

    invoke-virtual {v1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb8/a;

    .line 8
    invoke-interface {v1, v2, p0}, Lb8/a;->b(ZLjd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 9
    :goto_0
    iput-object p1, v0, Lrd/w;->h:Ljava/lang/Object;

    .line 10
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
