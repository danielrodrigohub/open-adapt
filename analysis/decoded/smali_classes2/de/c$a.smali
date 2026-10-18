.class public final Lde/c$a;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public h:Lde/c;

.field public i:Z

.field public j:Lde/e0;

.field public k:J

.field public l:[B

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lde/c$a;->k:J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lde/c$a;->m:I

    .line 4
    iput v0, p0, Lde/c$a;->n:I

    return-void
.end method


# virtual methods
.method public final Y(J)I
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    iget-object v3, v0, Lde/c$a;->h:Lde/c;

    if-eqz v3, :cond_a

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-ltz v4, :cond_9

    .line 2
    iget-wide v5, v3, Lde/c;->i:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_9

    const/4 v7, -0x1

    if-eqz v4, :cond_8

    cmp-long v4, v1, v5

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v7, 0x0

    .line 3
    iget-object v4, v3, Lde/c;->h:Lde/e0;

    .line 4
    iget-object v9, v0, Lde/c$a;->j:Lde/e0;

    if-eqz v9, :cond_2

    .line 5
    iget-wide v10, v0, Lde/c$a;->k:J

    iget v12, v0, Lde/c$a;->m:I

    invoke-static {v9}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v9, v9, Lde/e0;->b:I

    sub-int/2addr v12, v9

    int-to-long v12, v12

    sub-long/2addr v10, v12

    cmp-long v9, v10, v1

    if-lez v9, :cond_1

    .line 6
    iget-object v5, v0, Lde/c$a;->j:Lde/e0;

    move-wide/from16 v18, v7

    move-object v7, v4

    move-object v4, v5

    move-wide v5, v10

    move-wide/from16 v10, v18

    goto :goto_0

    .line 7
    :cond_1
    iget-object v7, v0, Lde/c$a;->j:Lde/e0;

    goto :goto_0

    :cond_2
    move-wide v10, v7

    move-object v7, v4

    :goto_0
    sub-long v8, v5, v1

    sub-long v12, v1, v10

    cmp-long v8, v8, v12

    if-lez v8, :cond_3

    .line 8
    :goto_1
    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v4, v7, Lde/e0;->c:I

    iget v5, v7, Lde/e0;->b:I

    sub-int v6, v4, v5

    int-to-long v8, v6

    add-long/2addr v8, v10

    cmp-long v6, v1, v8

    if-ltz v6, :cond_5

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v10, v4

    .line 9
    iget-object v7, v7, Lde/e0;->f:Lde/e0;

    goto :goto_1

    :cond_3
    :goto_2
    cmp-long v7, v5, v1

    if-lez v7, :cond_4

    .line 10
    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object v4, v4, Lde/e0;->g:Lde/e0;

    .line 11
    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v7, v4, Lde/e0;->c:I

    iget v8, v4, Lde/e0;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    goto :goto_2

    :cond_4
    move-object v7, v4

    move-wide v10, v5

    .line 12
    :cond_5
    iget-boolean v4, v0, Lde/c$a;->i:Z

    if-eqz v4, :cond_7

    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-boolean v4, v7, Lde/e0;->d:Z

    if-eqz v4, :cond_7

    .line 13
    new-instance v4, Lde/e0;

    iget-object v5, v7, Lde/e0;->a:[B

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const-string v5, "copyOf(this, size)"

    invoke-static {v13, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v14, v7, Lde/e0;->b:I

    iget v15, v7, Lde/e0;->c:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v4

    invoke-direct/range {v12 .. v17}, Lde/e0;-><init>([BIIZZ)V

    .line 14
    iget-object v5, v3, Lde/c;->h:Lde/e0;

    if-ne v5, v7, :cond_6

    .line 15
    iput-object v4, v3, Lde/c;->h:Lde/e0;

    .line 16
    :cond_6
    invoke-virtual {v7, v4}, Lde/e0;->b(Lde/e0;)Lde/e0;

    .line 17
    iget-object v3, v4, Lde/e0;->g:Lde/e0;

    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lde/e0;->a()Lde/e0;

    move-object v7, v4

    .line 18
    :cond_7
    iput-object v7, v0, Lde/c$a;->j:Lde/e0;

    .line 19
    iput-wide v1, v0, Lde/c$a;->k:J

    .line 20
    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object v3, v7, Lde/e0;->a:[B

    iput-object v3, v0, Lde/c$a;->l:[B

    .line 21
    iget v3, v7, Lde/e0;->b:I

    sub-long/2addr v1, v10

    long-to-int v1, v1

    add-int/2addr v3, v1

    iput v3, v0, Lde/c$a;->m:I

    .line 22
    iget v1, v7, Lde/e0;->c:I

    iput v1, v0, Lde/c$a;->n:I

    sub-int v7, v1, v3

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x0

    .line 23
    iput-object v3, v0, Lde/c$a;->j:Lde/e0;

    .line 24
    iput-wide v1, v0, Lde/c$a;->k:J

    .line 25
    iput-object v3, v0, Lde/c$a;->l:[B

    .line 26
    iput v7, v0, Lde/c$a;->m:I

    .line 27
    iput v7, v0, Lde/c$a;->n:I

    :goto_4
    return v7

    .line 28
    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " > size="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-wide v1, v3, Lde/c;->i:J

    .line 30
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lde/c$a;->h:Lde/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lde/c$a;->h:Lde/c;

    .line 3
    iput-object v0, p0, Lde/c$a;->j:Lde/e0;

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lde/c$a;->k:J

    .line 5
    iput-object v0, p0, Lde/c$a;->l:[B

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lde/c$a;->m:I

    .line 7
    iput v0, p0, Lde/c$a;->n:I

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x(J)J
    .locals 13

    .line 1
    iget-object v0, p0, Lde/c$a;->h:Lde/c;

    if-eqz v0, :cond_8

    .line 2
    iget-boolean v1, p0, Lde/c$a;->i:Z

    if-eqz v1, :cond_7

    .line 3
    iget-wide v1, v0, Lde/c;->i:J

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-gtz v3, :cond_4

    cmp-long v3, p1, v5

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    sub-long v3, v1, p1

    :goto_1
    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 4
    iget-object v7, v0, Lde/c;->h:Lde/e0;

    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    iget-object v7, v7, Lde/e0;->g:Lde/e0;

    .line 5
    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v8, v7, Lde/e0;->c:I

    iget v9, v7, Lde/e0;->b:I

    sub-int v9, v8, v9

    int-to-long v9, v9

    cmp-long v11, v9, v3

    if-gtz v11, :cond_1

    .line 6
    invoke-virtual {v7}, Lde/e0;->a()Lde/e0;

    move-result-object v8

    iput-object v8, v0, Lde/c;->h:Lde/e0;

    .line 7
    invoke-static {v7}, Lde/f0;->b(Lde/e0;)V

    sub-long/2addr v3, v9

    goto :goto_1

    :cond_1
    long-to-int v3, v3

    sub-int/2addr v8, v3

    .line 8
    iput v8, v7, Lde/e0;->c:I

    :cond_2
    const/4 v3, 0x0

    .line 9
    iput-object v3, p0, Lde/c$a;->j:Lde/e0;

    .line 10
    iput-wide p1, p0, Lde/c$a;->k:J

    .line 11
    iput-object v3, p0, Lde/c$a;->l:[B

    const/4 v3, -0x1

    .line 12
    iput v3, p0, Lde/c$a;->m:I

    .line 13
    iput v3, p0, Lde/c$a;->n:I

    goto :goto_3

    :cond_3
    const-string v0, "newSize < 0: "

    .line 14
    invoke-static {v0, p1, p2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-lez v3, :cond_6

    sub-long v7, p1, v1

    move v3, v4

    :goto_2
    cmp-long v9, v7, v5

    if-lez v9, :cond_6

    .line 16
    invoke-virtual {v0, v4}, Lde/c;->t0(I)Lde/e0;

    move-result-object v4

    .line 17
    iget v9, v4, Lde/e0;->c:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    .line 18
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    .line 19
    iget v10, v4, Lde/e0;->c:I

    add-int/2addr v10, v9

    iput v10, v4, Lde/e0;->c:I

    int-to-long v11, v9

    sub-long/2addr v7, v11

    if-eqz v3, :cond_5

    .line 20
    iput-object v4, p0, Lde/c$a;->j:Lde/e0;

    .line 21
    iput-wide v1, p0, Lde/c$a;->k:J

    .line 22
    iget-object v3, v4, Lde/e0;->a:[B

    iput-object v3, p0, Lde/c$a;->l:[B

    sub-int v3, v10, v9

    .line 23
    iput v3, p0, Lde/c$a;->m:I

    .line 24
    iput v10, p0, Lde/c$a;->n:I

    const/4 v3, 0x0

    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    .line 25
    :cond_6
    :goto_3
    iput-wide p1, v0, Lde/c;->i:J

    return-wide v1

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
