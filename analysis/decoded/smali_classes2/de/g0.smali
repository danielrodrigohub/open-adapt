.class public final Lde/g0;
.super Lde/g;
.source "SegmentedByteString.kt"


# instance fields
.field public final transient m:[[B

.field public final transient n:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    .line 1
    sget-object v0, Lde/g;->l:Lde/g;

    .line 2
    iget-object v0, v0, Lde/g;->h:[B

    .line 3
    invoke-direct {p0, v0}, Lde/g;-><init>([B)V

    .line 4
    iput-object p1, p0, Lde/g0;->m:[[B

    .line 5
    iput-object p2, p0, Lde/g0;->n:[I

    return-void
.end method


# virtual methods
.method public final B(Lde/c;I)V
    .locals 13

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1}, Landroidx/lifecycle/o;->G(Lde/g0;I)I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    if-nez v2, :cond_0

    move v4, v1

    goto :goto_1

    .line 2
    :cond_0
    iget-object v4, p0, Lde/g0;->n:[I

    add-int/lit8 v5, v2, -0x1

    .line 3
    aget v4, v4, v5

    .line 4
    :goto_1
    iget-object v5, p0, Lde/g0;->n:[I

    .line 5
    aget v6, v5, v2

    sub-int/2addr v6, v4

    .line 6
    iget-object v7, p0, Lde/g0;->m:[[B

    .line 7
    array-length v7, v7

    add-int/2addr v7, v2

    aget v5, v5, v7

    add-int/2addr v6, v4

    .line 8
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v3

    sub-int v4, v3, v4

    add-int v9, v4, v5

    .line 9
    iget-object v4, p0, Lde/g0;->m:[[B

    .line 10
    aget-object v8, v4, v2

    .line 11
    new-instance v4, Lde/e0;

    add-int v10, v9, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lde/e0;-><init>([BIIZZ)V

    .line 12
    iget-object v5, p1, Lde/c;->h:Lde/e0;

    if-nez v5, :cond_1

    .line 13
    iput-object v4, v4, Lde/e0;->g:Lde/e0;

    .line 14
    iput-object v4, v4, Lde/e0;->f:Lde/e0;

    .line 15
    iput-object v4, p1, Lde/c;->h:Lde/e0;

    goto :goto_2

    .line 16
    :cond_1
    iget-object v5, v5, Lde/e0;->g:Lde/e0;

    invoke-static {v5}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Lde/e0;->b(Lde/e0;)Lde/e0;

    :goto_2
    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-wide v0, p1, Lde/c;->i:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 18
    iput-wide v0, p1, Lde/c;->i:J

    return-void
.end method

.method public final C()[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Lde/g0;->j()I

    move-result v0

    .line 2
    new-array v0, v0, [B

    .line 3
    iget-object v1, p0, Lde/g0;->m:[[B

    .line 4
    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v5, p0, Lde/g0;->n:[I

    add-int v6, v1, v2

    .line 6
    aget v6, v5, v6

    .line 7
    aget v5, v5, v2

    .line 8
    iget-object v7, p0, Lde/g0;->m:[[B

    .line 9
    aget-object v7, v7, v2

    sub-int v3, v5, v3

    add-int v8, v6, v3

    .line 10
    invoke-static {v7, v0, v4, v6, v8}, Lgd/g;->j([B[BIII)[B

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final D()Lde/g;
    .locals 2

    new-instance v0, Lde/g;

    invoke-virtual {p0}, Lde/g0;->C()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lde/g;-><init>([B)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lde/g0;->D()Lde/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of v1, p1, Lde/g;

    if-eqz v1, :cond_1

    check-cast p1, Lde/g;

    .line 2
    invoke-virtual {p1}, Lde/g;->j()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lde/g0;->j()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lde/g0;->j()I

    move-result v1

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lde/g0;->s(ILde/g;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lde/g;->i:I

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lde/g0;->m:[[B

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v4, p0, Lde/g0;->n:[I

    add-int v5, v0, v1

    .line 5
    aget v5, v4, v5

    .line 6
    aget v4, v4, v1

    .line 7
    iget-object v6, p0, Lde/g0;->m:[[B

    .line 8
    aget-object v6, v6, v1

    sub-int v3, v4, v3

    add-int/2addr v3, v5

    :goto_1
    if-ge v5, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    .line 9
    aget-byte v7, v6, v5

    add-int/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 10
    :cond_2
    iput v2, p0, Lde/g;->i:I

    move v0, v2

    :goto_2
    return v0
.end method

.method public final i(Ljava/lang/String;)Lde/g;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/g0;->m:[[B

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v3, p0, Lde/g0;->n:[I

    add-int v4, v0, v1

    .line 5
    aget v4, v3, v4

    .line 6
    aget v3, v3, v1

    .line 7
    iget-object v5, p0, Lde/g0;->m:[[B

    .line 8
    aget-object v5, v5, v1

    sub-int v2, v3, v2

    .line 9
    invoke-virtual {p1, v5, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 11
    new-instance v0, Lde/g;

    const-string v1, "digestBytes"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lde/g;-><init>([B)V

    return-object v0
.end method

.method public final j()I
    .locals 2

    .line 1
    iget-object v0, p0, Lde/g0;->n:[I

    .line 2
    iget-object v1, p0, Lde/g0;->m:[[B

    .line 3
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lde/g0;->D()Lde/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/g;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l([BI)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/g0;->D()Lde/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lde/g;->l([BI)I

    move-result p1

    return p1
.end method

.method public final n()[B
    .locals 1

    invoke-virtual {p0}, Lde/g0;->C()[B

    move-result-object v0

    return-object v0
.end method

.method public final o(I)B
    .locals 7

    .line 1
    iget-object v0, p0, Lde/g0;->n:[I

    .line 2
    iget-object v1, p0, Lde/g0;->m:[[B

    .line 3
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lde/n0;->e(JJJ)V

    .line 4
    invoke-static {p0, p1}, Landroidx/lifecycle/o;->G(Lde/g0;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lde/g0;->n:[I

    add-int/lit8 v2, v0, -0x1

    .line 6
    aget v1, v1, v2

    .line 7
    :goto_0
    iget-object v2, p0, Lde/g0;->n:[I

    .line 8
    iget-object v3, p0, Lde/g0;->m:[[B

    .line 9
    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 10
    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public final p([BI)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/g0;->D()Lde/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lde/g;->p([BI)I

    move-result p1

    return p1
.end method

.method public final s(ILde/g;I)Z
    .locals 7

    const-string v0, "other"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Lde/g0;->j()I

    move-result v1

    sub-int/2addr v1, p3

    if-le p1, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p3, p1

    .line 2
    invoke-static {p0, p1}, Landroidx/lifecycle/o;->G(Lde/g0;I)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge p1, p3, :cond_3

    if-nez v1, :cond_1

    move v3, v0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v3, p0, Lde/g0;->n:[I

    add-int/lit8 v4, v1, -0x1

    .line 4
    aget v3, v3, v4

    .line 5
    :goto_1
    iget-object v4, p0, Lde/g0;->n:[I

    .line 6
    aget v5, v4, v1

    sub-int/2addr v5, v3

    .line 7
    iget-object v6, p0, Lde/g0;->m:[[B

    .line 8
    array-length v6, v6

    add-int/2addr v6, v1

    aget v4, v4, v6

    add-int/2addr v5, v3

    .line 9
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, p1

    sub-int v3, p1, v3

    add-int/2addr v3, v4

    .line 10
    iget-object v4, p0, Lde/g0;->m:[[B

    .line 11
    aget-object v4, v4, v1

    .line 12
    invoke-virtual {p2, v2, v4, v3, v5}, Lde/g;->t(I[BII)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v5

    add-int/2addr p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public final t(I[BII)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Lde/g0;->j()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4

    if-ltz p3, :cond_4

    .line 2
    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p4, p1

    .line 3
    invoke-static {p0, p1}, Landroidx/lifecycle/o;->G(Lde/g0;I)I

    move-result v1

    :goto_0
    if-ge p1, p4, :cond_3

    if-nez v1, :cond_1

    move v2, v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lde/g0;->n:[I

    add-int/lit8 v3, v1, -0x1

    .line 5
    aget v2, v2, v3

    .line 6
    :goto_1
    iget-object v3, p0, Lde/g0;->n:[I

    .line 7
    aget v4, v3, v1

    sub-int/2addr v4, v2

    .line 8
    iget-object v5, p0, Lde/g0;->m:[[B

    .line 9
    array-length v5, v5

    add-int/2addr v5, v1

    aget v3, v3, v5

    add-int/2addr v4, v2

    .line 10
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, p1

    sub-int v2, p1, v2

    add-int/2addr v2, v3

    .line 11
    iget-object v3, p0, Lde/g0;->m:[[B

    .line 12
    aget-object v3, v3, v1

    .line 13
    invoke-static {v3, v2, p2, p3, v4}, Lde/n0;->a([BI[BII)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p3, v4

    add-int/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lde/g0;->D()Lde/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/g;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(II)Lde/g;
    .locals 11

    .line 1
    invoke-static {p0, p2}, Lde/n0;->k(Lde/g;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_9

    .line 2
    invoke-virtual {p0}, Lde/g0;->j()I

    move-result v2

    if-gt p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "endIndex="

    if-eqz v2, :cond_8

    sub-int v2, p2, p1

    if-ltz v2, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz v4, :cond_7

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0}, Lde/g0;->j()I

    move-result v3

    if-ne p2, v3, :cond_3

    move-object p1, p0

    goto :goto_5

    :cond_3
    if-ne p1, p2, :cond_4

    .line 4
    sget-object p1, Lde/g;->l:Lde/g;

    goto :goto_5

    .line 5
    :cond_4
    invoke-static {p0, p1}, Landroidx/lifecycle/o;->G(Lde/g0;I)I

    move-result v3

    sub-int/2addr p2, v0

    .line 6
    invoke-static {p0, p2}, Landroidx/lifecycle/o;->G(Lde/g0;I)I

    move-result p2

    .line 7
    iget-object v4, p0, Lde/g0;->m:[[B

    add-int/lit8 v5, p2, 0x1

    const-string v6, "<this>"

    .line 8
    invoke-static {v4, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v6, v4

    invoke-static {v5, v6}, Li0/b;->f(II)V

    .line 10
    invoke-static {v4, v3, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "copyOfRange(this, fromIndex, toIndex)"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast v4, [[B

    .line 12
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [I

    if-gt v3, p2, :cond_5

    move v7, v1

    move v6, v3

    .line 13
    :goto_3
    iget-object v8, p0, Lde/g0;->n:[I

    .line 14
    aget v8, v8, v6

    sub-int/2addr v8, p1

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v8, v7, 0x1

    .line 15
    array-length v9, v4

    add-int/2addr v7, v9

    .line 16
    iget-object v9, p0, Lde/g0;->n:[I

    .line 17
    iget-object v10, p0, Lde/g0;->m:[[B

    .line 18
    array-length v10, v10

    add-int/2addr v10, v6

    aget v9, v9, v10

    aput v9, v5, v7

    if-eq v6, p2, :cond_5

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    iget-object p2, p0, Lde/g0;->n:[I

    sub-int/2addr v3, v0

    .line 20
    aget v1, p2, v3

    .line 21
    :goto_4
    array-length p2, v4

    aget v0, v5, p2

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    aput p1, v5, p2

    .line 22
    new-instance p1, Lde/g0;

    invoke-direct {p1, v4, v5}, Lde/g0;-><init>([[B[I)V

    :goto_5
    return-object p1

    :cond_7
    const-string v0, " < beginIndex="

    .line 23
    invoke-static {v3, p2, v0, p1}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    const-string p1, " > length("

    .line 25
    invoke-static {v3, p2, p1}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lde/g0;->j()I

    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const-string p2, "beginIndex="

    const-string v0, " < 0"

    .line 28
    invoke-static {p2, p1, v0}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final z()Lde/g;
    .locals 1

    invoke-virtual {p0}, Lde/g0;->D()Lde/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/g;->z()Lde/g;

    move-result-object v0

    return-object v0
.end method
