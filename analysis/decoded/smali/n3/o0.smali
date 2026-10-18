.class public final Ln3/o0;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lp4/v$a;
.implements Lj5/s$a;
.implements Ln3/h1$d;
.implements Ln3/l$a;
.implements Ln3/p1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/o0$b;,
        Ln3/o0$a;,
        Ln3/o0$c;,
        Ln3/o0$f;,
        Ln3/o0$g;,
        Ln3/o0$e;,
        Ln3/o0$d;
    }
.end annotation


# instance fields
.field public final A:Ln3/h1;

.field public final B:Ln3/w0;

.field public final C:J

.field public D:Ln3/w1;

.field public E:Ln3/l1;

.field public F:Ln3/o0$d;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:I

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:Ln3/o0$g;

.field public S:J

.field public T:I

.field public U:Z

.field public V:Ln3/q;

.field public W:J

.field public final h:[Ln3/s1;

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/s1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:[Ln3/t1;

.field public final k:Lj5/s;

.field public final l:Lj5/t;

.field public final m:Ln3/x0;

.field public final n:Ll5/e;

.field public final o:Lm5/l;

.field public final p:Landroid/os/HandlerThread;

.field public final q:Landroid/os/Looper;

.field public final r:Ln3/b2$d;

.field public final s:Ln3/b2$b;

.field public final t:J

.field public final u:Z

.field public final v:Ln3/l;

.field public final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/o0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lm5/c;

.field public final y:Ln3/o0$e;

.field public final z:Ln3/e1;


# direct methods
.method public constructor <init>([Ln3/s1;Lj5/s;Lj5/t;Ln3/x0;Ll5/e;IZLo3/a;Ln3/w1;Ln3/w0;JZLandroid/os/Looper;Lm5/c;Ln3/o0$e;Lo3/v0;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    move-object/from16 v6, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v7, p16

    .line 2
    iput-object v7, v0, Ln3/o0;->y:Ln3/o0$e;

    .line 3
    iput-object v1, v0, Ln3/o0;->h:[Ln3/s1;

    .line 4
    iput-object v2, v0, Ln3/o0;->k:Lj5/s;

    move-object v7, p3

    .line 5
    iput-object v7, v0, Ln3/o0;->l:Lj5/t;

    move-object v8, p4

    .line 6
    iput-object v8, v0, Ln3/o0;->m:Ln3/x0;

    .line 7
    iput-object v3, v0, Ln3/o0;->n:Ll5/e;

    move/from16 v9, p6

    .line 8
    iput v9, v0, Ln3/o0;->L:I

    move/from16 v9, p7

    .line 9
    iput-boolean v9, v0, Ln3/o0;->M:Z

    move-object/from16 v9, p9

    .line 10
    iput-object v9, v0, Ln3/o0;->D:Ln3/w1;

    move-object/from16 v9, p10

    .line 11
    iput-object v9, v0, Ln3/o0;->B:Ln3/w0;

    move-wide/from16 v9, p11

    .line 12
    iput-wide v9, v0, Ln3/o0;->C:J

    move/from16 v9, p13

    .line 13
    iput-boolean v9, v0, Ln3/o0;->H:Z

    .line 14
    iput-object v5, v0, Ln3/o0;->x:Lm5/c;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v9, v0, Ln3/o0;->W:J

    .line 16
    invoke-interface {p4}, Ln3/x0;->g()J

    move-result-wide v9

    iput-wide v9, v0, Ln3/o0;->t:J

    .line 17
    invoke-interface {p4}, Ln3/x0;->a()Z

    move-result v8

    iput-boolean v8, v0, Ln3/o0;->u:Z

    .line 18
    invoke-static {p3}, Ln3/l1;->h(Lj5/t;)Ln3/l1;

    move-result-object v7

    iput-object v7, v0, Ln3/o0;->E:Ln3/l1;

    .line 19
    new-instance v8, Ln3/o0$d;

    invoke-direct {v8, v7}, Ln3/o0$d;-><init>(Ln3/l1;)V

    iput-object v8, v0, Ln3/o0;->F:Ln3/o0$d;

    .line 20
    array-length v7, v1

    new-array v7, v7, [Ln3/t1;

    iput-object v7, v0, Ln3/o0;->j:[Ln3/t1;

    const/4 v7, 0x0

    .line 21
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_0

    .line 22
    aget-object v8, v1, v7

    invoke-interface {v8, v7, v6}, Ln3/s1;->i(ILo3/v0;)V

    .line 23
    iget-object v8, v0, Ln3/o0;->j:[Ln3/t1;

    aget-object v9, v1, v7

    invoke-interface {v9}, Ln3/s1;->v()Ln3/t1;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ln3/l;

    invoke-direct {v1, p0, v5}, Ln3/l;-><init>(Ln3/l$a;Lm5/c;)V

    iput-object v1, v0, Ln3/o0;->v:Ln3/l;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ln3/o0;->w:Ljava/util/ArrayList;

    .line 26
    invoke-static {}, Lu6/v0;->e()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ln3/o0;->i:Ljava/util/Set;

    .line 27
    new-instance v1, Ln3/b2$d;

    invoke-direct {v1}, Ln3/b2$d;-><init>()V

    iput-object v1, v0, Ln3/o0;->r:Ln3/b2$d;

    .line 28
    new-instance v1, Ln3/b2$b;

    invoke-direct {v1}, Ln3/b2$b;-><init>()V

    iput-object v1, v0, Ln3/o0;->s:Ln3/b2$b;

    .line 29
    iput-object v0, v2, Lj5/s;->a:Lj5/s$a;

    .line 30
    iput-object v3, v2, Lj5/s;->b:Ll5/e;

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Ln3/o0;->U:Z

    .line 32
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    new-instance v2, Ln3/e1;

    invoke-direct {v2, v4, v1}, Ln3/e1;-><init>(Lo3/a;Landroid/os/Handler;)V

    iput-object v2, v0, Ln3/o0;->z:Ln3/e1;

    .line 34
    new-instance v2, Ln3/h1;

    invoke-direct {v2, p0, v4, v1, v6}, Ln3/h1;-><init>(Ln3/h1$d;Lo3/a;Landroid/os/Handler;Lo3/v0;)V

    iput-object v2, v0, Ln3/o0;->A:Ln3/h1;

    .line 35
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Ln3/o0;->p:Landroid/os/HandlerThread;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 37
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Ln3/o0;->q:Landroid/os/Looper;

    .line 38
    invoke-interface {v5, v1, p0}, Lm5/c;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lm5/l;

    move-result-object v1

    iput-object v1, v0, Ln3/o0;->o:Lm5/l;

    return-void
.end method

.method public static J(Ln3/o0$c;Ln3/b2;Ln3/b2;IZLn3/b2$d;Ln3/b2$b;)Z
    .locals 11

    move-object v0, p0

    move-object v8, p1

    move-object v1, p2

    move-object/from16 v7, p6

    .line 1
    iget-object v2, v0, Ln3/o0$c;->k:Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v2, :cond_1

    .line 2
    iget-object v1, v0, Ln3/o0$c;->h:Ln3/p1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Ln3/o0$c;->h:Ln3/p1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v2}, Lm5/g0;->L(J)J

    move-result-wide v1

    .line 4
    new-instance v3, Ln3/o0$g;

    iget-object v4, v0, Ln3/o0$c;->h:Ln3/p1;

    .line 5
    iget-object v5, v4, Ln3/p1;->d:Ln3/b2;

    .line 6
    iget v4, v4, Ln3/p1;->h:I

    .line 7
    invoke-direct {v3, v5, v4, v1, v2}, Ln3/o0$g;-><init>(Ln3/b2;IJ)V

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 8
    invoke-static/range {v1 .. v7}, Ln3/o0;->L(Ln3/b2;Ln3/o0$g;ZIZLn3/b2$d;Ln3/b2$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    return v10

    .line 9
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, v2, v3, v4, v1}, Ln3/o0$c;->b(IJLjava/lang/Object;)V

    .line 13
    iget-object v0, v0, Ln3/o0$c;->h:Ln3/p1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v9

    .line 14
    :cond_1
    invoke-virtual {p1, v2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    return v10

    .line 15
    :cond_2
    iget-object v3, v0, Ln3/o0$c;->h:Ln3/p1;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput v2, v0, Ln3/o0$c;->i:I

    .line 17
    iget-object v2, v0, Ln3/o0$c;->k:Ljava/lang/Object;

    invoke-virtual {p2, v2, v7}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 18
    iget-boolean v2, v7, Ln3/b2$b;->m:Z

    if-eqz v2, :cond_3

    iget v2, v7, Ln3/b2$b;->j:I

    move-object/from16 v3, p5

    .line 19
    invoke-virtual {p2, v2, v3}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v2

    iget v2, v2, Ln3/b2$d;->v:I

    iget-object v4, v0, Ln3/o0$c;->k:Ljava/lang/Object;

    .line 20
    invoke-virtual {p2, v4}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 21
    iget-wide v1, v0, Ln3/o0$c;->j:J

    .line 22
    iget-wide v4, v7, Ln3/b2$b;->l:J

    add-long v5, v1, v4

    .line 23
    iget-object v1, v0, Ln3/o0$c;->k:Ljava/lang/Object;

    .line 24
    invoke-virtual {p1, v1, v7}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    iget v4, v1, Ln3/b2$b;->j:I

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 25
    invoke-virtual/range {v1 .. v6}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 26
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    invoke-virtual {p1, v2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, v2, v3, v4, v1}, Ln3/o0$c;->b(IJLjava/lang/Object;)V

    :cond_3
    return v9
.end method

.method public static L(Ln3/b2;Ln3/o0$g;ZIZLn3/b2$d;Ln3/b2$b;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b2;",
            "Ln3/o0$g;",
            "ZIZ",
            "Ln3/b2$d;",
            "Ln3/b2$b;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 1
    iget-object v1, v0, Ln3/o0$g;->a:Ln3/b2;

    .line 2
    invoke-virtual {p0}, Ln3/b2;->s()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 3
    :cond_0
    invoke-virtual {v1}, Ln3/b2;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 4
    :goto_0
    :try_start_0
    iget v4, v0, Ln3/o0$g;->b:I

    iget-wide v5, v0, Ln3/o0$g;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 5
    invoke-virtual/range {v1 .. v6}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v10}, Ln3/b2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v2

    iget-boolean v2, v2, Ln3/b2$b;->m:Z

    if-eqz v2, :cond_3

    iget v2, v8, Ln3/b2$b;->j:I

    move-object/from16 v11, p5

    .line 9
    invoke-virtual {v10, v2, v11}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v2

    iget v2, v2, Ln3/b2$d;->v:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    invoke-virtual {v10, v3}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    iget v3, v1, Ln3/b2$b;->j:I

    .line 12
    iget-wide v4, v0, Ln3/o0$g;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 13
    invoke-virtual/range {v0 .. v5}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    .line 14
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 15
    invoke-static/range {v0 .. v6}, Ln3/o0;->M(Ln3/b2$d;Ln3/b2$b;IZLjava/lang/Object;Ln3/b2;Ln3/b2;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0, v0, v8}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v0

    iget v3, v0, Ln3/b2$b;->j:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 17
    invoke-virtual/range {v0 .. v5}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method public static M(Ln3/b2$d;Ln3/b2$b;IZLjava/lang/Object;Ln3/b2;Ln3/b2;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p5, p4}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result p4

    .line 2
    invoke-virtual {p5}, Ln3/b2;->k()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 3
    invoke-virtual/range {v3 .. v8}, Ln3/b2;->f(ILn3/b2$b;Ln3/b2$d;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p5, v4}, Ln3/b2;->o(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p6, p4}, Ln3/b2;->o(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static g(Lj5/l;)[Ln3/s0;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lj5/o;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    new-array v2, v1, [Ln3/s0;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p0, v0}, Lj5/o;->e(I)Ln3/s0;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static v(Ln3/s1;)Z
    .locals 0

    invoke-interface {p0}, Ln3/s1;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x(Ln3/l1;Ln3/b2$b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/l1;->b:Lp4/x$b;

    .line 2
    iget-object p0, p0, Ln3/l1;->a:Ln3/b2;

    .line 3
    invoke-virtual {p0}, Ln3/b2;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object p0

    iget-boolean p0, p0, Ln3/b2$b;->m:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final A()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->A:Ln3/h1;

    .line 2
    invoke-virtual {v0}, Ln3/h1;->c()Ln3/b2;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Ln3/o0;->q(Ln3/b2;Z)V

    return-void
.end method

.method public final B(Ln3/o0$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/o0$d;->a(I)V

    .line 2
    iget-object v0, p0, Ln3/o0;->A:Ln3/h1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ln3/h1;->e()I

    move-result p1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5
    :goto_0
    invoke-static {v1}, Lm5/a;->a(Z)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Ln3/h1;->j:Lp4/o0;

    .line 7
    invoke-virtual {v0}, Ln3/h1;->c()Ln3/b2;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, v2}, Ln3/o0;->q(Ln3/b2;Z)V

    return-void
.end method

.method public final C()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/o0$d;->a(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0, v1}, Ln3/o0;->G(ZZZZ)V

    .line 3
    iget-object v2, p0, Ln3/o0;->m:Ln3/x0;

    invoke-interface {v2}, Ln3/x0;->i()V

    .line 4
    iget-object v2, p0, Ln3/o0;->E:Ln3/l1;

    iget-object v2, v2, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v2}, Ln3/b2;->s()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Ln3/o0;->e0(I)V

    .line 5
    iget-object v2, p0, Ln3/o0;->A:Ln3/h1;

    iget-object v4, p0, Ln3/o0;->n:Ll5/e;

    invoke-interface {v4}, Ll5/e;->a()Ll5/j0;

    move-result-object v4

    .line 6
    iget-boolean v5, v2, Ln3/h1;->k:Z

    xor-int/2addr v5, v1

    invoke-static {v5}, Lm5/a;->e(Z)V

    .line 7
    iput-object v4, v2, Ln3/h1;->l:Ll5/j0;

    .line 8
    :goto_1
    iget-object v4, v2, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 9
    iget-object v4, v2, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/h1$c;

    .line 10
    invoke-virtual {v2, v4}, Ln3/h1;->g(Ln3/h1$c;)V

    .line 11
    iget-object v5, v2, Ln3/h1;->i:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_1
    iput-boolean v1, v2, Ln3/h1;->k:Z

    .line 13
    iget-object v0, p0, Ln3/o0;->o:Lm5/l;

    invoke-interface {v0, v3}, Lm5/l;->e(I)Z

    return-void
.end method

.method public final D()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v0, v1}, Ln3/o0;->G(ZZZZ)V

    .line 2
    iget-object v1, p0, Ln3/o0;->m:Ln3/x0;

    invoke-interface {v1}, Ln3/x0;->c()V

    .line 3
    invoke-virtual {p0, v0}, Ln3/o0;->e0(I)V

    .line 4
    iget-object v1, p0, Ln3/o0;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Ln3/o0;->G:Z

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final E(IILp4/o0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/o0$d;->a(I)V

    .line 2
    iget-object v0, p0, Ln3/o0;->A:Ln3/h1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/h1;->e()I

    move-result v3

    if-gt p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lm5/a;->a(Z)V

    .line 4
    iput-object p3, v0, Ln3/h1;->j:Lp4/o0;

    .line 5
    invoke-virtual {v0, p1, p2}, Ln3/h1;->i(II)V

    .line 6
    invoke-virtual {v0}, Ln3/h1;->c()Ln3/b2;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, v2}, Ln3/o0;->q(Ln3/b2;Z)V

    return-void
.end method

.method public final F()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Ln3/o0;->v:Ln3/l;

    invoke-virtual {v0}, Ln3/l;->d()Ln3/m1;

    move-result-object v0

    iget v0, v0, Ln3/m1;->h:F

    .line 2
    iget-object v1, v10, Ln3/o0;->z:Ln3/e1;

    .line 3
    iget-object v2, v1, Ln3/e1;->h:Ln3/b1;

    .line 4
    iget-object v1, v1, Ln3/e1;->i:Ln3/b1;

    move-object v3, v2

    const/4 v2, 0x1

    :goto_0
    if-eqz v3, :cond_f

    .line 5
    iget-boolean v4, v3, Ln3/b1;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_8

    .line 6
    :cond_0
    iget-object v4, v10, Ln3/o0;->E:Ln3/l1;

    iget-object v4, v4, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v3, v0, v4}, Ln3/b1;->i(FLn3/b2;)Lj5/t;

    move-result-object v13

    .line 7
    iget-object v4, v3, Ln3/b1;->n:Lj5/t;

    const/16 v18, 0x0

    if-eqz v4, :cond_4

    .line 8
    iget-object v5, v4, Lj5/t;->c:[Lj5/l;

    array-length v5, v5

    iget-object v6, v13, Lj5/t;->c:[Lj5/l;

    array-length v6, v6

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v5, v18

    .line 9
    :goto_1
    iget-object v6, v13, Lj5/t;->c:[Lj5/l;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 10
    invoke-virtual {v13, v4, v5}, Lj5/t;->a(Lj5/t;I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v4, v18

    :goto_3
    if-nez v4, :cond_d

    const/4 v9, 0x4

    if-eqz v2, :cond_a

    .line 11
    iget-object v0, v10, Ln3/o0;->z:Ln3/e1;

    .line 12
    iget-object v8, v0, Ln3/e1;->h:Ln3/b1;

    .line 13
    invoke-virtual {v0, v8}, Ln3/e1;->n(Ln3/b1;)Z

    move-result v16

    .line 14
    iget-object v0, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v0, v0

    new-array v6, v0, [Z

    .line 15
    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget-wide v14, v0, Ln3/l1;->r:J

    move-object v12, v8

    move-object/from16 v17, v6

    .line 16
    invoke-virtual/range {v12 .. v17}, Ln3/b1;->a(Lj5/t;JZ[Z)J

    move-result-wide v12

    .line 17
    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget v1, v0, Ln3/l1;->e:I

    if-eq v1, v9, :cond_5

    iget-wide v0, v0, Ln3/l1;->r:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    move/from16 v14, v18

    .line 18
    :goto_4
    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v4, v0, Ln3/l1;->c:J

    iget-wide v2, v0, Ln3/l1;->d:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object/from16 v19, v6

    move-wide/from16 v6, v16

    move-object v11, v8

    move v8, v14

    move v9, v15

    .line 19
    invoke-virtual/range {v0 .. v9}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object v0

    iput-object v0, v10, Ln3/o0;->E:Ln3/l1;

    if-eqz v14, :cond_6

    .line 20
    invoke-virtual {v10, v12, v13}, Ln3/o0;->I(J)V

    .line 21
    :cond_6
    iget-object v0, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v0, v0

    new-array v0, v0, [Z

    move/from16 v1, v18

    .line 22
    :goto_5
    iget-object v2, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 23
    aget-object v2, v2, v1

    .line 24
    invoke-static {v2}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 25
    iget-object v3, v11, Ln3/b1;->c:[Lp4/m0;

    aget-object v3, v3, v1

    .line 26
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_8

    .line 27
    invoke-interface {v2}, Ln3/s1;->m()Lp4/m0;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 28
    invoke-virtual {v10, v2}, Ln3/o0;->c(Ln3/s1;)V

    goto :goto_6

    .line 29
    :cond_7
    aget-boolean v3, v19, v1

    if-eqz v3, :cond_8

    .line 30
    iget-wide v3, v10, Ln3/o0;->S:J

    invoke-interface {v2, v3, v4}, Ln3/s1;->q(J)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 31
    :cond_9
    invoke-virtual {v10, v0}, Ln3/o0;->f([Z)V

    goto :goto_7

    .line 32
    :cond_a
    iget-object v0, v10, Ln3/o0;->z:Ln3/e1;

    invoke-virtual {v0, v3}, Ln3/e1;->n(Ln3/b1;)Z

    .line 33
    iget-boolean v0, v3, Ln3/b1;->d:Z

    if-eqz v0, :cond_b

    .line 34
    iget-object v0, v3, Ln3/b1;->f:Ln3/c1;

    iget-wide v0, v0, Ln3/c1;->b:J

    iget-wide v4, v10, Ln3/o0;->S:J

    .line 35
    iget-wide v6, v3, Ln3/b1;->o:J

    sub-long/2addr v4, v6

    .line 36
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const/4 v7, 0x0

    .line 37
    iget-object v0, v3, Ln3/b1;->i:[Ln3/t1;

    array-length v0, v0

    new-array v8, v0, [Z

    move-object v4, v13

    invoke-virtual/range {v3 .. v8}, Ln3/b1;->a(Lj5/t;JZ[Z)J

    :cond_b
    :goto_7
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v10, v4}, Ln3/o0;->p(Z)V

    .line 39
    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget v0, v0, Ln3/l1;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 40
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->y()V

    .line 41
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->l0()V

    .line 42
    iget-object v0, v10, Ln3/o0;->o:Lm5/l;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lm5/l;->e(I)Z

    :cond_c
    return-void

    :cond_d
    const/4 v4, 0x1

    if-ne v3, v1, :cond_e

    move/from16 v2, v18

    .line 43
    :cond_e
    iget-object v3, v3, Ln3/b1;->l:Ln3/b1;

    goto/16 :goto_0

    :cond_f
    :goto_8
    return-void
.end method

.method public final G(ZZZZ)V
    .locals 28

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Ln3/o0;->o:Lm5/l;

    invoke-interface {v0}, Lm5/l;->h()V

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Ln3/o0;->V:Ln3/q;

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v1, Ln3/o0;->J:Z

    .line 4
    iget-object v0, v1, Ln3/o0;->v:Ln3/l;

    .line 5
    iput-boolean v3, v0, Ln3/l;->m:Z

    .line 6
    iget-object v0, v0, Ln3/l;->h:Lm5/z;

    .line 7
    iget-boolean v4, v0, Lm5/z;->i:Z

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v0}, Lm5/z;->w()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lm5/z;->a(J)V

    .line 9
    iput-boolean v3, v0, Lm5/z;->i:Z

    :cond_0
    const-wide v4, 0xe8d4a51000L

    .line 10
    iput-wide v4, v1, Ln3/o0;->S:J

    .line 11
    iget-object v4, v1, Ln3/o0;->h:[Ln3/s1;

    array-length v5, v4

    move v6, v3

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_1

    aget-object v0, v4, v6

    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Ln3/o0;->c(Ln3/s1;)V
    :try_end_0
    .catch Ln3/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 13
    invoke-static {v7, v8, v0}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 14
    iget-object v4, v1, Ln3/o0;->h:[Ln3/s1;

    array-length v5, v4

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_3

    aget-object v0, v4, v6

    .line 15
    iget-object v8, v1, Ln3/o0;->i:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 16
    :try_start_1
    invoke-interface {v0}, Ln3/s1;->e()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 17
    invoke-static {v7, v0, v8}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 18
    :cond_3
    iput v3, v1, Ln3/o0;->Q:I

    .line 19
    iget-object v0, v1, Ln3/o0;->E:Ln3/l1;

    iget-object v4, v0, Ln3/l1;->b:Lp4/x$b;

    .line 20
    iget-wide v5, v0, Ln3/l1;->r:J

    .line 21
    iget-object v0, v1, Ln3/o0;->E:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v0}, Lp4/w;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Ln3/o0;->E:Ln3/l1;

    iget-object v7, v1, Ln3/o0;->s:Ln3/b2$b;

    invoke-static {v0, v7}, Ln3/o0;->x(Ln3/l1;Ln3/b2$b;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_5

    .line 22
    :cond_4
    iget-object v0, v1, Ln3/o0;->E:Ln3/l1;

    iget-wide v7, v0, Ln3/l1;->r:J

    goto :goto_6

    .line 23
    :cond_5
    :goto_5
    iget-object v0, v1, Ln3/o0;->E:Ln3/l1;

    iget-wide v7, v0, Ln3/l1;->c:J

    :goto_6
    if-eqz p2, :cond_6

    .line 24
    iput-object v2, v1, Ln3/o0;->R:Ln3/o0$g;

    .line 25
    iget-object v0, v1, Ln3/o0;->E:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    .line 26
    invoke-virtual {v1, v0}, Ln3/o0;->l(Ln3/b2;)Landroid/util/Pair;

    move-result-object v0

    .line 27
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lp4/x$b;

    .line 28
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    iget-object v0, v1, Ln3/o0;->E:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v4, v0}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    move v0, v3

    :goto_7
    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    .line 30
    iget-object v4, v1, Ln3/o0;->z:Ln3/e1;

    invoke-virtual {v4}, Ln3/e1;->b()V

    .line 31
    iput-boolean v3, v1, Ln3/o0;->K:Z

    .line 32
    new-instance v15, Ln3/l1;

    iget-object v4, v1, Ln3/o0;->E:Ln3/l1;

    iget-object v5, v4, Ln3/l1;->a:Ln3/b2;

    iget v11, v4, Ln3/l1;->e:I

    if-eqz p4, :cond_7

    goto :goto_8

    .line 33
    :cond_7
    iget-object v2, v4, Ln3/l1;->f:Ln3/q;

    :goto_8
    move-object v12, v2

    const/4 v13, 0x0

    if-eqz v0, :cond_8

    .line 34
    sget-object v2, Lp4/u0;->k:Lp4/u0;

    goto :goto_9

    :cond_8
    iget-object v2, v4, Ln3/l1;->h:Lp4/u0;

    :goto_9
    move-object v14, v2

    if-eqz v0, :cond_9

    .line 35
    iget-object v2, v1, Ln3/o0;->l:Lj5/t;

    goto :goto_a

    :cond_9
    iget-object v2, v4, Ln3/l1;->i:Lj5/t;

    :goto_a
    if-eqz v0, :cond_a

    .line 36
    sget-object v0, Lu6/v;->i:Lu6/v$b;

    .line 37
    sget-object v0, Lu6/p0;->l:Lu6/p0;

    goto :goto_b

    .line 38
    :cond_a
    iget-object v0, v4, Ln3/l1;->j:Ljava/util/List;

    :goto_b
    move-object/from16 v16, v0

    iget-boolean v0, v4, Ln3/l1;->l:Z

    move/from16 v18, v0

    iget v0, v4, Ln3/l1;->m:I

    move/from16 v19, v0

    iget-object v0, v4, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v20, v0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    move-object v4, v15

    move-object/from16 v6, v17

    move-wide/from16 v9, v25

    move-object v0, v15

    move-object v15, v2

    move-wide/from16 v21, v25

    invoke-direct/range {v4 .. v27}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    iput-object v0, v1, Ln3/o0;->E:Ln3/l1;

    if-eqz p3, :cond_c

    .line 39
    iget-object v2, v1, Ln3/o0;->A:Ln3/h1;

    .line 40
    iget-object v0, v2, Ln3/h1;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ln3/h1$b;

    .line 41
    :try_start_2
    iget-object v0, v5, Ln3/h1$b;->a:Lp4/x;

    iget-object v6, v5, Ln3/h1$b;->b:Lp4/x$c;

    invoke-interface {v0, v6}, Lp4/x;->g(Lp4/x$c;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    const-string v6, "MediaSourceList"

    const-string v7, "Failed to release child source."

    .line 42
    invoke-static {v6, v7, v0}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :goto_d
    iget-object v0, v5, Ln3/h1$b;->a:Lp4/x;

    iget-object v6, v5, Ln3/h1$b;->c:Ln3/h1$a;

    invoke-interface {v0, v6}, Lp4/x;->j(Lp4/e0;)V

    .line 44
    iget-object v0, v5, Ln3/h1$b;->a:Lp4/x;

    iget-object v5, v5, Ln3/h1$b;->c:Ln3/h1$a;

    invoke-interface {v0, v5}, Lp4/x;->n(Lr3/k;)V

    goto :goto_c

    .line 45
    :cond_b
    iget-object v0, v2, Ln3/h1;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46
    iget-object v0, v2, Ln3/h1;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 47
    iput-boolean v3, v2, Ln3/h1;->k:Z

    :cond_c
    return-void
.end method

.method public final H()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->h:Ln3/b1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Ln3/b1;->f:Ln3/c1;

    iget-boolean v0, v0, Ln3/c1;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ln3/o0;->H:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ln3/o0;->I:Z

    return-void
.end method

.method public final I(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->h:Ln3/b1;

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    :goto_0
    add-long/2addr p1, v0

    goto :goto_1

    .line 3
    :cond_0
    iget-wide v0, v0, Ln3/b1;->o:J

    goto :goto_0

    .line 4
    :goto_1
    iput-wide p1, p0, Ln3/o0;->S:J

    .line 5
    iget-object v0, p0, Ln3/o0;->v:Ln3/l;

    .line 6
    iget-object v0, v0, Ln3/l;->h:Lm5/z;

    invoke-virtual {v0, p1, p2}, Lm5/z;->a(J)V

    .line 7
    iget-object p1, p0, Ln3/o0;->h:[Ln3/s1;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    .line 8
    invoke-static {v2}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-wide v3, p0, Ln3/o0;->S:J

    invoke-interface {v2, v3, v4}, Ln3/s1;->q(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Ln3/o0;->z:Ln3/e1;

    .line 11
    iget-object p1, p1, Ln3/e1;->h:Ln3/b1;

    :goto_3
    if-eqz p1, :cond_5

    .line 12
    iget-object p2, p1, Ln3/b1;->n:Lj5/t;

    .line 13
    iget-object p2, p2, Lj5/t;->c:[Lj5/l;

    array-length v1, p2

    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, p2, v2

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v3}, Lj5/l;->r()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 15
    :cond_4
    iget-object p1, p1, Ln3/b1;->l:Ln3/b1;

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final K(Ln3/b2;Ln3/b2;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 3
    iget-object v1, p0, Ln3/o0;->w:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ln3/o0$c;

    iget v5, p0, Ln3/o0;->L:I

    iget-boolean v6, p0, Ln3/o0;->M:Z

    iget-object v7, p0, Ln3/o0;->r:Ln3/b2$d;

    iget-object v8, p0, Ln3/o0;->s:Ln3/b2$b;

    move-object v3, p1

    move-object v4, p2

    .line 5
    invoke-static/range {v2 .. v8}, Ln3/o0;->J(Ln3/o0$c;Ln3/b2;Ln3/b2;IZLn3/b2$d;Ln3/b2$b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/o0$c;

    iget-object v1, v1, Ln3/o0$c;->h:Ln3/p1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ln3/p1;->b(Z)V

    .line 7
    iget-object v1, p0, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final N(JJ)V
    .locals 1

    iget-object v0, p0, Ln3/o0;->o:Lm5/l;

    add-long/2addr p1, p3

    invoke-interface {v0, p1, p2}, Lm5/l;->b(J)Z

    return-void
.end method

.method public final O(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->h:Ln3/b1;

    .line 3
    iget-object v0, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v0, v0, Ln3/c1;->a:Lp4/x$b;

    .line 4
    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    iget-wide v3, v1, Ln3/l1;->r:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 5
    invoke-virtual/range {v1 .. v6}, Ln3/o0;->R(Lp4/x$b;JZZ)J

    move-result-wide v3

    .line 6
    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    iget-wide v1, v1, Ln3/l1;->r:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    iget-wide v5, v1, Ln3/l1;->c:J

    iget-wide v7, v1, Ln3/l1;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 8
    invoke-virtual/range {v1 .. v10}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object p1

    iput-object p1, p0, Ln3/o0;->E:Ln3/l1;

    :cond_0
    return-void
.end method

.method public final P(Ln3/o0$g;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v11, Ln3/o0;->F:Ln3/o0$d;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ln3/o0$d;->a(I)V

    .line 2
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->a:Ln3/b2;

    iget v4, v11, Ln3/o0;->L:I

    iget-boolean v5, v11, Ln3/o0;->M:Z

    iget-object v6, v11, Ln3/o0;->r:Ln3/b2$d;

    iget-object v7, v11, Ln3/o0;->s:Ln3/b2$b;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    .line 3
    invoke-static/range {v1 .. v7}, Ln3/o0;->L(Ln3/b2;Ln3/o0$g;ZIZLn3/b2$d;Ln3/b2$b;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v7, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v7, v7, Ln3/l1;->a:Ln3/b2;

    .line 5
    invoke-virtual {v11, v7}, Ln3/o0;->l(Ln3/b2;)Landroid/util/Pair;

    move-result-object v7

    .line 6
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lp4/x$b;

    .line 7
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 8
    iget-object v7, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v7, v7, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v7}, Ln3/b2;->s()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v16, v4

    :goto_0
    move-wide v4, v12

    move-wide/from16 v12, v16

    goto/16 :goto_4

    .line 9
    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 11
    iget-wide v9, v0, Ln3/o0$g;->c:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    .line 12
    :goto_1
    iget-object v14, v11, Ln3/o0;->z:Ln3/e1;

    iget-object v15, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v15, v15, Ln3/l1;->a:Ln3/b2;

    .line 13
    invoke-virtual {v14, v15, v7, v12, v13}, Ln3/e1;->p(Ln3/b2;Ljava/lang/Object;J)Lp4/x$b;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Lp4/w;->a()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 15
    iget-object v4, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v4, v4, Ln3/l1;->a:Ln3/b2;

    iget-object v5, v7, Lp4/w;->a:Ljava/lang/Object;

    iget-object v12, v11, Ln3/o0;->s:Ln3/b2$b;

    invoke-virtual {v4, v5, v12}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 16
    iget-object v4, v11, Ln3/o0;->s:Ln3/b2$b;

    iget v5, v7, Lp4/w;->b:I

    invoke-virtual {v4, v5}, Ln3/b2$b;->g(I)I

    move-result v4

    iget v5, v7, Lp4/w;->c:I

    if-ne v4, v5, :cond_2

    .line 17
    iget-object v4, v11, Ln3/o0;->s:Ln3/b2$b;

    .line 18
    iget-object v4, v4, Ln3/b2$b;->n:Lq4/a;

    iget-wide v4, v4, Lq4/a;->j:J

    move-wide v12, v4

    goto :goto_2

    :cond_2
    move-wide v12, v2

    :goto_2
    move-wide v4, v12

    move-wide v12, v9

    move-object v9, v7

    move v10, v8

    goto :goto_4

    .line 19
    :cond_3
    iget-wide v14, v0, Ln3/o0$g;->c:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    move-wide/from16 v16, v9

    move v10, v4

    move-object v9, v7

    goto :goto_0

    .line 20
    :goto_4
    :try_start_0
    iget-object v7, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v7, v7, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v7}, Ln3/b2;->s()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 21
    iput-object v0, v11, Ln3/o0;->R:Ln3/o0$g;

    goto :goto_5

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    .line 22
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget v1, v1, Ln3/l1;->e:I

    if-eq v1, v8, :cond_6

    .line 23
    invoke-virtual {v11, v0}, Ln3/o0;->e0(I)V

    .line 24
    :cond_6
    invoke-virtual {v11, v6, v8, v6, v8}, Ln3/o0;->G(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    .line 25
    :cond_7
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v9, v1}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 26
    iget-object v1, v11, Ln3/o0;->z:Ln3/e1;

    .line 27
    iget-object v1, v1, Ln3/e1;->h:Ln3/b1;

    if-eqz v1, :cond_8

    .line 28
    iget-boolean v7, v1, Ln3/b1;->d:Z

    if-eqz v7, :cond_8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    .line 29
    iget-object v1, v1, Ln3/b1;->a:Lp4/v;

    iget-object v2, v11, Ln3/o0;->D:Ln3/w1;

    .line 30
    invoke-interface {v1, v4, v5, v2}, Lp4/v;->d(JLn3/w1;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    .line 31
    :goto_6
    invoke-static {v1, v2}, Lm5/g0;->X(J)J

    move-result-wide v14

    iget-object v3, v11, Ln3/o0;->E:Ln3/l1;

    iget-wide v6, v3, Ln3/l1;->r:J

    invoke-static {v6, v7}, Lm5/g0;->X(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Ln3/o0;->E:Ln3/l1;

    iget v6, v3, Ln3/l1;->e:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    .line 32
    :cond_9
    iget-wide v7, v3, Ln3/l1;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 33
    invoke-virtual/range {v1 .. v10}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object v0

    iput-object v0, v11, Ln3/o0;->E:Ln3/l1;

    return-void

    :cond_a
    move-wide v1, v4

    .line 34
    :cond_b
    :try_start_1
    iget-object v3, v11, Ln3/o0;->E:Ln3/l1;

    iget v3, v3, Ln3/l1;->e:I

    if-ne v3, v0, :cond_c

    move v0, v8

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 35
    :goto_7
    invoke-virtual {v11, v9, v1, v2, v0}, Ln3/o0;->Q(Lp4/x$b;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v8, v10

    .line 36
    :try_start_2
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v4, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v5, v0, Ln3/l1;->b:Lp4/x$b;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-virtual/range {v1 .. v7}, Ln3/o0;->m0(Ln3/b2;Lp4/x$b;Ln3/b2;Lp4/x$b;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, v8

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 37
    invoke-virtual/range {v1 .. v10}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object v0

    iput-object v0, v11, Ln3/o0;->E:Ln3/l1;

    return-void

    :catchall_0
    move-exception v0

    move v10, v8

    move-wide v7, v14

    goto :goto_a

    :catchall_1
    move-exception v0

    move-wide v7, v4

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-virtual/range {v1 .. v10}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object v1

    iput-object v1, v11, Ln3/o0;->E:Ln3/l1;

    .line 38
    throw v0
.end method

.method public final Q(Lp4/x$b;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v1, v0, Ln3/e1;->h:Ln3/b1;

    .line 3
    iget-object v0, v0, Ln3/e1;->i:Ln3/b1;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 4
    invoke-virtual/range {v1 .. v6}, Ln3/o0;->R(Lp4/x$b;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final R(Lp4/x$b;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/o0;->j0()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/o0;->J:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    .line 3
    iget-object p5, p0, Ln3/o0;->E:Ln3/l1;

    iget p5, p5, Ln3/l1;->e:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Ln3/o0;->e0(I)V

    .line 5
    :cond_1
    iget-object p5, p0, Ln3/o0;->z:Ln3/e1;

    .line 6
    iget-object p5, p5, Ln3/e1;->h:Ln3/b1;

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    iget-object v3, v2, Ln3/b1;->f:Ln3/c1;

    iget-object v3, v3, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {p1, v3}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, v2, Ln3/b1;->l:Ln3/b1;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 9
    iget-wide p4, v2, Ln3/b1;->o:J

    add-long/2addr p4, p2

    const-wide/16 v3, 0x0

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    .line 10
    :cond_4
    iget-object p1, p0, Ln3/o0;->h:[Ln3/s1;

    array-length p4, p1

    move p5, v0

    :goto_2
    if-ge p5, p4, :cond_5

    aget-object v3, p1, p5

    .line 11
    invoke-virtual {p0, v3}, Ln3/o0;->c(Ln3/s1;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    .line 12
    :goto_3
    iget-object p1, p0, Ln3/o0;->z:Ln3/e1;

    .line 13
    iget-object p4, p1, Ln3/e1;->h:Ln3/b1;

    if-eq p4, v2, :cond_6

    .line 14
    invoke-virtual {p1}, Ln3/e1;->a()Ln3/b1;

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p1, v2}, Ln3/e1;->n(Ln3/b1;)Z

    const-wide p4, 0xe8d4a51000L

    .line 16
    iput-wide p4, v2, Ln3/b1;->o:J

    .line 17
    invoke-virtual {p0}, Ln3/o0;->e()V

    :cond_7
    if-eqz v2, :cond_a

    .line 18
    iget-object p1, p0, Ln3/o0;->z:Ln3/e1;

    invoke-virtual {p1, v2}, Ln3/e1;->n(Ln3/b1;)Z

    .line 19
    iget-boolean p1, v2, Ln3/b1;->d:Z

    if-nez p1, :cond_8

    .line 20
    iget-object p1, v2, Ln3/b1;->f:Ln3/c1;

    .line 21
    invoke-virtual {p1, p2, p3}, Ln3/c1;->b(J)Ln3/c1;

    move-result-object p1

    iput-object p1, v2, Ln3/b1;->f:Ln3/c1;

    goto :goto_4

    .line 22
    :cond_8
    iget-boolean p1, v2, Ln3/b1;->e:Z

    if-eqz p1, :cond_9

    .line 23
    iget-object p1, v2, Ln3/b1;->a:Lp4/v;

    invoke-interface {p1, p2, p3}, Lp4/v;->t(J)J

    move-result-wide p1

    .line 24
    iget-object p3, v2, Ln3/b1;->a:Lp4/v;

    iget-wide p4, p0, Ln3/o0;->t:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Ln3/o0;->u:Z

    invoke-interface {p3, p4, p5, v2}, Lp4/v;->s(JZ)V

    move-wide p2, p1

    .line 25
    :cond_9
    :goto_4
    invoke-virtual {p0, p2, p3}, Ln3/o0;->I(J)V

    .line 26
    invoke-virtual {p0}, Ln3/o0;->y()V

    goto :goto_5

    .line 27
    :cond_a
    iget-object p1, p0, Ln3/o0;->z:Ln3/e1;

    invoke-virtual {p1}, Ln3/e1;->b()V

    .line 28
    invoke-virtual {p0, p2, p3}, Ln3/o0;->I(J)V

    .line 29
    :goto_5
    invoke-virtual {p0, v0}, Ln3/o0;->p(Z)V

    .line 30
    iget-object p1, p0, Ln3/o0;->o:Lm5/l;

    invoke-interface {p1, v1}, Lm5/l;->e(I)Z

    return-wide p2
.end method

.method public final S(Ln3/p1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ln3/p1;->g:Landroid/os/Looper;

    .line 2
    iget-object v1, p0, Ln3/o0;->q:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Ln3/o0;->b(Ln3/p1;)V

    .line 4
    iget-object p1, p0, Ln3/o0;->E:Ln3/l1;

    iget p1, p1, Ln3/l1;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 5
    :cond_0
    iget-object p1, p0, Ln3/o0;->o:Lm5/l;

    invoke-interface {p1, v1}, Lm5/l;->e(I)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Ln3/o0;->o:Lm5/l;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object p1

    check-cast p1, Lm5/b0$a;

    invoke-virtual {p1}, Lm5/b0$a;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final T(Ln3/p1;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ln3/p1;->g:Landroid/os/Looper;

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    .line 3
    invoke-static {v0, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ln3/p1;->b(Z)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Ln3/o0;->x:Lm5/c;

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v0, v2}, Lm5/c;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lm5/l;

    move-result-object v0

    new-instance v1, Ly0/v;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Ly0/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    invoke-interface {v0, v1}, Lm5/l;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final U(Ln3/s1;J)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ln3/s1;->n()V

    .line 2
    instance-of v0, p1, Lz4/o;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lz4/o;

    .line 4
    iget-boolean v0, p1, Ln3/f;->r:Z

    .line 5
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 6
    iput-wide p2, p1, Lz4/o;->H:J

    :cond_0
    return-void
.end method

.method public final V(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/o0;->N:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Ln3/o0;->N:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Ln3/o0;->h:[Ln3/s1;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    invoke-static {v2}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ln3/o0;->i:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ln3/s1;->e()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final W(Ln3/o0$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/o0$d;->a(I)V

    .line 2
    iget v0, p1, Ln3/o0$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ln3/o0$g;

    new-instance v1, Ln3/q1;

    .line 4
    iget-object v2, p1, Ln3/o0$a;->a:Ljava/util/List;

    .line 5
    iget-object v3, p1, Ln3/o0$a;->b:Lp4/o0;

    .line 6
    invoke-direct {v1, v2, v3}, Ln3/q1;-><init>(Ljava/util/Collection;Lp4/o0;)V

    .line 7
    iget v2, p1, Ln3/o0$a;->c:I

    .line 8
    iget-wide v3, p1, Ln3/o0$a;->d:J

    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Ln3/o0$g;-><init>(Ln3/b2;IJ)V

    iput-object v0, p0, Ln3/o0;->R:Ln3/o0$g;

    .line 10
    :cond_0
    iget-object v0, p0, Ln3/o0;->A:Ln3/h1;

    .line 11
    iget-object v1, p1, Ln3/o0$a;->a:Ljava/util/List;

    .line 12
    iget-object p1, p1, Ln3/o0$a;->b:Lp4/o0;

    .line 13
    iget-object v2, v0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ln3/h1;->i(II)V

    .line 14
    iget-object v2, v0, Ln3/h1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Ln3/h1;->a(ILjava/util/List;Lp4/o0;)Ln3/b2;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, v3}, Ln3/o0;->q(Ln3/b2;Z)V

    return-void
.end method

.method public final X(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/o0;->P:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Ln3/o0;->P:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Ln3/o0;->E:Ln3/l1;

    iget-boolean p1, p1, Ln3/l1;->o:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Ln3/o0;->o:Lm5/l;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lm5/l;->e(I)Z

    :cond_1
    return-void
.end method

.method public final Y(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Ln3/o0;->H:Z

    .line 2
    invoke-virtual {p0}, Ln3/o0;->H()V

    .line 3
    iget-boolean p1, p0, Ln3/o0;->I:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ln3/o0;->z:Ln3/e1;

    .line 4
    iget-object v0, p1, Ln3/e1;->i:Ln3/b1;

    .line 5
    iget-object p1, p1, Ln3/e1;->h:Ln3/b1;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ln3/o0;->O(Z)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Ln3/o0;->p(Z)V

    :cond_0
    return-void
.end method

.method public final Z(ZIZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    invoke-virtual {v0, p3}, Ln3/o0$d;->a(I)V

    .line 2
    iget-object p3, p0, Ln3/o0;->F:Ln3/o0$d;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p3, Ln3/o0$d;->a:Z

    .line 4
    iput-boolean v0, p3, Ln3/o0$d;->f:Z

    .line 5
    iput p4, p3, Ln3/o0$d;->g:I

    .line 6
    iget-object p3, p0, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {p3, p1, p2}, Ln3/l1;->c(ZI)Ln3/l1;

    move-result-object p2

    iput-object p2, p0, Ln3/o0;->E:Ln3/l1;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Ln3/o0;->J:Z

    .line 8
    iget-object p3, p0, Ln3/o0;->z:Ln3/e1;

    .line 9
    iget-object p3, p3, Ln3/e1;->h:Ln3/b1;

    :goto_0
    if-eqz p3, :cond_2

    .line 10
    iget-object p4, p3, Ln3/b1;->n:Lj5/t;

    .line 11
    iget-object p4, p4, Lj5/t;->c:[Lj5/l;

    array-length v0, p4

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p4, v1

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v2, p1}, Lj5/l;->d(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p3, p3, Ln3/b1;->l:Ln3/b1;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Ln3/o0;->f0()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    invoke-virtual {p0}, Ln3/o0;->j0()V

    .line 16
    invoke-virtual {p0}, Ln3/o0;->l0()V

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, p0, Ln3/o0;->E:Ln3/l1;

    iget p1, p1, Ln3/l1;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_4

    .line 18
    invoke-virtual {p0}, Ln3/o0;->h0()V

    .line 19
    iget-object p1, p0, Ln3/o0;->o:Lm5/l;

    invoke-interface {p1, p3}, Lm5/l;->e(I)Z

    goto :goto_2

    :cond_4
    if-ne p1, p3, :cond_5

    .line 20
    iget-object p1, p0, Ln3/o0;->o:Lm5/l;

    invoke-interface {p1, p3}, Lm5/l;->e(I)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Ln3/o0$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/o0$d;->a(I)V

    .line 2
    iget-object v0, p0, Ln3/o0;->A:Ln3/h1;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/h1;->e()I

    move-result p2

    .line 4
    :cond_0
    iget-object v1, p1, Ln3/o0$a;->a:Ljava/util/List;

    .line 5
    iget-object p1, p1, Ln3/o0$a;->b:Lp4/o0;

    .line 6
    invoke-virtual {v0, p2, v1, p1}, Ln3/h1;->a(ILjava/util/List;Lp4/o0;)Ln3/b2;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Ln3/o0;->q(Ln3/b2;Z)V

    return-void
.end method

.method public final a0(Ln3/m1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->v:Ln3/l;

    invoke-virtual {v0, p1}, Ln3/l;->f(Ln3/m1;)V

    .line 2
    iget-object p1, p0, Ln3/o0;->v:Ln3/l;

    invoke-virtual {p1}, Ln3/l;->d()Ln3/m1;

    move-result-object p1

    .line 3
    iget v0, p1, Ln3/m1;->h:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Ln3/o0;->s(Ln3/m1;FZZ)V

    return-void
.end method

.method public final b(Ln3/p1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    monitor-exit p1

    const/4 v0, 0x1

    .line 3
    :try_start_0
    iget-object v1, p1, Ln3/p1;->a:Ln3/p1$b;

    .line 4
    iget v2, p1, Ln3/p1;->e:I

    .line 5
    iget-object v3, p1, Ln3/p1;->f:Ljava/lang/Object;

    .line 6
    invoke-interface {v1, v2, v3}, Ln3/p1$b;->l(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1, v0}, Ln3/p1;->b(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ln3/p1;->b(Z)V

    .line 8
    throw v1
.end method

.method public final b0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iput p1, p0, Ln3/o0;->L:I

    .line 2
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->a:Ln3/b2;

    .line 3
    iput p1, v0, Ln3/e1;->f:I

    .line 4
    invoke-virtual {v0, v1}, Ln3/e1;->q(Ln3/b2;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ln3/o0;->O(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ln3/o0;->p(Z)V

    return-void
.end method

.method public final c(Ln3/s1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ln3/s1;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Ln3/o0;->v:Ln3/l;

    .line 3
    iget-object v2, v0, Ln3/l;->j:Ln3/s1;

    if-ne p1, v2, :cond_2

    const/4 v2, 0x0

    .line 4
    iput-object v2, v0, Ln3/l;->k:Lm5/r;

    .line 5
    iput-object v2, v0, Ln3/l;->j:Ln3/s1;

    .line 6
    iput-boolean v1, v0, Ln3/l;->l:Z

    .line 7
    :cond_2
    invoke-interface {p1}, Ln3/s1;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 8
    invoke-interface {p1}, Ln3/s1;->stop()V

    .line 9
    :cond_3
    invoke-interface {p1}, Ln3/s1;->disable()V

    .line 10
    iget p1, p0, Ln3/o0;->Q:I

    sub-int/2addr p1, v1

    iput p1, p0, Ln3/o0;->Q:I

    return-void
.end method

.method public final c0(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Ln3/o0;->M:Z

    .line 2
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->a:Ln3/b2;

    .line 3
    iput-boolean p1, v0, Ln3/e1;->g:Z

    .line 4
    invoke-virtual {v0, v1}, Ln3/e1;->q(Ln3/b2;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ln3/o0;->O(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ln3/o0;->p(Z)V

    return-void
.end method

.method public final d()V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Ln3/o0;->x:Lm5/c;

    invoke-interface {v0}, Lm5/c;->a()J

    move-result-wide v11

    .line 2
    iget-object v0, v10, Ln3/o0;->o:Lm5/l;

    invoke-interface {v0}, Lm5/l;->h()V

    .line 3
    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    const/4 v13, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_2d

    iget-object v0, v10, Ln3/o0;->A:Ln3/h1;

    .line 4
    iget-boolean v0, v0, Ln3/h1;->k:Z

    if-nez v0, :cond_0

    goto/16 :goto_1a

    .line 5
    :cond_0
    iget-object v0, v10, Ln3/o0;->z:Ln3/e1;

    iget-wide v1, v10, Ln3/o0;->S:J

    invoke-virtual {v0, v1, v2}, Ln3/e1;->m(J)V

    .line 6
    iget-object v0, v10, Ln3/o0;->z:Ln3/e1;

    .line 7
    iget-object v1, v0, Ln3/e1;->j:Ln3/b1;

    if-eqz v1, :cond_2

    iget-object v2, v1, Ln3/b1;->f:Ln3/c1;

    iget-boolean v2, v2, Ln3/c1;->i:Z

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1}, Ln3/b1;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Ln3/e1;->j:Ln3/b1;

    iget-object v1, v1, Ln3/b1;->f:Ln3/c1;

    iget-wide v1, v1, Ln3/c1;->e:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_1

    iget v0, v0, Ln3/e1;->k:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v9

    :goto_1
    if-eqz v0, :cond_8

    .line 9
    iget-object v1, v10, Ln3/o0;->z:Ln3/e1;

    iget-wide v2, v10, Ln3/o0;->S:J

    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    .line 10
    iget-object v4, v1, Ln3/e1;->j:Ln3/b1;

    if-nez v4, :cond_3

    .line 11
    iget-object v2, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v4, v0, Ln3/l1;->c:J

    iget-wide v6, v0, Ln3/l1;->r:J

    invoke-virtual/range {v1 .. v7}, Ln3/e1;->d(Ln3/b2;Lp4/x$b;JJ)Ln3/c1;

    move-result-object v0

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v1, v0, v4, v2, v3}, Ln3/e1;->c(Ln3/b2;Ln3/b1;J)Ln3/c1;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    .line 13
    iget-object v1, v10, Ln3/o0;->z:Ln3/e1;

    iget-object v2, v10, Ln3/o0;->j:[Ln3/t1;

    iget-object v3, v10, Ln3/o0;->k:Lj5/s;

    iget-object v4, v10, Ln3/o0;->m:Ln3/x0;

    .line 14
    invoke-interface {v4}, Ln3/x0;->e()Ll5/b;

    move-result-object v21

    iget-object v4, v10, Ln3/o0;->A:Ln3/h1;

    iget-object v5, v10, Ln3/o0;->l:Lj5/t;

    .line 15
    iget-object v6, v1, Ln3/e1;->j:Ln3/b1;

    if-nez v6, :cond_4

    const-wide v6, 0xe8d4a51000L

    move-wide/from16 v18, v6

    goto :goto_3

    .line 16
    :cond_4
    iget-wide v14, v6, Ln3/b1;->o:J

    .line 17
    iget-object v6, v6, Ln3/b1;->f:Ln3/c1;

    iget-wide v6, v6, Ln3/c1;->e:J

    add-long/2addr v14, v6

    iget-wide v6, v0, Ln3/c1;->b:J

    sub-long/2addr v14, v6

    move-wide/from16 v18, v14

    .line 18
    :goto_3
    new-instance v6, Ln3/b1;

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v0

    move-object/from16 v24, v5

    invoke-direct/range {v16 .. v24}, Ln3/b1;-><init>([Ln3/t1;JLj5/s;Ll5/b;Ln3/h1;Ln3/c1;Lj5/t;)V

    .line 19
    iget-object v2, v1, Ln3/e1;->j:Ln3/b1;

    if-eqz v2, :cond_6

    .line 20
    iget-object v3, v2, Ln3/b1;->l:Ln3/b1;

    if-ne v6, v3, :cond_5

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v2}, Ln3/b1;->b()V

    .line 22
    iput-object v6, v2, Ln3/b1;->l:Ln3/b1;

    .line 23
    invoke-virtual {v2}, Ln3/b1;->c()V

    goto :goto_4

    .line 24
    :cond_6
    iput-object v6, v1, Ln3/e1;->h:Ln3/b1;

    .line 25
    iput-object v6, v1, Ln3/e1;->i:Ln3/b1;

    .line 26
    :goto_4
    iput-object v13, v1, Ln3/e1;->l:Ljava/lang/Object;

    .line 27
    iput-object v6, v1, Ln3/e1;->j:Ln3/b1;

    .line 28
    iget v2, v1, Ln3/e1;->k:I

    add-int/2addr v2, v9

    iput v2, v1, Ln3/e1;->k:I

    .line 29
    invoke-virtual {v1}, Ln3/e1;->l()V

    .line 30
    iget-object v1, v6, Ln3/b1;->a:Lp4/v;

    iget-wide v2, v0, Ln3/c1;->b:J

    invoke-interface {v1, v10, v2, v3}, Lp4/v;->u(Lp4/v$a;J)V

    .line 31
    iget-object v1, v10, Ln3/o0;->z:Ln3/e1;

    .line 32
    iget-object v1, v1, Ln3/e1;->h:Ln3/b1;

    if-ne v1, v6, :cond_7

    .line 33
    iget-wide v0, v0, Ln3/c1;->b:J

    invoke-virtual {v10, v0, v1}, Ln3/o0;->I(J)V

    .line 34
    :cond_7
    invoke-virtual {v10, v8}, Ln3/o0;->p(Z)V

    .line 35
    :cond_8
    iget-boolean v0, v10, Ln3/o0;->K:Z

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->u()Z

    move-result v0

    iput-boolean v0, v10, Ln3/o0;->K:Z

    .line 37
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->k0()V

    goto :goto_5

    .line 38
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->y()V

    .line 39
    :goto_5
    iget-object v0, v10, Ln3/o0;->z:Ln3/e1;

    .line 40
    iget-object v0, v0, Ln3/e1;->i:Ln3/b1;

    if-nez v0, :cond_a

    goto/16 :goto_11

    .line 41
    :cond_a
    iget-object v1, v0, Ln3/b1;->l:Ln3/b1;

    if-eqz v1, :cond_1a

    .line 42
    iget-boolean v1, v10, Ln3/o0;->I:Z

    if-eqz v1, :cond_b

    goto/16 :goto_e

    .line 43
    :cond_b
    iget-boolean v1, v0, Ln3/b1;->d:Z

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    move v1, v8

    .line 44
    :goto_6
    iget-object v2, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 45
    aget-object v2, v2, v1

    .line 46
    iget-object v3, v0, Ln3/b1;->c:[Lp4/m0;

    aget-object v3, v3, v1

    .line 47
    invoke-interface {v2}, Ln3/s1;->m()Lp4/m0;

    move-result-object v4

    if-ne v4, v3, :cond_10

    if-eqz v3, :cond_f

    .line 48
    invoke-interface {v2}, Ln3/s1;->h()Z

    move-result v3

    if-nez v3, :cond_f

    .line 49
    iget-object v3, v0, Ln3/b1;->l:Ln3/b1;

    .line 50
    iget-object v4, v0, Ln3/b1;->f:Ln3/c1;

    iget-boolean v4, v4, Ln3/c1;->f:Z

    if-eqz v4, :cond_e

    iget-boolean v4, v3, Ln3/b1;->d:Z

    if-eqz v4, :cond_e

    instance-of v4, v2, Lz4/o;

    if-nez v4, :cond_d

    instance-of v4, v2, Lf4/f;

    if-nez v4, :cond_d

    .line 51
    invoke-interface {v2}, Ln3/s1;->p()J

    move-result-wide v4

    invoke-virtual {v3}, Ln3/b1;->e()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_e

    :cond_d
    move v2, v9

    goto :goto_7

    :cond_e
    move v2, v8

    :goto_7
    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move v1, v8

    goto :goto_9

    :cond_11
    move v1, v9

    :goto_9
    if-nez v1, :cond_12

    goto/16 :goto_11

    .line 52
    :cond_12
    iget-object v1, v0, Ln3/b1;->l:Ln3/b1;

    .line 53
    iget-boolean v2, v1, Ln3/b1;->d:Z

    if-nez v2, :cond_13

    iget-wide v2, v10, Ln3/o0;->S:J

    .line 54
    invoke-virtual {v1}, Ln3/b1;->e()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_13

    goto/16 :goto_11

    .line 55
    :cond_13
    iget-object v7, v0, Ln3/b1;->n:Lj5/t;

    .line 56
    iget-object v1, v10, Ln3/o0;->z:Ln3/e1;

    .line 57
    iget-object v2, v1, Ln3/e1;->i:Ln3/b1;

    if-eqz v2, :cond_14

    .line 58
    iget-object v2, v2, Ln3/b1;->l:Ln3/b1;

    if-eqz v2, :cond_14

    move v2, v9

    goto :goto_a

    :cond_14
    move v2, v8

    .line 59
    :goto_a
    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 60
    iget-object v2, v1, Ln3/e1;->i:Ln3/b1;

    .line 61
    iget-object v2, v2, Ln3/b1;->l:Ln3/b1;

    .line 62
    iput-object v2, v1, Ln3/e1;->i:Ln3/b1;

    .line 63
    invoke-virtual {v1}, Ln3/e1;->l()V

    .line 64
    iget-object v14, v1, Ln3/e1;->i:Ln3/b1;

    .line 65
    iget-object v15, v14, Ln3/b1;->n:Lj5/t;

    .line 66
    iget-object v1, v10, Ln3/o0;->E:Ln3/l1;

    iget-object v3, v1, Ln3/l1;->a:Ln3/b2;

    iget-object v1, v14, Ln3/b1;->f:Ln3/c1;

    iget-object v2, v1, Ln3/c1;->a:Lp4/x$b;

    iget-object v0, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v4, v0, Ln3/c1;->a:Lp4/x$b;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual/range {v0 .. v6}, Ln3/o0;->m0(Ln3/b2;Lp4/x$b;Ln3/b2;Lp4/x$b;J)V

    .line 67
    iget-boolean v0, v14, Ln3/b1;->d:Z

    if-eqz v0, :cond_16

    iget-object v0, v14, Ln3/b1;->a:Lp4/v;

    .line 68
    invoke-interface {v0}, Lp4/v;->l()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 69
    invoke-virtual {v14}, Ln3/b1;->e()J

    move-result-wide v0

    .line 70
    iget-object v2, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v3, v2

    move v4, v8

    :goto_b
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    .line 71
    invoke-interface {v5}, Ln3/s1;->m()Lp4/m0;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 72
    invoke-virtual {v10, v5, v0, v1}, Ln3/o0;->U(Ln3/s1;J)V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_16
    move v0, v8

    .line 73
    :goto_c
    iget-object v1, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 74
    invoke-virtual {v7, v0}, Lj5/t;->b(I)Z

    move-result v1

    .line 75
    invoke-virtual {v15, v0}, Lj5/t;->b(I)Z

    move-result v2

    if-eqz v1, :cond_19

    .line 76
    iget-object v1, v10, Ln3/o0;->h:[Ln3/s1;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ln3/s1;->r()Z

    move-result v1

    if-nez v1, :cond_19

    .line 77
    iget-object v1, v10, Ln3/o0;->j:[Ln3/t1;

    aget-object v1, v1, v0

    check-cast v1, Ln3/f;

    .line 78
    iget v1, v1, Ln3/f;->h:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_17

    move v1, v9

    goto :goto_d

    :cond_17
    move v1, v8

    .line 79
    :goto_d
    iget-object v3, v7, Lj5/t;->b:[Ln3/u1;

    aget-object v3, v3, v0

    .line 80
    iget-object v4, v15, Lj5/t;->b:[Ln3/u1;

    aget-object v4, v4, v0

    if-eqz v2, :cond_18

    .line 81
    invoke-virtual {v4, v3}, Ln3/u1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v1, :cond_19

    .line 82
    :cond_18
    iget-object v1, v10, Ln3/o0;->h:[Ln3/s1;

    aget-object v1, v1, v0

    .line 83
    invoke-virtual {v14}, Ln3/b1;->e()J

    move-result-wide v2

    .line 84
    invoke-virtual {v10, v1, v2, v3}, Ln3/o0;->U(Ln3/s1;J)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 85
    :cond_1a
    :goto_e
    iget-object v1, v0, Ln3/b1;->f:Ln3/c1;

    iget-boolean v1, v1, Ln3/c1;->i:Z

    if-nez v1, :cond_1b

    iget-boolean v1, v10, Ln3/o0;->I:Z

    if-eqz v1, :cond_1e

    :cond_1b
    move v1, v8

    .line 86
    :goto_f
    iget-object v2, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 87
    aget-object v2, v2, v1

    .line 88
    iget-object v3, v0, Ln3/b1;->c:[Lp4/m0;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1d

    .line 89
    invoke-interface {v2}, Ln3/s1;->m()Lp4/m0;

    move-result-object v4

    if-ne v4, v3, :cond_1d

    .line 90
    invoke-interface {v2}, Ln3/s1;->h()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 91
    iget-object v3, v0, Ln3/b1;->f:Ln3/c1;

    iget-wide v3, v3, Ln3/c1;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1c

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1c

    .line 92
    iget-wide v5, v0, Ln3/b1;->o:J

    add-long/2addr v3, v5

    goto :goto_10

    :cond_1c
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    :goto_10
    invoke-virtual {v10, v2, v3, v4}, Ln3/o0;->U(Ln3/s1;J)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 94
    :cond_1e
    :goto_11
    iget-object v0, v10, Ln3/o0;->z:Ln3/e1;

    .line 95
    iget-object v1, v0, Ln3/e1;->i:Ln3/b1;

    if-eqz v1, :cond_26

    .line 96
    iget-object v0, v0, Ln3/e1;->h:Ln3/b1;

    if-eq v0, v1, :cond_26

    .line 97
    iget-boolean v0, v1, Ln3/b1;->g:Z

    if-eqz v0, :cond_1f

    goto :goto_15

    .line 98
    :cond_1f
    iget-object v0, v1, Ln3/b1;->n:Lj5/t;

    move v2, v8

    move v3, v2

    .line 99
    :goto_12
    iget-object v4, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v5, v4

    if-ge v2, v5, :cond_25

    .line 100
    aget-object v14, v4, v2

    .line 101
    invoke-static {v14}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_14

    .line 102
    :cond_20
    invoke-interface {v14}, Ln3/s1;->m()Lp4/m0;

    move-result-object v4

    iget-object v5, v1, Ln3/b1;->c:[Lp4/m0;

    aget-object v5, v5, v2

    if-eq v4, v5, :cond_21

    move v4, v9

    goto :goto_13

    :cond_21
    move v4, v8

    .line 103
    :goto_13
    invoke-virtual {v0, v2}, Lj5/t;->b(I)Z

    move-result v5

    if-eqz v5, :cond_22

    if-nez v4, :cond_22

    goto :goto_14

    .line 104
    :cond_22
    invoke-interface {v14}, Ln3/s1;->r()Z

    move-result v4

    if-nez v4, :cond_23

    .line 105
    iget-object v4, v0, Lj5/t;->c:[Lj5/l;

    aget-object v4, v4, v2

    invoke-static {v4}, Ln3/o0;->g(Lj5/l;)[Ln3/s0;

    move-result-object v15

    .line 106
    iget-object v4, v1, Ln3/b1;->c:[Lp4/m0;

    aget-object v16, v4, v2

    .line 107
    invoke-virtual {v1}, Ln3/b1;->e()J

    move-result-wide v17

    .line 108
    iget-wide v4, v1, Ln3/b1;->o:J

    move-wide/from16 v19, v4

    .line 109
    invoke-interface/range {v14 .. v20}, Ln3/s1;->g([Ln3/s0;Lp4/m0;JJ)V

    goto :goto_14

    .line 110
    :cond_23
    invoke-interface {v14}, Ln3/s1;->b()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 111
    invoke-virtual {v10, v14}, Ln3/o0;->c(Ln3/s1;)V

    goto :goto_14

    :cond_24
    move v3, v9

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_25
    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_26

    .line 112
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->e()V

    :cond_26
    :goto_15
    move v0, v8

    .line 113
    :goto_16
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->f0()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_17

    .line 114
    :cond_27
    iget-boolean v1, v10, Ln3/o0;->I:Z

    if-eqz v1, :cond_28

    goto :goto_17

    .line 115
    :cond_28
    iget-object v1, v10, Ln3/o0;->z:Ln3/e1;

    .line 116
    iget-object v1, v1, Ln3/e1;->h:Ln3/b1;

    if-nez v1, :cond_29

    goto :goto_17

    .line 117
    :cond_29
    iget-object v1, v1, Ln3/b1;->l:Ln3/b1;

    if-eqz v1, :cond_2a

    .line 118
    iget-wide v2, v10, Ln3/o0;->S:J

    .line 119
    invoke-virtual {v1}, Ln3/b1;->e()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2a

    iget-boolean v1, v1, Ln3/b1;->g:Z

    if-eqz v1, :cond_2a

    move v1, v9

    goto :goto_18

    :cond_2a
    :goto_17
    move v1, v8

    :goto_18
    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2b

    .line 120
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->z()V

    .line 121
    :cond_2b
    iget-object v0, v10, Ln3/o0;->z:Ln3/e1;

    invoke-virtual {v0}, Ln3/e1;->a()Ln3/b1;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, v10, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->b:Lp4/x$b;

    iget-object v1, v1, Lp4/w;->a:Ljava/lang/Object;

    iget-object v2, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v2, v2, Ln3/c1;->a:Lp4/x$b;

    iget-object v2, v2, Lp4/w;->a:Ljava/lang/Object;

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v10, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->b:Lp4/x$b;

    iget v2, v1, Lp4/w;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    iget-object v2, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v2, v2, Ln3/c1;->a:Lp4/x$b;

    iget v4, v2, Lp4/w;->b:I

    if-ne v4, v3, :cond_2c

    iget v1, v1, Lp4/w;->e:I

    iget v2, v2, Lp4/w;->e:I

    if-eq v1, v2, :cond_2c

    move v1, v9

    goto :goto_19

    :cond_2c
    move v1, v8

    .line 125
    :goto_19
    iget-object v0, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v2, v0, Ln3/c1;->a:Lp4/x$b;

    iget-wide v6, v0, Ln3/c1;->b:J

    iget-wide v4, v0, Ln3/c1;->c:J

    xor-int/lit8 v14, v1, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v6

    move v13, v8

    move v8, v14

    move v14, v9

    move v9, v15

    .line 126
    invoke-virtual/range {v0 .. v9}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object v0

    iput-object v0, v10, Ln3/o0;->E:Ln3/l1;

    .line 127
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->H()V

    .line 128
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->l0()V

    move v8, v13

    move v0, v14

    move v9, v0

    const/4 v13, 0x0

    goto/16 :goto_16

    :cond_2d
    :goto_1a
    move v13, v8

    move v14, v9

    .line 129
    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget v0, v0, Ln3/l1;->e:I

    if-eq v0, v14, :cond_5e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    goto/16 :goto_36

    .line 130
    :cond_2e
    iget-object v0, v10, Ln3/o0;->z:Ln3/e1;

    .line 131
    iget-object v0, v0, Ln3/e1;->h:Ln3/b1;

    const-wide/16 v2, 0xa

    if-nez v0, :cond_2f

    .line 132
    invoke-virtual {v10, v11, v12, v2, v3}, Ln3/o0;->N(JJ)V

    return-void

    :cond_2f
    const-string v4, "doSomeWork"

    .line 133
    invoke-static {v4}, Li0/b;->d(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->l0()V

    .line 135
    iget-boolean v4, v0, Ln3/b1;->d:Z

    const-wide/16 v5, 0x3e8

    if-eqz v4, :cond_38

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long/2addr v7, v5

    .line 137
    iget-object v4, v0, Ln3/b1;->a:Lp4/v;

    iget-object v9, v10, Ln3/o0;->E:Ln3/l1;

    iget-wide v14, v9, Ln3/l1;->r:J

    iget-wide v2, v10, Ln3/o0;->t:J

    sub-long/2addr v14, v2

    iget-boolean v2, v10, Ln3/o0;->u:Z

    invoke-interface {v4, v14, v15, v2}, Lp4/v;->s(JZ)V

    move v2, v13

    const/4 v3, 0x1

    const/4 v9, 0x1

    .line 138
    :goto_1b
    iget-object v4, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v14, v4

    if-ge v2, v14, :cond_39

    .line 139
    aget-object v4, v4, v2

    .line 140
    invoke-static {v4}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v14

    if-nez v14, :cond_30

    goto :goto_22

    .line 141
    :cond_30
    iget-wide v14, v10, Ln3/o0;->S:J

    invoke-interface {v4, v14, v15, v7, v8}, Ln3/s1;->k(JJ)V

    if-eqz v9, :cond_31

    .line 142
    invoke-interface {v4}, Ln3/s1;->b()Z

    move-result v9

    if-eqz v9, :cond_31

    const/4 v9, 0x1

    goto :goto_1c

    :cond_31
    move v9, v13

    .line 143
    :goto_1c
    iget-object v14, v0, Ln3/b1;->c:[Lp4/m0;

    aget-object v14, v14, v2

    invoke-interface {v4}, Ln3/s1;->m()Lp4/m0;

    move-result-object v15

    if-eq v14, v15, :cond_32

    const/4 v14, 0x1

    goto :goto_1d

    :cond_32
    move v14, v13

    :goto_1d
    if-nez v14, :cond_33

    .line 144
    invoke-interface {v4}, Ln3/s1;->h()Z

    move-result v15

    if-eqz v15, :cond_33

    const/4 v15, 0x1

    goto :goto_1e

    :cond_33
    move v15, v13

    :goto_1e
    if-nez v14, :cond_35

    if-nez v15, :cond_35

    .line 145
    invoke-interface {v4}, Ln3/s1;->isReady()Z

    move-result v14

    if-nez v14, :cond_35

    invoke-interface {v4}, Ln3/s1;->b()Z

    move-result v14

    if-eqz v14, :cond_34

    goto :goto_1f

    :cond_34
    move v14, v13

    goto :goto_20

    :cond_35
    :goto_1f
    const/4 v14, 0x1

    :goto_20
    if-eqz v3, :cond_36

    if-eqz v14, :cond_36

    const/4 v3, 0x1

    goto :goto_21

    :cond_36
    move v3, v13

    :goto_21
    if-nez v14, :cond_37

    .line 146
    invoke-interface {v4}, Ln3/s1;->o()V

    :cond_37
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 147
    :cond_38
    iget-object v2, v0, Ln3/b1;->a:Lp4/v;

    invoke-interface {v2}, Lp4/v;->q()V

    const/4 v3, 0x1

    const/4 v9, 0x1

    .line 148
    :cond_39
    iget-object v2, v0, Ln3/b1;->f:Ln3/c1;

    iget-wide v7, v2, Ln3/c1;->e:J

    if-eqz v9, :cond_3b

    .line 149
    iget-boolean v2, v0, Ln3/b1;->d:Z

    if-eqz v2, :cond_3b

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v14

    if-eqz v2, :cond_3a

    iget-object v2, v10, Ln3/o0;->E:Ln3/l1;

    iget-wide v14, v2, Ln3/l1;->r:J

    cmp-long v2, v7, v14

    if-gtz v2, :cond_3b

    :cond_3a
    const/4 v9, 0x1

    goto :goto_23

    :cond_3b
    move v9, v13

    :goto_23
    if-eqz v9, :cond_3c

    .line 150
    iget-boolean v2, v10, Ln3/o0;->I:Z

    if-eqz v2, :cond_3c

    .line 151
    iput-boolean v13, v10, Ln3/o0;->I:Z

    .line 152
    iget-object v2, v10, Ln3/o0;->E:Ln3/l1;

    iget v2, v2, Ln3/l1;->m:I

    const/4 v4, 0x5

    invoke-virtual {v10, v13, v2, v13, v4}, Ln3/o0;->Z(ZIZI)V

    :cond_3c
    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eqz v9, :cond_3d

    .line 153
    iget-object v7, v0, Ln3/b1;->f:Ln3/c1;

    iget-boolean v7, v7, Ln3/c1;->i:Z

    if-eqz v7, :cond_3d

    .line 154
    invoke-virtual {v10, v1}, Ln3/o0;->e0(I)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->j0()V

    goto/16 :goto_2d

    .line 156
    :cond_3d
    iget-object v7, v10, Ln3/o0;->E:Ln3/l1;

    iget v8, v7, Ln3/l1;->e:I

    if-ne v8, v4, :cond_46

    .line 157
    iget v8, v10, Ln3/o0;->Q:I

    if-nez v8, :cond_3e

    .line 158
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->w()Z

    move-result v9

    goto/16 :goto_29

    :cond_3e
    if-nez v3, :cond_3f

    goto/16 :goto_27

    .line 159
    :cond_3f
    iget-boolean v8, v7, Ln3/l1;->g:Z

    if-nez v8, :cond_40

    goto/16 :goto_28

    .line 160
    :cond_40
    iget-object v7, v7, Ln3/l1;->a:Ln3/b2;

    iget-object v8, v10, Ln3/o0;->z:Ln3/e1;

    .line 161
    iget-object v8, v8, Ln3/e1;->h:Ln3/b1;

    .line 162
    iget-object v8, v8, Ln3/b1;->f:Ln3/c1;

    iget-object v8, v8, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {v10, v7, v8}, Ln3/o0;->g0(Ln3/b2;Lp4/x$b;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 163
    iget-object v7, v10, Ln3/o0;->B:Ln3/w0;

    check-cast v7, Ln3/j;

    .line 164
    iget-wide v7, v7, Ln3/j;->i:J

    move-wide/from16 v32, v7

    goto :goto_24

    :cond_41
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    .line 165
    :goto_24
    iget-object v7, v10, Ln3/o0;->z:Ln3/e1;

    .line 166
    iget-object v7, v7, Ln3/e1;->j:Ln3/b1;

    .line 167
    invoke-virtual {v7}, Ln3/b1;->f()Z

    move-result v8

    if-eqz v8, :cond_42

    iget-object v8, v7, Ln3/b1;->f:Ln3/c1;

    iget-boolean v8, v8, Ln3/c1;->i:Z

    if-eqz v8, :cond_42

    const/4 v9, 0x1

    goto :goto_25

    :cond_42
    move v9, v13

    .line 168
    :goto_25
    iget-object v8, v7, Ln3/b1;->f:Ln3/c1;

    iget-object v8, v8, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {v8}, Lp4/w;->a()Z

    move-result v8

    if-eqz v8, :cond_43

    iget-boolean v7, v7, Ln3/b1;->d:Z

    if-nez v7, :cond_43

    const/4 v7, 0x1

    goto :goto_26

    :cond_43
    move v7, v13

    :goto_26
    if-nez v9, :cond_45

    if-nez v7, :cond_45

    .line 169
    iget-object v7, v10, Ln3/o0;->m:Ln3/x0;

    .line 170
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->m()J

    move-result-wide v28

    iget-object v8, v10, Ln3/o0;->v:Ln3/l;

    .line 171
    invoke-virtual {v8}, Ln3/l;->d()Ln3/m1;

    move-result-object v8

    iget v8, v8, Ln3/m1;->h:F

    iget-boolean v9, v10, Ln3/o0;->J:Z

    move-object/from16 v27, v7

    move/from16 v30, v8

    move/from16 v31, v9

    .line 172
    invoke-interface/range {v27 .. v33}, Ln3/x0;->d(JFZJ)Z

    move-result v7

    if-eqz v7, :cond_44

    goto :goto_28

    :cond_44
    :goto_27
    move v9, v13

    goto :goto_29

    :cond_45
    :goto_28
    const/4 v9, 0x1

    :goto_29
    if-eqz v9, :cond_46

    .line 173
    invoke-virtual {v10, v2}, Ln3/o0;->e0(I)V

    const/4 v3, 0x0

    .line 174
    iput-object v3, v10, Ln3/o0;->V:Ln3/q;

    .line 175
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->f0()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 176
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->h0()V

    goto :goto_2d

    .line 177
    :cond_46
    iget-object v7, v10, Ln3/o0;->E:Ln3/l1;

    iget v7, v7, Ln3/l1;->e:I

    if-ne v7, v2, :cond_4f

    iget v7, v10, Ln3/o0;->Q:I

    if-nez v7, :cond_47

    .line 178
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->w()Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_2d

    :cond_47
    if-nez v3, :cond_4f

    .line 179
    :cond_48
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->f0()Z

    move-result v3

    iput-boolean v3, v10, Ln3/o0;->J:Z

    .line 180
    invoke-virtual {v10, v4}, Ln3/o0;->e0(I)V

    .line 181
    iget-boolean v3, v10, Ln3/o0;->J:Z

    if-eqz v3, :cond_4e

    .line 182
    iget-object v3, v10, Ln3/o0;->z:Ln3/e1;

    .line 183
    iget-object v3, v3, Ln3/e1;->h:Ln3/b1;

    :goto_2a
    if-eqz v3, :cond_4b

    .line 184
    iget-object v7, v3, Ln3/b1;->n:Lj5/t;

    .line 185
    iget-object v7, v7, Lj5/t;->c:[Lj5/l;

    array-length v8, v7

    move v9, v13

    :goto_2b
    if-ge v9, v8, :cond_4a

    aget-object v14, v7, v9

    if-eqz v14, :cond_49

    .line 186
    invoke-interface {v14}, Lj5/l;->s()V

    :cond_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 187
    :cond_4a
    iget-object v3, v3, Ln3/b1;->l:Ln3/b1;

    goto :goto_2a

    .line 188
    :cond_4b
    iget-object v3, v10, Ln3/o0;->B:Ln3/w0;

    check-cast v3, Ln3/j;

    .line 189
    iget-wide v7, v3, Ln3/j;->i:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v7, v14

    if-nez v9, :cond_4c

    goto :goto_2c

    .line 190
    :cond_4c
    iget-wide v5, v3, Ln3/j;->b:J

    add-long/2addr v7, v5

    iput-wide v7, v3, Ln3/j;->i:J

    .line 191
    iget-wide v5, v3, Ln3/j;->h:J

    cmp-long v9, v5, v14

    if-eqz v9, :cond_4d

    cmp-long v7, v7, v5

    if-lez v7, :cond_4d

    .line 192
    iput-wide v5, v3, Ln3/j;->i:J

    .line 193
    :cond_4d
    iput-wide v14, v3, Ln3/j;->m:J

    .line 194
    :cond_4e
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->j0()V

    .line 195
    :cond_4f
    :goto_2d
    iget-object v3, v10, Ln3/o0;->E:Ln3/l1;

    iget v3, v3, Ln3/l1;->e:I

    if-ne v3, v4, :cond_52

    move v8, v13

    .line 196
    :goto_2e
    iget-object v3, v10, Ln3/o0;->h:[Ln3/s1;

    array-length v5, v3

    if-ge v8, v5, :cond_51

    .line 197
    aget-object v3, v3, v8

    invoke-static {v3}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, v10, Ln3/o0;->h:[Ln3/s1;

    aget-object v3, v3, v8

    .line 198
    invoke-interface {v3}, Ln3/s1;->m()Lp4/m0;

    move-result-object v3

    iget-object v5, v0, Ln3/b1;->c:[Lp4/m0;

    aget-object v5, v5, v8

    if-ne v3, v5, :cond_50

    .line 199
    iget-object v3, v10, Ln3/o0;->h:[Ln3/s1;

    aget-object v3, v3, v8

    invoke-interface {v3}, Ln3/s1;->o()V

    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 200
    :cond_51
    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget-boolean v3, v0, Ln3/l1;->g:Z

    if-nez v3, :cond_52

    iget-wide v5, v0, Ln3/l1;->q:J

    const-wide/32 v7, 0x7a120

    cmp-long v0, v5, v7

    if-gez v0, :cond_52

    .line 201
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->u()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v9, 0x1

    goto :goto_2f

    :cond_52
    move v9, v13

    :goto_2f
    if-nez v9, :cond_53

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 202
    iput-wide v5, v10, Ln3/o0;->W:J

    goto :goto_30

    :cond_53
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 203
    iget-wide v7, v10, Ln3/o0;->W:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_54

    .line 204
    iget-object v0, v10, Ln3/o0;->x:Lm5/c;

    invoke-interface {v0}, Lm5/c;->d()J

    move-result-wide v5

    iput-wide v5, v10, Ln3/o0;->W:J

    goto :goto_30

    .line 205
    :cond_54
    iget-object v0, v10, Ln3/o0;->x:Lm5/c;

    invoke-interface {v0}, Lm5/c;->d()J

    move-result-wide v5

    iget-wide v7, v10, Ln3/o0;->W:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xfa0

    cmp-long v0, v5, v7

    if-gez v0, :cond_5d

    .line 206
    :goto_30
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->f0()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget v0, v0, Ln3/l1;->e:I

    if-ne v0, v2, :cond_55

    const/4 v9, 0x1

    goto :goto_31

    :cond_55
    move v9, v13

    .line 207
    :goto_31
    iget-boolean v0, v10, Ln3/o0;->P:Z

    if-eqz v0, :cond_56

    iget-boolean v0, v10, Ln3/o0;->O:Z

    if-eqz v0, :cond_56

    if-eqz v9, :cond_56

    const/4 v0, 0x1

    goto :goto_32

    :cond_56
    move v0, v13

    .line 208
    :goto_32
    iget-object v3, v10, Ln3/o0;->E:Ln3/l1;

    iget-boolean v5, v3, Ln3/l1;->o:Z

    if-eq v5, v0, :cond_57

    .line 209
    new-instance v5, Ln3/l1;

    move-object/from16 v22, v5

    iget-object v6, v3, Ln3/l1;->a:Ln3/b2;

    move-object/from16 v23, v6

    iget-object v6, v3, Ln3/l1;->b:Lp4/x$b;

    move-object/from16 v24, v6

    iget-wide v6, v3, Ln3/l1;->c:J

    move-wide/from16 v25, v6

    iget-wide v6, v3, Ln3/l1;->d:J

    move-wide/from16 v27, v6

    iget v6, v3, Ln3/l1;->e:I

    move/from16 v29, v6

    iget-object v6, v3, Ln3/l1;->f:Ln3/q;

    move-object/from16 v30, v6

    iget-boolean v6, v3, Ln3/l1;->g:Z

    move/from16 v31, v6

    iget-object v6, v3, Ln3/l1;->h:Lp4/u0;

    move-object/from16 v32, v6

    iget-object v6, v3, Ln3/l1;->i:Lj5/t;

    move-object/from16 v33, v6

    iget-object v6, v3, Ln3/l1;->j:Ljava/util/List;

    move-object/from16 v34, v6

    iget-object v6, v3, Ln3/l1;->k:Lp4/x$b;

    move-object/from16 v35, v6

    iget-boolean v6, v3, Ln3/l1;->l:Z

    move/from16 v36, v6

    iget v6, v3, Ln3/l1;->m:I

    move/from16 v37, v6

    iget-object v6, v3, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v38, v6

    iget-wide v6, v3, Ln3/l1;->p:J

    move-wide/from16 v39, v6

    iget-wide v6, v3, Ln3/l1;->q:J

    move-wide/from16 v41, v6

    iget-wide v6, v3, Ln3/l1;->r:J

    move-wide/from16 v43, v6

    move/from16 v45, v0

    invoke-direct/range {v22 .. v45}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    .line 210
    iput-object v5, v10, Ln3/o0;->E:Ln3/l1;

    .line 211
    :cond_57
    iput-boolean v13, v10, Ln3/o0;->O:Z

    if-nez v0, :cond_5c

    .line 212
    iget-object v0, v10, Ln3/o0;->E:Ln3/l1;

    iget v0, v0, Ln3/l1;->e:I

    if-ne v0, v1, :cond_58

    goto :goto_35

    :cond_58
    if-nez v9, :cond_5a

    if-ne v0, v4, :cond_59

    goto :goto_33

    :cond_59
    if-ne v0, v2, :cond_5b

    .line 213
    iget v0, v10, Ln3/o0;->Q:I

    if-eqz v0, :cond_5b

    const-wide/16 v0, 0x3e8

    .line 214
    invoke-virtual {v10, v11, v12, v0, v1}, Ln3/o0;->N(JJ)V

    goto :goto_34

    :cond_5a
    :goto_33
    const-wide/16 v0, 0xa

    .line 215
    invoke-virtual {v10, v11, v12, v0, v1}, Ln3/o0;->N(JJ)V

    .line 216
    :cond_5b
    :goto_34
    invoke-static {}, Li0/b;->g()V

    :cond_5c
    :goto_35
    return-void

    .line 217
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playback stuck buffering and not loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    :goto_36
    return-void
.end method

.method public final d0(Lp4/o0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/o0$d;->a(I)V

    .line 2
    iget-object v0, p0, Ln3/o0;->A:Ln3/h1;

    .line 3
    invoke-virtual {v0}, Ln3/h1;->e()I

    move-result v1

    .line 4
    invoke-interface {p1}, Lp4/o0;->a()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 5
    invoke-interface {p1}, Lp4/o0;->h()Lp4/o0;

    move-result-object p1

    .line 6
    invoke-interface {p1, v1}, Lp4/o0;->d(I)Lp4/o0;

    move-result-object p1

    .line 7
    :cond_0
    iput-object p1, v0, Ln3/h1;->j:Lp4/o0;

    .line 8
    invoke-virtual {v0}, Ln3/h1;->c()Ln3/b2;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Ln3/o0;->q(Ln3/b2;Z)V

    return-void
.end method

.method public final e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    iget-object v0, p0, Ln3/o0;->h:[Ln3/s1;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Ln3/o0;->f([Z)V

    return-void
.end method

.method public final e0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/o0;->E:Ln3/l1;

    iget v1, v0, Ln3/l1;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Ln3/o0;->W:J

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ln3/l1;->f(I)Ln3/l1;

    move-result-object p1

    iput-object p1, p0, Ln3/o0;->E:Ln3/l1;

    :cond_1
    return-void
.end method

.method public final f([Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v1, v1, Ln3/e1;->i:Ln3/b1;

    .line 3
    iget-object v2, v1, Ln3/b1;->n:Lj5/t;

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    iget-object v5, v0, Ln3/o0;->h:[Ln3/s1;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 5
    invoke-virtual {v2, v4}, Lj5/t;->b(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Ln3/o0;->i:Ljava/util/Set;

    iget-object v6, v0, Ln3/o0;->h:[Ln3/s1;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    iget-object v5, v0, Ln3/o0;->h:[Ln3/s1;

    aget-object v5, v5, v4

    invoke-interface {v5}, Ln3/s1;->e()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 7
    :goto_1
    iget-object v5, v0, Ln3/o0;->h:[Ln3/s1;

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_9

    .line 8
    invoke-virtual {v2, v4}, Lj5/t;->b(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 9
    aget-boolean v5, p1, v4

    .line 10
    iget-object v7, v0, Ln3/o0;->h:[Ln3/s1;

    aget-object v7, v7, v4

    .line 11
    invoke-static {v7}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_6

    .line 12
    :cond_2
    iget-object v8, v0, Ln3/o0;->z:Ln3/e1;

    .line 13
    iget-object v9, v8, Ln3/e1;->i:Ln3/b1;

    .line 14
    iget-object v8, v8, Ln3/e1;->h:Ln3/b1;

    if-ne v9, v8, :cond_3

    move v15, v6

    goto :goto_2

    :cond_3
    move v15, v3

    .line 15
    :goto_2
    iget-object v8, v9, Ln3/b1;->n:Lj5/t;

    .line 16
    iget-object v10, v8, Lj5/t;->b:[Ln3/u1;

    aget-object v10, v10, v4

    .line 17
    iget-object v8, v8, Lj5/t;->c:[Lj5/l;

    aget-object v8, v8, v4

    .line 18
    invoke-static {v8}, Ln3/o0;->g(Lj5/l;)[Ln3/s0;

    move-result-object v11

    .line 19
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->f0()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Ln3/o0;->E:Ln3/l1;

    iget v8, v8, Ln3/l1;->e:I

    const/4 v12, 0x3

    if-ne v8, v12, :cond_4

    move/from16 v20, v6

    goto :goto_3

    :cond_4
    move/from16 v20, v3

    :goto_3
    if-nez v5, :cond_5

    if-eqz v20, :cond_5

    move v14, v6

    goto :goto_4

    :cond_5
    move v14, v3

    .line 20
    :goto_4
    iget v5, v0, Ln3/o0;->Q:I

    add-int/2addr v5, v6

    iput v5, v0, Ln3/o0;->Q:I

    .line 21
    iget-object v5, v0, Ln3/o0;->i:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v5, v9, Ln3/b1;->c:[Lp4/m0;

    aget-object v5, v5, v4

    iget-wide v12, v0, Ln3/o0;->S:J

    .line 23
    invoke-virtual {v9}, Ln3/b1;->e()J

    move-result-wide v16

    .line 24
    iget-wide v8, v9, Ln3/b1;->o:J

    move-wide/from16 v18, v8

    move-object v8, v7

    move-object v9, v10

    move-object v10, v11

    move-object v11, v5

    .line 25
    invoke-interface/range {v8 .. v19}, Ln3/s1;->t(Ln3/u1;[Ln3/s0;Lp4/m0;JZZJJ)V

    const/16 v5, 0xb

    .line 26
    new-instance v6, Ln3/n0;

    invoke-direct {v6, v0}, Ln3/n0;-><init>(Ln3/o0;)V

    invoke-interface {v7, v5, v6}, Ln3/p1$b;->l(ILjava/lang/Object;)V

    .line 27
    iget-object v5, v0, Ln3/o0;->v:Ln3/l;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-interface {v7}, Ln3/s1;->s()Lm5/r;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 29
    iget-object v8, v5, Ln3/l;->k:Lm5/r;

    if-eq v6, v8, :cond_7

    if-nez v8, :cond_6

    .line 30
    iput-object v6, v5, Ln3/l;->k:Lm5/r;

    .line 31
    iput-object v7, v5, Ln3/l;->j:Ln3/s1;

    .line 32
    iget-object v5, v5, Ln3/l;->h:Lm5/z;

    .line 33
    iget-object v5, v5, Lm5/z;->l:Ln3/m1;

    .line 34
    invoke-interface {v6, v5}, Lm5/r;->f(Ln3/m1;)V

    goto :goto_5

    .line 35
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    .line 36
    invoke-static {v1, v2}, Ln3/q;->d(Ljava/lang/RuntimeException;I)Ln3/q;

    move-result-object v1

    .line 37
    throw v1

    :cond_7
    :goto_5
    if-eqz v20, :cond_8

    .line 38
    invoke-interface {v7}, Ln3/s1;->start()V

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 39
    :cond_9
    iput-boolean v6, v1, Ln3/b1;->g:Z

    return-void
.end method

.method public final f0()Z
    .locals 2

    iget-object v0, p0, Ln3/o0;->E:Ln3/l1;

    iget-boolean v1, v0, Ln3/l1;->l:Z

    if-eqz v1, :cond_0

    iget v0, v0, Ln3/l1;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g0(Ln3/b2;Lp4/x$b;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lp4/w;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Lp4/w;->a:Ljava/lang/Object;

    iget-object v0, p0, Ln3/o0;->s:Ln3/b2$b;

    invoke-virtual {p1, p2, v0}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object p2

    iget p2, p2, Ln3/b2$b;->j:I

    .line 3
    iget-object v0, p0, Ln3/o0;->r:Ln3/b2$d;

    invoke-virtual {p1, p2, v0}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 4
    iget-object p1, p0, Ln3/o0;->r:Ln3/b2$d;

    invoke-virtual {p1}, Ln3/b2$d;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ln3/o0;->r:Ln3/b2$d;

    iget-boolean p2, p1, Ln3/b2$d;->p:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Ln3/b2$d;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final h(Ln3/b2;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/o0;->s:Ln3/b2$b;

    invoke-virtual {p1, p2, v0}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object p2

    iget p2, p2, Ln3/b2$b;->j:I

    .line 2
    iget-object v0, p0, Ln3/o0;->r:Ln3/b2$d;

    invoke-virtual {p1, p2, v0}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 3
    iget-object p1, p0, Ln3/o0;->r:Ln3/b2$d;

    iget-wide v0, p1, Ln3/b2$d;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ln3/b2$d;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ln3/o0;->r:Ln3/b2$d;

    iget-boolean p2, p1, Ln3/b2$d;->p:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p1, p1, Ln3/b2$d;->n:J

    invoke-static {p1, p2}, Lm5/g0;->x(J)J

    move-result-wide p1

    .line 5
    iget-object v0, p0, Ln3/o0;->r:Ln3/b2$d;

    iget-wide v0, v0, Ln3/b2$d;->m:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lm5/g0;->L(J)J

    move-result-wide p1

    iget-object v0, p0, Ln3/o0;->s:Ln3/b2$b;

    .line 6
    iget-wide v0, v0, Ln3/b2$b;->l:J

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final h0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/o0;->J:Z

    .line 2
    iget-object v1, p0, Ln3/o0;->v:Ln3/l;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Ln3/l;->m:Z

    .line 4
    iget-object v1, v1, Ln3/l;->h:Lm5/z;

    invoke-virtual {v1}, Lm5/z;->b()V

    .line 5
    iget-object v1, p0, Ln3/o0;->h:[Ln3/s1;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 6
    invoke-static {v3}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v3}, Ln3/s1;->start()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    .line 2
    :pswitch_0
    invoke-virtual {p0, v4}, Ln3/o0;->O(Z)V

    goto/16 :goto_7

    .line 3
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {p0, p1}, Ln3/o0;->X(Z)V

    goto/16 :goto_7

    .line 4
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-virtual {p0, p1}, Ln3/o0;->Y(Z)V

    goto/16 :goto_7

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Ln3/o0;->A()V

    goto/16 :goto_7

    .line 6
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lp4/o0;

    invoke-virtual {p0, p1}, Ln3/o0;->d0(Lp4/o0;)V

    goto/16 :goto_7

    .line 7
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lp4/o0;

    invoke-virtual {p0, v5, v6, p1}, Ln3/o0;->E(IILp4/o0;)V

    goto/16 :goto_7

    .line 8
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/o0$b;

    invoke-virtual {p0, p1}, Ln3/o0;->B(Ln3/o0$b;)V

    goto/16 :goto_7

    .line 9
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ln3/o0$a;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5, p1}, Ln3/o0;->a(Ln3/o0$a;I)V

    goto/16 :goto_7

    .line 10
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/o0$a;

    invoke-virtual {p0, p1}, Ln3/o0;->W(Ln3/o0$a;)V

    goto/16 :goto_7

    .line 11
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/m1;

    .line 12
    iget v5, p1, Ln3/m1;->h:F

    invoke-virtual {p0, p1, v5, v4, v3}, Ln3/o0;->s(Ln3/m1;FZZ)V

    goto/16 :goto_7

    .line 13
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/p1;

    invoke-virtual {p0, p1}, Ln3/o0;->T(Ln3/p1;)V

    goto/16 :goto_7

    .line 14
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/p1;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, p1}, Ln3/o0;->S(Ln3/p1;)V

    goto/16 :goto_7

    .line 17
    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5, p1}, Ln3/o0;->V(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_7

    .line 18
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    invoke-virtual {p0, p1}, Ln3/o0;->c0(Z)V

    goto/16 :goto_7

    .line 19
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ln3/o0;->b0(I)V

    goto/16 :goto_7

    .line 20
    :pswitch_f
    invoke-virtual {p0}, Ln3/o0;->F()V

    goto/16 :goto_7

    .line 21
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lp4/v;

    invoke-virtual {p0, p1}, Ln3/o0;->n(Lp4/v;)V

    goto/16 :goto_7

    .line 22
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lp4/v;

    invoke-virtual {p0, p1}, Ln3/o0;->r(Lp4/v;)V

    goto/16 :goto_7

    .line 23
    :pswitch_12
    invoke-virtual {p0}, Ln3/o0;->D()V

    return v4

    .line 24
    :pswitch_13
    invoke-virtual {p0, v3, v4}, Ln3/o0;->i0(ZZ)V

    goto/16 :goto_7

    .line 25
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/w1;

    .line 26
    iput-object p1, p0, Ln3/o0;->D:Ln3/w1;

    goto/16 :goto_7

    .line 27
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/m1;

    invoke-virtual {p0, p1}, Ln3/o0;->a0(Ln3/m1;)V

    goto/16 :goto_7

    .line 28
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln3/o0$g;

    invoke-virtual {p0, p1}, Ln3/o0;->P(Ln3/o0$g;)V

    goto/16 :goto_7

    .line 29
    :pswitch_17
    invoke-virtual {p0}, Ln3/o0;->d()V

    goto/16 :goto_7

    .line 30
    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v5, p1, v4, v4}, Ln3/o0;->Z(ZIZI)V

    goto/16 :goto_7

    .line 31
    :pswitch_19
    invoke-virtual {p0}, Ln3/o0;->C()V
    :try_end_0
    .catch Ln3/q; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lr3/e$a; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ln3/i1; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ll5/k; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lp4/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    .line 32
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_5

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    :cond_5
    const/16 v2, 0x3ec

    .line 33
    :cond_6
    invoke-static {p1, v2}, Ln3/q;->d(Ljava/lang/RuntimeException;I)Ln3/q;

    move-result-object p1

    .line 34
    invoke-static {v1, v0, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual {p0, v4, v3}, Ln3/o0;->i0(ZZ)V

    .line 36
    iget-object v0, p0, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {v0, p1}, Ln3/l1;->d(Ln3/q;)Ln3/l1;

    move-result-object p1

    iput-object p1, p0, Ln3/o0;->E:Ln3/l1;

    goto/16 :goto_7

    :catch_1
    move-exception p1

    const/16 v0, 0x7d0

    .line 37
    invoke-virtual {p0, p1, v0}, Ln3/o0;->o(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_2
    move-exception p1

    const/16 v0, 0x3ea

    .line 38
    invoke-virtual {p0, p1, v0}, Ln3/o0;->o(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_3
    move-exception p1

    .line 39
    iget v0, p1, Ll5/k;->h:I

    invoke-virtual {p0, p1, v0}, Ln3/o0;->o(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_4
    move-exception p1

    .line 40
    iget v0, p1, Ln3/i1;->i:I

    if-ne v0, v4, :cond_8

    .line 41
    iget-boolean v0, p1, Ln3/i1;->h:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xbb9

    goto :goto_5

    :cond_7
    const/16 v0, 0xbbb

    :goto_5
    move v2, v0

    goto :goto_6

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 42
    iget-boolean v0, p1, Ln3/i1;->h:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xbba

    goto :goto_5

    :cond_9
    const/16 v0, 0xbbc

    goto :goto_5

    .line 43
    :cond_a
    :goto_6
    invoke-virtual {p0, p1, v2}, Ln3/o0;->o(Ljava/io/IOException;I)V

    goto :goto_7

    :catch_5
    move-exception p1

    .line 44
    iget v0, p1, Lr3/e$a;->h:I

    invoke-virtual {p0, p1, v0}, Ln3/o0;->o(Ljava/io/IOException;I)V

    goto :goto_7

    :catch_6
    move-exception p1

    .line 45
    iget v2, p1, Ln3/q;->j:I

    if-ne v2, v4, :cond_b

    .line 46
    iget-object v2, p0, Ln3/o0;->z:Ln3/e1;

    .line 47
    iget-object v2, v2, Ln3/e1;->i:Ln3/b1;

    if-eqz v2, :cond_b

    .line 48
    iget-object v2, v2, Ln3/b1;->f:Ln3/c1;

    iget-object v2, v2, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {p1, v2}, Ln3/q;->c(Lp4/w;)Ln3/q;

    move-result-object p1

    .line 49
    :cond_b
    iget-boolean v2, p1, Ln3/q;->p:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Ln3/o0;->V:Ln3/q;

    if-nez v2, :cond_c

    const-string v0, "Recoverable renderer error"

    .line 50
    invoke-static {v1, v0, p1}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput-object p1, p0, Ln3/o0;->V:Ln3/q;

    .line 52
    iget-object v0, p0, Ln3/o0;->o:Lm5/l;

    const/16 v1, 0x19

    .line 53
    invoke-interface {v0, v1, p1}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object p1

    .line 54
    invoke-interface {v0, p1}, Lm5/l;->f(Lm5/l$a;)Z

    goto :goto_7

    .line 55
    :cond_c
    iget-object v2, p0, Ln3/o0;->V:Ln3/q;

    if-eqz v2, :cond_d

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    iget-object p1, p0, Ln3/o0;->V:Ln3/q;

    .line 58
    :cond_d
    invoke-static {v1, v0, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    invoke-virtual {p0, v4, v3}, Ln3/o0;->i0(ZZ)V

    .line 60
    iget-object v0, p0, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {v0, p1}, Ln3/l1;->d(Ln3/q;)Ln3/l1;

    move-result-object p1

    iput-object p1, p0, Ln3/o0;->E:Ln3/l1;

    .line 61
    :goto_7
    invoke-virtual {p0}, Ln3/o0;->z()V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lp4/v;)V
    .locals 2

    iget-object v0, p0, Ln3/o0;->o:Lm5/l;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object p1

    check-cast p1, Lm5/b0$a;

    invoke-virtual {p1}, Lm5/b0$a;->b()V

    return-void
.end method

.method public final i0(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Ln3/o0;->N:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Ln3/o0;->G(ZZZZ)V

    .line 2
    iget-object p1, p0, Ln3/o0;->F:Ln3/o0$d;

    invoke-virtual {p1, p2}, Ln3/o0$d;->a(I)V

    .line 3
    iget-object p1, p0, Ln3/o0;->m:Ln3/x0;

    invoke-interface {p1}, Ln3/x0;->f()V

    .line 4
    invoke-virtual {p0, v1}, Ln3/o0;->e0(I)V

    return-void
.end method

.method public final j(Lp4/n0;)V
    .locals 2

    .line 1
    check-cast p1, Lp4/v;

    .line 2
    iget-object v0, p0, Ln3/o0;->o:Lm5/l;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object p1

    check-cast p1, Lm5/b0$a;

    invoke-virtual {p1}, Lm5/b0$a;->b()V

    return-void
.end method

.method public final j0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->v:Ln3/l;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ln3/l;->m:Z

    .line 3
    iget-object v0, v0, Ln3/l;->h:Lm5/z;

    .line 4
    iget-boolean v2, v0, Lm5/z;->i:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lm5/z;->w()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lm5/z;->a(J)V

    .line 6
    iput-boolean v1, v0, Lm5/z;->i:Z

    .line 7
    :cond_0
    iget-object v0, p0, Ln3/o0;->h:[Ln3/s1;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 8
    invoke-static {v3}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {v3}, Ln3/s1;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 10
    invoke-interface {v3}, Ln3/s1;->stop()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k()J
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->i:Ln3/b1;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    iget-wide v1, v0, Ln3/b1;->o:J

    .line 4
    iget-boolean v3, v0, Ln3/b1;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Ln3/o0;->h:[Ln3/s1;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 6
    aget-object v4, v4, v3

    invoke-static {v4}, Ln3/o0;->v(Ln3/s1;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Ln3/o0;->h:[Ln3/s1;

    aget-object v4, v4, v3

    .line 7
    invoke-interface {v4}, Ln3/s1;->m()Lp4/m0;

    move-result-object v4

    iget-object v5, v0, Ln3/b1;->c:[Lp4/m0;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v4, p0, Ln3/o0;->h:[Ln3/s1;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ln3/s1;->p()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    .line 9
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method public final k0()V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v1, v1, Ln3/e1;->j:Ln3/b1;

    .line 3
    iget-boolean v2, v0, Ln3/o0;->K:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Ln3/b1;->a:Lp4/v;

    .line 4
    invoke-interface {v1}, Lp4/v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v11, v1

    .line 5
    iget-object v1, v0, Ln3/o0;->E:Ln3/l1;

    iget-boolean v2, v1, Ln3/l1;->g:Z

    if-eq v11, v2, :cond_2

    .line 6
    new-instance v15, Ln3/l1;

    move-object v2, v15

    iget-object v3, v1, Ln3/l1;->a:Ln3/b2;

    iget-object v4, v1, Ln3/l1;->b:Lp4/x$b;

    iget-wide v5, v1, Ln3/l1;->c:J

    iget-wide v7, v1, Ln3/l1;->d:J

    iget v9, v1, Ln3/l1;->e:I

    iget-object v10, v1, Ln3/l1;->f:Ln3/q;

    iget-object v12, v1, Ln3/l1;->h:Lp4/u0;

    iget-object v13, v1, Ln3/l1;->i:Lj5/t;

    iget-object v14, v1, Ln3/l1;->j:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v1, Ln3/l1;->k:Lp4/x$b;

    move-object/from16 v26, v16

    iget-boolean v0, v1, Ln3/l1;->l:Z

    move/from16 v16, v0

    iget v0, v1, Ln3/l1;->m:I

    move/from16 v17, v0

    iget-object v0, v1, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v18, v0

    move-object v0, v2

    move-object/from16 v27, v3

    iget-wide v2, v1, Ln3/l1;->p:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Ln3/l1;->q:J

    move-wide/from16 v21, v2

    iget-wide v2, v1, Ln3/l1;->r:J

    move-wide/from16 v23, v2

    iget-boolean v1, v1, Ln3/l1;->o:Z

    move/from16 v25, v1

    move-object v2, v0

    move-object/from16 v3, v27

    invoke-direct/range {v2 .. v25}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    .line 7
    iput-object v1, v0, Ln3/o0;->E:Ln3/l1;

    :cond_2
    return-void
.end method

.method public final l(Ln3/b2;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b2;",
            ")",
            "Landroid/util/Pair<",
            "Lp4/x$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/b2;->s()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Ln3/l1;->s:Lp4/x$b;

    sget-object p1, Ln3/l1;->s:Lp4/x$b;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Ln3/o0;->M:Z

    invoke-virtual {p1, v0}, Ln3/b2;->c(Z)I

    move-result v6

    .line 4
    iget-object v4, p0, Ln3/o0;->r:Ln3/b2$d;

    iget-object v5, p0, Ln3/o0;->s:Ln3/b2$b;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 5
    invoke-virtual/range {v3 .. v8}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 6
    iget-object v3, p0, Ln3/o0;->z:Ln3/e1;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    invoke-virtual {v3, p1, v4, v1, v2}, Ln3/e1;->p(Ln3/b2;Ljava/lang/Object;J)Lp4/x$b;

    move-result-object v3

    .line 8
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 9
    invoke-virtual {v3}, Lp4/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v3, Lp4/w;->a:Ljava/lang/Object;

    iget-object v4, p0, Ln3/o0;->s:Ln3/b2$b;

    invoke-virtual {p1, v0, v4}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 11
    iget p1, v3, Lp4/w;->c:I

    iget-object v0, p0, Ln3/o0;->s:Ln3/b2$b;

    iget v4, v3, Lp4/w;->b:I

    invoke-virtual {v0, v4}, Ln3/b2$b;->g(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 12
    iget-object p1, p0, Ln3/o0;->s:Ln3/b2$b;

    .line 13
    iget-object p1, p1, Ln3/b2$b;->n:Lq4/a;

    iget-wide v1, p1, Lq4/a;->j:J

    :cond_1
    move-wide v4, v1

    .line 14
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final l0()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v11, p0

    .line 1
    iget-object v0, v11, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->h:Ln3/b1;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Ln3/b1;->d:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Ln3/b1;->a:Lp4/v;

    invoke-interface {v1}, Lp4/v;->l()J

    move-result-wide v1

    move-wide v7, v1

    goto :goto_0

    :cond_1
    move-wide v7, v12

    :goto_0
    cmp-long v1, v7, v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v11, v7, v8}, Ln3/o0;->I(J)V

    .line 6
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-wide v0, v0, Ln3/l1;->r:J

    cmp-long v0, v7, v0

    if-eqz v0, :cond_17

    .line 7
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v2, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v5, v0, Ln3/l1;->c:J

    const/4 v9, 0x1

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move-wide v3, v7

    .line 8
    invoke-virtual/range {v1 .. v10}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object v0

    iput-object v0, v11, Ln3/o0;->E:Ln3/l1;

    goto/16 :goto_b

    .line 9
    :cond_2
    iget-object v1, v11, Ln3/o0;->v:Ln3/l;

    iget-object v2, v11, Ln3/o0;->z:Ln3/e1;

    .line 10
    iget-object v2, v2, Ln3/e1;->i:Ln3/b1;

    if-eq v0, v2, :cond_3

    move v2, v14

    goto :goto_1

    :cond_3
    move v2, v15

    .line 11
    :goto_1
    iget-object v3, v1, Ln3/l;->j:Ln3/s1;

    if-eqz v3, :cond_5

    .line 12
    invoke-interface {v3}, Ln3/s1;->b()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Ln3/l;->j:Ln3/s1;

    .line 13
    invoke-interface {v3}, Ln3/s1;->isReady()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v2, :cond_5

    iget-object v2, v1, Ln3/l;->j:Ln3/s1;

    .line 14
    invoke-interface {v2}, Ln3/s1;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v15

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v14

    :goto_3
    if-eqz v2, :cond_6

    .line 15
    iput-boolean v14, v1, Ln3/l;->l:Z

    .line 16
    iget-boolean v2, v1, Ln3/l;->m:Z

    if-eqz v2, :cond_9

    .line 17
    iget-object v2, v1, Ln3/l;->h:Lm5/z;

    invoke-virtual {v2}, Lm5/z;->b()V

    goto :goto_4

    .line 18
    :cond_6
    iget-object v2, v1, Ln3/l;->k:Lm5/r;

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v2}, Lm5/r;->w()J

    move-result-wide v3

    .line 21
    iget-boolean v5, v1, Ln3/l;->l:Z

    if-eqz v5, :cond_8

    .line 22
    iget-object v5, v1, Ln3/l;->h:Lm5/z;

    invoke-virtual {v5}, Lm5/z;->w()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_7

    .line 23
    iget-object v2, v1, Ln3/l;->h:Lm5/z;

    .line 24
    iget-boolean v3, v2, Lm5/z;->i:Z

    if-eqz v3, :cond_9

    .line 25
    invoke-virtual {v2}, Lm5/z;->w()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lm5/z;->a(J)V

    .line 26
    iput-boolean v15, v2, Lm5/z;->i:Z

    goto :goto_4

    .line 27
    :cond_7
    iput-boolean v15, v1, Ln3/l;->l:Z

    .line 28
    iget-boolean v5, v1, Ln3/l;->m:Z

    if-eqz v5, :cond_8

    .line 29
    iget-object v5, v1, Ln3/l;->h:Lm5/z;

    invoke-virtual {v5}, Lm5/z;->b()V

    .line 30
    :cond_8
    iget-object v5, v1, Ln3/l;->h:Lm5/z;

    invoke-virtual {v5, v3, v4}, Lm5/z;->a(J)V

    .line 31
    invoke-interface {v2}, Lm5/r;->d()Ln3/m1;

    move-result-object v2

    .line 32
    iget-object v3, v1, Ln3/l;->h:Lm5/z;

    .line 33
    iget-object v3, v3, Lm5/z;->l:Ln3/m1;

    .line 34
    invoke-virtual {v2, v3}, Ln3/m1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 35
    iget-object v3, v1, Ln3/l;->h:Lm5/z;

    invoke-virtual {v3, v2}, Lm5/z;->f(Ln3/m1;)V

    .line 36
    iget-object v3, v1, Ln3/l;->i:Ln3/l$a;

    check-cast v3, Ln3/o0;

    .line 37
    iget-object v3, v3, Ln3/o0;->o:Lm5/l;

    const/16 v4, 0x10

    .line 38
    invoke-interface {v3, v4, v2}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object v2

    .line 39
    check-cast v2, Lm5/b0$a;

    invoke-virtual {v2}, Lm5/b0$a;->b()V

    .line 40
    :cond_9
    :goto_4
    invoke-virtual {v1}, Ln3/l;->w()J

    move-result-wide v1

    .line 41
    iput-wide v1, v11, Ln3/o0;->S:J

    .line 42
    iget-wide v3, v0, Ln3/b1;->o:J

    sub-long/2addr v1, v3

    .line 43
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-wide v3, v0, Ln3/l1;->r:J

    .line 44
    iget-object v0, v11, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v0}, Lp4/w;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_a

    .line 45
    :cond_a
    iget-boolean v0, v11, Ln3/o0;->U:Z

    if-eqz v0, :cond_b

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 46
    iput-boolean v15, v11, Ln3/o0;->U:Z

    .line 47
    :cond_b
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v5, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    .line 48
    invoke-virtual {v5, v0}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 49
    iget v5, v11, Ln3/o0;->T:I

    iget-object v6, v11, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_c

    .line 50
    iget-object v7, v11, Ln3/o0;->w:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/o0$c;

    move-wide v9, v1

    move-object v8, v11

    goto :goto_6

    :cond_c
    move-wide v8, v1

    move-object v7, v11

    :goto_5
    move-wide v9, v8

    move-object v8, v7

    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_f

    .line 51
    iget v6, v7, Ln3/o0$c;->i:I

    if-gt v6, v0, :cond_d

    if-ne v6, v0, :cond_f

    iget-wide v6, v7, Ln3/o0$c;->j:J

    cmp-long v6, v6, v3

    if-lez v6, :cond_f

    :cond_d
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_e

    .line 52
    iget-object v6, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ln3/o0$c;

    goto :goto_6

    :cond_e
    move-object v7, v8

    move-wide v8, v9

    goto :goto_5

    .line 53
    :cond_f
    iget-object v6, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 54
    iget-object v6, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/o0$c;

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_13

    .line 55
    iget-object v7, v6, Ln3/o0$c;->k:Ljava/lang/Object;

    if-eqz v7, :cond_13

    iget v7, v6, Ln3/o0$c;->i:I

    if-lt v7, v0, :cond_11

    if-ne v7, v0, :cond_13

    iget-wide v14, v6, Ln3/o0$c;->j:J

    cmp-long v14, v14, v3

    if-gtz v14, :cond_13

    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 56
    iget-object v6, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 57
    iget-object v6, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/o0$c;

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_8

    :cond_12
    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_7

    :cond_13
    :goto_9
    if-eqz v6, :cond_15

    .line 58
    iget-object v14, v6, Ln3/o0$c;->k:Ljava/lang/Object;

    if-eqz v14, :cond_15

    iget v14, v6, Ln3/o0$c;->i:I

    if-ne v14, v0, :cond_15

    iget-wide v14, v6, Ln3/o0$c;->j:J

    cmp-long v16, v14, v3

    if-lez v16, :cond_15

    cmp-long v14, v14, v9

    if-gtz v14, :cond_15

    .line 59
    :try_start_0
    iget-object v14, v6, Ln3/o0$c;->h:Ln3/p1;

    invoke-virtual {v8, v14}, Ln3/o0;->S(Ln3/p1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v6, v6, Ln3/o0$c;->h:Ln3/p1;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v6, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object v6, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 63
    iget-object v6, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/o0$c;

    goto :goto_9

    :cond_14
    const/4 v6, 0x0

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 64
    iget-object v1, v6, Ln3/o0$c;->h:Ln3/p1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, v8, Ln3/o0;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    throw v0

    .line 67
    :cond_15
    iput v5, v8, Ln3/o0;->T:I

    .line 68
    :cond_16
    :goto_a
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iput-wide v1, v0, Ln3/l1;->r:J

    .line 69
    :cond_17
    :goto_b
    iget-object v0, v11, Ln3/o0;->z:Ln3/e1;

    .line 70
    iget-object v0, v0, Ln3/e1;->j:Ln3/b1;

    .line 71
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {v0}, Ln3/b1;->d()J

    move-result-wide v2

    iput-wide v2, v1, Ln3/l1;->p:J

    .line 72
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    invoke-virtual/range {p0 .. p0}, Ln3/o0;->m()J

    move-result-wide v1

    iput-wide v1, v0, Ln3/l1;->q:J

    .line 73
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-boolean v1, v0, Ln3/l1;->l:Z

    if-eqz v1, :cond_20

    iget v1, v0, Ln3/l1;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    .line 74
    invoke-virtual {v11, v1, v0}, Ln3/o0;->g0(Ln3/b2;Lp4/x$b;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->n:Ln3/m1;

    iget v1, v1, Ln3/m1;->h:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_20

    .line 75
    iget-object v1, v11, Ln3/o0;->B:Ln3/w0;

    .line 76
    iget-object v4, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v5, v0, Ln3/l1;->b:Lp4/x$b;

    iget-object v5, v5, Lp4/w;->a:Ljava/lang/Object;

    iget-wide v8, v0, Ln3/l1;->r:J

    invoke-virtual {v11, v4, v5, v8, v9}, Ln3/o0;->h(Ln3/b2;Ljava/lang/Object;J)J

    move-result-wide v4

    .line 77
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->m()J

    move-result-wide v8

    .line 78
    check-cast v1, Ln3/j;

    .line 79
    iget-wide v14, v1, Ln3/j;->d:J

    cmp-long v0, v14, v12

    if-nez v0, :cond_18

    goto/16 :goto_10

    :cond_18
    sub-long v8, v4, v8

    .line 80
    iget-wide v14, v1, Ln3/j;->n:J

    cmp-long v0, v14, v12

    if-nez v0, :cond_19

    .line 81
    iput-wide v8, v1, Ln3/j;->n:J

    const-wide/16 v8, 0x0

    .line 82
    iput-wide v8, v1, Ln3/j;->o:J

    goto :goto_c

    .line 83
    :cond_19
    iget v0, v1, Ln3/j;->c:F

    long-to-float v6, v14

    mul-float/2addr v6, v0

    sub-float v0, v3, v0

    long-to-float v10, v8

    mul-float/2addr v0, v10

    add-float/2addr v0, v6

    float-to-long v14, v0

    .line 84
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v1, Ln3/j;->n:J

    sub-long/2addr v8, v14

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 86
    iget-wide v14, v1, Ln3/j;->o:J

    iget v0, v1, Ln3/j;->c:F

    long-to-float v6, v14

    mul-float/2addr v6, v0

    sub-float v0, v3, v0

    long-to-float v8, v8

    mul-float/2addr v0, v8

    add-float/2addr v0, v6

    float-to-long v8, v0

    .line 87
    iput-wide v8, v1, Ln3/j;->o:J

    .line 88
    :goto_c
    iget-wide v8, v1, Ln3/j;->m:J

    cmp-long v0, v8, v12

    const-wide/16 v8, 0x3e8

    if-eqz v0, :cond_1a

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v12, v1, Ln3/j;->m:J

    sub-long/2addr v14, v12

    cmp-long v0, v14, v8

    if-gez v0, :cond_1a

    .line 90
    iget v3, v1, Ln3/j;->l:F

    goto/16 :goto_10

    .line 91
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v1, Ln3/j;->m:J

    .line 92
    iget-wide v12, v1, Ln3/j;->n:J

    iget-wide v14, v1, Ln3/j;->o:J

    const-wide/16 v17, 0x3

    mul-long v14, v14, v17

    add-long v21, v14, v12

    .line 93
    iget-wide v12, v1, Ln3/j;->i:J

    cmp-long v0, v12, v21

    const v6, 0x33d6bf95

    if-lez v0, :cond_1d

    .line 94
    invoke-static {v8, v9}, Lm5/g0;->L(J)J

    move-result-wide v8

    .line 95
    iget v0, v1, Ln3/j;->l:F

    sub-float/2addr v0, v3

    long-to-float v8, v8

    mul-float/2addr v0, v8

    float-to-long v9, v0

    .line 96
    iget v0, v1, Ln3/j;->j:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v8

    float-to-long v12, v0

    add-long/2addr v9, v12

    new-array v0, v2, [J

    const/4 v8, 0x0

    aput-wide v21, v0, v8

    .line 97
    iget-wide v12, v1, Ln3/j;->f:J

    const/4 v7, 0x1

    aput-wide v12, v0, v7

    const/4 v12, 0x2

    iget-wide v13, v1, Ln3/j;->i:J

    sub-long/2addr v13, v9

    aput-wide v13, v0, v12

    aget-wide v9, v0, v8

    move v14, v7

    :goto_d
    if-ge v14, v2, :cond_1c

    .line 98
    aget-wide v7, v0, v14

    cmp-long v7, v7, v9

    if-lez v7, :cond_1b

    .line 99
    aget-wide v7, v0, v14

    move-wide v9, v7

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 100
    :cond_1c
    iput-wide v9, v1, Ln3/j;->i:J

    goto :goto_e

    :cond_1d
    const/4 v0, 0x0

    .line 101
    iget v2, v1, Ln3/j;->l:F

    sub-float/2addr v2, v3

    .line 102
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v6

    float-to-long v7, v0

    sub-long v17, v4, v7

    .line 103
    iget-wide v7, v1, Ln3/j;->i:J

    move-wide/from16 v19, v7

    .line 104
    invoke-static/range {v17 .. v22}, Lm5/g0;->j(JJJ)J

    move-result-wide v7

    iput-wide v7, v1, Ln3/j;->i:J

    .line 105
    iget-wide v9, v1, Ln3/j;->h:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v9, v12

    if-eqz v0, :cond_1e

    cmp-long v0, v7, v9

    if-lez v0, :cond_1e

    .line 106
    iput-wide v9, v1, Ln3/j;->i:J

    .line 107
    :cond_1e
    :goto_e
    iget-wide v7, v1, Ln3/j;->i:J

    sub-long/2addr v4, v7

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, v1, Ln3/j;->a:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_1f

    .line 109
    iput v3, v1, Ln3/j;->l:F

    goto :goto_f

    :cond_1f
    long-to-float v0, v4

    mul-float/2addr v6, v0

    add-float/2addr v6, v3

    .line 110
    iget v0, v1, Ln3/j;->k:F

    iget v2, v1, Ln3/j;->j:F

    .line 111
    invoke-static {v6, v0, v2}, Lm5/g0;->h(FFF)F

    move-result v0

    iput v0, v1, Ln3/j;->l:F

    .line 112
    :goto_f
    iget v3, v1, Ln3/j;->l:F

    .line 113
    :goto_10
    iget-object v0, v11, Ln3/o0;->v:Ln3/l;

    invoke-virtual {v0}, Ln3/l;->d()Ln3/m1;

    move-result-object v0

    iget v0, v0, Ln3/m1;->h:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_20

    .line 114
    iget-object v0, v11, Ln3/o0;->v:Ln3/l;

    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->n:Ln3/m1;

    .line 115
    new-instance v2, Ln3/m1;

    iget v1, v1, Ln3/m1;->i:F

    invoke-direct {v2, v3, v1}, Ln3/m1;-><init>(FF)V

    .line 116
    invoke-virtual {v0, v2}, Ln3/l;->f(Ln3/m1;)V

    .line 117
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->n:Ln3/m1;

    iget-object v1, v11, Ln3/o0;->v:Ln3/l;

    .line 118
    invoke-virtual {v1}, Ln3/l;->d()Ln3/m1;

    move-result-object v1

    iget v1, v1, Ln3/m1;->h:F

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v11, v0, v1, v2, v2}, Ln3/o0;->s(Ln3/m1;FZZ)V

    :cond_20
    return-void
.end method

.method public final m()J
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/o0;->E:Ln3/l1;

    iget-wide v0, v0, Ln3/l1;->p:J

    .line 2
    iget-object v2, p0, Ln3/o0;->z:Ln3/e1;

    .line 3
    iget-object v2, v2, Ln3/e1;->j:Ln3/b1;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v5, p0, Ln3/o0;->S:J

    .line 5
    iget-wide v7, v2, Ln3/b1;->o:J

    sub-long/2addr v5, v7

    sub-long/2addr v0, v5

    .line 6
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_0
    return-wide v3
.end method

.method public final m0(Ln3/b2;Lp4/x$b;Ln3/b2;Lp4/x$b;J)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/o0;->g0(Ln3/b2;Lp4/x$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lp4/w;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ln3/m1;->k:Ln3/m1;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln3/o0;->E:Ln3/l1;

    iget-object p1, p1, Ln3/l1;->n:Ln3/m1;

    .line 3
    :goto_0
    iget-object p2, p0, Ln3/o0;->v:Ln3/l;

    invoke-virtual {p2}, Ln3/l;->d()Ln3/m1;

    move-result-object p2

    invoke-virtual {p2, p1}, Ln3/m1;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Ln3/o0;->v:Ln3/l;

    invoke-virtual {p2, p1}, Ln3/l;->f(Ln3/m1;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p2, Lp4/w;->a:Ljava/lang/Object;

    iget-object v1, p0, Ln3/o0;->s:Ln3/b2$b;

    invoke-virtual {p1, v0, v1}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v0

    iget v0, v0, Ln3/b2$b;->j:I

    .line 6
    iget-object v1, p0, Ln3/o0;->r:Ln3/b2$d;

    invoke-virtual {p1, v0, v1}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 7
    iget-object v0, p0, Ln3/o0;->B:Ln3/w0;

    iget-object v1, p0, Ln3/o0;->r:Ln3/b2$d;

    iget-object v1, v1, Ln3/b2$d;->r:Ln3/y0$f;

    sget v2, Lm5/g0;->a:I

    check-cast v0, Ln3/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v2, v1, Ln3/y0$f;->h:J

    invoke-static {v2, v3}, Lm5/g0;->L(J)J

    move-result-wide v2

    iput-wide v2, v0, Ln3/j;->d:J

    .line 9
    iget-wide v2, v1, Ln3/y0$f;->i:J

    invoke-static {v2, v3}, Lm5/g0;->L(J)J

    move-result-wide v2

    iput-wide v2, v0, Ln3/j;->g:J

    .line 10
    iget-wide v2, v1, Ln3/y0$f;->j:J

    invoke-static {v2, v3}, Lm5/g0;->L(J)J

    move-result-wide v2

    iput-wide v2, v0, Ln3/j;->h:J

    .line 11
    iget v2, v1, Ln3/y0$f;->k:F

    const v3, -0x800001

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x3f7851ec

    .line 12
    :goto_1
    iput v2, v0, Ln3/j;->k:F

    .line 13
    iget v1, v1, Ln3/y0$f;->l:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const v1, 0x3f83d70a

    .line 14
    :goto_2
    iput v1, v0, Ln3/j;->j:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_5

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    .line 15
    iput-wide v4, v0, Ln3/j;->d:J

    .line 16
    :cond_5
    invoke-virtual {v0}, Ln3/j;->a()V

    cmp-long v0, p5, v4

    if-eqz v0, :cond_6

    .line 17
    iget-object p3, p0, Ln3/o0;->B:Ln3/w0;

    iget-object p2, p2, Lp4/w;->a:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0, p1, p2, p5, p6}, Ln3/o0;->h(Ln3/b2;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 19
    check-cast p3, Ln3/j;

    .line 20
    iput-wide p1, p3, Ln3/j;->e:J

    .line 21
    invoke-virtual {p3}, Ln3/j;->a()V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Ln3/o0;->r:Ln3/b2$d;

    iget-object p1, p1, Ln3/b2$d;->h:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 23
    invoke-virtual {p3}, Ln3/b2;->s()Z

    move-result p5

    if-nez p5, :cond_7

    .line 24
    iget-object p2, p4, Lp4/w;->a:Ljava/lang/Object;

    iget-object p4, p0, Ln3/o0;->s:Ln3/b2$b;

    invoke-virtual {p3, p2, p4}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object p2

    iget p2, p2, Ln3/b2$b;->j:I

    .line 25
    iget-object p4, p0, Ln3/o0;->r:Ln3/b2$d;

    invoke-virtual {p3, p2, p4}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object p2

    iget-object p2, p2, Ln3/b2$d;->h:Ljava/lang/Object;

    .line 26
    :cond_7
    invoke-static {p2, p1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 27
    iget-object p1, p0, Ln3/o0;->B:Ln3/w0;

    check-cast p1, Ln3/j;

    .line 28
    iput-wide v4, p1, Ln3/j;->e:J

    .line 29
    invoke-virtual {p1}, Ln3/j;->a()V

    :cond_8
    :goto_3
    return-void
.end method

.method public final n(Lp4/v;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v1, v0, Ln3/e1;->j:Ln3/b1;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ln3/b1;->a:Lp4/v;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-wide v1, p0, Ln3/o0;->S:J

    invoke-virtual {v0, v1, v2}, Ln3/e1;->m(J)V

    .line 4
    invoke-virtual {p0}, Ln3/o0;->y()V

    return-void
.end method

.method public final declared-synchronized n0(Lt6/o;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt6/o<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/o0;->x:Lm5/c;

    invoke-interface {v0}, Lm5/c;->d()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 2
    :goto_0
    move-object v3, p1

    check-cast v3, Ln3/s;

    invoke-virtual {v3}, Ln3/s;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    .line 3
    :try_start_1
    iget-object v3, p0, Ln3/o0;->x:Lm5/c;

    invoke-interface {v3}, Lm5/c;->c()V

    .line 4
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    .line 5
    :goto_1
    :try_start_2
    iget-object p2, p0, Ln3/o0;->x:Lm5/c;

    invoke-interface {p2}, Lm5/c;->d()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final o(Ljava/io/IOException;I)V
    .locals 10

    .line 1
    new-instance v9, Ln3/q;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p1

    move v3, p2

    .line 2
    invoke-direct/range {v0 .. v8}, Ln3/q;-><init>(ILjava/lang/Throwable;ILjava/lang/String;ILn3/s0;IZ)V

    .line 3
    iget-object p1, p0, Ln3/o0;->z:Ln3/e1;

    .line 4
    iget-object p1, p1, Ln3/e1;->h:Ln3/b1;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Ln3/b1;->f:Ln3/c1;

    iget-object p1, p1, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {v9, p1}, Ln3/q;->c(Lp4/w;)Ln3/q;

    move-result-object v9

    :cond_0
    const-string p1, "ExoPlayerImplInternal"

    const-string p2, "Playback error"

    .line 6
    invoke-static {p1, p2, v9}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, p1}, Ln3/o0;->i0(ZZ)V

    .line 8
    iget-object p1, p0, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {p1, v9}, Ln3/l1;->d(Ln3/q;)Ln3/l1;

    move-result-object p1

    iput-object p1, p0, Ln3/o0;->E:Ln3/l1;

    return-void
.end method

.method public final p(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->j:Ln3/b1;

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->b:Lp4/x$b;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ln3/b1;->f:Ln3/c1;

    iget-object v1, v1, Ln3/c1;->a:Lp4/x$b;

    .line 4
    :goto_0
    iget-object v2, p0, Ln3/o0;->E:Ln3/l1;

    iget-object v2, v2, Ln3/l1;->k:Lp4/x$b;

    .line 5
    invoke-virtual {v2, v1}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p0, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {v3, v1}, Ln3/l1;->a(Lp4/x$b;)Ln3/l1;

    move-result-object v1

    iput-object v1, p0, Ln3/o0;->E:Ln3/l1;

    .line 7
    :cond_1
    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    if-nez v0, :cond_2

    .line 8
    iget-wide v3, v1, Ln3/l1;->r:J

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Ln3/b1;->d()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Ln3/l1;->p:J

    .line 10
    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {p0}, Ln3/o0;->m()J

    move-result-wide v3

    iput-wide v3, v1, Ln3/l1;->q:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 11
    iget-boolean p1, v0, Ln3/b1;->d:Z

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, v0, Ln3/b1;->n:Lj5/t;

    .line 13
    iget-object v0, p0, Ln3/o0;->m:Ln3/x0;

    iget-object v1, p0, Ln3/o0;->h:[Ln3/s1;

    iget-object p1, p1, Lj5/t;->c:[Lj5/l;

    invoke-interface {v0, v1, p1}, Ln3/x0;->h([Ln3/s1;[Lj5/l;)V

    :cond_4
    return-void
.end method

.method public final q(Ln3/b2;Z)V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v8, v11, Ln3/o0;->R:Ln3/o0$g;

    iget-object v9, v11, Ln3/o0;->z:Ln3/e1;

    iget v4, v11, Ln3/o0;->L:I

    iget-boolean v10, v11, Ln3/o0;->M:Z

    iget-object v13, v11, Ln3/o0;->r:Ln3/b2$d;

    iget-object v14, v11, Ln3/o0;->s:Ln3/b2$b;

    .line 2
    invoke-virtual/range {p1 .. p1}, Ln3/b2;->s()Z

    move-result v1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x4

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Ln3/o0$f;

    .line 4
    sget-object v1, Ln3/l1;->s:Lp4/x$b;

    sget-object v18, Ln3/l1;->s:Lp4/x$b;

    const-wide/16 v19, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v25}, Ln3/o0$f;-><init>(Lp4/x$b;JJZZZ)V

    :goto_0
    move-object v7, v0

    goto/16 :goto_15

    .line 5
    :cond_0
    iget-object v2, v0, Ln3/l1;->b:Lp4/x$b;

    .line 6
    iget-object v1, v2, Lp4/w;->a:Ljava/lang/Object;

    .line 7
    invoke-static {v0, v14}, Ln3/o0;->x(Ln3/l1;Ln3/b2$b;)Z

    move-result v17

    .line 8
    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v3}, Lp4/w;->a()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v17, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-wide v5, v0, Ln3/l1;->r:J

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-wide v5, v0, Ln3/l1;->c:J

    :goto_2
    move-wide/from16 v21, v5

    if-eqz v8, :cond_6

    const/4 v3, 0x1

    move-object v6, v1

    move-object/from16 v1, p1

    move-object v5, v2

    move-object v2, v8

    move-object/from16 v26, v5

    move v5, v10

    move-object/from16 v27, v6

    move-object v6, v13

    move-object v7, v14

    .line 11
    invoke-static/range {v1 .. v7}, Ln3/o0;->L(Ln3/b2;Ln3/o0$g;ZIZLn3/b2$d;Ln3/b2$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {v12, v10}, Ln3/b2;->c(Z)I

    move-result v1

    move-wide/from16 v4, v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x4

    goto :goto_5

    .line 13
    :cond_3
    iget-wide v2, v8, Ln3/o0$g;->c:J

    cmp-long v2, v2, v15

    if-nez v2, :cond_4

    .line 14
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    invoke-virtual {v12, v1, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    iget v6, v1, Ln3/b2$b;->j:I

    move-wide/from16 v3, v21

    move-object/from16 v1, v27

    const/4 v5, 0x0

    goto :goto_3

    .line 16
    :cond_4
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v2

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 18
    :goto_3
    iget v2, v0, Ln3/l1;->e:I

    const/4 v8, 0x4

    if-ne v2, v8, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v27, v1

    move v1, v6

    const/4 v6, 0x0

    move-wide/from16 v37, v3

    move v3, v5

    move-wide/from16 v4, v37

    :goto_5
    move/from16 v37, v3

    move v3, v2

    move/from16 v2, v37

    goto :goto_6

    :cond_6
    move-object/from16 v27, v1

    move-object/from16 v26, v2

    move v8, v7

    .line 19
    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v1}, Ln3/b2;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {v12, v10}, Ln3/b2;->c(Z)I

    move-result v1

    move-wide/from16 v4, v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_6
    move/from16 v36, v2

    move/from16 v34, v3

    move-wide v2, v4

    move/from16 v35, v6

    move-object/from16 v7, v26

    const/4 v5, -0x1

    move v4, v1

    move-object/from16 v1, v27

    goto/16 :goto_b

    :cond_7
    move-object/from16 v7, v27

    .line 21
    invoke-virtual {v12, v7}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_9

    .line 22
    iget-object v5, v0, Ln3/l1;->a:Ln3/b2;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object/from16 v18, v5

    move-object v5, v7

    move v8, v6

    move-object/from16 v6, v18

    move-object v8, v7

    move-object/from16 v7, p1

    .line 23
    invoke-static/range {v1 .. v7}, Ln3/o0;->M(Ln3/b2$d;Ln3/b2$b;IZLjava/lang/Object;Ln3/b2;Ln3/b2;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 24
    invoke-virtual {v12, v10}, Ln3/b2;->c(Z)I

    move-result v1

    const/4 v5, 0x1

    goto :goto_7

    .line 25
    :cond_8
    invoke-virtual {v12, v1, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    iget v1, v1, Ln3/b2$b;->j:I

    const/4 v5, 0x0

    :goto_7
    move v6, v1

    move v3, v5

    goto :goto_8

    :cond_9
    move-object v8, v7

    cmp-long v1, v21, v15

    if-nez v1, :cond_a

    .line 26
    invoke-virtual {v12, v8, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    iget v1, v1, Ln3/b2$b;->j:I

    move v6, v1

    const/4 v3, 0x0

    :goto_8
    move-object/from16 v7, v26

    goto :goto_a

    :cond_a
    if-eqz v17, :cond_c

    .line 27
    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    move-object/from16 v7, v26

    iget-object v2, v7, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 28
    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    iget v2, v14, Ln3/b2$b;->j:I

    invoke-virtual {v1, v2, v13}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v1

    iget v1, v1, Ln3/b2$d;->v:I

    iget-object v2, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v3, v7, Lp4/w;->a:Ljava/lang/Object;

    .line 29
    invoke-virtual {v2, v3}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 30
    iget-wide v1, v14, Ln3/b2$b;->l:J

    add-long v5, v21, v1

    .line 31
    invoke-virtual {v12, v8, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    iget v4, v1, Ln3/b2$b;->j:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 32
    invoke-virtual/range {v1 .. v6}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v2

    move-wide v4, v3

    goto :goto_9

    :cond_b
    move-object v1, v8

    move-wide/from16 v4, v21

    :goto_9
    move-wide v2, v4

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    goto :goto_b

    :cond_c
    move-object/from16 v7, v26

    const/4 v3, 0x0

    const/4 v6, -0x1

    :goto_a
    move/from16 v35, v3

    move v4, v6

    move-object v1, v8

    move-wide/from16 v2, v21

    const/4 v5, -0x1

    const/16 v34, 0x0

    const/16 v36, 0x0

    :goto_b
    if-eq v4, v5, :cond_d

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 35
    invoke-virtual/range {v1 .. v6}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 36
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v2

    move-wide v2, v3

    move-wide/from16 v32, v15

    goto :goto_c

    :cond_d
    move-wide/from16 v32, v2

    .line 38
    :goto_c
    invoke-virtual {v9, v12, v1, v2, v3}, Ln3/e1;->p(Ln3/b2;Ljava/lang/Object;J)Lp4/x$b;

    move-result-object v4

    .line 39
    iget v5, v4, Lp4/w;->e:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    iget v8, v7, Lp4/w;->e:I

    if-eq v8, v6, :cond_e

    if-lt v5, v8, :cond_e

    goto :goto_d

    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    const/4 v5, 0x1

    .line 40
    :goto_e
    iget-object v6, v7, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 41
    invoke-virtual {v7}, Lp4/w;->a()Z

    move-result v6

    if-nez v6, :cond_10

    .line 42
    invoke-virtual {v4}, Lp4/w;->a()Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_f

    :cond_10
    const/4 v5, 0x0

    .line 43
    :goto_f
    invoke-virtual {v12, v1, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    if-nez v17, :cond_13

    cmp-long v6, v21, v32

    if-nez v6, :cond_13

    .line 44
    iget-object v6, v7, Lp4/w;->a:Ljava/lang/Object;

    iget-object v8, v4, Lp4/w;->a:Ljava/lang/Object;

    .line 45
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_11

    .line 46
    :cond_11
    invoke-virtual {v7}, Lp4/w;->a()Z

    move-result v6

    if-eqz v6, :cond_12

    iget v6, v7, Lp4/w;->b:I

    invoke-virtual {v1, v6}, Ln3/b2$b;->h(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 47
    iget v6, v7, Lp4/w;->b:I

    iget v8, v7, Lp4/w;->c:I

    invoke-virtual {v1, v6, v8}, Ln3/b2$b;->f(II)I

    move-result v6

    const/4 v8, 0x4

    if-eq v6, v8, :cond_13

    iget v6, v7, Lp4/w;->b:I

    iget v8, v7, Lp4/w;->c:I

    .line 48
    invoke-virtual {v1, v6, v8}, Ln3/b2$b;->f(II)I

    move-result v1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_13

    goto :goto_10

    .line 49
    :cond_12
    invoke-virtual {v4}, Lp4/w;->a()Z

    move-result v6

    if-eqz v6, :cond_13

    iget v6, v4, Lp4/w;->b:I

    invoke-virtual {v1, v6}, Ln3/b2$b;->h(I)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_10
    const/4 v1, 0x1

    goto :goto_12

    :cond_13
    :goto_11
    const/4 v1, 0x0

    :goto_12
    if-nez v5, :cond_14

    if-eqz v1, :cond_15

    :cond_14
    move-object v4, v7

    .line 50
    :cond_15
    invoke-virtual {v4}, Lp4/w;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 51
    invoke-virtual {v4, v7}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 52
    iget-wide v0, v0, Ln3/l1;->r:J

    goto :goto_13

    .line 53
    :cond_16
    iget-object v0, v4, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 54
    iget v0, v4, Lp4/w;->c:I

    iget v1, v4, Lp4/w;->b:I

    invoke-virtual {v14, v1}, Ln3/b2$b;->g(I)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 55
    iget-object v0, v14, Ln3/b2$b;->n:Lq4/a;

    iget-wide v0, v0, Lq4/a;->j:J

    goto :goto_13

    :cond_17
    const-wide/16 v0, 0x0

    :goto_13
    move-wide/from16 v30, v0

    goto :goto_14

    :cond_18
    move-wide/from16 v30, v2

    .line 56
    :goto_14
    new-instance v0, Ln3/o0$f;

    move-object/from16 v28, v0

    move-object/from16 v29, v4

    invoke-direct/range {v28 .. v36}, Ln3/o0$f;-><init>(Lp4/x$b;JJZZZ)V

    goto/16 :goto_0

    .line 57
    :goto_15
    iget-object v8, v7, Ln3/o0$f;->a:Lp4/x$b;

    .line 58
    iget-wide v9, v7, Ln3/o0$f;->c:J

    .line 59
    iget-boolean v0, v7, Ln3/o0$f;->d:Z

    .line 60
    iget-wide v13, v7, Ln3/o0$f;->b:J

    .line 61
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->b:Lp4/x$b;

    .line 62
    invoke-virtual {v1, v8}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-wide v1, v1, Ln3/l1;->r:J

    cmp-long v1, v13, v1

    if-eqz v1, :cond_19

    goto :goto_16

    :cond_19
    const/16 v17, 0x0

    goto :goto_17

    :cond_1a
    :goto_16
    const/16 v17, 0x1

    :goto_17
    const/16 v18, 0x3

    const/4 v5, 0x0

    .line 63
    :try_start_0
    iget-boolean v1, v7, Ln3/o0$f;->e:Z

    if-eqz v1, :cond_1c

    .line 64
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget v1, v1, Ln3/l1;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1b

    const/4 v3, 0x4

    .line 65
    :try_start_1
    invoke-virtual {v11, v3}, Ln3/o0;->e0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_18

    :catchall_0
    move-exception v0

    move/from16 v21, v3

    move/from16 v16, v6

    const/4 v15, 0x0

    goto :goto_1a

    :cond_1b
    const/4 v3, 0x4

    :goto_18
    const/4 v4, 0x0

    .line 66
    :try_start_2
    invoke-virtual {v11, v4, v4, v4, v6}, Ln3/o0;->G(ZZZZ)V

    goto :goto_19

    :cond_1c
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x1

    :goto_19
    if-nez v17, :cond_1d

    .line 67
    iget-object v1, v11, Ln3/o0;->z:Ln3/e1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-wide v3, v11, Ln3/o0;->S:J

    .line 68
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->k()J

    move-result-wide v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v2, p1

    const/4 v15, 0x0

    const/16 v21, 0x4

    move/from16 v16, v6

    move-wide/from16 v5, v19

    .line 69
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Ln3/e1;->r(Ln3/b2;JJ)Z

    move-result v0

    if-nez v0, :cond_20

    .line 70
    invoke-virtual {v11, v15}, Ln3/o0;->O(Z)V

    goto :goto_1c

    :catchall_1
    move-exception v0

    move/from16 v16, v6

    const/4 v15, 0x0

    const/16 v21, 0x4

    goto :goto_1a

    :catchall_2
    move-exception v0

    move/from16 v21, v3

    move v15, v4

    move/from16 v16, v6

    :goto_1a
    const/4 v6, 0x0

    goto/16 :goto_1f

    :cond_1d
    move/from16 v21, v3

    move v15, v4

    move/from16 v16, v6

    .line 71
    invoke-virtual/range {p1 .. p1}, Ln3/b2;->s()Z

    move-result v1

    if-nez v1, :cond_20

    .line 72
    iget-object v1, v11, Ln3/o0;->z:Ln3/e1;

    .line 73
    iget-object v1, v1, Ln3/e1;->h:Ln3/b1;

    :goto_1b
    if-eqz v1, :cond_1f

    .line 74
    iget-object v2, v1, Ln3/b1;->f:Ln3/c1;

    iget-object v2, v2, Ln3/c1;->a:Lp4/x$b;

    invoke-virtual {v2, v8}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 75
    iget-object v2, v11, Ln3/o0;->z:Ln3/e1;

    iget-object v3, v1, Ln3/b1;->f:Ln3/c1;

    invoke-virtual {v2, v12, v3}, Ln3/e1;->h(Ln3/b2;Ln3/c1;)Ln3/c1;

    move-result-object v2

    iput-object v2, v1, Ln3/b1;->f:Ln3/c1;

    .line 76
    invoke-virtual {v1}, Ln3/b1;->j()V

    .line 77
    :cond_1e
    iget-object v1, v1, Ln3/b1;->l:Ln3/b1;

    goto :goto_1b

    .line 78
    :cond_1f
    invoke-virtual {v11, v8, v13, v14, v0}, Ln3/o0;->Q(Lp4/x$b;JZ)J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide v13, v0

    .line 79
    :cond_20
    :goto_1c
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v4, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v5, v0, Ln3/l1;->b:Lp4/x$b;

    .line 80
    iget-boolean v0, v7, Ln3/o0$f;->f:Z

    if-eqz v0, :cond_21

    move-wide v6, v13

    goto :goto_1d

    :cond_21
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    .line 81
    invoke-virtual/range {v1 .. v7}, Ln3/o0;->m0(Ln3/b2;Lp4/x$b;Ln3/b2;Lp4/x$b;J)V

    if-nez v17, :cond_22

    .line 82
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-wide v0, v0, Ln3/l1;->c:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_25

    .line 83
    :cond_22
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->b:Lp4/x$b;

    iget-object v1, v1, Lp4/w;->a:Ljava/lang/Object;

    .line 84
    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    if-eqz v17, :cond_23

    if-eqz p2, :cond_23

    .line 85
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v11, Ln3/o0;->s:Ln3/b2$b;

    .line 86
    invoke-virtual {v0, v1, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v0

    iget-boolean v0, v0, Ln3/b2$b;->m:Z

    if-nez v0, :cond_23

    goto :goto_1e

    :cond_23
    move/from16 v16, v15

    .line 87
    :goto_1e
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-wide v5, v0, Ln3/l1;->d:J

    .line 88
    invoke-virtual {v12, v1}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    move/from16 v18, v21

    :cond_24
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v16

    move/from16 v10, v18

    .line 89
    invoke-virtual/range {v1 .. v10}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object v0

    iput-object v0, v11, Ln3/o0;->E:Ln3/l1;

    .line 90
    :cond_25
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->H()V

    .line 91
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v11, v12, v0}, Ln3/o0;->K(Ln3/b2;Ln3/b2;)V

    .line 92
    iget-object v0, v11, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {v0, v12}, Ln3/l1;->g(Ln3/b2;)Ln3/l1;

    move-result-object v0

    iput-object v0, v11, Ln3/o0;->E:Ln3/l1;

    .line 93
    invoke-virtual/range {p1 .. p1}, Ln3/b2;->s()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v6, 0x0

    .line 94
    iput-object v6, v11, Ln3/o0;->R:Ln3/o0$g;

    .line 95
    :cond_26
    invoke-virtual {v11, v15}, Ln3/o0;->p(Z)V

    return-void

    :catchall_3
    move-exception v0

    goto/16 :goto_1a

    :catchall_4
    move-exception v0

    move-object v6, v5

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v21, 0x4

    .line 96
    :goto_1f
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v4, v1, Ln3/l1;->a:Ln3/b2;

    iget-object v5, v1, Ln3/l1;->b:Lp4/x$b;

    .line 97
    iget-boolean v1, v7, Ln3/o0$f;->f:Z

    if-eqz v1, :cond_27

    move-wide/from16 v22, v13

    goto :goto_20

    :cond_27
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    :goto_20
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v22

    .line 98
    invoke-virtual/range {v1 .. v7}, Ln3/o0;->m0(Ln3/b2;Lp4/x$b;Ln3/b2;Lp4/x$b;J)V

    if-nez v17, :cond_28

    .line 99
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-wide v1, v1, Ln3/l1;->c:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_2b

    .line 100
    :cond_28
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v2, v1, Ln3/l1;->b:Lp4/x$b;

    iget-object v2, v2, Lp4/w;->a:Ljava/lang/Object;

    .line 101
    iget-object v1, v1, Ln3/l1;->a:Ln3/b2;

    if-eqz v17, :cond_29

    if-eqz p2, :cond_29

    .line 102
    invoke-virtual {v1}, Ln3/b2;->s()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, v11, Ln3/o0;->s:Ln3/b2$b;

    .line 103
    invoke-virtual {v1, v2, v3}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v1

    iget-boolean v1, v1, Ln3/b2$b;->m:Z

    if-nez v1, :cond_29

    goto :goto_21

    :cond_29
    const/16 v16, 0x0

    .line 104
    :goto_21
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-wide v5, v1, Ln3/l1;->d:J

    .line 105
    invoke-virtual {v12, v2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a

    move/from16 v18, v21

    :cond_2a
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v16

    move/from16 v10, v18

    .line 106
    invoke-virtual/range {v1 .. v10}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object v1

    iput-object v1, v11, Ln3/o0;->E:Ln3/l1;

    .line 107
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->H()V

    .line 108
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v11, v12, v1}, Ln3/o0;->K(Ln3/b2;Ln3/b2;)V

    .line 109
    iget-object v1, v11, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {v1, v12}, Ln3/l1;->g(Ln3/b2;)Ln3/l1;

    move-result-object v1

    iput-object v1, v11, Ln3/o0;->E:Ln3/l1;

    .line 110
    invoke-virtual/range {p1 .. p1}, Ln3/b2;->s()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 111
    iput-object v15, v11, Ln3/o0;->R:Ln3/o0$g;

    :cond_2c
    const/4 v1, 0x0

    .line 112
    invoke-virtual {v11, v1}, Ln3/o0;->p(Z)V

    .line 113
    throw v0
.end method

.method public final r(Lp4/v;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->j:Ln3/b1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, v0, Ln3/b1;->a:Lp4/v;

    if-ne v2, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Ln3/o0;->v:Ln3/l;

    .line 4
    invoke-virtual {p1}, Ln3/l;->d()Ln3/m1;

    move-result-object p1

    iget p1, p1, Ln3/m1;->h:F

    iget-object v2, p0, Ln3/o0;->E:Ln3/l1;

    iget-object v2, v2, Ln3/l1;->a:Ln3/b2;

    .line 5
    iput-boolean v1, v0, Ln3/b1;->d:Z

    .line 6
    iget-object v1, v0, Ln3/b1;->a:Lp4/v;

    invoke-interface {v1}, Lp4/v;->o()Lp4/u0;

    move-result-object v1

    iput-object v1, v0, Ln3/b1;->m:Lp4/u0;

    .line 7
    invoke-virtual {v0, p1, v2}, Ln3/b1;->i(FLn3/b2;)Lj5/t;

    move-result-object v2

    .line 8
    iget-object p1, v0, Ln3/b1;->f:Ln3/c1;

    iget-wide v3, p1, Ln3/c1;->b:J

    .line 9
    iget-wide v5, p1, Ln3/c1;->e:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, v7

    if-eqz p1, :cond_2

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 10
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_2
    const/4 v5, 0x0

    .line 11
    iget-object p1, v0, Ln3/b1;->i:[Ln3/t1;

    array-length p1, p1

    new-array v6, p1, [Z

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ln3/b1;->a(Lj5/t;JZ[Z)J

    move-result-wide v1

    .line 12
    iget-wide v3, v0, Ln3/b1;->o:J

    iget-object p1, v0, Ln3/b1;->f:Ln3/c1;

    iget-wide v5, p1, Ln3/c1;->b:J

    sub-long/2addr v5, v1

    add-long/2addr v5, v3

    iput-wide v5, v0, Ln3/b1;->o:J

    .line 13
    invoke-virtual {p1, v1, v2}, Ln3/c1;->b(J)Ln3/c1;

    move-result-object p1

    iput-object p1, v0, Ln3/b1;->f:Ln3/c1;

    .line 14
    iget-object p1, v0, Ln3/b1;->n:Lj5/t;

    .line 15
    iget-object v1, p0, Ln3/o0;->m:Ln3/x0;

    iget-object v2, p0, Ln3/o0;->h:[Ln3/s1;

    iget-object p1, p1, Lj5/t;->c:[Lj5/l;

    invoke-interface {v1, v2, p1}, Ln3/x0;->h([Ln3/s1;[Lj5/l;)V

    .line 16
    iget-object p1, p0, Ln3/o0;->z:Ln3/e1;

    .line 17
    iget-object p1, p1, Ln3/e1;->h:Ln3/b1;

    if-ne v0, p1, :cond_3

    .line 18
    iget-object p1, v0, Ln3/b1;->f:Ln3/c1;

    iget-wide v1, p1, Ln3/c1;->b:J

    invoke-virtual {p0, v1, v2}, Ln3/o0;->I(J)V

    .line 19
    invoke-virtual {p0}, Ln3/o0;->e()V

    .line 20
    iget-object p1, p0, Ln3/o0;->E:Ln3/l1;

    iget-object v2, p1, Ln3/l1;->b:Lp4/x$b;

    iget-object v0, v0, Ln3/b1;->f:Ln3/c1;

    iget-wide v7, v0, Ln3/c1;->b:J

    iget-wide v5, p1, Ln3/l1;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    .line 21
    invoke-virtual/range {v1 .. v10}, Ln3/o0;->t(Lp4/x$b;JJJZI)Ln3/l1;

    move-result-object p1

    iput-object p1, p0, Ln3/o0;->E:Ln3/l1;

    .line 22
    :cond_3
    invoke-virtual {p0}, Ln3/o0;->y()V

    return-void
.end method

.method public final s(Ln3/m1;FZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    iget-object p3, p0, Ln3/o0;->F:Ln3/o0$d;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Ln3/o0$d;->a(I)V

    .line 2
    :cond_0
    iget-object p3, p0, Ln3/o0;->E:Ln3/l1;

    invoke-virtual {p3, p1}, Ln3/l1;->e(Ln3/m1;)Ln3/l1;

    move-result-object p3

    iput-object p3, p0, Ln3/o0;->E:Ln3/l1;

    .line 3
    :cond_1
    iget p3, p1, Ln3/m1;->h:F

    .line 4
    iget-object p4, p0, Ln3/o0;->z:Ln3/e1;

    .line 5
    iget-object p4, p4, Ln3/e1;->h:Ln3/b1;

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    .line 6
    iget-object v1, p4, Ln3/b1;->n:Lj5/t;

    .line 7
    iget-object v1, v1, Lj5/t;->c:[Lj5/l;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v3, p3}, Lj5/l;->p(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object p4, p4, Ln3/b1;->l:Ln3/b1;

    goto :goto_0

    .line 10
    :cond_4
    iget-object p3, p0, Ln3/o0;->h:[Ln3/s1;

    array-length p4, p3

    :goto_2
    if-ge v0, p4, :cond_6

    aget-object v1, p3, v0

    if-eqz v1, :cond_5

    .line 11
    iget v2, p1, Ln3/m1;->h:F

    invoke-interface {v1, p2, v2}, Ln3/s1;->x(FF)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final t(Lp4/x$b;JJJZI)Ln3/l1;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    move/from16 v1, p9

    .line 1
    iget-boolean v3, v0, Ln3/o0;->U:Z

    const/4 v7, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Ln3/o0;->E:Ln3/l1;

    iget-wide v8, v3, Ln3/l1;->r:J

    cmp-long v3, p2, v8

    if-nez v3, :cond_1

    iget-object v3, v0, Ln3/o0;->E:Ln3/l1;

    iget-object v3, v3, Ln3/l1;->b:Lp4/x$b;

    .line 2
    invoke-virtual {v2, v3}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Ln3/o0;->U:Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->H()V

    .line 4
    iget-object v3, v0, Ln3/o0;->E:Ln3/l1;

    iget-object v8, v3, Ln3/l1;->h:Lp4/u0;

    .line 5
    iget-object v9, v3, Ln3/l1;->i:Lj5/t;

    .line 6
    iget-object v10, v3, Ln3/l1;->j:Ljava/util/List;

    .line 7
    iget-object v11, v0, Ln3/o0;->A:Ln3/h1;

    .line 8
    iget-boolean v11, v11, Ln3/h1;->k:Z

    if-eqz v11, :cond_9

    .line 9
    iget-object v3, v0, Ln3/o0;->z:Ln3/e1;

    .line 10
    iget-object v3, v3, Ln3/e1;->h:Ln3/b1;

    if-nez v3, :cond_2

    .line 11
    sget-object v8, Lp4/u0;->k:Lp4/u0;

    goto :goto_2

    .line 12
    :cond_2
    iget-object v8, v3, Ln3/b1;->m:Lp4/u0;

    :goto_2
    if-nez v3, :cond_3

    .line 13
    iget-object v9, v0, Ln3/o0;->l:Lj5/t;

    goto :goto_3

    .line 14
    :cond_3
    iget-object v9, v3, Ln3/b1;->n:Lj5/t;

    .line 15
    :goto_3
    iget-object v10, v9, Lj5/t;->c:[Lj5/l;

    .line 16
    new-instance v11, Lu6/v$a;

    invoke-direct {v11}, Lu6/v$a;-><init>()V

    .line 17
    array-length v12, v10

    move v13, v7

    move v14, v13

    :goto_4
    if-ge v13, v12, :cond_6

    aget-object v15, v10, v13

    if-eqz v15, :cond_5

    .line 18
    invoke-interface {v15, v7}, Lj5/o;->e(I)Ln3/s0;

    move-result-object v15

    .line 19
    iget-object v15, v15, Ln3/s0;->q:Lf4/a;

    if-nez v15, :cond_4

    .line 20
    new-instance v15, Lf4/a;

    new-array v4, v7, [Lf4/a$b;

    invoke-direct {v15, v4}, Lf4/a;-><init>([Lf4/a$b;)V

    invoke-virtual {v11, v15}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    goto :goto_5

    .line 21
    :cond_4
    invoke-virtual {v11, v15}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    const/4 v14, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    if-eqz v14, :cond_7

    .line 22
    invoke-virtual {v11}, Lu6/v$a;->e()Lu6/v;

    move-result-object v4

    goto :goto_6

    :cond_7
    sget-object v4, Lu6/v;->i:Lu6/v$b;

    .line 23
    sget-object v4, Lu6/p0;->l:Lu6/p0;

    :goto_6
    if-eqz v3, :cond_8

    .line 24
    iget-object v10, v3, Ln3/b1;->f:Ln3/c1;

    iget-wide v11, v10, Ln3/c1;->c:J

    cmp-long v11, v11, v5

    if-eqz v11, :cond_8

    .line 25
    invoke-virtual {v10, v5, v6}, Ln3/c1;->a(J)Ln3/c1;

    move-result-object v10

    iput-object v10, v3, Ln3/b1;->f:Ln3/c1;

    :cond_8
    move-object v13, v4

    move-object v11, v8

    move-object v12, v9

    goto :goto_7

    .line 26
    :cond_9
    iget-object v3, v3, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v2, v3}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 27
    sget-object v3, Lp4/u0;->k:Lp4/u0;

    .line 28
    iget-object v4, v0, Ln3/o0;->l:Lj5/t;

    .line 29
    sget-object v8, Lu6/p0;->l:Lu6/p0;

    move-object v11, v3

    move-object v12, v4

    move-object v13, v8

    goto :goto_7

    :cond_a
    move-object v11, v8

    move-object v12, v9

    move-object v13, v10

    :goto_7
    if-eqz p8, :cond_d

    .line 30
    iget-object v3, v0, Ln3/o0;->F:Ln3/o0$d;

    .line 31
    iget-boolean v4, v3, Ln3/o0$d;->d:Z

    if-eqz v4, :cond_c

    iget v4, v3, Ln3/o0$d;->e:I

    const/4 v8, 0x5

    if-eq v4, v8, :cond_c

    if-ne v1, v8, :cond_b

    const/4 v4, 0x1

    goto :goto_8

    :cond_b
    move v4, v7

    .line 32
    :goto_8
    invoke-static {v4}, Lm5/a;->a(Z)V

    goto :goto_9

    :cond_c
    const/4 v4, 0x1

    .line 33
    iput-boolean v4, v3, Ln3/o0$d;->a:Z

    .line 34
    iput-boolean v4, v3, Ln3/o0$d;->d:Z

    .line 35
    iput v1, v3, Ln3/o0$d;->e:I

    .line 36
    :cond_d
    :goto_9
    iget-object v1, v0, Ln3/o0;->E:Ln3/l1;

    .line 37
    invoke-virtual/range {p0 .. p0}, Ln3/o0;->m()J

    move-result-wide v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 38
    invoke-virtual/range {v1 .. v13}, Ln3/l1;->b(Lp4/x$b;JJJJLp4/u0;Lj5/t;Ljava/util/List;)Ln3/l1;

    move-result-object v1

    return-object v1
.end method

.method public final u()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->j:Ln3/b1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v2, v0, Ln3/b1;->d:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ln3/b1;->a:Lp4/v;

    invoke-interface {v0}, Lp4/v;->c()J

    move-result-wide v2

    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final w()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 2
    iget-object v0, v0, Ln3/e1;->h:Ln3/b1;

    .line 3
    iget-object v1, v0, Ln3/b1;->f:Ln3/c1;

    iget-wide v1, v1, Ln3/c1;->e:J

    .line 4
    iget-boolean v0, v0, Ln3/b1;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/o0;->E:Ln3/l1;

    iget-wide v3, v0, Ln3/l1;->r:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ln3/o0;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ln3/o0;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 3
    iget-object v0, v0, Ln3/e1;->j:Ln3/b1;

    .line 4
    iget-boolean v1, v0, Ln3/b1;->d:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    iget-object v1, v0, Ln3/b1;->a:Lp4/v;

    invoke-interface {v1}, Lp4/v;->c()J

    move-result-wide v4

    .line 5
    :goto_0
    iget-object v1, p0, Ln3/o0;->z:Ln3/e1;

    .line 6
    iget-object v1, v1, Ln3/e1;->j:Ln3/b1;

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-wide v6, p0, Ln3/o0;->S:J

    .line 8
    iget-wide v8, v1, Ln3/b1;->o:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 10
    :goto_1
    iget-object v1, p0, Ln3/o0;->z:Ln3/e1;

    .line 11
    iget-object v1, v1, Ln3/e1;->h:Ln3/b1;

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, v0, Ln3/b1;->f:Ln3/c1;

    iget-wide v0, v0, Ln3/c1;->b:J

    .line 13
    :goto_2
    iget-object v0, p0, Ln3/o0;->m:Ln3/x0;

    iget-object v1, p0, Ln3/o0;->v:Ln3/l;

    .line 14
    invoke-virtual {v1}, Ln3/l;->d()Ln3/m1;

    move-result-object v1

    iget v1, v1, Ln3/m1;->h:F

    .line 15
    invoke-interface {v0, v2, v3, v1}, Ln3/x0;->b(JF)Z

    move-result v0

    .line 16
    :goto_3
    iput-boolean v0, p0, Ln3/o0;->K:Z

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Ln3/o0;->z:Ln3/e1;

    .line 18
    iget-object v0, v0, Ln3/e1;->j:Ln3/b1;

    .line 19
    iget-wide v1, p0, Ln3/o0;->S:J

    .line 20
    invoke-virtual {v0}, Ln3/b1;->g()Z

    move-result v3

    invoke-static {v3}, Lm5/a;->e(Z)V

    .line 21
    iget-wide v3, v0, Ln3/b1;->o:J

    sub-long/2addr v1, v3

    .line 22
    iget-object v0, v0, Ln3/b1;->a:Lp4/v;

    invoke-interface {v0, v1, v2}, Lp4/v;->f(J)Z

    .line 23
    :cond_4
    invoke-virtual {p0}, Ln3/o0;->k0()V

    return-void
.end method

.method public final z()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    .line 2
    iget-boolean v2, v0, Ln3/o0$d;->a:Z

    iget-object v3, v0, Ln3/o0$d;->b:Ln3/l1;

    const/4 v4, 0x1

    if-eq v3, v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, v0, Ln3/o0$d;->a:Z

    .line 3
    iput-object v1, v0, Ln3/o0$d;->b:Ln3/l1;

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, p0, Ln3/o0;->y:Ln3/o0$e;

    check-cast v1, Ln3/a0;

    .line 5
    iget-object v1, v1, Ln3/a0;->b:Ljava/lang/Object;

    check-cast v1, Ln3/k0;

    .line 6
    iget-object v2, v1, Ln3/k0;->i:Lm5/l;

    new-instance v3, Ly0/v;

    invoke-direct {v3, v1, v0, v4}, Ly0/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Lm5/l;->i(Ljava/lang/Runnable;)Z

    .line 7
    new-instance v0, Ln3/o0$d;

    iget-object v1, p0, Ln3/o0;->E:Ln3/l1;

    invoke-direct {v0, v1}, Ln3/o0$d;-><init>(Ln3/l1;)V

    iput-object v0, p0, Ln3/o0;->F:Ln3/o0$d;

    :cond_1
    return-void
.end method
