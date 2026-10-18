.class public final Lde/c0;
.super Ljava/lang/Object;
.source "RealBufferedSink.kt"

# interfaces
.implements Lde/e;


# instance fields
.field public final h:Lde/h0;

.field public final i:Lde/c;

.field public j:Z


# direct methods
.method public constructor <init>(Lde/h0;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lde/c0;->h:Lde/h0;

    .line 3
    new-instance p1, Lde/c;

    invoke-direct {p1}, Lde/c;-><init>()V

    iput-object p1, p0, Lde/c0;->i:Lde/c;

    return-void
.end method


# virtual methods
.method public final A(I)Lde/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1}, Lde/c;->y0(I)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final D([B)Lde/e;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1}, Lde/c;->w0([B)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F()Lde/e;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0}, Lde/c;->f0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4
    iget-object v2, p0, Lde/c0;->h:Lde/h0;

    .line 5
    iget-object v3, p0, Lde/c0;->i:Lde/c;

    .line 6
    invoke-interface {v2, v3, v0, v1}, Lde/h0;->write(Lde/c;J)V

    :cond_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final N(Lde/g;)Lde/e;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1}, Lde/c;->u0(Lde/g;)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final U(Ljava/lang/String;)Lde/e;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1}, Lde/c;->F0(Ljava/lang/String;)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final W(J)Lde/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lde/c;->z0(J)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lde/c;
    .locals 1

    iget-object v0, p0, Lde/c0;->i:Lde/c;

    return-object v0
.end method

.method public final c([BII)Lde/e;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lde/c;->x0([BII)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lde/c0;->i:Lde/c;

    .line 3
    iget-wide v2, v1, Lde/c;->i:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 4
    iget-object v4, p0, Lde/c0;->h:Lde/h0;

    invoke-interface {v4, v1, v2, v3}, Lde/h0;->write(Lde/c;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lde/c0;->h:Lde/h0;

    invoke-interface {v1}, Lde/h0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lde/c0;->j:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public final flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    iget-wide v1, v0, Lde/c;->i:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 4
    iget-object v3, p0, Lde/c0;->h:Lde/h0;

    invoke-interface {v3, v0, v1, v2}, Lde/h0;->write(Lde/c;J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lde/c0;->h:Lde/h0;

    invoke-interface {v0}, Lde/h0;->flush()V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(J)Lde/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lde/c;->A0(J)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final m()Lde/e;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    iget-wide v1, v0, Lde/c;->i:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 4
    iget-object v3, p0, Lde/c0;->h:Lde/h0;

    invoke-interface {v3, v0, v1, v2}, Lde/h0;->write(Lde/c;J)V

    :cond_0
    return-object p0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(I)Lde/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1}, Lde/c;->D0(I)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(I)Lde/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1}, Lde/c;->B0(I)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Lde/j0;)J
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lde/c0;->i:Lde/c;

    const-wide/16 v3, 0x2000

    .line 2
    invoke-interface {p1, v2, v3, v4}, Lde/j0;->read(Lde/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final timeout()Lde/k0;
    .locals 1

    iget-object v0, p0, Lde/c0;->h:Lde/h0;

    invoke-interface {v0}, Lde/h0;->timeout()Lde/k0;

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
    iget-object v1, p0, Lde/c0;->h:Lde/h0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-virtual {v0, p1}, Lde/c;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write(Lde/c;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lde/c;->write(Lde/c;J)V

    .line 9
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x(I)Lde/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde/c0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lde/c0;->i:Lde/c;

    .line 3
    invoke-static {p1}, Lde/n0;->l(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lde/c;->B0(I)Lde/c;

    .line 4
    invoke-virtual {p0}, Lde/c0;->F()Lde/e;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
