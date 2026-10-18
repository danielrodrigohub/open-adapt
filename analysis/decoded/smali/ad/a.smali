.class public final Lad/a;
.super Ljava/lang/Object;
.source "DefaultProviderHost.kt"

# interfaces
.implements Lad/e;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Led/e;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyc/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lkotlinx/coroutines/CompletableJob;

.field public final e:Ljd/f;

.field public f:Lad/f;

.field public final g:Lcd/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcd/e$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Led/e;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "adapt-app"

    .line 2
    iput-object v0, p0, Lad/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lad/a;->b:Led/e;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lad/a;->c:Ljava/util/ArrayList;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 5
    invoke-static {p2, v0, p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    iput-object v1, p0, Lad/a;->d:Lkotlinx/coroutines/CompletableJob;

    .line 6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-interface {v1, v2}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object v1

    iput-object v1, p0, Lad/a;->e:Ljd/f;

    .line 7
    new-instance v1, Lad/f;

    invoke-direct {v1, p2, v0, p2}, Lad/f;-><init>(Ljava/util/UUID;ILrd/h;)V

    iput-object v1, p0, Lad/a;->f:Lad/f;

    .line 8
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    new-instance p2, Lcd/a$b;

    invoke-direct {p2, p1}, Lcd/a$b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lad/a;->g:Lcd/a$b;

    return-void
.end method


# virtual methods
.method public final a()Lcd/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcd/e$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lad/a;->g:Lcd/a$b;

    return-object v0
.end method

.method public final b(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lyc/a$b;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/a$b;

    .line 3
    iget-object v1, p0, Lad/a;->c:Ljava/util/ArrayList;

    const-string v2, "<this>"

    .line 4
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lad/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/util/List;Lqd/l;Ljd/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lyc/a$b;",
            ">;",
            "Lqd/l<",
            "-",
            "Ljd/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljd/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lbd/a$a;->a(Lbd/a;Ljava/util/List;Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lad/f;
    .locals 1

    iget-object v0, p0, Lad/a;->f:Lad/f;

    return-object v0
.end method
