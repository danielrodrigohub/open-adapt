.class public final Ls3/e;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Ls3/i;


# instance fields
.field public final a:[B

.field public final b:Ll5/h;

.field public final c:J

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.extractor"

    invoke-static {v0}, Ln3/p0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ll5/h;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/e;->b:Ll5/h;

    .line 3
    iput-wide p2, p0, Ls3/e;->d:J

    .line 4
    iput-wide p4, p0, Ls3/e;->c:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Ls3/e;->e:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Ls3/e;->a:[B

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Ls3/e;->c:J

    return-wide v0
.end method

.method public final b([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls3/e;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v2, p0, Ls3/e;->e:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0, v0}, Ls3/e;->x(I)V

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 5
    invoke-virtual/range {v2 .. v7}, Ls3/e;->w([BIIIZ)I

    move-result v1

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Ls3/e;->m(I)V

    return v1
.end method

.method public final d(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls3/e;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Ls3/e;->x(I)V

    if-nez v0, :cond_0

    .line 3
    iget-object v2, p0, Ls3/e;->a:[B

    const/4 v3, 0x0

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ls3/e;->w([BIIIZ)I

    move-result v0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Ls3/e;->m(I)V

    return v0
.end method

.method public final e([BIIZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls3/e;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v2, p0, Ls3/e;->e:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0, v0}, Ls3/e;->x(I)V

    :goto_0
    move v6, v0

    :goto_1
    const/4 v0, -0x1

    if-ge v6, p3, :cond_1

    if-eq v6, v0, :cond_1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    .line 5
    invoke-virtual/range {v2 .. v7}, Ls3/e;->w([BIIIZ)I

    move-result v6

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v6}, Ls3/e;->m(I)V

    if-eq v6, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final g([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Ls3/e;->v(I)V

    .line 2
    iget v0, p0, Ls3/e;->g:I

    iget v3, p0, Ls3/e;->f:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 3
    iget-object v2, p0, Ls3/e;->e:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    .line 4
    invoke-virtual/range {v1 .. v6}, Ls3/e;->w([BIIIZ)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    .line 5
    :cond_0
    iget v0, p0, Ls3/e;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Ls3/e;->g:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 7
    :goto_0
    iget-object v0, p0, Ls3/e;->e:[B

    iget v1, p0, Ls3/e;->f:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Ls3/e;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Ls3/e;->f:I

    return p3
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls3/e;->f:I

    return-void
.end method

.method public final k(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls3/e;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Ls3/e;->x(I)V

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    .line 3
    iget-object v0, p0, Ls3/e;->a:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4
    iget-object v2, p0, Ls3/e;->a:[B

    neg-int v3, v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 5
    invoke-virtual/range {v1 .. v6}, Ls3/e;->w([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v5}, Ls3/e;->m(I)V

    return-void
.end method

.method public final m(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Ls3/e;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls3/e;->d:J

    :cond_0
    return-void
.end method

.method public final n(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ls3/e;->v(I)V

    .line 2
    iget v0, p0, Ls3/e;->g:I

    iget v1, p0, Ls3/e;->f:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 3
    iget-object v2, p0, Ls3/e;->e:[B

    iget v3, p0, Ls3/e;->f:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 4
    invoke-virtual/range {v1 .. v6}, Ls3/e;->w([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget v0, p0, Ls3/e;->f:I

    add-int/2addr v0, v5

    iput v0, p0, Ls3/e;->g:I

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Ls3/e;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Ls3/e;->f:I

    const/4 p1, 0x1

    return p1
.end method

.method public final p([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Ls3/e;->n(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p4, p0, Ls3/e;->e:[B

    iget v0, p0, Ls3/e;->f:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final q()J
    .locals 4

    iget-wide v0, p0, Ls3/e;->d:J

    iget v2, p0, Ls3/e;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ls3/e;->e([BIIZ)Z

    return-void
.end method

.method public final s([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ls3/e;->p([BIIZ)Z

    return-void
.end method

.method public final t(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ls3/e;->n(IZ)Z

    return-void
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Ls3/e;->d:J

    return-wide v0
.end method

.method public final v(I)V
    .locals 3

    .line 1
    iget v0, p0, Ls3/e;->f:I

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Ls3/e;->e:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 3
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    .line 4
    invoke-static {p1, v1, v0}, Lm5/g0;->i(III)I

    move-result p1

    .line 5
    iget-object v0, p0, Ls3/e;->e:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Ls3/e;->e:[B

    :cond_0
    return-void
.end method

.method public final w([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ls3/e;->b:Ll5/h;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Ll5/h;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    .line 4
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
.end method

.method public final x(I)V
    .locals 5

    .line 1
    iget v0, p0, Ls3/e;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Ls3/e;->g:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Ls3/e;->f:I

    .line 3
    iget-object v2, p0, Ls3/e;->e:[B

    .line 4
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 5
    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 6
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v3, p0, Ls3/e;->e:[B

    return-void
.end method
