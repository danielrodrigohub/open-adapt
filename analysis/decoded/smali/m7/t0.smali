.class public final Lm7/t0;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Lm7/c1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm7/c1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lm7/p0;

.field public final b:Lm7/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/i1<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lm7/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/p<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/i1;Lm7/p;Lm7/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/i1<",
            "**>;",
            "Lm7/p<",
            "*>;",
            "Lm7/p0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm7/t0;->b:Lm7/i1;

    .line 3
    invoke-virtual {p2, p3}, Lm7/p;->e(Lm7/p0;)Z

    move-result p1

    iput-boolean p1, p0, Lm7/t0;->c:Z

    .line 4
    iput-object p2, p0, Lm7/t0;->d:Lm7/p;

    .line 5
    iput-object p3, p0, Lm7/t0;->a:Lm7/p0;

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
    iget-object v0, p0, Lm7/t0;->b:Lm7/i1;

    sget-object v1, Lm7/d1;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1}, Lm7/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p2}, Lm7/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lm7/i1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1, v1}, Lm7/i1;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Lm7/t0;->c:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lm7/t0;->d:Lm7/p;

    invoke-static {v0, p1, p2}, Lm7/d1;->A(Lm7/p;Ljava/lang/Object;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lm7/t0;->b:Lm7/i1;

    invoke-virtual {v0, p1}, Lm7/i1;->e(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lm7/t0;->d:Lm7/p;

    invoke-virtual {v0, p1}, Lm7/p;->f(Ljava/lang/Object;)V

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
    iget-object v0, p0, Lm7/t0;->d:Lm7/p;

    invoke-virtual {v0, p1}, Lm7/p;->c(Ljava/lang/Object;)Lm7/s;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lm7/s;->i()Z

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
    iget-object v0, p0, Lm7/t0;->b:Lm7/i1;

    invoke-virtual {v0, p1}, Lm7/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lm7/t0;->b:Lm7/i1;

    invoke-virtual {v1, p2}, Lm7/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lm7/t0;->c:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lm7/t0;->d:Lm7/p;

    invoke-virtual {v0, p1}, Lm7/p;->c(Ljava/lang/Object;)Lm7/s;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lm7/t0;->d:Lm7/p;

    invoke-virtual {v0, p2}, Lm7/p;->c(Ljava/lang/Object;)Lm7/s;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lm7/s;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lm7/t0;->b:Lm7/i1;

    .line 2
    invoke-virtual {v0, p1}, Lm7/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lm7/i1;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 4
    iget-boolean v2, p0, Lm7/t0;->c:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lm7/t0;->d:Lm7/p;

    invoke-virtual {v2, p1}, Lm7/p;->c(Ljava/lang/Object;)Lm7/s;

    move-result-object p1

    move v2, v1

    .line 6
    :goto_0
    iget-object v3, p1, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v3}, Lm7/f1;->d()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, p1, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v3, v1}, Lm7/f1;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {p1, v3}, Lm7/s;->g(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p1, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v1}, Lm7/f1;->e()Ljava/lang/Iterable;

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
    invoke-virtual {p1, v3}, Lm7/s;->g(Ljava/util/Map$Entry;)I

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
    iget-object v0, p0, Lm7/t0;->a:Lm7/p0;

    invoke-interface {v0}, Lm7/p0;->d()Lm7/p0$a;

    move-result-object v0

    check-cast v0, Lm7/w$a;

    .line 2
    invoke-virtual {v0}, Lm7/w$a;->i()Lm7/w;

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
    iget-object v0, p0, Lm7/t0;->b:Lm7/i1;

    invoke-virtual {v0, p1}, Lm7/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lm7/t0;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lm7/t0;->d:Lm7/p;

    invoke-virtual {v1, p1}, Lm7/p;->c(Ljava/lang/Object;)Lm7/s;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lm7/s;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final h(Ljava/lang/Object;[BIILm7/e$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lm7/e$a;",
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

    check-cast v0, Lm7/w;

    iget-object v1, v0, Lm7/w;->unknownFields:Lm7/j1;

    .line 2
    sget-object v2, Lm7/j1;->f:Lm7/j1;

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lm7/j1;

    invoke-direct {v1}, Lm7/j1;-><init>()V

    .line 4
    iput-object v1, v0, Lm7/w;->unknownFields:Lm7/j1;

    .line 5
    :cond_0
    check-cast p1, Lm7/w$c;

    .line 6
    invoke-virtual {p1}, Lm7/w$c;->x()Lm7/s;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_b

    .line 7
    invoke-static {p2, p3, p5}, Lm7/e;->t([BILm7/e$a;)I

    move-result v4

    .line 8
    iget v2, p5, Lm7/e$a;->a:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    .line 9
    iget-object p3, p0, Lm7/t0;->d:Lm7/p;

    iget-object v0, p5, Lm7/e$a;->d:Lm7/o;

    iget-object v3, p0, Lm7/t0;->a:Lm7/p0;

    ushr-int/lit8 v5, v2, 0x3

    .line 10
    invoke-virtual {p3, v0, v3, v5}, Lm7/p;->b(Lm7/o;Lm7/p0;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lm7/w$e;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 11
    invoke-static/range {v2 .. v7}, Lm7/e;->r(I[BIILm7/j1;Lm7/e$a;)I

    move-result p3

    goto :goto_0

    .line 12
    :cond_1
    sget-object p2, Lm7/z0;->c:Lm7/z0;

    .line 13
    throw p1

    .line 14
    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Lm7/e;->w(I[BIILm7/e$a;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_9

    .line 15
    invoke-static {p2, v4, p5}, Lm7/e;->t([BILm7/e$a;)I

    move-result v4

    .line 16
    iget v5, p5, Lm7/e$a;->a:I

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
    invoke-static {p2, v4, p5}, Lm7/e;->a([BILm7/e$a;)I

    move-result v4

    .line 18
    iget-object v2, p5, Lm7/e$a;->c:Ljava/lang/Object;

    check-cast v2, Lm7/i;

    goto :goto_1

    .line 19
    :cond_5
    sget-object p2, Lm7/z0;->c:Lm7/z0;

    .line 20
    throw p1

    :cond_6
    if-nez v7, :cond_7

    .line 21
    invoke-static {p2, v4, p5}, Lm7/e;->t([BILm7/e$a;)I

    move-result v4

    .line 22
    iget p3, p5, Lm7/e$a;->a:I

    .line 23
    iget-object v0, p0, Lm7/t0;->d:Lm7/p;

    iget-object v5, p5, Lm7/e$a;->d:Lm7/o;

    iget-object v6, p0, Lm7/t0;->a:Lm7/p0;

    .line 24
    invoke-virtual {v0, v5, v6, p3}, Lm7/p;->b(Lm7/o;Lm7/p0;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/w$e;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-ne v5, v6, :cond_8

    goto :goto_3

    .line 25
    :cond_8
    invoke-static {v5, p2, v4, p4, p5}, Lm7/e;->w(I[BIILm7/e$a;)I

    move-result v4

    goto :goto_1

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 26
    invoke-virtual {v1, p3, v2}, Lm7/j1;->b(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    .line 27
    :cond_c
    invoke-static {}, Lm7/z;->d()Lm7/z;

    move-result-object p1

    throw p1
.end method

.method public final i(Ljava/lang/Object;Lm7/q1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lm7/q1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/t0;->d:Lm7/p;

    invoke-virtual {v0, p1}, Lm7/p;->c(Ljava/lang/Object;)Lm7/s;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm7/s;->l()Ljava/util/Iterator;

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

    check-cast v2, Lm7/s$a;

    .line 6
    invoke-interface {v2}, Lm7/s$a;->e()Lm7/p1;

    move-result-object v3

    sget-object v4, Lm7/p1;->q:Lm7/p1;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lm7/s$a;->c()V

    invoke-interface {v2}, Lm7/s$a;->f()V

    .line 7
    instance-of v3, v1, Lm7/b0$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lm7/s$a;->a()V

    check-cast v1, Lm7/b0$b;

    .line 9
    iget-object v1, v1, Lm7/b0$b;->h:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm7/b0;

    .line 10
    invoke-virtual {v1}, Lm7/c0;->b()Lm7/i;

    move-result-object v1

    .line 11
    move-object v2, p2

    check-cast v2, Lm7/l;

    invoke-virtual {v2, v4, v1}, Lm7/l;->l(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v2}, Lm7/s$a;->a()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lm7/l;

    invoke-virtual {v2, v4, v1}, Lm7/l;->l(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    iget-object v0, p0, Lm7/t0;->b:Lm7/i1;

    .line 15
    invoke-virtual {v0, p1}, Lm7/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lm7/i1;->i(Ljava/lang/Object;Lm7/q1;)V

    return-void
.end method
