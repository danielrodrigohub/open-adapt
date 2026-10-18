.class public final Lp4/q0;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lp4/v;
.implements Ll5/d0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/q0$b;,
        Lp4/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp4/v;",
        "Ll5/d0$a<",
        "Lp4/q0$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Ll5/m;

.field public final i:Ll5/j$a;

.field public final j:Ll5/j0;

.field public final k:Ll5/c0;

.field public final l:Lp4/e0$a;

.field public final m:Lp4/u0;

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp4/q0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:J

.field public final p:Ll5/d0;

.field public final q:Ln3/s0;

.field public final r:Z

.field public s:Z

.field public t:[B

.field public u:I


# direct methods
.method public constructor <init>(Ll5/m;Ll5/j$a;Ll5/j0;Ln3/s0;JLl5/c0;Lp4/e0$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/q0;->h:Ll5/m;

    .line 3
    iput-object p2, p0, Lp4/q0;->i:Ll5/j$a;

    .line 4
    iput-object p3, p0, Lp4/q0;->j:Ll5/j0;

    .line 5
    iput-object p4, p0, Lp4/q0;->q:Ln3/s0;

    .line 6
    iput-wide p5, p0, Lp4/q0;->o:J

    .line 7
    iput-object p7, p0, Lp4/q0;->k:Ll5/c0;

    .line 8
    iput-object p8, p0, Lp4/q0;->l:Lp4/e0$a;

    .line 9
    iput-boolean p9, p0, Lp4/q0;->r:Z

    .line 10
    new-instance p1, Lp4/u0;

    const/4 p2, 0x1

    new-array p3, p2, [Lp4/t0;

    new-instance p5, Lp4/t0;

    new-array p2, p2, [Ln3/s0;

    const/4 p6, 0x0

    aput-object p4, p2, p6

    const-string p4, ""

    .line 11
    invoke-direct {p5, p4, p2}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    aput-object p5, p3, p6

    .line 12
    invoke-direct {p1, p3}, Lp4/u0;-><init>([Lp4/t0;)V

    iput-object p1, p0, Lp4/q0;->m:Lp4/u0;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp4/q0;->n:Ljava/util/ArrayList;

    .line 14
    new-instance p1, Ll5/d0;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lp4/q0;->p:Ll5/d0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lp4/q0;->p:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    iget-boolean v0, p0, Lp4/q0;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lp4/q0;->p:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public final d(JLn3/w1;)J
    .locals 0

    return-wide p1
.end method

.method public final e()J
    .locals 2

    iget-boolean v0, p0, Lp4/q0;->s:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final f(J)Z
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lp4/q0;->s:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lp4/q0;->p:Ll5/d0;

    invoke-virtual {v1}, Ll5/d0;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lp4/q0;->p:Ll5/d0;

    invoke-virtual {v1}, Ll5/d0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lp4/q0;->i:Ll5/j$a;

    invoke-interface {v1}, Ll5/j$a;->a()Ll5/j;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lp4/q0;->j:Ll5/j0;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1, v2}, Ll5/j;->j(Ll5/j0;)V

    .line 5
    :cond_1
    new-instance v2, Lp4/q0$b;

    iget-object v3, v0, Lp4/q0;->h:Ll5/m;

    invoke-direct {v2, v3, v1}, Lp4/q0$b;-><init>(Ll5/m;Ll5/j;)V

    .line 6
    iget-object v1, v0, Lp4/q0;->p:Ll5/d0;

    iget-object v3, v0, Lp4/q0;->k:Ll5/c0;

    const/4 v4, 0x1

    .line 7
    invoke-interface {v3, v4}, Ll5/c0;->c(I)I

    move-result v3

    .line 8
    invoke-virtual {v1, v2, v0, v3}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    move-result-wide v9

    .line 9
    iget-object v11, v0, Lp4/q0;->l:Lp4/e0$a;

    new-instance v12, Lp4/r;

    iget-wide v6, v2, Lp4/q0$b;->a:J

    iget-object v8, v0, Lp4/q0;->h:Ll5/m;

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lp4/r;-><init>(JLl5/m;J)V

    const/4 v13, 0x1

    const/4 v14, -0x1

    iget-object v15, v0, Lp4/q0;->q:Ln3/s0;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    iget-wide v1, v0, Lp4/q0;->o:J

    move-wide/from16 v20, v1

    invoke-virtual/range {v11 .. v21}, Lp4/e0$a;->n(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    return v4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public final g(J)V
    .locals 0

    return-void
.end method

.method public final h(Ll5/d0$d;JJ)V
    .locals 13

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lp4/q0$b;

    .line 2
    iget-object v2, v1, Lp4/q0$b;->c:Ll5/i0;

    .line 3
    iget-wide v2, v2, Ll5/i0;->b:J

    long-to-int v2, v2

    .line 4
    iput v2, v0, Lp4/q0;->u:I

    .line 5
    iget-object v2, v1, Lp4/q0$b;->d:[B

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object v2, v0, Lp4/q0;->t:[B

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v0, Lp4/q0;->s:Z

    .line 9
    iget-object v1, v1, Lp4/q0$b;->c:Ll5/i0;

    .line 10
    new-instance v3, Lp4/r;

    .line 11
    iget-object v2, v1, Ll5/i0;->c:Landroid/net/Uri;

    .line 12
    iget-object v1, v1, Ll5/i0;->d:Ljava/util/Map;

    .line 13
    invoke-direct {v3, v1}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 14
    iget-object v1, v0, Lp4/q0;->k:Ll5/c0;

    invoke-interface {v1}, Ll5/c0;->d()V

    .line 15
    iget-object v2, v0, Lp4/q0;->l:Lp4/e0$a;

    iget-object v6, v0, Lp4/q0;->q:Ln3/s0;

    iget-wide v11, v0, Lp4/q0;->o:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v12}, Lp4/e0$a;->h(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 13

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lp4/q0$b;

    .line 2
    iget-object v1, v1, Lp4/q0$b;->c:Ll5/i0;

    .line 3
    new-instance v3, Lp4/r;

    .line 4
    iget-object v2, v1, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object v1, v1, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {v3, v1}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object v1, v0, Lp4/q0;->k:Ll5/c0;

    invoke-interface {v1}, Ll5/c0;->d()V

    .line 8
    iget-object v2, v0, Lp4/q0;->l:Lp4/e0$a;

    iget-wide v11, v0, Lp4/q0;->o:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v12}, Lp4/e0$a;->e(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final l()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    move/from16 v1, p7

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lp4/q0$b;

    .line 2
    iget-object v2, v2, Lp4/q0$b;->c:Ll5/i0;

    .line 3
    new-instance v3, Lp4/r;

    .line 4
    iget-object v4, v2, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object v2, v2, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {v3, v2}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-wide v4, v0, Lp4/q0;->o:J

    .line 8
    invoke-static {v4, v5}, Lm5/g0;->X(J)J

    .line 9
    iget-object v2, v0, Lp4/q0;->k:Ll5/c0;

    new-instance v4, Ll5/c0$c;

    invoke-direct {v4, v12, v1}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    .line 10
    invoke-interface {v2, v4}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 11
    iget-object v8, v0, Lp4/q0;->k:Ll5/c0;

    .line 12
    invoke-interface {v8, v6}, Ll5/c0;->c(I)I

    move-result v8

    if-lt v1, v8, :cond_0

    goto :goto_0

    :cond_0
    move v1, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v6

    .line 13
    :goto_1
    iget-boolean v8, v0, Lp4/q0;->r:Z

    if-eqz v8, :cond_2

    if-eqz v1, :cond_2

    const-string v1, "SingleSampleMediaPeriod"

    const-string v2, "Loading failed, treating as end-of-stream."

    .line 14
    invoke-static {v1, v2, v12}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iput-boolean v6, v0, Lp4/q0;->s:Z

    .line 16
    sget-object v1, Ll5/d0;->e:Ll5/d0$b;

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 17
    new-instance v1, Ll5/d0$b;

    .line 18
    invoke-direct {v1, v7, v4, v5}, Ll5/d0$b;-><init>(IJ)V

    goto :goto_2

    .line 19
    :cond_3
    sget-object v1, Ll5/d0;->f:Ll5/d0$b;

    :goto_2
    move-object v14, v1

    .line 20
    invoke-virtual {v14}, Ll5/d0$b;->a()Z

    move-result v1

    xor-int/lit8 v15, v1, 0x1

    .line 21
    iget-object v1, v0, Lp4/q0;->l:Lp4/e0$a;

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget-object v6, v0, Lp4/q0;->q:Ln3/s0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v10, v0, Lp4/q0;->o:J

    const-wide/16 v16, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-wide/from16 v8, v16

    move-object/from16 v12, p6

    move v13, v15

    invoke-virtual/range {v1 .. v13}, Lp4/e0$a;->j(Lp4/r;IILn3/s0;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v15, :cond_4

    .line 22
    iget-object v1, v0, Lp4/q0;->k:Ll5/c0;

    invoke-interface {v1}, Ll5/c0;->d()V

    :cond_4
    return-object v14
.end method

.method public final n([Lj5/l;[Z[Lp4/m0;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 2
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lp4/q0;->n:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    aput-object v2, p3, v0

    .line 5
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lp4/q0$a;

    invoke-direct {v1, p0}, Lp4/q0$a;-><init>(Lp4/q0;)V

    .line 7
    iget-object v2, p0, Lp4/q0;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 9
    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public final o()Lp4/u0;
    .locals 1

    iget-object v0, p0, Lp4/q0;->m:Lp4/u0;

    return-object v0
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final s(JZ)V
    .locals 0

    return-void
.end method

.method public final t(J)J
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lp4/q0;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lp4/q0;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/q0$a;

    .line 3
    iget v2, v1, Lp4/q0$a;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 4
    iput v2, v1, Lp4/q0$a;->h:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final u(Lp4/v$a;J)V
    .locals 0

    invoke-interface {p1, p0}, Lp4/v$a;->i(Lp4/v;)V

    return-void
.end method
