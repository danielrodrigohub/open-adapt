.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/a;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/smoothstreaming/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;
    }
.end annotation


# instance fields
.field public final a:Ll5/e0;

.field public final b:I

.field public final c:[Lr4/f;

.field public final d:Ll5/j;

.field public e:Lj5/l;

.field public f:Ly4/a;

.field public g:I

.field public h:Lp4/b;


# direct methods
.method public constructor <init>(Ll5/e0;Ly4/a;ILj5/l;Ll5/j;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 2
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->a:Ll5/e0;

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ly4/a;

    .line 4
    iput v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    .line 5
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    move-object/from16 v4, p5

    .line 6
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->d:Ll5/j;

    .line 7
    iget-object v4, v1, Ly4/a;->f:[Ly4/a$b;

    aget-object v2, v4, v2

    .line 8
    invoke-interface/range {p4 .. p4}, Lj5/o;->length()I

    move-result v4

    new-array v4, v4, [Lr4/f;

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lr4/f;

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lr4/f;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 10
    invoke-interface {v3, v5}, Lj5/o;->i(I)I

    move-result v8

    .line 11
    iget-object v6, v2, Ly4/a$b;->j:[Ln3/s0;

    aget-object v6, v6, v8

    .line 12
    iget-object v7, v6, Ln3/s0;->v:Lr3/d;

    const/4 v14, 0x0

    if-eqz v7, :cond_0

    .line 13
    iget-object v7, v1, Ly4/a;->e:Ly4/a$a;

    .line 14
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v7, v7, Ly4/a$a;->c:[La4/m;

    move-object/from16 v18, v7

    goto :goto_1

    :cond_0
    move-object/from16 v18, v14

    .line 16
    :goto_1
    iget v9, v2, Ly4/a$b;->a:I

    const/4 v7, 0x2

    if-ne v9, v7, :cond_1

    const/4 v7, 0x4

    move/from16 v19, v7

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    .line 17
    :goto_2
    new-instance v15, La4/l;

    iget-wide v10, v2, Ly4/a$b;->c:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 p3, v5

    iget-wide v4, v1, Ly4/a;->g:J

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v15

    move-object/from16 v22, v15

    move-wide v14, v4

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v21}, La4/l;-><init>(IIJJJLn3/s0;I[La4/m;I[J[J)V

    .line 18
    new-instance v4, La4/e;

    const/4 v5, 0x3

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v8, v22

    const/4 v9, 0x0

    invoke-direct {v4, v5, v9, v8, v7}, La4/e;-><init>(ILm5/d0;La4/l;Ljava/util/List;)V

    .line 20
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lr4/f;

    new-instance v7, Lr4/d;

    iget v8, v2, Ly4/a$b;->a:I

    invoke-direct {v7, v4, v8, v6}, Lr4/d;-><init>(Ls3/h;ILn3/s0;)V

    aput-object v7, v5, p3

    add-int/lit8 v5, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lr4/f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    check-cast v3, Lr4/d;

    .line 3
    iget-object v3, v3, Lr4/d;->h:Ls3/h;

    invoke-interface {v3}, Ls3/h;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Lp4/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->a:Ll5/e0;

    invoke-interface {v0}, Ll5/e0;->b()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public final c(Lj5/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    return-void
.end method

.method public final d(JLn3/w1;)J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ly4/a;

    iget-object v0, v0, Ly4/a;->f:[Ly4/a$b;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    aget-object v0, v0, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Ly4/a$b;->c(J)I

    move-result v1

    .line 3
    iget-object v2, v0, Ly4/a$b;->o:[J

    aget-wide v6, v2, v1

    cmp-long v3, v6, p1

    if-gez v3, :cond_0

    .line 4
    iget v0, v0, Ly4/a$b;->k:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    aget-wide v0, v2, v1

    move-wide v8, v0

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    move-object v3, p3

    move-wide v4, p1

    .line 6
    invoke-virtual/range {v3 .. v9}, Ln3/w1;->a(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e(Ly4/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ly4/a;

    iget-object v0, v0, Ly4/a;->f:[Ly4/a$b;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    aget-object v0, v0, v1

    .line 2
    iget v2, v0, Ly4/a$b;->k:I

    .line 3
    iget-object v3, p1, Ly4/a;->f:[Ly4/a$b;

    aget-object v1, v3, v1

    if-eqz v2, :cond_2

    .line 4
    iget v3, v1, Ly4/a$b;->k:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    .line 5
    iget-object v4, v0, Ly4/a$b;->o:[J

    aget-wide v5, v4, v3

    .line 6
    invoke-virtual {v0, v3}, Ly4/a$b;->b(I)J

    move-result-wide v3

    add-long/2addr v3, v5

    const/4 v5, 0x0

    .line 7
    iget-object v1, v1, Ly4/a$b;->o:[J

    aget-wide v5, v1, v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    goto :goto_1

    .line 9
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    invoke-virtual {v0, v5, v6}, Ly4/a$b;->c(J)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 11
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ly4/a;

    return-void
.end method

.method public final g(JLr4/e;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lr4/e;",
            "Ljava/util/List<",
            "+",
            "Lr4/m;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Lp4/b;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lj5/l;->h(JLr4/e;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final h(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lr4/m;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Lp4/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    invoke-interface {v0}, Lj5/o;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    invoke-interface {v0, p1, p2, p3}, Lj5/l;->j(JLjava/util/List;)I

    move-result p1

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final i(JJLjava/util/List;Lr4/g;)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lr4/m;",
            ">;",
            "Lr4/g;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v10, p3

    move-object/from16 v12, p6

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Lp4/b;

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ly4/a;

    iget-object v2, v1, Ly4/a;->f:[Ly4/a$b;

    iget v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    aget-object v13, v2, v3

    .line 3
    iget v2, v13, Ly4/a$b;->k:I

    const/4 v14, 0x1

    if-nez v2, :cond_1

    .line 4
    iget-boolean v1, v1, Ly4/a;->d:Z

    xor-int/2addr v1, v14

    iput-boolean v1, v12, Lr4/g;->b:Z

    return-void

    .line 5
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v13, v10, v11}, Ly4/a$b;->c(J)I

    move-result v1

    move-object/from16 v15, p5

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    move-object/from16 v15, p5

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/m;

    invoke-virtual {v1}, Lr4/m;->c()J

    move-result-wide v1

    iget v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-gez v1, :cond_3

    .line 8
    new-instance v1, Lp4/b;

    invoke-direct {v1}, Lp4/b;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Lp4/b;

    return-void

    :cond_3
    :goto_0
    move v9, v1

    .line 9
    iget v1, v13, Ly4/a$b;->k:I

    if-lt v9, v1, :cond_4

    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ly4/a;

    iget-boolean v1, v1, Ly4/a;->d:Z

    xor-int/2addr v1, v14

    iput-boolean v1, v12, Lr4/g;->b:Z

    return-void

    :cond_4
    sub-long v4, v10, p1

    .line 11
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Ly4/a;

    iget-boolean v2, v1, Ly4/a;->d:Z

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_5

    move-wide/from16 v6, v16

    goto :goto_1

    .line 12
    :cond_5
    iget-object v1, v1, Ly4/a;->f:[Ly4/a$b;

    iget v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    aget-object v1, v1, v2

    .line 13
    iget v2, v1, Ly4/a$b;->k:I

    add-int/lit8 v2, v2, -0x1

    .line 14
    iget-object v3, v1, Ly4/a$b;->o:[J

    aget-wide v6, v3, v2

    .line 15
    invoke-virtual {v1, v2}, Ly4/a$b;->b(I)J

    move-result-wide v1

    add-long/2addr v1, v6

    sub-long v1, v1, p1

    move-wide v6, v1

    .line 16
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    invoke-interface {v1}, Lj5/o;->length()I

    move-result v1

    new-array v8, v1, [Lr4/n;

    const/16 v18, 0x0

    move/from16 v2, v18

    :goto_2
    if-ge v2, v1, :cond_6

    .line 17
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    invoke-interface {v3, v2}, Lj5/o;->i(I)I

    .line 18
    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;

    invoke-direct {v3, v13, v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;-><init>(Ly4/a$b;I)V

    aput-object v3, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    move-wide/from16 v2, p1

    move-object/from16 v19, v8

    move-object/from16 v8, p5

    move v14, v9

    move-object/from16 v9, v19

    invoke-interface/range {v1 .. v9}, Lj5/l;->g(JJJLjava/util/List;[Lr4/n;)V

    .line 20
    iget-object v1, v13, Ly4/a$b;->o:[J

    aget-wide v37, v1, v14

    .line 21
    invoke-virtual {v13, v14}, Ly4/a$b;->b(I)J

    move-result-wide v1

    add-long v28, v1, v37

    .line 22
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    move-wide/from16 v30, v10

    goto :goto_3

    :cond_7
    move-wide/from16 v30, v16

    .line 23
    :goto_3
    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    add-int v9, v14, v1

    .line 24
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    invoke-interface {v1}, Lj5/l;->o()I

    move-result v1

    .line 25
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lr4/f;

    aget-object v39, v2, v1

    .line 26
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    invoke-interface {v2, v1}, Lj5/o;->i(I)I

    move-result v1

    .line 27
    iget-object v2, v13, Ly4/a$b;->j:[Ln3/s0;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    move/from16 v2, v18

    :goto_4
    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 28
    iget-object v2, v13, Ly4/a$b;->n:Ljava/util/List;

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    move/from16 v2, v18

    :goto_5
    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 29
    iget-object v2, v13, Ly4/a$b;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_a

    const/16 v18, 0x1

    :cond_a
    invoke-static/range {v18 .. v18}, Lm5/a;->e(Z)V

    .line 30
    iget-object v2, v13, Ly4/a$b;->j:[Ln3/s0;

    aget-object v1, v2, v1

    iget v1, v1, Ln3/s0;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v2, v13, Ly4/a$b;->n:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v3, v13, Ly4/a$b;->m:Ljava/lang/String;

    const-string v4, "{bitrate}"

    .line 33
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{Bitrate}"

    .line 34
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{start time}"

    .line 35
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{start_time}"

    .line 36
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-object v2, v13, Ly4/a$b;->l:Ljava/lang/String;

    invoke-static {v2, v1}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 38
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    .line 39
    invoke-interface {v2}, Lj5/l;->m()Ln3/s0;

    move-result-object v23

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->d:Ll5/j;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    .line 40
    invoke-interface {v2}, Lj5/l;->n()I

    move-result v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    .line 41
    invoke-interface {v2}, Lj5/l;->q()Ljava/lang/Object;

    move-result-object v25

    .line 42
    new-instance v2, Ll5/m;

    move-object/from16 v22, v2

    invoke-direct {v2, v1}, Ll5/m;-><init>(Landroid/net/Uri;)V

    .line 43
    new-instance v1, Lr4/j;

    move-object/from16 v20, v1

    int-to-long v2, v9

    move-wide/from16 v34, v2

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v36, 0x1

    move-wide/from16 v26, v37

    invoke-direct/range {v20 .. v39}, Lr4/j;-><init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;JJJJJIJLr4/f;)V

    .line 44
    iput-object v1, v12, Lr4/g;->a:Lr4/e;

    return-void
.end method

.method public final j(Lr4/e;ZLl5/c0$c;Ll5/c0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    .line 2
    invoke-static {v0}, Lj5/r;->a(Lj5/l;)Ll5/c0$a;

    move-result-object v0

    .line 3
    invoke-interface {p4, v0, p3}, Ll5/c0;->a(Ll5/c0$a;Ll5/c0$c;)Ll5/c0$b;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 4
    iget p2, p3, Ll5/c0$b;->a:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lj5/l;

    iget-object p1, p1, Lr4/e;->d:Ln3/s0;

    .line 5
    invoke-interface {p2, p1}, Lj5/o;->a(Ln3/s0;)I

    move-result p1

    iget-wide p3, p3, Ll5/c0$b;->b:J

    .line 6
    invoke-interface {p2, p1, p3, p4}, Lj5/l;->b(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final k(Lr4/e;)V
    .locals 0

    return-void
.end method
