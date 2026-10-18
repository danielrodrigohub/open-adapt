.class public final Lac/b;
.super Ljava/lang/Object;
.source "PersistenceHelperImpl.kt"

# interfaces
.implements Lac/a;


# instance fields
.field public final a:Lzc/c;


# direct methods
.method public constructor <init>(Lzc/c;)V
    .locals 1

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lac/b;->a:Lzc/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lac/b$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lac/b$c;

    iget v1, v0, Lac/b$c;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lac/b$c;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lac/b$c;

    invoke-direct {v0, p0, p2}, Lac/b$c;-><init>(Lac/b;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lac/b$c;->j:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lac/b$c;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lac/b$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lac/b$c;->i:Ljava/lang/String;

    iget-object v2, v0, Lac/b$c;->h:Ljava/lang/Object;

    check-cast v2, Lac/b;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lac/b$c;->h:Ljava/lang/Object;

    iput-object p1, v0, Lac/b$c;->i:Ljava/lang/String;

    iput v4, v0, Lac/b$c;->l:I

    invoke-virtual {p0, v0}, Lac/b;->b(Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lgd/n;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 5
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    :try_start_1
    iget-object p1, v2, Lac/b;->a:Lzc/c;

    .line 7
    const-class v2, Ljava/util/Set;

    sget-object v5, Lwd/h;->c:Lwd/h$a;

    const-class v5, Ljava/lang/String;

    invoke-static {v5}, Lrd/x;->b(Ljava/lang/Class;)Lwd/g;

    move-result-object v5

    .line 8
    new-instance v6, Lwd/h;

    invoke-direct {v6, v4, v5}, Lwd/h;-><init>(ILwd/g;)V

    .line 9
    invoke-static {v2, v6}, Lrd/x;->c(Ljava/lang/Class;Lwd/h;)Lwd/g;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 10
    iput-object p2, v0, Lac/b$c;->h:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lac/b$c;->i:Ljava/lang/String;

    iput v3, v0, Lac/b$c;->l:I

    invoke-interface {p1, p2, v2, v0}, Lzc/b;->c(Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;Ljd/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_5

    return-object v1

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 12
    :cond_5
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final b(Ljd/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lac/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lac/b$a;

    iget v1, v0, Lac/b$a;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lac/b$a;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lac/b$a;

    invoke-direct {v0, p0, p1}, Lac/b$a;-><init>(Lac/b;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lac/b$a;->h:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lac/b$a;->j:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Lac/b;->a:Lzc/c;

    .line 5
    const-class v2, Ljava/util/Set;

    sget-object v4, Lwd/h;->c:Lwd/h$a;

    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lrd/x;->b(Ljava/lang/Class;)Lwd/g;

    move-result-object v4

    .line 6
    new-instance v5, Lwd/h;

    invoke-direct {v5, v3, v4}, Lwd/h;-><init>(ILwd/g;)V

    .line 7
    invoke-static {v2, v5}, Lrd/x;->c(Ljava/lang/Class;Lwd/h;)Lwd/g;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 8
    iput v3, v0, Lac/b$a;->j:I

    invoke-interface {p1, v2, v0}, Lzc/b;->e(Lkotlinx/serialization/DeserializationStrategy;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    :goto_2
    sget-object v0, Lgd/r;->h:Lgd/r;

    .line 11
    instance-of v1, p1, Lfd/f$a;

    if-eqz v1, :cond_4

    move-object p1, v0

    :cond_4
    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lac/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lac/b$b;

    iget v1, v0, Lac/b$b;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lac/b$b;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lac/b$b;

    invoke-direct {v0, p0, p2}, Lac/b$b;-><init>(Lac/b;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lac/b$b;->j:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lac/b$b;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lac/b$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lac/b$b;->i:Ljava/lang/String;

    iget-object v2, v0, Lac/b$b;->h:Ljava/lang/Object;

    check-cast v2, Lac/b;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lac/b$b;->h:Ljava/lang/Object;

    iput-object p1, v0, Lac/b$b;->i:Ljava/lang/String;

    iput v4, v0, Lac/b$b;->l:I

    invoke-virtual {p0, v0}, Lac/b;->b(Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lgd/n;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_5

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    :try_start_1
    iget-object p1, v2, Lac/b;->a:Lzc/c;

    .line 7
    const-class v2, Ljava/util/Set;

    sget-object v5, Lwd/h;->c:Lwd/h$a;

    const-class v5, Ljava/lang/String;

    invoke-static {v5}, Lrd/x;->b(Ljava/lang/Class;)Lwd/g;

    move-result-object v5

    .line 8
    new-instance v6, Lwd/h;

    invoke-direct {v6, v4, v5}, Lwd/h;-><init>(ILwd/g;)V

    .line 9
    invoke-static {v2, v6}, Lrd/x;->c(Ljava/lang/Class;Lwd/h;)Lwd/g;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 10
    iput-object p2, v0, Lac/b$b;->h:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lac/b$b;->i:Ljava/lang/String;

    iput v3, v0, Lac/b$b;->l:I

    invoke-interface {p1, p2, v2, v0}, Lzc/b;->c(Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;Ljd/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_5

    return-object v1

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 12
    :cond_5
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
