.class public final Lm7/l;
.super Ljava/lang/Object;
.source "CodedOutputStreamWriter.java"

# interfaces
.implements Lm7/q1;


# instance fields
.field public final a:Lm7/k;


# direct methods
.method public constructor <init>(Lm7/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lm7/y;->a:Ljava/nio/charset/Charset;

    const-string v0, "output"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lm7/l;->a:Lm7/k;

    .line 5
    iput-object p0, p1, Lm7/k;->a:Lm7/l;

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-virtual {v0, p1, p2}, Lm7/k;->D(IZ)V

    return-void
.end method

.method public final b(ILm7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-virtual {v0, p1, p2}, Lm7/k;->E(ILm7/i;)V

    return-void
.end method

.method public final c(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lm7/k;->H(IJ)V

    return-void
.end method

.method public final d(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    .line 2
    invoke-virtual {v0, p1, p2}, Lm7/k;->J(II)V

    return-void
.end method

.method public final e(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-virtual {v0, p1, p2}, Lm7/k;->F(II)V

    return-void
.end method

.method public final f(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-virtual {v0, p1, p2, p3}, Lm7/k;->H(IJ)V

    return-void
.end method

.method public final g(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lm7/k;->F(II)V

    return-void
.end method

.method public final h(ILjava/lang/Object;Lm7/c1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    check-cast p2, Lm7/p0;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lm7/k;->P(II)V

    .line 3
    iget-object v1, v0, Lm7/k;->a:Lm7/l;

    invoke-interface {p3, p2, v1}, Lm7/c1;->i(Ljava/lang/Object;Lm7/q1;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lm7/k;->P(II)V

    return-void
.end method

.method public final i(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-virtual {v0, p1, p2}, Lm7/k;->J(II)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lm7/k;->S(IJ)V

    return-void
.end method

.method public final k(ILjava/lang/Object;Lm7/c1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    check-cast p2, Lm7/p0;

    invoke-virtual {v0, p1, p2, p3}, Lm7/k;->L(ILm7/p0;Lm7/c1;)V

    return-void
.end method

.method public final l(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lm7/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    check-cast p2, Lm7/i;

    invoke-virtual {v0, p1, p2}, Lm7/k;->N(ILm7/i;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    check-cast p2, Lm7/p0;

    invoke-virtual {v0, p1, p2}, Lm7/k;->M(ILm7/p0;)V

    :goto_0
    return-void
.end method

.method public final m(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    .line 2
    invoke-virtual {v0, p1, p2}, Lm7/k;->F(II)V

    return-void
.end method

.method public final n(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lm7/k;->H(IJ)V

    return-void
.end method

.method public final o(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    shl-int/lit8 v1, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lm7/k;->Q(II)V

    return-void
.end method

.method public final p(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    .line 2
    invoke-static {p2, p3}, Lm7/k;->B(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lm7/k;->S(IJ)V

    return-void
.end method

.method public final q(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-virtual {v0, p1, p2}, Lm7/k;->Q(II)V

    return-void
.end method

.method public final r(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/l;->a:Lm7/k;

    invoke-virtual {v0, p1, p2, p3}, Lm7/k;->S(IJ)V

    return-void
.end method
