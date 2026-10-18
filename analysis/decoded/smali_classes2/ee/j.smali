.class public final Lee/j;
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
    c = "okio.internal._FileSystemKt$commonDeleteRecursively$sequence$1"
    f = "-FileSystem.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lde/k;

.field public final synthetic k:Lde/a0;


# direct methods
.method public constructor <init>(Lde/k;Lde/a0;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/k;",
            "Lde/a0;",
            "Ljd/d<",
            "-",
            "Lee/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lee/j;->j:Lde/k;

    iput-object p2, p0, Lee/j;->k:Lde/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/h;-><init>(ILjd/d;)V

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

    new-instance v0, Lee/j;

    iget-object v1, p0, Lee/j;->j:Lde/k;

    iget-object v2, p0, Lee/j;->k:Lde/a0;

    invoke-direct {v0, v1, v2, p2}, Lee/j;-><init>(Lde/k;Lde/a0;Ljd/d;)V

    iput-object p1, v0, Lee/j;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lxd/f;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lee/j;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lee/j;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lee/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lee/j;->h:I

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

    iget-object p1, p0, Lee/j;->i:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lxd/f;

    .line 4
    iget-object v4, p0, Lee/j;->j:Lde/k;

    .line 5
    new-instance v5, Lgd/f;

    invoke-direct {v5}, Lgd/f;-><init>()V

    .line 6
    iget-object v6, p0, Lee/j;->k:Lde/a0;

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 7
    iput v2, p0, Lee/j;->h:I

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Lee/i;->a(Lxd/f;Lde/k;Lgd/f;Lde/a0;ZZLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
