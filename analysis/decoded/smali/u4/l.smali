.class public final Lu4/l;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lp4/v;
.implements Lu4/n$b;
.implements Lv4/j$a;


# instance fields
.field public A:[Lu4/n;

.field public B:[Lu4/n;

.field public C:I

.field public D:Lf/p;

.field public final h:Lu4/i;

.field public final i:Lv4/j;

.field public final j:Lu4/h;

.field public final k:Ll5/j0;

.field public final l:Lr3/l;

.field public final m:Lr3/k$a;

.field public final n:Ll5/c0;

.field public final o:Lp4/e0$a;

.field public final p:Ll5/b;

.field public final q:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lp4/m0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Le2/e;

.field public final s:Lp4/h;

.field public final t:Z

.field public final u:I

.field public final v:Z

.field public final w:Lo3/v0;

.field public x:Lp4/v$a;

.field public y:I

.field public z:Lp4/u0;


# direct methods
.method public constructor <init>(Lu4/i;Lv4/j;Lu4/h;Ll5/j0;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;Ll5/b;Lp4/h;ZIZLo3/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu4/l;->h:Lu4/i;

    .line 3
    iput-object p2, p0, Lu4/l;->i:Lv4/j;

    .line 4
    iput-object p3, p0, Lu4/l;->j:Lu4/h;

    .line 5
    iput-object p4, p0, Lu4/l;->k:Ll5/j0;

    .line 6
    iput-object p5, p0, Lu4/l;->l:Lr3/l;

    .line 7
    iput-object p6, p0, Lu4/l;->m:Lr3/k$a;

    .line 8
    iput-object p7, p0, Lu4/l;->n:Ll5/c0;

    .line 9
    iput-object p8, p0, Lu4/l;->o:Lp4/e0$a;

    .line 10
    iput-object p9, p0, Lu4/l;->p:Ll5/b;

    .line 11
    iput-object p10, p0, Lu4/l;->s:Lp4/h;

    .line 12
    iput-boolean p11, p0, Lu4/l;->t:Z

    .line 13
    iput p12, p0, Lu4/l;->u:I

    .line 14
    iput-boolean p13, p0, Lu4/l;->v:Z

    .line 15
    iput-object p14, p0, Lu4/l;->w:Lo3/v0;

    const/4 p1, 0x0

    new-array p2, p1, [Lp4/n0;

    .line 16
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p3, Lf/p;

    invoke-direct {p3, p2}, Lf/p;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object p3, p0, Lu4/l;->D:Lf/p;

    .line 19
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lu4/l;->q:Ljava/util/IdentityHashMap;

    .line 20
    new-instance p2, Le2/e;

    invoke-direct {p2}, Le2/e;-><init>()V

    iput-object p2, p0, Lu4/l;->r:Le2/e;

    new-array p2, p1, [Lu4/n;

    .line 21
    iput-object p2, p0, Lu4/l;->A:[Lu4/n;

    new-array p1, p1, [Lu4/n;

    .line 22
    iput-object p1, p0, Lu4/l;->B:[Lu4/n;

    return-void
.end method

.method public static m(Ln3/s0;Ln3/s0;Z)Ln3/s0;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Ln3/s0;->p:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Ln3/s0;->q:Lf4/a;

    .line 3
    iget v3, p1, Ln3/s0;->F:I

    .line 4
    iget v4, p1, Ln3/s0;->k:I

    .line 5
    iget v5, p1, Ln3/s0;->l:I

    .line 6
    iget-object v6, p1, Ln3/s0;->j:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Ln3/s0;->i:Ljava/lang/String;

    move-object v10, v6

    move v6, v3

    move v3, v5

    move-object v5, v10

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Ln3/s0;->p:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lm5/g0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v3, p0, Ln3/s0;->q:Lf4/a;

    if-eqz p2, :cond_1

    .line 10
    iget v0, p0, Ln3/s0;->F:I

    .line 11
    iget v1, p0, Ln3/s0;->k:I

    .line 12
    iget v4, p0, Ln3/s0;->l:I

    .line 13
    iget-object v5, p0, Ln3/s0;->j:Ljava/lang/String;

    .line 14
    iget-object v6, p0, Ln3/s0;->i:Ljava/lang/String;

    move v10, v0

    move-object v0, p1

    move-object p1, v6

    move v6, v10

    move v11, v4

    move v4, v1

    move-object v1, v3

    move v3, v11

    goto :goto_0

    :cond_1
    move-object v5, v0

    move v4, v1

    move v6, v2

    move-object v0, p1

    move-object p1, v5

    move-object v1, v3

    move v3, v4

    .line 15
    :goto_0
    invoke-static {v0}, Lm5/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_2

    .line 16
    iget v8, p0, Ln3/s0;->m:I

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    if-eqz p2, :cond_3

    .line 17
    iget v2, p0, Ln3/s0;->n:I

    .line 18
    :cond_3
    new-instance p2, Ln3/s0$a;

    invoke-direct {p2}, Ln3/s0$a;-><init>()V

    iget-object v9, p0, Ln3/s0;->h:Ljava/lang/String;

    .line 19
    iput-object v9, p2, Ln3/s0$a;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p2, Ln3/s0$a;->b:Ljava/lang/String;

    .line 21
    iget-object p0, p0, Ln3/s0;->r:Ljava/lang/String;

    .line 22
    iput-object p0, p2, Ln3/s0$a;->j:Ljava/lang/String;

    .line 23
    iput-object v7, p2, Ln3/s0$a;->k:Ljava/lang/String;

    .line 24
    iput-object v0, p2, Ln3/s0$a;->h:Ljava/lang/String;

    .line 25
    iput-object v1, p2, Ln3/s0$a;->i:Lf4/a;

    .line 26
    iput v8, p2, Ln3/s0$a;->f:I

    .line 27
    iput v2, p2, Ln3/s0$a;->g:I

    .line 28
    iput v6, p2, Ln3/s0$a;->x:I

    .line 29
    iput v4, p2, Ln3/s0$a;->d:I

    .line 30
    iput v3, p2, Ln3/s0$a;->e:I

    .line 31
    iput-object v5, p2, Ln3/s0$a;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lu4/l;->D:Lf/p;

    invoke-virtual {v0}, Lf/p;->a()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/net/Uri;Ll5/c0$c;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lu4/l;->A:[Lu4/n;

    array-length v3, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v3, :cond_a

    aget-object v8, v2, v6

    .line 2
    iget-object v9, v8, Lu4/n;->k:Lu4/g;

    .line 3
    iget-object v9, v9, Lu4/g;->e:[Landroid/net/Uri;

    invoke-static {v9, v1}, Lm5/g0;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v13, p2

    goto/16 :goto_6

    :cond_0
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p3, :cond_1

    .line 4
    iget-object v11, v8, Lu4/n;->p:Ll5/c0;

    iget-object v12, v8, Lu4/n;->k:Lu4/g;

    .line 5
    iget-object v12, v12, Lu4/g;->q:Lj5/l;

    .line 6
    invoke-static {v12}, Lj5/r;->a(Lj5/l;)Ll5/c0$a;

    move-result-object v12

    move-object/from16 v13, p2

    .line 7
    invoke-interface {v11, v12, v13}, Ll5/c0;->a(Ll5/c0$a;Ll5/c0$c;)Ll5/c0$b;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 8
    iget v12, v11, Ll5/c0$b;->a:I

    const/4 v14, 0x2

    if-ne v12, v14, :cond_2

    .line 9
    iget-wide v11, v11, Ll5/c0$b;->b:J

    goto :goto_1

    :cond_1
    move-object/from16 v13, p2

    :cond_2
    move-wide v11, v9

    .line 10
    :goto_1
    iget-object v8, v8, Lu4/n;->k:Lu4/g;

    const/4 v14, 0x0

    .line 11
    :goto_2
    iget-object v15, v8, Lu4/g;->e:[Landroid/net/Uri;

    array-length v4, v15

    const/4 v5, -0x1

    if-ge v14, v4, :cond_4

    .line 12
    aget-object v4, v15, v14

    invoke-virtual {v4, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    move v14, v5

    :goto_3
    if-ne v14, v5, :cond_5

    goto :goto_4

    .line 13
    :cond_5
    iget-object v4, v8, Lu4/g;->q:Lj5/l;

    invoke-interface {v4, v14}, Lj5/o;->t(I)I

    move-result v4

    if-ne v4, v5, :cond_6

    goto :goto_4

    .line 14
    :cond_6
    iget-boolean v5, v8, Lu4/g;->s:Z

    iget-object v14, v8, Lu4/g;->o:Landroid/net/Uri;

    invoke-virtual {v1, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v5, v14

    iput-boolean v5, v8, Lu4/g;->s:Z

    cmp-long v5, v11, v9

    if-eqz v5, :cond_8

    .line 15
    iget-object v5, v8, Lu4/g;->q:Lj5/l;

    .line 16
    invoke-interface {v5, v4, v11, v12}, Lj5/l;->b(IJ)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v8, Lu4/g;->g:Lv4/j;

    .line 17
    invoke-interface {v4, v1, v11, v12}, Lv4/j;->c(Landroid/net/Uri;J)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_9

    cmp-long v4, v11, v9

    if-eqz v4, :cond_9

    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    and-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 18
    :cond_a
    iget-object v1, v0, Lu4/l;->x:Lp4/v$a;

    invoke-interface {v1, v0}, Lp4/n0$a;->j(Lp4/n0;)V

    return v7
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lu4/l;->D:Lf/p;

    invoke-virtual {v0}, Lf/p;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(JLn3/w1;)J
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lu4/l;->B:[Lu4/n;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 2
    iget v6, v5, Lu4/n;->H:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    move v6, v8

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_4

    .line 3
    iget-object v1, v5, Lu4/n;->k:Lu4/g;

    .line 4
    iget-object v2, v1, Lu4/g;->q:Lj5/l;

    invoke-interface {v2}, Lj5/l;->o()I

    move-result v2

    .line 5
    iget-object v3, v1, Lu4/g;->e:[Landroid/net/Uri;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 6
    iget-object v2, v1, Lu4/g;->g:Lv4/j;

    iget-object v4, v1, Lu4/g;->q:Lj5/l;

    .line 7
    invoke-interface {v4}, Lj5/l;->k()I

    move-result v4

    aget-object v3, v3, v4

    .line 8
    invoke-interface {v2, v3, v8}, Lv4/j;->j(Landroid/net/Uri;Z)Lv4/e;

    move-result-object v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 9
    iget-object v3, v2, Lv4/e;->r:Lu6/v;

    .line 10
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lv4/g;->c:Z

    if-nez v3, :cond_2

    goto :goto_4

    .line 11
    :cond_2
    iget-wide v3, v2, Lv4/e;->h:J

    iget-object v1, v1, Lu4/g;->g:Lv4/j;

    .line 12
    invoke-interface {v1}, Lv4/j;->o()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long v10, p1, v3

    .line 13
    iget-object v1, v2, Lv4/e;->r:Lu6/v;

    .line 14
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 15
    invoke-static {v1, v5, v8}, Lm5/g0;->c(Ljava/util/List;Ljava/lang/Comparable;Z)I

    move-result v1

    .line 16
    iget-object v5, v2, Lv4/e;->r:Lu6/v;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv4/e$c;

    iget-wide v12, v5, Lv4/e$d;->l:J

    .line 17
    iget-object v5, v2, Lv4/e;->r:Lu6/v;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    if-eq v1, v5, :cond_3

    .line 18
    iget-object v2, v2, Lv4/e;->r:Lu6/v;

    add-int/2addr v1, v8

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/e$c;

    iget-wide v1, v1, Lv4/e$d;->l:J

    move-wide v14, v1

    goto :goto_3

    :cond_3
    move-wide v14, v12

    :goto_3
    move-object/from16 v9, p3

    .line 19
    invoke-virtual/range {v9 .. v15}, Ln3/w1;->a(JJJ)J

    move-result-wide v1

    add-long/2addr v1, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    move-wide/from16 v1, p1

    :goto_5
    return-wide v1
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lu4/l;->D:Lf/p;

    invoke-virtual {v0}, Lf/p;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lu4/l;->z:Lp4/u0;

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p0, Lu4/l;->A:[Lu4/n;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 3
    iget-boolean v3, v2, Lu4/n;->K:Z

    if-nez v3, :cond_0

    .line 4
    iget-wide v3, v2, Lu4/n;->W:J

    invoke-virtual {v2, v3, v4}, Lu4/n;->f(J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 5
    :cond_2
    iget-object v0, p0, Lu4/l;->D:Lf/p;

    invoke-virtual {v0, p1, p2}, Lf/p;->f(J)Z

    move-result p1

    return p1
.end method

.method public final g(J)V
    .locals 1

    iget-object v0, p0, Lu4/l;->D:Lf/p;

    invoke-virtual {v0, p1, p2}, Lf/p;->g(J)V

    return-void
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lu4/l;->A:[Lu4/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v4, v3, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-static {v4}, Lg0/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu4/j;

    .line 4
    iget-object v5, v3, Lu4/n;->k:Lu4/g;

    invoke-virtual {v5, v4}, Lu4/g;->b(Lu4/j;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 5
    iput-boolean v6, v4, Lu4/j;->K:Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v5, v4, :cond_2

    .line 6
    iget-boolean v4, v3, Lu4/n;->a0:Z

    if-nez v4, :cond_2

    iget-object v4, v3, Lu4/n;->q:Ll5/d0;

    .line 7
    invoke-virtual {v4}, Ll5/d0;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v3, v3, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v3}, Ll5/d0;->a()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lu4/l;->x:Lp4/v$a;

    invoke-interface {v0, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    return-void
.end method

.method public final j(Lp4/n0;)V
    .locals 0

    .line 1
    check-cast p1, Lu4/n;

    .line 2
    iget-object p1, p0, Lu4/l;->x:Lp4/v$a;

    invoke-interface {p1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    return-void
.end method

.method public final k(Ljava/lang/String;I[Landroid/net/Uri;[Ln3/s0;Ln3/s0;Ljava/util/List;Ljava/util/Map;J)Lu4/n;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Landroid/net/Uri;",
            "[",
            "Ln3/s0;",
            "Ln3/s0;",
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr3/d;",
            ">;J)",
            "Lu4/n;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    new-instance v10, Lu4/g;

    iget-object v1, v15, Lu4/l;->h:Lu4/i;

    iget-object v2, v15, Lu4/l;->i:Lv4/j;

    iget-object v5, v15, Lu4/l;->j:Lu4/h;

    iget-object v6, v15, Lu4/l;->k:Ll5/j0;

    iget-object v7, v15, Lu4/l;->r:Le2/e;

    iget-object v9, v15, Lu4/l;->w:Lo3/v0;

    move-object v0, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lu4/g;-><init>(Lu4/i;Lv4/j;[Landroid/net/Uri;[Ln3/s0;Lu4/h;Ll5/j0;Le2/e;Ljava/util/List;Lo3/v0;)V

    .line 2
    new-instance v16, Lu4/n;

    iget-object v6, v15, Lu4/l;->p:Ll5/b;

    iget-object v11, v15, Lu4/l;->l:Lr3/l;

    iget-object v12, v15, Lu4/l;->m:Lr3/k$a;

    iget-object v13, v15, Lu4/l;->n:Ll5/c0;

    iget-object v14, v15, Lu4/l;->o:Lp4/e0$a;

    iget v9, v15, Lu4/l;->u:I

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p0

    move-object v4, v10

    move-object/from16 v5, p7

    move-wide/from16 v7, p8

    move/from16 v17, v9

    move-object/from16 v9, p5

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lu4/n;-><init>(Ljava/lang/String;ILu4/n$b;Lu4/g;Ljava/util/Map;Ll5/b;JLn3/s0;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;I)V

    return-object v16
.end method

.method public final l()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final n([Lj5/l;[Z[Lp4/m0;[ZJ)J
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 1
    array-length v3, v1

    new-array v14, v3, [I

    .line 2
    array-length v3, v1

    new-array v15, v3, [I

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v1

    const/4 v10, -0x1

    if-ge v3, v4, :cond_3

    .line 4
    aget-object v4, v2, v3

    if-nez v4, :cond_0

    move v4, v10

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lu4/l;->q:Ljava/util/IdentityHashMap;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    aput v4, v14, v3

    .line 5
    aput v10, v15, v3

    .line 6
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 7
    aget-object v4, v1, v3

    invoke-interface {v4}, Lj5/o;->l()Lp4/t0;

    move-result-object v4

    const/4 v5, 0x0

    .line 8
    :goto_2
    iget-object v6, v0, Lu4/l;->A:[Lu4/n;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 9
    aget-object v6, v6, v5

    .line 10
    invoke-virtual {v6}, Lu4/n;->v()V

    .line 11
    iget-object v6, v6, Lu4/n;->P:Lp4/u0;

    .line 12
    invoke-virtual {v6, v4}, Lp4/u0;->c(Lp4/t0;)I

    move-result v6

    if-eq v6, v10, :cond_1

    .line 13
    aput v5, v15, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v3, v0, Lu4/l;->q:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 15
    array-length v8, v1

    new-array v9, v8, [Lp4/m0;

    .line 16
    array-length v6, v1

    new-array v7, v6, [Lp4/m0;

    .line 17
    array-length v4, v1

    new-array v5, v4, [Lj5/l;

    .line 18
    iget-object v3, v0, Lu4/l;->A:[Lu4/n;

    array-length v3, v3

    new-array v3, v3, [Lu4/n;

    move/from16 v16, v8

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 19
    :goto_4
    iget-object v11, v0, Lu4/l;->A:[Lu4/n;

    array-length v11, v11

    if-ge v8, v11, :cond_28

    const/4 v11, 0x0

    .line 20
    :goto_5
    array-length v10, v1

    move-object/from16 v21, v3

    if-ge v11, v10, :cond_6

    .line 21
    aget v10, v14, v11

    if-ne v10, v8, :cond_4

    aget-object v10, v2, v11

    goto :goto_6

    :cond_4
    const/4 v10, 0x0

    :goto_6
    aput-object v10, v7, v11

    .line 22
    aget v10, v15, v11

    if-ne v10, v8, :cond_5

    aget-object v3, v1, v11

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    :goto_7
    aput-object v3, v5, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v21

    goto :goto_5

    .line 23
    :cond_6
    iget-object v10, v0, Lu4/l;->A:[Lu4/n;

    aget-object v11, v10, v8

    .line 24
    invoke-virtual {v11}, Lu4/n;->v()V

    .line 25
    iget v10, v11, Lu4/n;->L:I

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_a

    .line 26
    aget-object v23, v7, v3

    move/from16 v24, v6

    move-object/from16 v6, v23

    check-cast v6, Lu4/m;

    if-eqz v6, :cond_9

    .line 27
    aget-object v23, v5, v3

    if-eqz v23, :cond_7

    aget-boolean v23, p2, v3

    if-nez v23, :cond_9

    :cond_7
    move/from16 v23, v8

    .line 28
    iget v8, v11, Lu4/n;->L:I

    move-object/from16 v25, v9

    const/4 v9, -0x1

    add-int/2addr v8, v9

    iput v8, v11, Lu4/n;->L:I

    .line 29
    iget v8, v6, Lu4/m;->j:I

    if-eq v8, v9, :cond_8

    .line 30
    iget-object v8, v6, Lu4/m;->i:Lu4/n;

    iget v9, v6, Lu4/m;->h:I

    .line 31
    invoke-virtual {v8}, Lu4/n;->v()V

    .line 32
    iget-object v2, v8, Lu4/n;->R:[I

    .line 33
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v2, v8, Lu4/n;->R:[I

    aget v2, v2, v9

    .line 35
    iget-object v9, v8, Lu4/n;->U:[Z

    aget-boolean v9, v9, v2

    invoke-static {v9}, Lm5/a;->e(Z)V

    .line 36
    iget-object v8, v8, Lu4/n;->U:[Z

    const/16 v19, 0x0

    aput-boolean v19, v8, v2

    const/4 v2, -0x1

    .line 37
    iput v2, v6, Lu4/m;->j:I

    goto :goto_9

    :cond_8
    move v2, v9

    const/16 v19, 0x0

    :goto_9
    const/4 v6, 0x0

    .line 38
    aput-object v6, v7, v3

    goto :goto_a

    :cond_9
    move/from16 v23, v8

    move-object/from16 v25, v9

    const/4 v2, -0x1

    const/16 v19, 0x0

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p3

    move/from16 v8, v23

    move/from16 v6, v24

    move-object/from16 v9, v25

    goto :goto_8

    :cond_a
    move/from16 v24, v6

    move/from16 v23, v8

    move-object/from16 v25, v9

    const/4 v2, -0x1

    const/16 v19, 0x0

    if-nez v18, :cond_d

    .line 39
    iget-boolean v3, v11, Lu4/n;->Z:Z

    if-eqz v3, :cond_b

    if-nez v10, :cond_c

    goto :goto_b

    :cond_b
    iget-wide v9, v11, Lu4/n;->W:J

    cmp-long v3, v12, v9

    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    move/from16 v3, v19

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v3, 0x1

    .line 40
    :goto_c
    iget-object v6, v11, Lu4/n;->k:Lu4/g;

    .line 41
    iget-object v6, v6, Lu4/g;->q:Lj5/l;

    move/from16 v20, v3

    move-object v10, v6

    move/from16 v3, v19

    :goto_d
    if-ge v3, v4, :cond_12

    .line 42
    aget-object v9, v5, v3

    if-nez v9, :cond_e

    goto :goto_f

    .line 43
    :cond_e
    iget-object v2, v11, Lu4/n;->P:Lp4/u0;

    invoke-interface {v9}, Lj5/o;->l()Lp4/t0;

    move-result-object v8

    invoke-virtual {v2, v8}, Lp4/u0;->c(Lp4/t0;)I

    move-result v2

    .line 44
    iget v8, v11, Lu4/n;->S:I

    if-ne v2, v8, :cond_f

    .line 45
    iget-object v8, v11, Lu4/n;->k:Lu4/g;

    .line 46
    iput-object v9, v8, Lu4/g;->q:Lj5/l;

    move-object v10, v9

    .line 47
    :cond_f
    aget-object v8, v7, v3

    if-nez v8, :cond_11

    .line 48
    iget v8, v11, Lu4/n;->L:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v11, Lu4/n;->L:I

    .line 49
    new-instance v8, Lu4/m;

    invoke-direct {v8, v11, v2}, Lu4/m;-><init>(Lu4/n;I)V

    aput-object v8, v7, v3

    .line 50
    aput-boolean v9, p4, v3

    .line 51
    iget-object v8, v11, Lu4/n;->R:[I

    if-eqz v8, :cond_11

    .line 52
    aget-object v8, v7, v3

    check-cast v8, Lu4/m;

    invoke-virtual {v8}, Lu4/m;->a()V

    if-nez v20, :cond_11

    .line 53
    iget-object v8, v11, Lu4/n;->C:[Lu4/n$d;

    iget-object v9, v11, Lu4/n;->R:[I

    aget v2, v9, v2

    aget-object v2, v8, v2

    const/4 v8, 0x1

    .line 54
    invoke-virtual {v2, v12, v13, v8}, Lp4/l0;->D(JZ)Z

    move-result v9

    if-nez v9, :cond_10

    .line 55
    iget v8, v2, Lp4/l0;->q:I

    iget v2, v2, Lp4/l0;->s:I

    add-int/2addr v8, v2

    if-eqz v8, :cond_10

    const/4 v9, 0x1

    goto :goto_e

    :cond_10
    move/from16 v9, v19

    :goto_e
    move/from16 v20, v9

    :cond_11
    :goto_f
    add-int/lit8 v3, v3, 0x1

    const/4 v2, -0x1

    goto :goto_d

    .line 56
    :cond_12
    iget v2, v11, Lu4/n;->L:I

    if-nez v2, :cond_15

    .line 57
    iget-object v2, v11, Lu4/n;->k:Lu4/g;

    const/4 v3, 0x0

    .line 58
    iput-object v3, v2, Lu4/g;->n:Lp4/b;

    .line 59
    iput-object v3, v11, Lu4/n;->N:Ln3/s0;

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, v11, Lu4/n;->Y:Z

    .line 61
    iget-object v3, v11, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v3, v11, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v3}, Ll5/d0;->d()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 63
    iget-boolean v3, v11, Lu4/n;->J:Z

    if-eqz v3, :cond_13

    .line 64
    iget-object v3, v11, Lu4/n;->C:[Lu4/n$d;

    array-length v6, v3

    move/from16 v8, v19

    :goto_10
    if-ge v8, v6, :cond_13

    aget-object v9, v3, v8

    .line 65
    invoke-virtual {v9}, Lp4/l0;->j()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 66
    :cond_13
    iget-object v3, v11, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v3}, Ll5/d0;->a()V

    goto :goto_11

    .line 67
    :cond_14
    invoke-virtual {v11}, Lu4/n;->G()V

    :goto_11
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object v0, v11

    move-object/from16 v31, v14

    move/from16 v32, v16

    move-object/from16 v30, v21

    move/from16 v34, v23

    move/from16 v2, v24

    move-object/from16 v33, v25

    const/16 v23, -0x1

    move-object/from16 v24, v7

    goto/16 :goto_16

    :cond_15
    const/4 v2, 0x1

    .line 68
    iget-object v3, v11, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 69
    invoke-static {v10, v6}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 70
    iget-boolean v3, v11, Lu4/n;->Z:Z

    if-nez v3, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v3, v12, v8

    if-gez v3, :cond_16

    neg-long v8, v12

    .line 71
    :cond_16
    invoke-virtual {v11}, Lu4/n;->A()Lu4/j;

    move-result-object v6

    .line 72
    iget-object v3, v11, Lu4/n;->k:Lu4/g;

    .line 73
    invoke-virtual {v3, v6, v12, v13}, Lu4/g;->a(Lu4/j;J)[Lr4/n;

    move-result-object v22

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    iget-object v3, v11, Lu4/n;->v:Ljava/util/List;

    move-object/from16 v2, v21

    move-object/from16 v21, v3

    move-object v3, v10

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-wide/from16 v4, p5

    move-object/from16 v30, v2

    move-object/from16 v31, v14

    move/from16 v2, v24

    move-object v14, v6

    move-object/from16 v24, v7

    move-wide v6, v8

    move/from16 v32, v16

    move/from16 v34, v23

    move-object/from16 v33, v25

    const/4 v0, 0x1

    move-wide/from16 v8, v26

    move-object/from16 v16, v10

    const/16 v23, -0x1

    move-object/from16 v10, v21

    move-object v0, v11

    move-object/from16 v11, v22

    invoke-interface/range {v3 .. v11}, Lj5/l;->g(JJJLjava/util/List;[Lr4/n;)V

    .line 75
    iget-object v3, v0, Lu4/n;->k:Lu4/g;

    .line 76
    iget-object v3, v3, Lu4/g;->h:Lp4/t0;

    .line 77
    iget-object v4, v14, Lr4/e;->d:Ln3/s0;

    invoke-virtual {v3, v4}, Lp4/t0;->b(Ln3/s0;)I

    move-result v3

    .line 78
    invoke-interface/range {v16 .. v16}, Lj5/l;->k()I

    move-result v4

    if-eq v4, v3, :cond_17

    goto :goto_12

    :cond_17
    const/4 v11, 0x0

    goto :goto_13

    :cond_18
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object v0, v11

    move-object/from16 v31, v14

    move/from16 v32, v16

    move-object/from16 v30, v21

    move/from16 v34, v23

    move/from16 v2, v24

    move-object/from16 v33, v25

    const/16 v23, -0x1

    move-object/from16 v24, v7

    :goto_12
    const/4 v11, 0x1

    :goto_13
    if-eqz v11, :cond_1a

    const/4 v3, 0x1

    .line 79
    iput-boolean v3, v0, Lu4/n;->Y:Z

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_14

    :cond_19
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object v0, v11

    move-object/from16 v31, v14

    move/from16 v32, v16

    move-object/from16 v30, v21

    move/from16 v34, v23

    move/from16 v2, v24

    move-object/from16 v33, v25

    const/16 v23, -0x1

    move-object/from16 v24, v7

    :cond_1a
    move/from16 v3, v18

    move/from16 v8, v20

    :goto_14
    if-eqz v8, :cond_1c

    .line 80
    invoke-virtual {v0, v12, v13, v3}, Lu4/n;->H(JZ)Z

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v2, :cond_1c

    .line 81
    aget-object v3, v24, v11

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    .line 82
    aput-boolean v3, p4, v11

    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_1c
    move/from16 v20, v8

    .line 83
    :goto_16
    iget-object v3, v0, Lu4/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v2, :cond_1e

    .line 84
    aget-object v3, v24, v11

    if-eqz v3, :cond_1d

    .line 85
    iget-object v4, v0, Lu4/n;->z:Ljava/util/ArrayList;

    check-cast v3, Lu4/m;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_1e
    const/4 v3, 0x1

    .line 86
    iput-boolean v3, v0, Lu4/n;->Z:Z

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 87
    :goto_18
    array-length v5, v1

    if-ge v11, v5, :cond_22

    .line 88
    aget-object v5, v24, v11

    .line 89
    aget v6, v15, v11

    move/from16 v7, v34

    if-ne v6, v7, :cond_1f

    .line 90
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v33

    .line 91
    aput-object v5, v6, v11

    move v8, v3

    move-object/from16 v3, p0

    .line 92
    iget-object v4, v3, Lu4/l;->q:Ljava/util/IdentityHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v8

    goto :goto_1a

    :cond_1f
    move v8, v3

    move-object/from16 v6, v33

    move-object/from16 v3, p0

    .line 93
    aget v9, v31, v11

    if-ne v9, v7, :cond_21

    if-nez v5, :cond_20

    move v5, v8

    goto :goto_19

    :cond_20
    const/4 v5, 0x0

    .line 94
    :goto_19
    invoke-static {v5}, Lm5/a;->e(Z)V

    :cond_21
    :goto_1a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v33, v6

    move/from16 v34, v7

    move v3, v8

    goto :goto_18

    :cond_22
    move v8, v3

    move-object/from16 v6, v33

    move/from16 v7, v34

    move-object/from16 v3, p0

    if-eqz v4, :cond_26

    move/from16 v11, v17

    .line 95
    aput-object v0, v30, v11

    add-int/lit8 v17, v11, 0x1

    if-nez v11, :cond_24

    .line 96
    iget-object v4, v0, Lu4/n;->k:Lu4/g;

    .line 97
    iput-boolean v8, v4, Lu4/g;->l:Z

    if-nez v20, :cond_23

    .line 98
    iget-object v4, v3, Lu4/l;->B:[Lu4/n;

    array-length v5, v4

    if-eqz v5, :cond_23

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eq v0, v4, :cond_27

    goto :goto_1b

    :cond_23
    const/4 v5, 0x0

    .line 99
    :goto_1b
    iget-object v0, v3, Lu4/l;->r:Le2/e;

    .line 100
    iget-object v0, v0, Le2/e;->a:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    move/from16 v18, v8

    goto :goto_1d

    :cond_24
    const/4 v5, 0x0

    .line 101
    iget v4, v3, Lu4/l;->C:I

    if-ge v7, v4, :cond_25

    move v11, v8

    goto :goto_1c

    :cond_25
    move v11, v5

    .line 102
    :goto_1c
    iget-object v0, v0, Lu4/n;->k:Lu4/g;

    .line 103
    iput-boolean v11, v0, Lu4/g;->l:Z

    goto :goto_1d

    :cond_26
    move/from16 v11, v17

    const/4 v5, 0x0

    :cond_27
    :goto_1d
    add-int/lit8 v8, v7, 0x1

    move-object v0, v3

    move-object v9, v6

    move/from16 v10, v23

    move-object/from16 v7, v24

    move/from16 v4, v28

    move-object/from16 v5, v29

    move-object/from16 v3, v30

    move-object/from16 v14, v31

    move/from16 v16, v32

    move v6, v2

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_28
    move-object/from16 v30, v3

    move-object v6, v9

    move/from16 v4, v16

    move/from16 v11, v17

    const/4 v5, 0x0

    move-object v3, v0

    move-object v0, v2

    .line 104
    invoke-static {v6, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v30

    .line 105
    invoke-static {v0, v11}, Lm5/g0;->N([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu4/n;

    iput-object v0, v3, Lu4/l;->B:[Lu4/n;

    .line 106
    iget-object v1, v3, Lu4/l;->s:Lp4/h;

    .line 107
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Lf/p;

    invoke-direct {v1, v0}, Lf/p;-><init>(Ljava/lang/Object;)V

    .line 109
    iput-object v1, v3, Lu4/l;->D:Lf/p;

    return-wide v12
.end method

.method public final o()Lp4/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu4/l;->z:Lp4/u0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final p()V
    .locals 11

    .line 1
    iget v0, p0, Lu4/l;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lu4/l;->y:I

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu4/l;->A:[Lu4/n;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 3
    invoke-virtual {v5}, Lu4/n;->v()V

    .line 4
    iget-object v5, v5, Lu4/n;->P:Lp4/u0;

    .line 5
    iget v5, v5, Lp4/u0;->h:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-array v0, v4, [Lp4/t0;

    .line 7
    iget-object v1, p0, Lu4/l;->A:[Lu4/n;

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 8
    invoke-virtual {v6}, Lu4/n;->v()V

    .line 9
    iget-object v7, v6, Lu4/n;->P:Lp4/u0;

    .line 10
    iget v7, v7, Lp4/u0;->h:I

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 11
    invoke-virtual {v6}, Lu4/n;->v()V

    .line 12
    iget-object v10, v6, Lu4/n;->P:Lp4/u0;

    .line 13
    invoke-virtual {v10, v8}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_3
    new-instance v1, Lp4/u0;

    invoke-direct {v1, v0}, Lp4/u0;-><init>([Lp4/t0;)V

    iput-object v1, p0, Lu4/l;->z:Lp4/u0;

    .line 15
    iget-object v0, p0, Lu4/l;->x:Lp4/v$a;

    invoke-interface {v0, p0}, Lp4/v$a;->i(Lp4/v;)V

    return-void
.end method

.method public final q()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu4/l;->A:[Lu4/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lu4/n;->E()V

    .line 3
    iget-boolean v4, v3, Lu4/n;->a0:Z

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Lu4/n;->K:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Loading finished before preparation is complete."

    .line 4
    invoke-static {v1, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final s(JZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lu4/l;->B:[Lu4/n;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    iget-boolean v5, v4, Lu4/n;->J:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lu4/n;->C()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v5, v4, Lu4/n;->C:[Lu4/n$d;

    array-length v5, v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 4
    iget-object v7, v4, Lu4/n;->C:[Lu4/n$d;

    aget-object v7, v7, v6

    iget-object v8, v4, Lu4/n;->U:[Z

    aget-boolean v8, v8, v6

    invoke-virtual {v7, p1, p2, p3, v8}, Lp4/l0;->i(JZZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lu4/l;->B:[Lu4/n;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lu4/n;->H(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lu4/l;->B:[Lu4/n;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lu4/n;->H(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lu4/l;->r:Le2/e;

    .line 6
    iget-object v0, v0, Le2/e;->a:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-wide p1
.end method

.method public final u(Lp4/v$a;J)V
    .locals 25

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 1
    iput-object v0, v10, Lu4/l;->x:Lp4/v$a;

    .line 2
    iget-object v0, v10, Lu4/l;->i:Lv4/j;

    invoke-interface {v0, v10}, Lv4/j;->n(Lv4/j$a;)V

    .line 3
    iget-object v0, v10, Lu4/l;->i:Lv4/j;

    .line 4
    invoke-interface {v0}, Lv4/j;->b()Lv4/f;

    move-result-object v11

    .line 5
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v0, v10, Lu4/l;->v:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, v11, Lv4/f;->m:Ljava/util/List;

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v1

    .line 10
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 11
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr3/d;

    .line 12
    iget-object v7, v6, Lr3/d;->j:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    move v8, v5

    .line 13
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 14
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr3/d;

    .line 15
    iget-object v12, v9, Lr3/d;->j:Ljava/lang/String;

    invoke-static {v12, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 16
    iget-object v12, v6, Lr3/d;->j:Ljava/lang/String;

    if-eqz v12, :cond_1

    iget-object v13, v9, Lr3/d;->j:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 17
    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_2

    :cond_0
    move v12, v1

    goto :goto_3

    :cond_1
    :goto_2
    move v12, v2

    .line 18
    :goto_3
    invoke-static {v12}, Lm5/a;->e(Z)V

    .line 19
    iget-object v12, v6, Lr3/d;->j:Ljava/lang/String;

    if-eqz v12, :cond_2

    goto :goto_4

    :cond_2
    iget-object v12, v9, Lr3/d;->j:Ljava/lang/String;

    .line 20
    :goto_4
    iget-object v6, v6, Lr3/d;->h:[Lr3/d$b;

    iget-object v9, v9, Lr3/d;->h:[Lr3/d$b;

    .line 21
    sget v13, Lm5/g0;->a:I

    .line 22
    array-length v13, v6

    array-length v14, v9

    add-int/2addr v13, v14

    invoke-static {v6, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    .line 23
    array-length v6, v6

    array-length v14, v9

    invoke-static {v9, v1, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    check-cast v13, [Lr3/d$b;

    .line 25
    new-instance v6, Lr3/d;

    .line 26
    invoke-direct {v6, v12, v2, v13}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    .line 27
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 28
    :cond_4
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :cond_6
    move-object v12, v4

    .line 30
    iget-object v0, v11, Lv4/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 31
    iget-object v13, v11, Lv4/f;->g:Ljava/util/List;

    .line 32
    iget-object v14, v11, Lv4/f;->h:Ljava/util/List;

    .line 33
    iput v1, v10, Lu4/l;->y:I

    .line 34
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1a

    .line 36
    iget-object v0, v11, Lv4/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    move v4, v1

    move v5, v4

    .line 37
    :goto_5
    iget-object v6, v11, Lv4/f;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v1, v6, :cond_a

    .line 38
    iget-object v6, v11, Lv4/f;->e:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv4/f$b;

    .line 39
    iget-object v6, v6, Lv4/f$b;->b:Ln3/s0;

    .line 40
    iget v9, v6, Ln3/s0;->y:I

    if-gtz v9, :cond_9

    iget-object v9, v6, Ln3/s0;->p:Ljava/lang/String;

    invoke-static {v9, v7}, Lm5/g0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    goto :goto_6

    .line 41
    :cond_7
    iget-object v6, v6, Ln3/s0;->p:Ljava/lang/String;

    invoke-static {v6, v2}, Lm5/g0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 42
    aput v2, v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    const/4 v6, -0x1

    .line 43
    aput v6, v3, v1

    goto :goto_7

    .line 44
    :cond_9
    :goto_6
    aput v7, v3, v1

    add-int/lit8 v4, v4, 0x1

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    if-lez v4, :cond_b

    move v0, v4

    goto :goto_8

    :cond_b
    if-ge v5, v0, :cond_c

    sub-int/2addr v0, v5

    const/4 v1, 0x0

    move v9, v0

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_8
    const/4 v1, 0x0

    move v9, v0

    move/from16 v24, v2

    move v2, v1

    move/from16 v1, v24

    .line 45
    :goto_9
    new-array v4, v9, [Landroid/net/Uri;

    .line 46
    new-array v7, v9, [Ln3/s0;

    .line 47
    new-array v6, v9, [I

    const/4 v0, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v8

    .line 48
    :goto_a
    iget-object v8, v11, Lv4/f;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_10

    if-eqz v1, :cond_d

    .line 49
    aget v8, v3, v0

    move/from16 v16, v9

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    goto :goto_b

    :cond_d
    move/from16 v16, v9

    :goto_b
    if-eqz v2, :cond_e

    aget v8, v3, v0

    const/4 v9, 0x1

    if-eq v8, v9, :cond_f

    .line 50
    :cond_e
    iget-object v8, v11, Lv4/f;->e:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv4/f$b;

    .line 51
    iget-object v9, v8, Lv4/f$b;->a:Landroid/net/Uri;

    aput-object v9, v4, v5

    .line 52
    iget-object v8, v8, Lv4/f$b;->b:Ln3/s0;

    aput-object v8, v7, v5

    add-int/lit8 v8, v5, 0x1

    .line 53
    aput v0, v6, v5

    move v5, v8

    :cond_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v16

    goto :goto_a

    :cond_10
    move/from16 v16, v9

    const/4 v0, 0x0

    .line 54
    aget-object v0, v7, v0

    iget-object v0, v0, Ln3/s0;->p:Ljava/lang/String;

    const/4 v2, 0x2

    .line 55
    invoke-static {v0, v2}, Lm5/g0;->r(Ljava/lang/String;I)I

    move-result v8

    const/4 v2, 0x1

    .line 56
    invoke-static {v0, v2}, Lm5/g0;->r(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v2, :cond_11

    if-nez v9, :cond_12

    .line 57
    iget-object v0, v11, Lv4/f;->g:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    if-gt v8, v2, :cond_12

    add-int v0, v9, v8

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_c

    :cond_12
    const/4 v0, 0x0

    :goto_c
    move/from16 v17, v0

    if-nez v1, :cond_13

    if-lez v9, :cond_13

    const/4 v0, 0x1

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    :goto_d
    move v2, v0

    const-string v5, "main"

    .line 59
    iget-object v3, v11, Lv4/f;->j:Ln3/s0;

    iget-object v1, v11, Lv4/f;->k:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move-object v1, v5

    move-object/from16 v19, v3

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v20, v14

    move-object v14, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move-object v7, v12

    move/from16 v22, v9

    move-object/from16 v21, v12

    move-object/from16 v12, p1

    move-object/from16 p1, v11

    move/from16 v11, v16

    move/from16 v16, v8

    move-wide/from16 v8, p2

    .line 60
    invoke-virtual/range {v0 .. v9}, Lu4/l;->k(Ljava/lang/String;I[Landroid/net/Uri;[Ln3/s0;Ln3/s0;Ljava/util/List;Ljava/util/Map;J)Lu4/n;

    move-result-object v0

    .line 61
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-boolean v1, v10, Lu4/l;->t:Z

    if-eqz v1, :cond_1b

    if-eqz v17, :cond_1b

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez v16, :cond_18

    .line 65
    new-array v2, v11, [Ln3/s0;

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v11, :cond_14

    .line 66
    aget-object v4, v18, v3

    .line 67
    iget-object v5, v4, Ln3/s0;->p:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lm5/g0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {v5}, Lm5/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    new-instance v7, Ln3/s0$a;

    invoke-direct {v7}, Ln3/s0$a;-><init>()V

    iget-object v8, v4, Ln3/s0;->h:Ljava/lang/String;

    .line 70
    iput-object v8, v7, Ln3/s0$a;->a:Ljava/lang/String;

    .line 71
    iget-object v8, v4, Ln3/s0;->i:Ljava/lang/String;

    .line 72
    iput-object v8, v7, Ln3/s0$a;->b:Ljava/lang/String;

    .line 73
    iget-object v8, v4, Ln3/s0;->r:Ljava/lang/String;

    .line 74
    iput-object v8, v7, Ln3/s0$a;->j:Ljava/lang/String;

    .line 75
    iput-object v6, v7, Ln3/s0$a;->k:Ljava/lang/String;

    .line 76
    iput-object v5, v7, Ln3/s0$a;->h:Ljava/lang/String;

    .line 77
    iget-object v5, v4, Ln3/s0;->q:Lf4/a;

    .line 78
    iput-object v5, v7, Ln3/s0$a;->i:Lf4/a;

    .line 79
    iget v5, v4, Ln3/s0;->m:I

    .line 80
    iput v5, v7, Ln3/s0$a;->f:I

    .line 81
    iget v5, v4, Ln3/s0;->n:I

    .line 82
    iput v5, v7, Ln3/s0$a;->g:I

    .line 83
    iget v5, v4, Ln3/s0;->x:I

    .line 84
    iput v5, v7, Ln3/s0$a;->p:I

    .line 85
    iget v5, v4, Ln3/s0;->y:I

    .line 86
    iput v5, v7, Ln3/s0$a;->q:I

    .line 87
    iget v5, v4, Ln3/s0;->z:F

    .line 88
    iput v5, v7, Ln3/s0$a;->r:F

    .line 89
    iget v5, v4, Ln3/s0;->k:I

    .line 90
    iput v5, v7, Ln3/s0$a;->d:I

    .line 91
    iget v4, v4, Ln3/s0;->l:I

    .line 92
    iput v4, v7, Ln3/s0$a;->e:I

    .line 93
    new-instance v4, Ln3/s0;

    invoke-direct {v4, v7}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 94
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 95
    :cond_14
    new-instance v3, Lp4/t0;

    invoke-direct {v3, v14, v2}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    if-lez v22, :cond_16

    .line 96
    iget-object v3, v2, Lv4/f;->j:Ln3/s0;

    if-nez v3, :cond_15

    iget-object v3, v2, Lv4/f;->g:Ljava/util/List;

    .line 97
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 98
    :cond_15
    new-instance v3, Lp4/t0;

    const/4 v4, 0x1

    new-array v4, v4, [Ln3/s0;

    const/4 v5, 0x0

    aget-object v6, v18, v5

    iget-object v7, v2, Lv4/f;->j:Ln3/s0;

    .line 99
    invoke-static {v6, v7, v5}, Lu4/l;->m(Ln3/s0;Ln3/s0;Z)Ln3/s0;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "main:audio"

    invoke-direct {v3, v5, v4}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_16
    iget-object v2, v2, Lv4/f;->k:Ljava/util/List;

    if-eqz v2, :cond_17

    const/4 v3, 0x0

    .line 102
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_17

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":cc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    new-instance v5, Lp4/t0;

    const/4 v6, 0x1

    new-array v6, v6, [Ln3/s0;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/s0;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-direct {v5, v4, v6}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_17
    const/4 v2, 0x1

    goto :goto_11

    :cond_18
    move-object/from16 v2, p1

    .line 105
    new-array v3, v11, [Ln3/s0;

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v11, :cond_19

    .line 106
    aget-object v5, v18, v4

    iget-object v6, v2, Lv4/f;->j:Ln3/s0;

    const/4 v7, 0x1

    .line 107
    invoke-static {v5, v6, v7}, Lu4/l;->m(Ln3/s0;Ln3/s0;Z)Ln3/s0;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_19
    const/4 v2, 0x1

    .line 108
    new-instance v4, Lp4/t0;

    invoke-direct {v4, v14, v3}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_11
    new-instance v3, Lp4/t0;

    new-array v2, v2, [Ln3/s0;

    new-instance v4, Ln3/s0$a;

    invoke-direct {v4}, Ln3/s0$a;-><init>()V

    const-string v5, "ID3"

    .line 110
    iput-object v5, v4, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v5, "application/id3"

    .line 111
    iput-object v5, v4, Ln3/s0$a;->k:Ljava/lang/String;

    .line 112
    new-instance v5, Ln3/s0;

    invoke-direct {v5, v4}, Ln3/s0;-><init>(Ln3/s0$a;)V

    const/4 v4, 0x0

    aput-object v5, v2, v4

    const-string v5, "main:id3"

    .line 113
    invoke-direct {v3, v5, v2}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v4, [Lp4/t0;

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lp4/t0;

    const/4 v5, 0x1

    new-array v5, v5, [I

    .line 116
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput v1, v5, v4

    .line 117
    invoke-virtual {v0, v2, v5}, Lu4/n;->F([Lp4/t0;[I)V

    goto :goto_12

    :cond_1a
    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object v12, v8

    .line 118
    :cond_1b
    :goto_12
    new-instance v11, Ljava/util/ArrayList;

    .line 119
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    new-instance v13, Ljava/util/ArrayList;

    .line 121
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    new-instance v14, Ljava/util/ArrayList;

    .line 123
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v9, v0

    .line 125
    :goto_13
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_21

    move-object/from16 v7, v19

    .line 126
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/f$a;

    iget-object v0, v0, Lv4/f$a;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_16

    .line 128
    :cond_1c
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 129
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 130
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v16, v2

    .line 131
    :goto_14
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 132
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/f$a;

    iget-object v2, v2, Lv4/f$a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 133
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/f$a;

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v3, v2, Lv4/f$a;->a:Landroid/net/Uri;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v3, v2, Lv4/f$a;->b:Ln3/s0;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, v2, Lv4/f$a;->b:Ln3/s0;

    iget-object v2, v2, Ln3/s0;->p:Ljava/lang/String;

    const/4 v3, 0x1

    .line 138
    invoke-static {v2, v3}, Lm5/g0;->r(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_15

    :cond_1d
    const/4 v2, 0x0

    :goto_15
    and-int v2, v16, v2

    move/from16 v16, v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1f
    const-string v1, "audio:"

    .line 139
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/net/Uri;

    .line 140
    sget v3, Lm5/g0;->a:I

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/net/Uri;

    new-array v0, v0, [Ln3/s0;

    .line 141
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ln3/s0;

    const/4 v5, 0x0

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v23, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v21

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-wide/from16 v8, p2

    .line 143
    invoke-virtual/range {v0 .. v9}, Lu4/l;->k(Ljava/lang/String;I[Landroid/net/Uri;[Ln3/s0;Ln3/s0;Ljava/util/List;Ljava/util/Map;J)Lu4/n;

    move-result-object v0

    .line 144
    invoke-static {v14}, Lw6/a;->d(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-boolean v1, v10, Lu4/l;->t:Z

    if-eqz v1, :cond_20

    if-eqz v16, :cond_20

    const/4 v1, 0x0

    new-array v2, v1, [Ln3/s0;

    .line 147
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ln3/s0;

    const/4 v3, 0x1

    new-array v3, v3, [Lp4/t0;

    .line 148
    new-instance v4, Lp4/t0;

    move-object/from16 v5, v23

    invoke-direct {v4, v5, v2}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    aput-object v4, v3, v1

    new-array v1, v1, [I

    invoke-virtual {v0, v3, v1}, Lu4/n;->F([Lp4/t0;[I)V

    :cond_20
    :goto_16
    add-int/lit8 v9, v19, 0x1

    move-object/from16 v19, v17

    move-object/from16 v8, v18

    goto/16 :goto_13

    .line 149
    :cond_21
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v10, Lu4/l;->C:I

    const/4 v0, 0x0

    move v11, v0

    .line 150
    :goto_17
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_22

    move-object/from16 v13, v20

    .line 151
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lv4/f$a;

    const-string v0, "subtitle:"

    const-string v1, ":"

    .line 152
    invoke-static {v0, v11, v1}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    iget-object v1, v14, Lv4/f$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    const/4 v0, 0x1

    new-array v3, v0, [Landroid/net/Uri;

    .line 154
    iget-object v1, v14, Lv4/f$a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-array v5, v0, [Ln3/s0;

    iget-object v0, v14, Lv4/f$a;->b:Ln3/s0;

    aput-object v0, v5, v4

    const/4 v6, 0x0

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v21

    move-object v13, v8

    move-wide/from16 v8, p2

    .line 156
    invoke-virtual/range {v0 .. v9}, Lu4/l;->k(Ljava/lang/String;I[Landroid/net/Uri;[Ln3/s0;Ln3/s0;Ljava/util/List;Ljava/util/Map;J)Lu4/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v11, v2, v3

    .line 157
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [Lp4/t0;

    .line 159
    new-instance v4, Lp4/t0;

    new-array v1, v1, [Ln3/s0;

    iget-object v5, v14, Lv4/f$a;->b:Ln3/s0;

    aput-object v5, v1, v3

    invoke-direct {v4, v13, v1}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    aput-object v4, v2, v3

    new-array v1, v3, [I

    invoke-virtual {v0, v2, v1}, Lu4/n;->F([Lp4/t0;[I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_22
    const/4 v0, 0x0

    new-array v1, v0, [Lu4/n;

    .line 160
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lu4/n;

    iput-object v1, v10, Lu4/l;->A:[Lu4/n;

    new-array v1, v0, [[I

    .line 161
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 162
    iget-object v1, v10, Lu4/l;->A:[Lu4/n;

    array-length v1, v1

    iput v1, v10, Lu4/l;->y:I

    move v1, v0

    .line 163
    :goto_18
    iget v2, v10, Lu4/l;->C:I

    if-ge v1, v2, :cond_23

    .line 164
    iget-object v2, v10, Lu4/l;->A:[Lu4/n;

    aget-object v2, v2, v1

    .line 165
    iget-object v2, v2, Lu4/n;->k:Lu4/g;

    const/4 v3, 0x1

    .line 166
    iput-boolean v3, v2, Lu4/g;->l:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 167
    :cond_23
    iget-object v1, v10, Lu4/l;->A:[Lu4/n;

    array-length v2, v1

    :goto_19
    if-ge v0, v2, :cond_25

    aget-object v3, v1, v0

    .line 168
    iget-boolean v4, v3, Lu4/n;->K:Z

    if-nez v4, :cond_24

    .line 169
    iget-wide v4, v3, Lu4/n;->W:J

    invoke-virtual {v3, v4, v5}, Lu4/n;->f(J)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 170
    :cond_25
    iget-object v0, v10, Lu4/l;->A:[Lu4/n;

    iput-object v0, v10, Lu4/l;->B:[Lu4/n;

    return-void
.end method
