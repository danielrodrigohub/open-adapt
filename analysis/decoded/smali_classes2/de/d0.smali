.class public final Lde/d0;
.super Ljava/lang/Object;
.source "RealBufferedSource.kt"

# interfaces
.implements Lde/f;


# instance fields
.field public final h:Lde/j0;

.field public final i:Lde/c;

.field public j:Z


# direct methods
.method public constructor <init>(Lde/j0;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lde/d0;->h:Lde/j0;

    .line 3
    new-instance p1, Lde/c;

    invoke-direct {p1}, Lde/c;-><init>()V

    iput-object p1, p0, Lde/d0;->i:Lde/c;

    return-void
.end method


# virtual methods
.method public final B(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lde/c;->B(J)[B

    move-result-object p1

    return-object p1
.end method

.method public final E(Lde/h0;)J
    .locals 8

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v4, p0, Lde/d0;->h:Lde/j0;

    .line 2
    iget-object v5, p0, Lde/d0;->i:Lde/c;

    const-wide/16 v6, 0x2000

    .line 3
    invoke-interface {v4, v5, v6, v7}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 4
    iget-object v4, p0, Lde/d0;->i:Lde/c;

    .line 5
    invoke-virtual {v4}, Lde/c;->f0()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    .line 6
    iget-object v6, p0, Lde/d0;->i:Lde/c;

    .line 7
    move-object v7, p1

    check-cast v7, Lde/c;

    invoke-virtual {v7, v6, v4, v5}, Lde/c;->write(Lde/c;J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Lde/d0;->i:Lde/c;

    .line 9
    iget-wide v5, v4, Lde/c;->i:J

    cmp-long v0, v5, v0

    if-lez v0, :cond_2

    add-long/2addr v2, v5

    .line 10
    check-cast p1, Lde/c;

    invoke-virtual {p1, v4, v5, v6}, Lde/c;->write(Lde/c;J)V

    :cond_2
    return-wide v2
.end method

.method public final G()J
    .locals 10

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    .line 2
    invoke-virtual {p0, v6, v7}, Lde/d0;->o(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3
    iget-object v8, p0, Lde/d0;->i:Lde/c;

    .line 4
    invoke-virtual {v8, v4, v5}, Lde/c;->h0(J)B

    move-result v8

    const/16 v9, 0x30

    int-to-byte v9, v9

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    int-to-byte v9, v9

    if-le v8, v9, :cond_1

    :cond_0
    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    const/16 v5, 0x2d

    int-to-byte v5, v5

    if-eq v8, v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a digit or \'-\' but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-static {v2}, Ld3/e;->c(I)I

    invoke-static {v2}, Ld3/e;->c(I)I

    invoke-static {v8, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this, checkRadix(radix))"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_4
    :goto_2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 7
    invoke-virtual {v0}, Lde/c;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()J
    .locals 2

    const-wide/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final J(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    move-wide v5, v0

    goto :goto_1

    :cond_1
    add-long v5, p1, v3

    :goto_1
    const/16 v2, 0xa

    int-to-byte v2, v2

    const-wide/16 v9, 0x0

    move-object v7, p0

    move v8, v2

    move-wide v11, v5

    .line 1
    invoke-virtual/range {v7 .. v12}, Lde/d0;->x(BJJ)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_2

    .line 2
    iget-object p1, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-static {p1, v7, v8}, Lee/h;->b(Lde/c;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    .line 4
    invoke-virtual {p0, v5, v6}, Lde/d0;->o(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    sub-long v7, v5, v3

    .line 6
    invoke-virtual {v0, v7, v8}, Lde/c;->h0(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    add-long/2addr v3, v5

    .line 7
    invoke-virtual {p0, v3, v4}, Lde/d0;->o(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 9
    invoke-virtual {v0, v5, v6}, Lde/c;->h0(J)B

    move-result v0

    if-ne v0, v2, :cond_3

    .line 10
    iget-object p1, p0, Lde/d0;->i:Lde/c;

    .line 11
    invoke-static {p1, v5, v6}, Lee/h;->b(Lde/c;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 12
    :cond_3
    new-instance v6, Lde/c;

    invoke-direct {v6}, Lde/c;-><init>()V

    .line 13
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    const-wide/16 v2, 0x0

    const/16 v1, 0x20

    .line 14
    iget-wide v4, v0, Lde/c;->i:J

    int-to-long v7, v1

    .line 15
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    .line 16
    invoke-virtual/range {v0 .. v5}, Lde/c;->g0(Lde/c;JJ)Lde/c;

    .line 17
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    .line 18
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    .line 20
    iget-wide v2, v2, Lde/c;->i:J

    .line 21
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v6}, Lde/c;->i()Lde/g;

    move-result-object p1

    invoke-virtual {p1}, Lde/g;->k()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "limit < 0: "

    .line 25
    invoke-static {v0, p1, p2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final Q()Lde/f;
    .locals 1

    new-instance v0, Lde/b0;

    invoke-direct {v0, p0}, Lde/b0;-><init>(Lde/f;)V

    invoke-static {v0}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v0

    return-object v0
.end method

.method public final S(Lde/g;)J
    .locals 10

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lde/d0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v2, p1, v0, v1}, Lde/c;->k0(Lde/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    .line 5
    iget-wide v6, v2, Lde/c;->i:J

    .line 6
    iget-object v3, p0, Lde/d0;->h:Lde/j0;

    const-wide/16 v8, 0x2000

    invoke-interface {v3, v2, v8, v9}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-wide v2, v4

    :goto_1
    return-wide v2

    .line 7
    :cond_1
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final T(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/d0;->o(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final V(Lde/y;)I
    .locals 8

    const-string v0, "options"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lde/d0;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-static {v0, p1, v1}, Lee/h;->c(Lde/c;Lde/y;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    .line 4
    iget-object p1, p1, Lde/y;->h:[Lde/g;

    .line 5
    aget-object p1, p1, v0

    .line 6
    invoke-virtual {p1}, Lde/g;->j()I

    move-result p1

    .line 7
    iget-object v1, p0, Lde/d0;->i:Lde/c;

    int-to-long v2, p1

    .line 8
    invoke-virtual {v1, v2, v3}, Lde/c;->a(J)V

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lde/d0;->h:Lde/j0;

    .line 10
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    const-wide/16 v4, 0x2000

    .line 11
    invoke-interface {v0, v2, v4, v5}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    return v0

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Y()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->n0()S

    move-result v0

    return v0
.end method

.method public final a(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lde/d0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    .line 3
    iget-wide v3, v2, Lde/c;->i:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lde/d0;->h:Lde/j0;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 7
    iget-wide v0, v0, Lde/c;->i:J

    .line 8
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    .line 10
    invoke-virtual {v2, v0, v1}, Lde/c;->a(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a0(JLde/g;)Z
    .locals 6

    const-string p1, "bytes"

    invoke-static {p3, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lde/g;->j()I

    move-result p1

    .line 2
    iget-boolean p2, p0, Lde/d0;->j:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    if-ltz p1, :cond_3

    .line 3
    invoke-virtual {p3}, Lde/g;->j()I

    move-result v1

    sub-int/2addr v1, p2

    if-ge v1, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, p2

    :goto_0
    if-ge v1, p1, :cond_4

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 4
    invoke-virtual {p0, v4, v5}, Lde/d0;->o(J)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v4, p0, Lde/d0;->i:Lde/c;

    .line 6
    invoke-virtual {v4, v2, v3}, Lde/c;->h0(J)B

    move-result v2

    add-int v3, p2, v1

    .line 7
    invoke-virtual {p3, v3}, Lde/g;->o(I)B

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v0, p2

    :cond_4
    return v0

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lde/c;
    .locals 1

    iget-object v0, p0, Lde/d0;->i:Lde/c;

    return-object v0
.end method

.method public final c0()J
    .locals 5

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 2
    invoke-virtual {p0, v2, v3}, Lde/d0;->o(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    int-to-long v3, v0

    .line 4
    invoke-virtual {v2, v3, v4}, Lde/c;->h0(J)B

    move-result v2

    const/16 v3, 0x30

    int-to-byte v3, v3

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    int-to-byte v3, v3

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    int-to-byte v3, v3

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v3}, Ld3/e;->c(I)I

    invoke-static {v3}, Ld3/e;->c(I)I

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this, checkRadix(radix))"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_5
    :goto_2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 7
    invoke-virtual {v0}, Lde/c;->c0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/d0;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lde/d0;->j:Z

    .line 3
    iget-object v0, p0, Lde/d0;->h:Lde/j0;

    invoke-interface {v0}, Lde/j0;->close()V

    .line 4
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 5
    invoke-virtual {v0}, Lde/c;->x()V

    :cond_0
    return-void
.end method

.method public final d0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 2
    iget-object v1, p0, Lde/d0;->h:Lde/j0;

    invoke-virtual {v0, v1}, Lde/c;->s(Lde/j0;)J

    .line 3
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 4
    invoke-virtual {v0, p1}, Lde/c;->d0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e0()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lde/d0$a;

    invoke-direct {v0, p0}, Lde/d0$a;-><init>(Lde/d0;)V

    return-object v0
.end method

.method public final f(Lde/c;J)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lde/d0;->T(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lde/c;->f(Lde/c;J)V

    return-void

    :catch_0
    move-exception p2

    .line 4
    iget-object p3, p0, Lde/d0;->i:Lde/c;

    .line 5
    invoke-virtual {p1, p3}, Lde/c;->s(Lde/j0;)J

    .line 6
    throw p2
.end method

.method public final f0(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lde/c;->q0(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lde/c;
    .locals 1

    iget-object v0, p0, Lde/d0;->i:Lde/c;

    return-object v0
.end method

.method public final i()Lde/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 2
    iget-object v1, p0, Lde/d0;->h:Lde/j0;

    invoke-virtual {v0, v1}, Lde/c;->s(Lde/j0;)J

    .line 3
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 4
    invoke-virtual {v0}, Lde/c;->i()Lde/g;

    move-result-object v0

    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lde/d0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j(J)Lde/g;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lde/c;->j(J)Lde/g;

    move-result-object p1

    return-object p1
.end method

.method public final o(J)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 1
    iget-boolean v0, p0, Lde/d0;->j:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    iget-wide v3, v0, Lde/c;->i:J

    cmp-long v3, v3, p1

    if-gez v3, :cond_2

    .line 4
    iget-object v3, p0, Lde/d0;->h:Lde/j0;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v0, "byteCount < 0: "

    .line 6
    invoke-static {v0, p1, p2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 19
    iget-wide v1, v0, Lde/c;->i:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 20
    iget-object v1, p0, Lde/d0;->h:Lde/j0;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 21
    :cond_0
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 22
    invoke-virtual {v0, p1}, Lde/c;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final read(Lde/c;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-boolean v2, p0, Lde/d0;->j:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 2
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    .line 3
    iget-wide v3, v2, Lde/c;->i:J

    cmp-long v0, v3, v0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lde/d0;->h:Lde/j0;

    const-wide/16 v5, 0x2000

    invoke-interface {v0, v2, v5, v6}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 6
    iget-wide v0, v0, Lde/c;->i:J

    .line 7
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 8
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lde/c;->read(Lde/c;J)J

    move-result-wide v3

    :goto_1
    return-wide v3

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 11
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->readByte()B

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 7

    .line 1
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1}, Lde/c;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    .line 5
    iget-wide v3, v2, Lde/c;->i:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    long-to-int v3, v3

    .line 6
    invoke-virtual {v2, p1, v1, v3}, Lde/c;->l0([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    throw v0
.end method

.method public final readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->readInt()I

    move-result v0

    return v0
.end method

.method public final readLong()J
    .locals 2

    const-wide/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->readShort()S

    move-result v0

    return v0
.end method

.method public final timeout()Lde/k0;
    .locals 1

    iget-object v0, p0, Lde/d0;->h:Lde/j0;

    invoke-interface {v0}, Lde/j0;->timeout()Lde/k0;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lde/d0;->h:Lde/j0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lde/d0;->J(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 2
    iget-object v1, p0, Lde/d0;->h:Lde/j0;

    invoke-virtual {v0, v1}, Lde/c;->s(Lde/j0;)J

    .line 3
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 4
    invoke-virtual {v0}, Lde/c;->w()[B

    move-result-object v0

    return-object v0
.end method

.method public final x(BJJ)J
    .locals 10

    .line 1
    iget-boolean p2, p0, Lde/d0;->j:Z

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p4

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p3, :cond_4

    :goto_1
    cmp-long p2, v0, p4

    const-wide/16 v8, -0x1

    if-gez p2, :cond_3

    .line 2
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    move v3, p1

    move-wide v4, v0

    move-wide v6, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Lde/c;->i0(BJJ)J

    move-result-wide p2

    cmp-long v2, p2, v8

    if-eqz v2, :cond_1

    move-wide v8, p2

    goto :goto_2

    .line 4
    :cond_1
    iget-object p2, p0, Lde/d0;->i:Lde/c;

    .line 5
    iget-wide v2, p2, Lde/c;->i:J

    cmp-long p3, v2, p4

    if-gez p3, :cond_3

    .line 6
    iget-object p3, p0, Lde/d0;->h:Lde/j0;

    const-wide/16 v4, 0x2000

    invoke-interface {p3, p2, v4, v5}, Lde/j0;->read(Lde/c;J)J

    move-result-wide p2

    cmp-long p2, p2, v8

    if-nez p2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    :goto_2
    return-wide v8

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fromIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lde/d0;->T(J)V

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->y()I

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lde/d0;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lde/d0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/d0;->h:Lde/j0;

    .line 4
    iget-object v2, p0, Lde/d0;->i:Lde/c;

    const-wide/16 v3, 0x2000

    .line 5
    invoke-interface {v0, v2, v3, v4}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
