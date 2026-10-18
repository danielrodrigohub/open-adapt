.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/c;
.super Ljava/lang/Object;
.source "SsMediaPeriod.java"

# interfaces
.implements Lp4/v;
.implements Lp4/n0$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp4/v;",
        "Lp4/n0$a<",
        "Lr4/h<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final h:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field public final i:Ll5/j0;

.field public final j:Ll5/e0;

.field public final k:Lr3/l;

.field public final l:Lr3/k$a;

.field public final m:Ll5/c0;

.field public final n:Lp4/e0$a;

.field public final o:Ll5/b;

.field public final p:Lp4/u0;

.field public final q:Lp4/h;

.field public r:Lp4/v$a;

.field public s:Ly4/a;

.field public t:[Lr4/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lr4/h<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lf/p;


# direct methods
.method public constructor <init>(Ly4/a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Ll5/j0;Lp4/h;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;Ll5/e0;Ll5/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->s:Ly4/a;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->h:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Ll5/j0;

    .line 5
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:Ll5/e0;

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lr3/l;

    .line 7
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->l:Lr3/k$a;

    .line 8
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:Ll5/c0;

    .line 9
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lp4/e0$a;

    .line 10
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->o:Ll5/b;

    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->q:Lp4/h;

    .line 12
    iget-object p2, p1, Ly4/a;->f:[Ly4/a$b;

    array-length p2, p2

    new-array p2, p2, [Lp4/t0;

    const/4 p3, 0x0

    move p6, p3

    .line 13
    :goto_0
    iget-object p7, p1, Ly4/a;->f:[Ly4/a$b;

    array-length p8, p7

    if-ge p6, p8, :cond_1

    .line 14
    aget-object p7, p7, p6

    iget-object p7, p7, Ly4/a$b;->j:[Ln3/s0;

    .line 15
    array-length p8, p7

    new-array p8, p8, [Ln3/s0;

    move p9, p3

    .line 16
    :goto_1
    array-length p10, p7

    if-ge p9, p10, :cond_0

    .line 17
    aget-object p10, p7, p9

    .line 18
    invoke-interface {p5, p10}, Lr3/l;->e(Ln3/s0;)I

    move-result v0

    invoke-virtual {p10, v0}, Ln3/s0;->c(I)Ln3/s0;

    move-result-object p10

    aput-object p10, p8, p9

    add-int/lit8 p9, p9, 0x1

    goto :goto_1

    .line 19
    :cond_0
    new-instance p7, Lp4/t0;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p9

    invoke-direct {p7, p9, p8}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    aput-object p7, p2, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Lp4/u0;

    invoke-direct {p1, p2}, Lp4/u0;-><init>([Lp4/t0;)V

    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->p:Lp4/u0;

    new-array p1, p3, [Lr4/h;

    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:[Lr4/h;

    .line 23
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance p2, Lf/p;

    invoke-direct {p2, p1}, Lf/p;-><init>(Ljava/lang/Object;)V

    .line 25
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lf/p;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lf/p;

    invoke-virtual {v0}, Lf/p;->a()Z

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lf/p;

    invoke-virtual {v0}, Lf/p;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(JLn3/w1;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:[Lr4/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lr4/h;->h:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3
    iget-object v0, v3, Lr4/h;->l:Lr4/i;

    invoke-interface {v0, p1, p2, p3}, Lr4/i;->d(JLn3/w1;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lf/p;

    invoke-virtual {v0}, Lf/p;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lf/p;

    invoke-virtual {v0, p1, p2}, Lf/p;->f(J)Z

    move-result p1

    return p1
.end method

.method public final g(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lf/p;

    invoke-virtual {v0, p1, p2}, Lf/p;->g(J)V

    return-void
.end method

.method public final j(Lp4/n0;)V
    .locals 0

    .line 1
    check-cast p1, Lr4/h;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->r:Lp4/v$a;

    invoke-interface {p1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    return-void
.end method

.method public final l()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final n([Lj5/l;[Z[Lp4/m0;[ZJ)J
    .locals 19

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v12, v0

    .line 2
    :goto_0
    array-length v0, v14

    if-ge v12, v0, :cond_4

    .line 3
    aget-object v0, p3, v12

    if-eqz v0, :cond_2

    .line 4
    aget-object v0, p3, v12

    check-cast v0, Lr4/h;

    .line 5
    aget-object v1, v14, v12

    if-eqz v1, :cond_1

    aget-boolean v1, p2, v12

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Lr4/h;->l:Lr4/i;

    .line 7
    check-cast v1, Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    aget-object v2, v14, v12

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/b;->c(Lj5/l;)V

    .line 8
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lr4/h;->A(Lr4/h$b;)V

    .line 10
    aput-object v1, p3, v12

    .line 11
    :cond_2
    :goto_2
    aget-object v0, p3, v12

    if-nez v0, :cond_3

    aget-object v0, v14, v12

    if-eqz v0, :cond_3

    .line 12
    aget-object v5, v14, v12

    .line 13
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->p:Lp4/u0;

    invoke-interface {v5}, Lj5/o;->l()Lp4/t0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp4/u0;->c(Lp4/t0;)I

    move-result v0

    .line 14
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->h:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    iget-object v2, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:Ll5/e0;

    iget-object v3, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->s:Ly4/a;

    iget-object v6, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Ll5/j0;

    move v4, v0

    .line 15
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;->a(Ll5/e0;Ly4/a;ILj5/l;Ll5/j0;)Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    move-result-object v4

    .line 16
    new-instance v11, Lr4/h;

    iget-object v1, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->s:Ly4/a;

    iget-object v1, v1, Ly4/a;->f:[Ly4/a$b;

    aget-object v0, v1, v0

    iget v1, v0, Ly4/a$b;->a:I

    iget-object v6, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->o:Ll5/b;

    iget-object v9, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lr3/l;

    iget-object v10, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->l:Lr3/k$a;

    iget-object v7, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:Ll5/c0;

    iget-object v8, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lp4/e0$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v11

    move-object/from16 v5, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    move/from16 v16, v12

    move-object/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lr4/h;-><init>(I[I[Ln3/s0;Lr4/i;Lp4/n0$a;Ll5/b;JLr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;)V

    move-object/from16 v0, v18

    .line 17
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    aput-object v0, p3, v16

    const/4 v0, 0x1

    .line 19
    aput-boolean v0, p4, v16

    goto :goto_3

    :cond_3
    move/from16 v16, v12

    :goto_3
    add-int/lit8 v12, v16, 0x1

    goto/16 :goto_0

    .line 20
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 21
    new-array v0, v0, [Lr4/h;

    .line 22
    iput-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:[Lr4/h;

    .line 23
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->q:Lp4/h;

    iget-object v1, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:[Lr4/h;

    .line 25
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lf/p;

    invoke-direct {v0, v1}, Lf/p;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->u:Lf/p;

    return-wide p5
.end method

.method public final o()Lp4/u0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->p:Lp4/u0;

    return-object v0
.end method

.method public final q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:Ll5/e0;

    invoke-interface {v0}, Ll5/e0;->b()V

    return-void
.end method

.method public final s(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:[Lr4/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2, p3}, Lr4/h;->s(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->t:[Lr4/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2}, Lr4/h;->C(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public final u(Lp4/v$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->r:Lp4/v$a;

    .line 2
    invoke-interface {p1, p0}, Lp4/v$a;->i(Lp4/v;)V

    return-void
.end method
