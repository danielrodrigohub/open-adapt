.class public final Lu4/m;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lp4/m0;


# instance fields
.field public final h:I

.field public final i:Lu4/n;

.field public j:I


# direct methods
.method public constructor <init>(Lu4/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu4/m;->i:Lu4/n;

    .line 3
    iput p2, p0, Lu4/m;->h:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lu4/m;->j:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Lu4/m;->j:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 2
    iget-object v0, p0, Lu4/m;->i:Lu4/n;

    iget v3, p0, Lu4/m;->h:I

    .line 3
    invoke-virtual {v0}, Lu4/n;->v()V

    .line 4
    iget-object v4, v0, Lu4/n;->R:[I

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, v0, Lu4/n;->R:[I

    aget v4, v4, v3

    const/4 v5, -0x2

    if-ne v4, v2, :cond_2

    .line 7
    iget-object v1, v0, Lu4/n;->Q:Ljava/util/Set;

    iget-object v0, v0, Lu4/n;->P:Lp4/u0;

    invoke-virtual {v0, v3}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x3

    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v5

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, v0, Lu4/n;->U:[Z

    aget-boolean v2, v0, v4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    aput-boolean v1, v0, v4

    .line 10
    :goto_2
    iput v4, p0, Lu4/m;->j:I

    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lu4/m;->j:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lu4/m;->i:Lu4/n;

    invoke-virtual {v0}, Lu4/n;->E()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lu4/m;->i:Lu4/n;

    .line 4
    invoke-virtual {v1}, Lu4/n;->E()V

    .line 5
    iget-object v1, v1, Lu4/n;->C:[Lu4/n$d;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lp4/l0;->w()V

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance v0, Lu4/p;

    iget-object v1, p0, Lu4/m;->i:Lu4/n;

    .line 7
    invoke-virtual {v1}, Lu4/n;->v()V

    .line 8
    iget-object v1, v1, Lu4/n;->P:Lp4/u0;

    .line 9
    iget v2, p0, Lu4/m;->h:I

    invoke-virtual {v1, v2}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    iget-object v1, v1, Lp4/t0;->k:[Ln3/s0;

    aget-object v1, v1, v2

    .line 11
    iget-object v1, v1, Ln3/s0;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Lu4/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lu4/m;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReady()Z
    .locals 5

    .line 1
    iget v0, p0, Lu4/m;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x3

    if-eq v0, v3, :cond_1

    .line 2
    invoke-virtual {p0}, Lu4/m;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu4/m;->i:Lu4/n;

    iget v3, p0, Lu4/m;->j:I

    .line 3
    invoke-virtual {v0}, Lu4/n;->C()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lu4/n;->C:[Lu4/n$d;

    aget-object v3, v4, v3

    iget-boolean v0, v0, Lu4/n;->a0:Z

    invoke-virtual {v3, v0}, Lp4/l0;->u(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public final j(Ly0/r;Lq3/g;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lu4/m;->j:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v2, v1}, Lq3/a;->k(I)V

    const/4 v1, -0x4

    return v1

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lu4/m;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4
    iget-object v3, v0, Lu4/m;->i:Lu4/n;

    iget v5, v0, Lu4/m;->j:I

    .line 5
    invoke-virtual {v3}, Lu4/n;->C()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_5

    .line 6
    :cond_1
    iget-object v6, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6

    move v6, v7

    .line 7
    :goto_0
    iget-object v8, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v6, v8, :cond_4

    iget-object v8, v3, Lu4/n;->u:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lu4/j;

    .line 9
    iget v8, v8, Lu4/j;->k:I

    .line 10
    iget-object v10, v3, Lu4/n;->C:[Lu4/n$d;

    array-length v10, v10

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_3

    .line 11
    iget-object v12, v3, Lu4/n;->U:[Z

    aget-boolean v12, v12, v11

    if-eqz v12, :cond_2

    iget-object v12, v3, Lu4/n;->C:[Lu4/n$d;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lp4/l0;->y()I

    move-result v12

    if-ne v12, v8, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget-object v8, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-static {v8, v7, v6}, Lm5/g0;->Q(Ljava/util/List;II)V

    .line 13
    iget-object v6, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu4/j;

    .line 14
    iget-object v15, v6, Lr4/e;->d:Ln3/s0;

    .line 15
    iget-object v8, v3, Lu4/n;->N:Ln3/s0;

    invoke-virtual {v15, v8}, Ln3/s0;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 16
    iget-object v8, v3, Lu4/n;->r:Lp4/e0$a;

    iget v9, v3, Lu4/n;->i:I

    iget v11, v6, Lr4/e;->e:I

    iget-object v12, v6, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v13, v6, Lr4/e;->g:J

    move-object v10, v15

    invoke-virtual/range {v8 .. v14}, Lp4/e0$a;->b(ILn3/s0;ILjava/lang/Object;J)V

    .line 17
    :cond_5
    iput-object v15, v3, Lu4/n;->N:Ln3/s0;

    .line 18
    :cond_6
    iget-object v6, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu4/j;

    .line 19
    iget-boolean v6, v6, Lu4/j;->K:Z

    if-nez v6, :cond_7

    goto :goto_5

    .line 20
    :cond_7
    iget-object v4, v3, Lu4/n;->C:[Lu4/n$d;

    aget-object v4, v4, v5

    iget-boolean v6, v3, Lu4/n;->a0:Z

    move/from16 v8, p3

    .line 21
    invoke-virtual {v4, v1, v2, v8, v6}, Lp4/l0;->A(Ly0/r;Lq3/g;IZ)I

    move-result v2

    const/4 v4, -0x5

    if-ne v2, v4, :cond_b

    .line 22
    iget-object v4, v1, Ly0/r;->c:Ljava/lang/Object;

    check-cast v4, Ln3/s0;

    .line 23
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget v6, v3, Lu4/n;->I:I

    if-ne v5, v6, :cond_a

    .line 25
    iget-object v6, v3, Lu4/n;->C:[Lu4/n$d;

    aget-object v5, v6, v5

    invoke-virtual {v5}, Lp4/l0;->y()I

    move-result v5

    .line 26
    :goto_3
    iget-object v6, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_8

    iget-object v6, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu4/j;

    iget v6, v6, Lu4/j;->k:I

    if-eq v6, v5, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 27
    :cond_8
    iget-object v5, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_9

    .line 28
    iget-object v3, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu4/j;

    iget-object v3, v3, Lr4/e;->d:Ln3/s0;

    goto :goto_4

    .line 29
    :cond_9
    iget-object v3, v3, Lu4/n;->M:Ln3/s0;

    .line 30
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_4
    invoke-virtual {v4, v3}, Ln3/s0;->g(Ln3/s0;)Ln3/s0;

    move-result-object v4

    .line 32
    :cond_a
    iput-object v4, v1, Ly0/r;->c:Ljava/lang/Object;

    :cond_b
    move v4, v2

    :cond_c
    :goto_5
    return v4
.end method

.method public final p(J)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu4/m;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lu4/m;->i:Lu4/n;

    iget v2, p0, Lu4/m;->j:I

    .line 3
    invoke-virtual {v0}, Lu4/n;->C()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, v0, Lu4/n;->C:[Lu4/n$d;

    aget-object v1, v1, v2

    .line 5
    iget-boolean v3, v0, Lu4/n;->a0:Z

    invoke-virtual {v1, p1, p2, v3}, Lp4/l0;->r(JZ)I

    move-result p1

    .line 6
    iget-object p2, v0, Lu4/n;->u:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 7
    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    :cond_4
    :goto_0
    check-cast v0, Lu4/j;

    if-eqz v0, :cond_5

    .line 15
    iget-boolean p2, v0, Lu4/j;->K:Z

    if-nez p2, :cond_5

    .line 16
    iget p2, v1, Lp4/l0;->q:I

    iget v3, v1, Lp4/l0;->s:I

    add-int/2addr p2, v3

    .line 17
    invoke-virtual {v0, v2}, Lu4/j;->g(I)I

    move-result v0

    sub-int/2addr v0, p2

    .line 18
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 19
    :cond_5
    invoke-virtual {v1, p1}, Lp4/l0;->F(I)V

    move v1, p1

    :cond_6
    :goto_1
    return v1
.end method
