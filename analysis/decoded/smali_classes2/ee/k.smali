.class public final Lee/k;
.super Lld/h;
.source "-FileSystem.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/h;",
        "Lqd/p<",
        "Lxd/f<",
        "-",
        "Lde/a0;",
        ">;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "okio.internal._FileSystemKt$commonListRecursively$1"
    f = "-FileSystem.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lgd/f;

.field public i:Ljava/util/Iterator;

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lde/a0;

.field public final synthetic m:Lde/k;

.field public final synthetic n:Z


# direct methods
.method public constructor <init>(Lde/a0;Lde/k;ZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/a0;",
            "Lde/k;",
            "Z",
            "Ljd/d<",
            "-",
            "Lee/k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lee/k;->l:Lde/a0;

    iput-object p2, p0, Lee/k;->m:Lde/k;

    iput-boolean p3, p0, Lee/k;->n:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lld/h;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 4
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

    new-instance v0, Lee/k;

    iget-object v1, p0, Lee/k;->l:Lde/a0;

    iget-object v2, p0, Lee/k;->m:Lde/k;

    iget-boolean v3, p0, Lee/k;->n:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lee/k;-><init>(Lde/a0;Lde/k;ZLjd/d;)V

    iput-object p1, v0, Lee/k;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lxd/f;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lee/k;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lee/k;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lee/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lee/k;->j:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lee/k;->i:Ljava/util/Iterator;

    iget-object v3, p0, Lee/k;->h:Lgd/f;

    iget-object v4, p0, Lee/k;->k:Ljava/lang/Object;

    check-cast v4, Lxd/f;

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

    iget-object p1, p0, Lee/k;->k:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lxd/f;

    .line 4
    new-instance v3, Lgd/f;

    invoke-direct {v3}, Lgd/f;-><init>()V

    .line 5
    iget-object p1, p0, Lee/k;->l:Lde/a0;

    invoke-virtual {v3, p1}, Lgd/f;->n(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lee/k;->m:Lde/k;

    iget-object v1, p0, Lee/k;->l:Lde/a0;

    invoke-virtual {p1, v1}, Lde/k;->list(Lde/a0;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object p1, v3

    move-object v10, v4

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lde/a0;

    .line 7
    iget-object v4, p0, Lee/k;->m:Lde/k;

    .line 8
    iget-boolean v7, p0, Lee/k;->n:Z

    const/4 v8, 0x0

    .line 9
    iput-object v10, p0, Lee/k;->k:Ljava/lang/Object;

    iput-object p1, p0, Lee/k;->h:Lgd/f;

    iput-object v1, p0, Lee/k;->i:Ljava/util/Iterator;

    iput v2, p0, Lee/k;->j:I

    move-object v3, v10

    move-object v5, p1

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Lee/i;->a(Lxd/f;Lde/k;Lgd/f;Lde/a0;ZZLjd/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    .line 10
    :cond_3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
