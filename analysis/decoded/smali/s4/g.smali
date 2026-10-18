.class public final Ls4/g;
.super Ljava/lang/Object;
.source "EventSampleStream.java"

# interfaces
.implements Lp4/m0;


# instance fields
.field public final h:Ln3/s0;

.field public final i:Lh4/c;

.field public j:[J

.field public k:Z

.field public l:Lt4/f;

.field public m:Z

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>(Lt4/f;Ln3/s0;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ls4/g;->h:Ln3/s0;

    .line 3
    iput-object p1, p0, Ls4/g;->l:Lt4/f;

    .line 4
    new-instance p2, Lh4/c;

    invoke-direct {p2}, Lh4/c;-><init>()V

    iput-object p2, p0, Ls4/g;->i:Lh4/c;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Ls4/g;->o:J

    .line 6
    iget-object p2, p1, Lt4/f;->b:[J

    iput-object p2, p0, Ls4/g;->j:[J

    .line 7
    invoke-virtual {p0, p1, p3}, Ls4/g;->c(Lt4/f;Z)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls4/g;->j:[J

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, p2, v1}, Lm5/g0;->b([JJZ)I

    move-result v0

    iput v0, p0, Ls4/g;->n:I

    .line 3
    iget-boolean v2, p0, Ls4/g;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ls4/g;->j:[J

    array-length v2, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    :goto_1
    iput-wide p1, p0, Ls4/g;->o:J

    return-void
.end method

.method public final b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final c(Lt4/f;Z)V
    .locals 8

    .line 1
    iget v0, p0, Ls4/g;->n:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ls4/g;->j:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    .line 2
    :goto_0
    iput-boolean p2, p0, Ls4/g;->k:Z

    .line 3
    iput-object p1, p0, Ls4/g;->l:Lt4/f;

    .line 4
    iget-object p1, p1, Lt4/f;->b:[J

    iput-object p1, p0, Ls4/g;->j:[J

    .line 5
    iget-wide v6, p0, Ls4/g;->o:J

    cmp-long p2, v6, v1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0, v6, v7}, Ls4/g;->a(J)V

    goto :goto_1

    :cond_1
    cmp-long p2, v4, v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, v4, v5, p2}, Lm5/g0;->b([JJZ)I

    move-result p1

    iput p1, p0, Ls4/g;->n:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(Ly0/r;Lq3/g;I)I
    .locals 6

    .line 1
    iget v0, p0, Ls4/g;->n:I

    iget-object v1, p0, Ls4/g;->j:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x4

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v5, p0, Ls4/g;->k:Z

    if-nez v5, :cond_1

    .line 3
    iput v4, p2, Lq3/a;->h:I

    return v3

    :cond_1
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_6

    .line 4
    iget-boolean v5, p0, Ls4/g;->m:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p1, -0x3

    return p1

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_4

    add-int/lit8 p1, v0, 0x1

    .line 5
    iput p1, p0, Ls4/g;->n:I

    :cond_4
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_5

    .line 6
    iget-object p1, p0, Ls4/g;->i:Lh4/c;

    iget-object p3, p0, Ls4/g;->l:Lt4/f;

    iget-object p3, p3, Lt4/f;->a:[Lh4/a;

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lh4/c;->a(Lh4/a;)[B

    move-result-object p1

    .line 7
    array-length p3, p1

    invoke-virtual {p2, p3}, Lq3/g;->q(I)V

    .line 8
    iget-object p3, p2, Lq3/g;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    :cond_5
    iget-object p1, p0, Ls4/g;->j:[J

    aget-wide v0, p1, v0

    iput-wide v0, p2, Lq3/g;->l:J

    .line 10
    iput v2, p2, Lq3/a;->h:I

    return v3

    .line 11
    :cond_6
    :goto_1
    iget-object p2, p0, Ls4/g;->h:Ln3/s0;

    iput-object p2, p1, Ly0/r;->c:Ljava/lang/Object;

    .line 12
    iput-boolean v2, p0, Ls4/g;->m:Z

    const/4 p1, -0x5

    return p1
.end method

.method public final p(J)I
    .locals 3

    .line 1
    iget v0, p0, Ls4/g;->n:I

    iget-object v1, p0, Ls4/g;->j:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lm5/g0;->b([JJZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget p2, p0, Ls4/g;->n:I

    sub-int p2, p1, p2

    .line 3
    iput p1, p0, Ls4/g;->n:I

    return p2
.end method
