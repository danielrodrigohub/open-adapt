.class public final Ln3/b1;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# instance fields
.field public final a:Lp4/v;

.field public final b:Ljava/lang/Object;

.field public final c:[Lp4/m0;

.field public d:Z

.field public e:Z

.field public f:Ln3/c1;

.field public g:Z

.field public final h:[Z

.field public final i:[Ln3/t1;

.field public final j:Lj5/s;

.field public final k:Ln3/h1;

.field public l:Ln3/b1;

.field public m:Lp4/u0;

.field public n:Lj5/t;

.field public o:J


# direct methods
.method public constructor <init>([Ln3/t1;JLj5/s;Ll5/b;Ln3/h1;Ln3/c1;Lj5/t;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/b1;->i:[Ln3/t1;

    .line 3
    iput-wide p2, p0, Ln3/b1;->o:J

    .line 4
    iput-object p4, p0, Ln3/b1;->j:Lj5/s;

    .line 5
    iput-object p6, p0, Ln3/b1;->k:Ln3/h1;

    .line 6
    iget-object p2, p7, Ln3/c1;->a:Lp4/x$b;

    iget-object p3, p2, Lp4/w;->a:Ljava/lang/Object;

    iput-object p3, p0, Ln3/b1;->b:Ljava/lang/Object;

    .line 7
    iput-object p7, p0, Ln3/b1;->f:Ln3/c1;

    .line 8
    sget-object p3, Lp4/u0;->k:Lp4/u0;

    iput-object p3, p0, Ln3/b1;->m:Lp4/u0;

    .line 9
    iput-object p8, p0, Ln3/b1;->n:Lj5/t;

    .line 10
    array-length p3, p1

    new-array p3, p3, [Lp4/m0;

    iput-object p3, p0, Ln3/b1;->c:[Lp4/m0;

    .line 11
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Ln3/b1;->h:[Z

    .line 12
    iget-wide p3, p7, Ln3/c1;->b:J

    iget-wide v5, p7, Ln3/c1;->d:J

    .line 13
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p2, Lp4/w;->a:Ljava/lang/Object;

    .line 15
    sget p7, Ln3/a;->l:I

    .line 16
    check-cast p1, Landroid/util/Pair;

    iget-object p7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    invoke-virtual {p2, p1}, Lp4/x$b;->b(Ljava/lang/Object;)Lp4/x$b;

    move-result-object p1

    .line 19
    iget-object p2, p6, Ln3/h1;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/h1$c;

    .line 20
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p7, p6, Ln3/h1;->i:Ljava/util/HashSet;

    invoke-virtual {p7, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p7, p6, Ln3/h1;->h:Ljava/util/HashMap;

    invoke-virtual {p7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ln3/h1$b;

    if-eqz p7, :cond_0

    .line 23
    iget-object p8, p7, Ln3/h1$b;->a:Lp4/x;

    iget-object p7, p7, Ln3/h1$b;->b:Lp4/x$c;

    invoke-interface {p8, p7}, Lp4/x;->o(Lp4/x$c;)V

    .line 24
    :cond_0
    iget-object p7, p2, Ln3/h1$c;->c:Ljava/util/ArrayList;

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p7, p2, Ln3/h1$c;->a:Lp4/t;

    .line 26
    invoke-virtual {p7, p1, p5, p3, p4}, Lp4/t;->B(Lp4/x$b;Ll5/b;J)Lp4/s;

    move-result-object v1

    .line 27
    iget-object p1, p6, Ln3/h1;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p6}, Ln3/h1;->d()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, p1

    if-eqz p1, :cond_1

    .line 29
    new-instance p1, Lp4/d;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lp4/d;-><init>(Lp4/v;ZJJ)V

    move-object v1, p1

    .line 30
    :cond_1
    iput-object v1, p0, Ln3/b1;->a:Lp4/v;

    return-void
.end method


# virtual methods
.method public final a(Lj5/t;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 1
    :goto_0
    iget v4, v1, Lj5/t;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v0, Ln3/b1;->h:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Ln3/b1;->n:Lj5/t;

    .line 3
    invoke-virtual {v1, v6, v3}, Lj5/t;->a(Lj5/t;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Ln3/b1;->c:[Lp4/m0;

    move v4, v2

    .line 5
    :goto_2
    iget-object v6, v0, Ln3/b1;->i:[Ln3/t1;

    array-length v7, v6

    const/4 v8, -0x2

    if-ge v4, v7, :cond_3

    .line 6
    aget-object v6, v6, v4

    check-cast v6, Ln3/f;

    .line 7
    iget v6, v6, Ln3/f;->h:I

    if-ne v6, v8, :cond_2

    const/4 v6, 0x0

    .line 8
    aput-object v6, v3, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ln3/b1;->b()V

    .line 10
    iput-object v1, v0, Ln3/b1;->n:Lj5/t;

    .line 11
    invoke-virtual/range {p0 .. p0}, Ln3/b1;->c()V

    .line 12
    iget-object v9, v0, Ln3/b1;->a:Lp4/v;

    iget-object v10, v1, Lj5/t;->c:[Lj5/l;

    iget-object v11, v0, Ln3/b1;->h:[Z

    iget-object v12, v0, Ln3/b1;->c:[Lp4/m0;

    move-object/from16 v13, p5

    move-wide/from16 v14, p2

    .line 13
    invoke-interface/range {v9 .. v15}, Lp4/v;->n([Lj5/l;[Z[Lp4/m0;[ZJ)J

    move-result-wide v3

    .line 14
    iget-object v6, v0, Ln3/b1;->c:[Lp4/m0;

    move v7, v2

    .line 15
    :goto_3
    iget-object v9, v0, Ln3/b1;->i:[Ln3/t1;

    array-length v10, v9

    if-ge v7, v10, :cond_5

    .line 16
    aget-object v9, v9, v7

    check-cast v9, Ln3/f;

    .line 17
    iget v9, v9, Ln3/f;->h:I

    if-ne v9, v8, :cond_4

    .line 18
    iget-object v9, v0, Ln3/b1;->n:Lj5/t;

    .line 19
    invoke-virtual {v9, v7}, Lj5/t;->b(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 20
    new-instance v9, Lp4/o;

    invoke-direct {v9}, Lp4/o;-><init>()V

    aput-object v9, v6, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 21
    :cond_5
    iput-boolean v2, v0, Ln3/b1;->e:Z

    move v6, v2

    .line 22
    :goto_4
    iget-object v7, v0, Ln3/b1;->c:[Lp4/m0;

    array-length v9, v7

    if-ge v6, v9, :cond_9

    .line 23
    aget-object v7, v7, v6

    if-eqz v7, :cond_6

    .line 24
    invoke-virtual {v1, v6}, Lj5/t;->b(I)Z

    move-result v7

    invoke-static {v7}, Lm5/a;->e(Z)V

    .line 25
    iget-object v7, v0, Ln3/b1;->i:[Ln3/t1;

    aget-object v7, v7, v6

    check-cast v7, Ln3/f;

    .line 26
    iget v7, v7, Ln3/f;->h:I

    if-eq v7, v8, :cond_8

    .line 27
    iput-boolean v5, v0, Ln3/b1;->e:Z

    goto :goto_6

    .line 28
    :cond_6
    iget-object v7, v1, Lj5/t;->c:[Lj5/l;

    aget-object v7, v7, v6

    if-nez v7, :cond_7

    move v7, v5

    goto :goto_5

    :cond_7
    move v7, v2

    :goto_5
    invoke-static {v7}, Lm5/a;->e(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    return-wide v3
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/b1;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ln3/b1;->n:Lj5/t;

    iget v2, v1, Lj5/t;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Lj5/t;->b(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Ln3/b1;->n:Lj5/t;

    iget-object v2, v2, Lj5/t;->c:[Lj5/l;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lj5/l;->disable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/b1;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ln3/b1;->n:Lj5/t;

    iget v2, v1, Lj5/t;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Lj5/t;->b(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Ln3/b1;->n:Lj5/t;

    iget-object v2, v2, Lj5/t;->c:[Lj5/l;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lj5/l;->f()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln3/b1;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/b1;->f:Ln3/c1;

    iget-wide v0, v0, Ln3/c1;->b:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ln3/b1;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln3/b1;->a:Lp4/v;

    invoke-interface {v0}, Lp4/v;->e()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Ln3/b1;->f:Ln3/c1;

    iget-wide v3, v0, Ln3/c1;->e:J

    :cond_2
    return-wide v3
.end method

.method public final e()J
    .locals 4

    iget-object v0, p0, Ln3/b1;->f:Ln3/c1;

    iget-wide v0, v0, Ln3/c1;->b:J

    iget-wide v2, p0, Ln3/b1;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/b1;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ln3/b1;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/b1;->a:Lp4/v;

    .line 2
    invoke-interface {v0}, Lp4/v;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Ln3/b1;->l:Ln3/b1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/b1;->b()V

    .line 2
    iget-object v0, p0, Ln3/b1;->k:Ln3/h1;

    iget-object v1, p0, Ln3/b1;->a:Lp4/v;

    .line 3
    :try_start_0
    instance-of v2, v1, Lp4/d;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lp4/d;

    iget-object v1, v1, Lp4/d;->h:Lp4/v;

    invoke-virtual {v0, v1}, Ln3/h1;->h(Lp4/v;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Ln3/h1;->h(Lp4/v;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 6
    invoke-static {v1, v2, v0}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final i(FLn3/b2;)Lj5/t;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ln3/b1;->j:Lj5/s;

    iget-object v0, p0, Ln3/b1;->i:[Ln3/t1;

    .line 2
    iget-object v1, p0, Ln3/b1;->m:Lp4/u0;

    .line 3
    iget-object v2, p0, Ln3/b1;->f:Ln3/c1;

    iget-object v2, v2, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {p2, v0, v1}, Lj5/s;->c([Ln3/t1;Lp4/u0;)Lj5/t;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lj5/t;->c:[Lj5/l;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3, p1}, Lj5/l;->p(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b1;->a:Lp4/v;

    instance-of v1, v0, Lp4/d;

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Ln3/b1;->f:Ln3/c1;

    iget-wide v1, v1, Ln3/c1;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    .line 3
    :cond_0
    check-cast v0, Lp4/d;

    const-wide/16 v3, 0x0

    .line 4
    iput-wide v3, v0, Lp4/d;->l:J

    .line 5
    iput-wide v1, v0, Lp4/d;->m:J

    :cond_1
    return-void
.end method
