.class public final Lbd/a$a;
.super Ljava/lang/Object;
.source "DataStoreHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lbd/a;Ljava/util/List;Lqd/l;Ljd/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lbd/a;",
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

    instance-of v0, p3, Lbd/a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lbd/a$a$a;

    iget v1, v0, Lbd/a$a$a;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lbd/a$a$a;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lbd/a$a$a;

    invoke-direct {v0, p3}, Lbd/a$a$a;-><init>(Ljd/d;)V

    :goto_0
    iget-object p3, v0, Lbd/a$a$a;->h:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lbd/a$a$a;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-interface {p0, p1}, Lbd/a;->b(Ljava/util/List;)Z

    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    .line 7
    invoke-static {p0}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    :goto_2
    instance-of p0, p2, Lfd/f$a;

    xor-int/2addr p0, v3

    if-eqz p0, :cond_6

    .line 9
    :try_start_2
    check-cast p2, Lqd/l;

    .line 10
    iput v3, v0, Lbd/a$a$a;->i:I

    invoke-interface {p2, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    move-object p2, p3

    goto :goto_5

    .line 11
    :goto_4
    invoke-static {p0}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    .line 12
    :cond_6
    :goto_5
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    return-object p2
.end method
