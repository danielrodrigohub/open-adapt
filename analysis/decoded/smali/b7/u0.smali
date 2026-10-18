.class public final Lb7/u0;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Lb7/e1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb7/e1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lb7/q0;

.field public final b:Lb7/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/l1<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lb7/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/q<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb7/l1;Lb7/q;Lb7/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb7/l1<",
            "**>;",
            "Lb7/q<",
            "*>;",
            "Lb7/q0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb7/u0;->b:Lb7/l1;

    .line 3
    invoke-virtual {p2, p3}, Lb7/q;->e(Lb7/q0;)Z

    move-result p1

    iput-boolean p1, p0, Lb7/u0;->c:Z

    .line 4
    iput-object p2, p0, Lb7/u0;->d:Lb7/q;

    .line 5
    iput-object p3, p0, Lb7/u0;->a:Lb7/q0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/u0;->b:Lb7/l1;

    sget-object v1, Lb7/f1;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1}, Lb7/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p2}, Lb7/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lb7/l1;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1, v1}, Lb7/l1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Lb7/u0;->c:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lb7/u0;->d:Lb7/q;

    invoke-static {v0, p1, p2}, Lb7/f1;->A(Lb7/q;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/u0;->b:Lb7/l1;

    invoke-virtual {v0, p1}, Lb7/l1;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lb7/u0;->d:Lb7/q;

    invoke-virtual {v0, p1}, Lb7/q;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/u0;->d:Lb7/q;

    invoke-virtual {v0, p1}, Lb7/q;->c(Ljava/lang/Object;)Lb7/t;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lb7/t;->i()Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/u0;->b:Lb7/l1;

    invoke-virtual {v0, p1}, Lb7/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb7/u0;->b:Lb7/l1;

    invoke-virtual {v1, p2}, Lb7/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lb7/u0;->c:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lb7/u0;->d:Lb7/q;

    invoke-virtual {v0, p1}, Lb7/q;->c(Ljava/lang/Object;)Lb7/t;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lb7/u0;->d:Lb7/q;

    invoke-virtual {v0, p2}, Lb7/q;->c(Ljava/lang/Object;)Lb7/t;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lb7/t;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/u0;->b:Lb7/l1;

    .line 2
    invoke-virtual {v0, p1}, Lb7/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lb7/l1;->i(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 4
    iget-boolean v2, p0, Lb7/u0;->c:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lb7/u0;->d:Lb7/q;

    invoke-virtual {v2, p1}, Lb7/q;->c(Ljava/lang/Object;)Lb7/t;

    move-result-object p1

    move v2, v1

    .line 6
    :goto_0
    iget-object v3, p1, Lb7/t;->a:Lb7/h1;

    invoke-virtual {v3}, Lb7/h1;->d()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, p1, Lb7/t;->a:Lb7/h1;

    invoke-virtual {v3, v1}, Lb7/h1;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb7/t;->g(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p1, Lb7/t;->a:Lb7/h1;

    invoke-virtual {v1}, Lb7/h1;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-virtual {p1, v3}, Lb7/t;->g(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/u0;->a:Lb7/q0;

    invoke-interface {v0}, Lb7/q0;->d()Lb7/q0$a;

    move-result-object v0

    check-cast v0, Lb7/x$a;

    .line 2
    invoke-virtual {v0}, Lb7/x$a;->i()Lb7/x;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/u0;->b:Lb7/l1;

    invoke-virtual {v0, p1}, Lb7/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lb7/u0;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb7/u0;->d:Lb7/q;

    invoke-virtual {v1, p1}, Lb7/q;->c(Ljava/lang/Object;)Lb7/t;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lb7/t;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final h(Ljava/lang/Object;Lb7/t1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb7/t1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/u0;->d:Lb7/q;

    invoke-virtual {v0, p1}, Lb7/q;->c(Ljava/lang/Object;)Lb7/t;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lb7/t;->k()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb7/t$a;

    .line 6
    invoke-interface {v2}, Lb7/t$a;->e()Lb7/s1;

    move-result-object v3

    sget-object v4, Lb7/s1;->q:Lb7/s1;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lb7/t$a;->c()V

    invoke-interface {v2}, Lb7/t$a;->f()V

    .line 7
    instance-of v3, v1, Lb7/c0$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lb7/t$a;->a()V

    check-cast v1, Lb7/c0$b;

    .line 9
    iget-object v1, v1, Lb7/c0$b;->h:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb7/c0;

    .line 10
    invoke-virtual {v1}, Lb7/d0;->b()Lb7/i;

    move-result-object v1

    .line 11
    move-object v2, p2

    check-cast v2, Lb7/m;

    invoke-virtual {v2, v4, v1}, Lb7/m;->l(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v2}, Lb7/t$a;->a()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lb7/m;

    invoke-virtual {v2, v4, v1}, Lb7/m;->l(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    iget-object v0, p0, Lb7/u0;->b:Lb7/l1;

    .line 15
    invoke-virtual {v0, p1}, Lb7/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lb7/l1;->r(Ljava/lang/Object;Lb7/t1;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;Lb7/d1;Lb7/p;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb7/d1;",
            "Lb7/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v7, p0, Lb7/u0;->b:Lb7/l1;

    iget-object v8, p0, Lb7/u0;->d:Lb7/q;

    .line 2
    invoke-virtual {v7, p1}, Lb7/l1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3
    invoke-virtual {v8, p1}, Lb7/q;->d(Ljava/lang/Object;)Lb7/t;

    move-result-object v10

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lb7/d1;->r()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v7, p1, v9}, Lb7/l1;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, v8

    move-object v4, v10

    move-object v5, v7

    move-object v6, v9

    .line 6
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lb7/u0;->k(Lb7/d1;Lb7/p;Lb7/q;Lb7/t;Lb7/l1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p2

    .line 7
    invoke-virtual {v7, p1, v9}, Lb7/l1;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    throw p2
.end method

.method public final j(Ljava/lang/Object;[BIILb7/e$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lb7/e$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lb7/x;

    iget-object v1, v0, Lb7/x;->unknownFields:Lb7/m1;

    .line 2
    sget-object v2, Lb7/m1;->f:Lb7/m1;

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lb7/m1;

    invoke-direct {v1}, Lb7/m1;-><init>()V

    .line 4
    iput-object v1, v0, Lb7/x;->unknownFields:Lb7/m1;

    .line 5
    :cond_0
    check-cast p1, Lb7/x$c;

    .line 6
    invoke-virtual {p1}, Lb7/x$c;->x()Lb7/t;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_b

    .line 7
    invoke-static {p2, p3, p5}, Lb7/e;->t([BILb7/e$a;)I

    move-result v4

    .line 8
    iget v2, p5, Lb7/e$a;->a:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    .line 9
    iget-object p3, p0, Lb7/u0;->d:Lb7/q;

    iget-object v0, p5, Lb7/e$a;->d:Lb7/p;

    iget-object v3, p0, Lb7/u0;->a:Lb7/q0;

    ushr-int/lit8 v5, v2, 0x3

    .line 10
    invoke-virtual {p3, v0, v3, v5}, Lb7/q;->b(Lb7/p;Lb7/q0;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lb7/x$e;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 11
    invoke-static/range {v2 .. v7}, Lb7/e;->r(I[BIILb7/m1;Lb7/e$a;)I

    move-result p3

    goto :goto_0

    .line 12
    :cond_1
    sget-object p2, Lb7/a1;->c:Lb7/a1;

    .line 13
    throw p1

    .line 14
    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Lb7/e;->w(I[BIILb7/e$a;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_9

    .line 15
    invoke-static {p2, v4, p5}, Lb7/e;->t([BILb7/e$a;)I

    move-result v4

    .line 16
    iget v5, p5, Lb7/e$a;->a:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-ne v7, v3, :cond_7

    .line 17
    invoke-static {p2, v4, p5}, Lb7/e;->a([BILb7/e$a;)I

    move-result v4

    .line 18
    iget-object v2, p5, Lb7/e$a;->c:Ljava/lang/Object;

    check-cast v2, Lb7/i;

    goto :goto_1

    .line 19
    :cond_5
    sget-object p2, Lb7/a1;->c:Lb7/a1;

    .line 20
    throw p1

    :cond_6
    if-nez v7, :cond_7

    .line 21
    invoke-static {p2, v4, p5}, Lb7/e;->t([BILb7/e$a;)I

    move-result v4

    .line 22
    iget p3, p5, Lb7/e$a;->a:I

    .line 23
    iget-object v0, p0, Lb7/u0;->d:Lb7/q;

    iget-object v5, p5, Lb7/e$a;->d:Lb7/p;

    iget-object v6, p0, Lb7/u0;->a:Lb7/q0;

    .line 24
    invoke-virtual {v0, v5, v6, p3}, Lb7/q;->b(Lb7/p;Lb7/q0;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7/x$e;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-ne v5, v6, :cond_8

    goto :goto_3

    .line 25
    :cond_8
    invoke-static {v5, p2, v4, p4, p5}, Lb7/e;->w(I[BIILb7/e$a;)I

    move-result v4

    goto :goto_1

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 26
    invoke-virtual {v1, p3, v2}, Lb7/m1;->b(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    .line 27
    :cond_c
    invoke-static {}, Lb7/a0;->g()Lb7/a0;

    move-result-object p1

    throw p1
.end method

.method public final k(Lb7/d1;Lb7/p;Lb7/q;Lb7/t;Lb7/l1;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lb7/t$a<",
            "TET;>;>(",
            "Lb7/d1;",
            "Lb7/p;",
            "Lb7/q<",
            "TET;>;",
            "Lb7/t<",
            "TET;>;",
            "Lb7/l1<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lb7/d1;->a()I

    move-result p4

    const/4 v0, 0x1

    const/16 v1, 0xb

    if-eq p4, v1, :cond_2

    and-int/lit8 v1, p4, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2
    iget-object v1, p0, Lb7/u0;->a:Lb7/q0;

    ushr-int/lit8 p4, p4, 0x3

    .line 3
    invoke-virtual {p3, p2, v1, p4}, Lb7/q;->b(Lb7/p;Lb7/q0;I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p3, p2}, Lb7/q;->h(Ljava/lang/Object;)V

    return v0

    .line 5
    :cond_0
    invoke-virtual {p5, p6, p1}, Lb7/l1;->l(Ljava/lang/Object;Lb7/d1;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-interface {p1}, Lb7/d1;->B()Z

    move-result p1

    return p1

    :cond_2
    const/4 p4, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 7
    :cond_3
    :goto_0
    invoke-interface {p1}, Lb7/d1;->r()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-interface {p1}, Lb7/d1;->a()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 9
    invoke-interface {p1}, Lb7/d1;->y()I

    move-result p4

    .line 10
    iget-object v1, p0, Lb7/u0;->a:Lb7/q0;

    .line 11
    invoke-virtual {p3, p2, v1, p4}, Lb7/q;->b(Lb7/p;Lb7/q0;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_7

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p3, v1}, Lb7/q;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-interface {p1}, Lb7/d1;->w()Lb7/i;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_7
    invoke-interface {p1}, Lb7/d1;->B()Z

    move-result v3

    if-nez v3, :cond_3

    .line 15
    :goto_1
    invoke-interface {p1}, Lb7/d1;->a()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_a

    if-eqz v2, :cond_9

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p3, v1}, Lb7/q;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_8
    invoke-virtual {p5, p6, p4, v2}, Lb7/l1;->d(Ljava/lang/Object;ILb7/i;)V

    :cond_9
    :goto_2
    return v0

    .line 18
    :cond_a
    invoke-static {}, Lb7/a0;->a()Lb7/a0;

    move-result-object p1

    throw p1
.end method
