.class public final Lz7/b;
.super Ljava/lang/Object;
.source "NspStreamApi.kt"

# interfaces
.implements Lz7/a;


# static fields
.field public static final b:Lz7/b;

.field public static final c:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz7/b;

    invoke-direct {v0}, Lz7/b;-><init>()V

    sput-object v0, Lz7/b;->b:Lz7/b;

    sget-object v0, Lz7/b$a;->h:Lz7/b$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lz7/b;->c:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La8/d;Ljd/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La8/d;",
            "Ljd/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lz7/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lz7/b$b;

    iget v1, v0, Lz7/b$b;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz7/b$b;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz7/b$b;

    invoke-direct {v0, p0, p2}, Lz7/b$b;-><init>(Lz7/b;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lz7/b$b;->h:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lz7/b$b;->j:I

    const/4 v3, 0x0

    const-string v4, "<this>"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    instance-of p2, p1, La8/i;

    if-eqz p2, :cond_5

    .line 5
    sget-object p2, Lz7/b;->c:Lfd/h;

    invoke-virtual {p2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nike/adapt/network/dataopt/datastream/NspStreamServiceApi;

    .line 6
    check-cast p1, La8/i;

    iput v6, v0, Lz7/b$b;->j:I

    invoke-interface {p2, p1, v0}, Lcom/nike/adapt/network/dataopt/datastream/NspStreamServiceApi;->sendStatsLeft(La8/i;Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 7
    :cond_4
    :goto_1
    check-cast p2, La8/f;

    .line 8
    invoke-static {p2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    throw v3

    .line 10
    :cond_5
    sget-object p2, Lz7/b;->c:Lfd/h;

    invoke-virtual {p2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nike/adapt/network/dataopt/datastream/NspStreamServiceApi;

    const-string v2, "null cannot be cast to non-null type com.nike.adapt.network.dataopt.datastream.model.ShoeStatsRight"

    .line 11
    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La8/j;

    iput v5, v0, Lz7/b$b;->j:I

    invoke-interface {p2, p1, v0}, Lcom/nike/adapt/network/dataopt/datastream/NspStreamServiceApi;->sendStatsRight(La8/j;Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 12
    :cond_6
    :goto_2
    check-cast p2, La8/f;

    .line 13
    invoke-static {p2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 15
    sget-object p2, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synShoeStats api : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
