.class public final Lr4/h;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lp4/m0;
.implements Lp4/n0;
.implements Ll5/d0$a;
.implements Ll5/d0$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr4/h$a;,
        Lr4/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lr4/i;",
        ">",
        "Ljava/lang/Object;",
        "Lp4/m0;",
        "Lp4/n0;",
        "Ll5/d0$a<",
        "Lr4/e;",
        ">;",
        "Ll5/d0$e;"
    }
.end annotation


# instance fields
.field public A:J

.field public B:I

.field public C:Lr4/a;

.field public D:Z

.field public final h:I

.field public final i:[I

.field public final j:[Ln3/s0;

.field public final k:[Z

.field public final l:Lr4/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final m:Lp4/n0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp4/n0$a<",
            "Lr4/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final n:Lp4/e0$a;

.field public final o:Ll5/c0;

.field public final p:Ll5/d0;

.field public final q:Lr4/g;

.field public final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/a;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/a;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lp4/l0;

.field public final u:[Lp4/l0;

.field public final v:Lr4/c;

.field public w:Lr4/e;

.field public x:Ln3/s0;

.field public y:Lr4/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public z:J


# direct methods
.method public constructor <init>(I[I[Ln3/s0;Lr4/i;Lp4/n0$a;Ll5/b;JLr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Ln3/s0;",
            "TT;",
            "Lp4/n0$a<",
            "Lr4/h<",
            "TT;>;>;",
            "Ll5/b;",
            "J",
            "Lr3/l;",
            "Lr3/k$a;",
            "Ll5/c0;",
            "Lp4/e0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lr4/h;->h:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [I

    .line 3
    :cond_0
    iput-object p2, p0, Lr4/h;->i:[I

    if-nez p3, :cond_1

    new-array p3, v0, [Ln3/s0;

    .line 4
    :cond_1
    iput-object p3, p0, Lr4/h;->j:[Ln3/s0;

    .line 5
    iput-object p4, p0, Lr4/h;->l:Lr4/i;

    .line 6
    iput-object p5, p0, Lr4/h;->m:Lp4/n0$a;

    .line 7
    iput-object p12, p0, Lr4/h;->n:Lp4/e0$a;

    .line 8
    iput-object p11, p0, Lr4/h;->o:Ll5/c0;

    .line 9
    new-instance p3, Ll5/d0;

    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lr4/h;->p:Ll5/d0;

    .line 10
    new-instance p3, Lr4/g;

    invoke-direct {p3}, Lr4/g;-><init>()V

    iput-object p3, p0, Lr4/h;->q:Lr4/g;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lr4/h;->r:Ljava/util/ArrayList;

    .line 12
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lr4/h;->s:Ljava/util/List;

    .line 13
    array-length p2, p2

    .line 14
    new-array p3, p2, [Lp4/l0;

    iput-object p3, p0, Lr4/h;->u:[Lp4/l0;

    .line 15
    new-array p3, p2, [Z

    iput-object p3, p0, Lr4/h;->k:[Z

    add-int/lit8 p3, p2, 0x1

    .line 16
    new-array p4, p3, [I

    .line 17
    new-array p3, p3, [Lp4/l0;

    .line 18
    new-instance p5, Lp4/l0;

    .line 19
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-direct {p5, p6, p9, p10}, Lp4/l0;-><init>(Ll5/b;Lr3/l;Lr3/k$a;)V

    .line 22
    iput-object p5, p0, Lr4/h;->t:Lp4/l0;

    .line 23
    aput p1, p4, v0

    .line 24
    aput-object p5, p3, v0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 25
    invoke-static {p6}, Lp4/l0;->g(Ll5/b;)Lp4/l0;

    move-result-object p1

    .line 26
    iget-object p5, p0, Lr4/h;->u:[Lp4/l0;

    aput-object p1, p5, v0

    add-int/lit8 p5, v0, 0x1

    .line 27
    aput-object p1, p3, p5

    .line 28
    iget-object p1, p0, Lr4/h;->i:[I

    aget p1, p1, v0

    aput p1, p4, p5

    move v0, p5

    goto :goto_0

    .line 29
    :cond_2
    new-instance p1, Lr4/c;

    invoke-direct {p1, p4, p3}, Lr4/c;-><init>([I[Lp4/l0;)V

    iput-object p1, p0, Lr4/h;->v:Lr4/c;

    .line 30
    iput-wide p7, p0, Lr4/h;->z:J

    .line 31
    iput-wide p7, p0, Lr4/h;->A:J

    return-void
.end method


# virtual methods
.method public final A(Lr4/h$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lr4/h;->y:Lr4/h$b;

    .line 2
    iget-object p1, p0, Lr4/h;->t:Lp4/l0;

    invoke-virtual {p1}, Lp4/l0;->z()V

    .line 3
    iget-object p1, p0, Lr4/h;->u:[Lp4/l0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v2}, Lp4/l0;->z()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {p1, p0}, Ll5/d0;->f(Ll5/d0$e;)V

    return-void
.end method

.method public final B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lp4/l0;->C(Z)V

    .line 3
    iget-object v0, p0, Lr4/h;->u:[Lp4/l0;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4, v1}, Lp4/l0;->C(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final C(J)V
    .locals 9

    .line 1
    iput-wide p1, p0, Lr4/h;->A:J

    .line 2
    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lr4/h;->z:J

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    iget-object v2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 5
    iget-object v2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/a;

    .line 6
    iget-wide v4, v2, Lr4/e;->g:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 7
    iget-wide v5, v2, Lr4/a;->k:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object v2, v3

    :goto_2
    const/4 v1, 0x1

    if-eqz v2, :cond_6

    .line 8
    iget-object v4, p0, Lr4/h;->t:Lp4/l0;

    invoke-virtual {v2, v0}, Lr4/a;->e(I)I

    move-result v2

    .line 9
    monitor-enter v4

    .line 10
    :try_start_0
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iput v0, v4, Lp4/l0;->s:I

    .line 12
    iget-object v5, v4, Lp4/l0;->a:Lp4/k0;

    .line 13
    iget-object v6, v5, Lp4/k0;->d:Lp4/k0$a;

    iput-object v6, v5, Lp4/k0;->e:Lp4/k0$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    monitor-exit v4

    .line 15
    iget v5, v4, Lp4/l0;->q:I

    if-lt v2, v5, :cond_5

    iget v6, v4, Lp4/l0;->p:I

    add-int/2addr v6, v5

    if-le v2, v6, :cond_4

    goto :goto_3

    :cond_4
    const-wide/high16 v6, -0x8000000000000000L

    .line 16
    iput-wide v6, v4, Lp4/l0;->t:J

    sub-int/2addr v2, v5

    .line 17
    iput v2, v4, Lp4/l0;->s:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    monitor-exit v4

    move v2, v1

    goto :goto_5

    .line 19
    :cond_5
    :goto_3
    monitor-exit v4

    move v2, v0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v4

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v4

    throw p1

    .line 21
    :cond_6
    iget-object v2, p0, Lr4/h;->t:Lp4/l0;

    .line 22
    invoke-virtual {p0}, Lr4/h;->c()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_7

    move v4, v1

    goto :goto_4

    :cond_7
    move v4, v0

    .line 23
    :goto_4
    invoke-virtual {v2, p1, p2, v4}, Lp4/l0;->D(JZ)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_8

    .line 24
    iget-object v2, p0, Lr4/h;->t:Lp4/l0;

    .line 25
    iget v3, v2, Lp4/l0;->q:I

    iget v2, v2, Lp4/l0;->s:I

    add-int/2addr v3, v2

    .line 26
    invoke-virtual {p0, v3, v0}, Lr4/h;->z(II)I

    move-result v2

    iput v2, p0, Lr4/h;->B:I

    .line 27
    iget-object v2, p0, Lr4/h;->u:[Lp4/l0;

    array-length v3, v2

    :goto_6
    if-ge v0, v3, :cond_b

    aget-object v4, v2, v0

    .line 28
    invoke-virtual {v4, p1, p2, v1}, Lp4/l0;->D(JZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 29
    :cond_8
    iput-wide p1, p0, Lr4/h;->z:J

    .line 30
    iput-boolean v0, p0, Lr4/h;->D:Z

    .line 31
    iget-object p1, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 32
    iput v0, p0, Lr4/h;->B:I

    .line 33
    iget-object p1, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {p1}, Ll5/d0;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 34
    iget-object p1, p0, Lr4/h;->t:Lp4/l0;

    invoke-virtual {p1}, Lp4/l0;->j()V

    .line 35
    iget-object p1, p0, Lr4/h;->u:[Lp4/l0;

    array-length p2, p1

    :goto_7
    if-ge v0, p2, :cond_9

    aget-object v1, p1, v0

    .line 36
    invoke-virtual {v1}, Lp4/l0;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 37
    :cond_9
    iget-object p1, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {p1}, Ll5/d0;->a()V

    goto :goto_8

    .line 38
    :cond_a
    iget-object p1, p0, Lr4/h;->p:Ll5/d0;

    .line 39
    iput-object v3, p1, Ll5/d0;->c:Ljava/io/IOException;

    .line 40
    invoke-virtual {p0}, Lr4/h;->B()V

    :cond_b
    :goto_8
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->b()V

    .line 2
    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    invoke-virtual {v0}, Lp4/l0;->w()V

    .line 3
    iget-object v0, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lr4/h;->l:Lr4/i;

    invoke-interface {v0}, Lr4/i;->b()V

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lr4/h;->z:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lr4/h;->D:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lr4/h;->v()Lr4/a;

    move-result-object v0

    iget-wide v0, v0, Lr4/e;->h:J

    :goto_0
    return-wide v0
.end method

.method public final e()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lr4/h;->D:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lr4/h;->z:J

    return-wide v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lr4/h;->A:J

    .line 5
    invoke-virtual {p0}, Lr4/h;->v()Lr4/a;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lr4/m;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/a;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    iget-wide v2, v2, Lr4/e;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 9
    :cond_4
    iget-object v2, p0, Lr4/h;->t:Lp4/l0;

    invoke-virtual {v2}, Lp4/l0;->o()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)Z
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lr4/h;->D:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    iget-object v1, v0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {v1}, Ll5/d0;->d()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {v1}, Ll5/d0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lr4/h;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 4
    iget-wide v4, v0, Lr4/h;->z:J

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lr4/h;->s:Ljava/util/List;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lr4/h;->v()Lr4/a;

    move-result-object v4

    iget-wide v4, v4, Lr4/e;->h:J

    :goto_0
    move-object v11, v3

    move-wide v9, v4

    .line 7
    iget-object v6, v0, Lr4/h;->l:Lr4/i;

    iget-object v12, v0, Lr4/h;->q:Lr4/g;

    move-wide/from16 v7, p1

    invoke-interface/range {v6 .. v12}, Lr4/i;->i(JJLjava/util/List;Lr4/g;)V

    .line 8
    iget-object v3, v0, Lr4/h;->q:Lr4/g;

    iget-boolean v4, v3, Lr4/g;->b:Z

    .line 9
    iget-object v5, v3, Lr4/g;->a:Lr4/e;

    const/4 v6, 0x0

    .line 10
    iput-object v6, v3, Lr4/g;->a:Lr4/e;

    .line 11
    iput-boolean v2, v3, Lr4/g;->b:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    .line 12
    iput-wide v6, v0, Lr4/h;->z:J

    .line 13
    iput-boolean v3, v0, Lr4/h;->D:Z

    return v3

    :cond_2
    if-nez v5, :cond_3

    return v2

    .line 14
    :cond_3
    iput-object v5, v0, Lr4/h;->w:Lr4/e;

    .line 15
    instance-of v4, v5, Lr4/a;

    if-eqz v4, :cond_7

    .line 16
    move-object v4, v5

    check-cast v4, Lr4/a;

    if-eqz v1, :cond_5

    .line 17
    iget-wide v8, v4, Lr4/e;->g:J

    iget-wide v10, v0, Lr4/h;->z:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_4

    .line 18
    iget-object v1, v0, Lr4/h;->t:Lp4/l0;

    .line 19
    iput-wide v10, v1, Lp4/l0;->t:J

    .line 20
    iget-object v1, v0, Lr4/h;->u:[Lp4/l0;

    array-length v8, v1

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v1, v9

    .line 21
    iget-wide v11, v0, Lr4/h;->z:J

    .line 22
    iput-wide v11, v10, Lp4/l0;->t:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 23
    :cond_4
    iput-wide v6, v0, Lr4/h;->z:J

    .line 24
    :cond_5
    iget-object v1, v0, Lr4/h;->v:Lr4/c;

    .line 25
    iput-object v1, v4, Lr4/a;->m:Lr4/c;

    .line 26
    iget-object v6, v1, Lr4/c;->b:[Lp4/l0;

    array-length v6, v6

    new-array v6, v6, [I

    .line 27
    :goto_2
    iget-object v7, v1, Lr4/c;->b:[Lp4/l0;

    array-length v8, v7

    if-ge v2, v8, :cond_6

    .line 28
    aget-object v7, v7, v2

    .line 29
    iget v8, v7, Lp4/l0;->q:I

    iget v7, v7, Lp4/l0;->p:I

    add-int/2addr v8, v7

    .line 30
    aput v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 31
    :cond_6
    iput-object v6, v4, Lr4/a;->n:[I

    .line 32
    iget-object v1, v0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_7
    instance-of v1, v5, Lr4/l;

    if-eqz v1, :cond_8

    .line 34
    move-object v1, v5

    check-cast v1, Lr4/l;

    iget-object v2, v0, Lr4/h;->v:Lr4/c;

    .line 35
    iput-object v2, v1, Lr4/l;->k:Lr4/f$b;

    .line 36
    :cond_8
    :goto_3
    iget-object v1, v0, Lr4/h;->p:Ll5/d0;

    iget-object v2, v0, Lr4/h;->o:Ll5/c0;

    iget v4, v5, Lr4/e;->c:I

    .line 37
    invoke-interface {v2, v4}, Ll5/c0;->c(I)I

    move-result v2

    .line 38
    invoke-virtual {v1, v5, v0, v2}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    move-result-wide v10

    .line 39
    iget-object v12, v0, Lr4/h;->n:Lp4/e0$a;

    new-instance v13, Lp4/r;

    iget-wide v7, v5, Lr4/e;->a:J

    iget-object v9, v5, Lr4/e;->b:Ll5/m;

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lp4/r;-><init>(JLl5/m;J)V

    iget v14, v5, Lr4/e;->c:I

    iget v15, v0, Lr4/h;->h:I

    iget-object v1, v5, Lr4/e;->d:Ln3/s0;

    iget v2, v5, Lr4/e;->e:I

    iget-object v4, v5, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v6, v5, Lr4/e;->g:J

    iget-wide v8, v5, Lr4/e;->h:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-virtual/range {v12 .. v22}, Lp4/e0$a;->n(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    return v3

    :cond_9
    :goto_4
    return v2
.end method

.method public final g(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->c()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lr4/h;->w:Lr4/e;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v2, v0, Lr4/a;

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p0, Lr4/h;->r:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lr4/h;->w(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lr4/h;->l:Lr4/i;

    iget-object v3, p0, Lr4/h;->s:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0, v3}, Lr4/i;->g(JLr4/e;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {p1}, Ll5/d0;->a()V

    if-eqz v2, :cond_2

    .line 10
    check-cast v0, Lr4/a;

    iput-object v0, p0, Lr4/h;->C:Lr4/a;

    :cond_2
    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lr4/h;->l:Lr4/i;

    iget-object v2, p0, Lr4/h;->s:Ljava/util/List;

    invoke-interface {v0, p1, p2, v2}, Lr4/i;->h(JLjava/util/List;)I

    move-result p1

    .line 12
    iget-object p2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_8

    .line 13
    iget-object p2, p0, Lr4/h;->p:Ll5/d0;

    invoke-virtual {p2}, Ll5/d0;->d()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lm5/a;->e(Z)V

    .line 14
    iget-object p2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_5

    .line 15
    invoke-virtual {p0, p1}, Lr4/h;->w(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move p1, v1

    :goto_1
    if-ne p1, v1, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p0}, Lr4/h;->v()Lr4/a;

    move-result-object p2

    iget-wide v4, p2, Lr4/e;->h:J

    .line 17
    invoke-virtual {p0, p1}, Lr4/h;->r(I)Lr4/a;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 19
    iget-wide v0, p0, Lr4/h;->A:J

    iput-wide v0, p0, Lr4/h;->z:J

    :cond_7
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lr4/h;->D:Z

    .line 21
    iget-object v0, p0, Lr4/h;->n:Lp4/e0$a;

    iget v1, p0, Lr4/h;->h:I

    iget-wide v2, p1, Lr4/e;->g:J

    invoke-virtual/range {v0 .. v5}, Lp4/e0$a;->p(IJJ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final h(Ll5/d0$d;JJ)V
    .locals 14

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lr4/e;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lr4/h;->w:Lr4/e;

    .line 3
    iget-object v2, v0, Lr4/h;->l:Lr4/i;

    invoke-interface {v2, v1}, Lr4/i;->k(Lr4/e;)V

    .line 4
    new-instance v4, Lp4/r;

    iget-wide v2, v1, Lr4/e;->a:J

    .line 5
    iget-object v2, v1, Lr4/e;->i:Ll5/i0;

    .line 6
    iget-object v3, v2, Ll5/i0;->c:Landroid/net/Uri;

    .line 7
    iget-object v2, v2, Ll5/i0;->d:Ljava/util/Map;

    .line 8
    invoke-direct {v4, v2}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 9
    iget-object v2, v0, Lr4/h;->o:Ll5/c0;

    invoke-interface {v2}, Ll5/c0;->d()V

    .line 10
    iget-object v3, v0, Lr4/h;->n:Lp4/e0$a;

    iget v5, v1, Lr4/e;->c:I

    iget v6, v0, Lr4/h;->h:I

    iget-object v7, v1, Lr4/e;->d:Ln3/s0;

    iget v8, v1, Lr4/e;->e:I

    iget-object v9, v1, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lr4/e;->g:J

    iget-wide v12, v1, Lr4/e;->h:J

    invoke-virtual/range {v3 .. v13}, Lp4/e0$a;->h(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    .line 11
    iget-object v1, v0, Lr4/h;->m:Lp4/n0$a;

    invoke-interface {v1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    invoke-virtual {v0}, Lp4/l0;->B()V

    .line 2
    iget-object v0, p0, Lr4/h;->u:[Lp4/l0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lp4/l0;->B()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lr4/h;->l:Lr4/i;

    invoke-interface {v0}, Lr4/i;->a()V

    .line 5
    iget-object v0, p0, Lr4/h;->y:Lr4/h$b;

    if-eqz v0, :cond_2

    .line 6
    check-cast v0, Lcom/google/android/exoplayer2/source/dash/b;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/b;->u:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/d$c;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    invoke-virtual {v1}, Lp4/l0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public final isReady()Z
    .locals 2

    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    iget-boolean v1, p0, Lr4/h;->D:Z

    invoke-virtual {v0, v1}, Lp4/l0;->u(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ly0/r;Lq3/g;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lr4/h;->C:Lr4/a;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Lr4/a;->e(I)I

    move-result v0

    iget-object v2, p0, Lr4/h;->t:Lp4/l0;

    .line 4
    iget v3, v2, Lp4/l0;->q:I

    iget v2, v2, Lp4/l0;->s:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lr4/h;->y()V

    .line 6
    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    iget-boolean v1, p0, Lr4/h;->D:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lp4/l0;->A(Ly0/r;Lq3/g;IZ)I

    move-result p1

    return p1
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 14

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lr4/e;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lr4/h;->w:Lr4/e;

    .line 3
    iput-object v2, v0, Lr4/h;->C:Lr4/a;

    .line 4
    new-instance v4, Lp4/r;

    iget-wide v2, v1, Lr4/e;->a:J

    .line 5
    iget-object v2, v1, Lr4/e;->i:Ll5/i0;

    .line 6
    iget-object v3, v2, Ll5/i0;->c:Landroid/net/Uri;

    .line 7
    iget-object v2, v2, Ll5/i0;->d:Ljava/util/Map;

    .line 8
    invoke-direct {v4, v2}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 9
    iget-object v2, v0, Lr4/h;->o:Ll5/c0;

    invoke-interface {v2}, Ll5/c0;->d()V

    .line 10
    iget-object v3, v0, Lr4/h;->n:Lp4/e0$a;

    iget v5, v1, Lr4/e;->c:I

    iget v6, v0, Lr4/h;->h:I

    iget-object v7, v1, Lr4/e;->d:Ln3/s0;

    iget v8, v1, Lr4/e;->e:I

    iget-object v9, v1, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lr4/e;->g:J

    iget-wide v12, v1, Lr4/e;->h:J

    invoke-virtual/range {v3 .. v13}, Lp4/e0$a;->e(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 11
    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p0}, Lr4/h;->B()V

    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, v1, Lr4/a;

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, v0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lr4/h;->r(I)Lr4/a;

    .line 15
    iget-object v1, v0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-wide v1, v0, Lr4/h;->A:J

    iput-wide v1, v0, Lr4/h;->z:J

    .line 17
    :cond_1
    :goto_0
    iget-object v1, v0, Lr4/h;->m:Lp4/n0$a;

    invoke-interface {v1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    :cond_2
    return-void
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lr4/e;

    .line 2
    iget-object v2, v1, Lr4/e;->i:Ll5/i0;

    .line 3
    iget-wide v2, v2, Ll5/i0;->b:J

    .line 4
    instance-of v4, v1, Lr4/a;

    .line 5
    iget-object v5, v0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v0, v5}, Lr4/h;->w(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 7
    :goto_1
    new-instance v8, Lp4/r;

    .line 8
    iget-object v7, v1, Lr4/e;->i:Ll5/i0;

    .line 9
    iget-object v9, v7, Ll5/i0;->c:Landroid/net/Uri;

    .line 10
    iget-object v7, v7, Ll5/i0;->d:Ljava/util/Map;

    .line 11
    invoke-direct {v8, v7}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 12
    iget-wide v9, v1, Lr4/e;->g:J

    .line 13
    invoke-static {v9, v10}, Lm5/g0;->X(J)J

    iget-wide v9, v1, Lr4/e;->h:J

    .line 14
    invoke-static {v9, v10}, Lm5/g0;->X(J)J

    .line 15
    new-instance v7, Ll5/c0$c;

    move-object/from16 v14, p6

    move/from16 v9, p7

    invoke-direct {v7, v14, v9}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    .line 16
    iget-object v9, v0, Lr4/h;->l:Lr4/i;

    iget-object v10, v0, Lr4/h;->o:Ll5/c0;

    invoke-interface {v9, v1, v2, v7, v10}, Lr4/i;->j(Lr4/e;ZLl5/c0$c;Ll5/c0;)Z

    move-result v9

    const/4 v15, 0x0

    if-eqz v9, :cond_4

    if-eqz v2, :cond_3

    .line 17
    sget-object v2, Ll5/d0;->e:Ll5/d0$b;

    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v0, v5}, Lr4/h;->r(I)Lr4/a;

    move-result-object v4

    if-ne v4, v1, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v6

    .line 19
    :goto_2
    invoke-static {v4}, Lm5/a;->e(Z)V

    .line 20
    iget-object v4, v0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    iget-wide v4, v0, Lr4/h;->A:J

    iput-wide v4, v0, Lr4/h;->z:J

    goto :goto_3

    :cond_3
    const-string v2, "ChunkSampleStream"

    const-string v4, "Ignoring attempt to cancel non-cancelable load."

    .line 22
    invoke-static {v2, v4}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v2, v15

    :cond_5
    :goto_3
    if-nez v2, :cond_7

    .line 23
    iget-object v2, v0, Lr4/h;->o:Ll5/c0;

    invoke-interface {v2, v7}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide v4

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v9

    if-eqz v2, :cond_6

    .line 24
    new-instance v2, Ll5/d0$b;

    .line 25
    invoke-direct {v2, v6, v4, v5}, Ll5/d0$b;-><init>(IJ)V

    goto :goto_4

    .line 26
    :cond_6
    sget-object v2, Ll5/d0;->f:Ll5/d0$b;

    .line 27
    :cond_7
    :goto_4
    invoke-virtual {v2}, Ll5/d0$b;->a()Z

    move-result v4

    xor-int/2addr v3, v4

    .line 28
    iget-object v7, v0, Lr4/h;->n:Lp4/e0$a;

    iget v9, v1, Lr4/e;->c:I

    iget v10, v0, Lr4/h;->h:I

    iget-object v11, v1, Lr4/e;->d:Ln3/s0;

    iget v12, v1, Lr4/e;->e:I

    iget-object v13, v1, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v4, v1, Lr4/e;->g:J

    move-object/from16 p1, v2

    iget-wide v1, v1, Lr4/e;->h:J

    move-object v6, v15

    move-wide v14, v4

    move-wide/from16 v16, v1

    move-object/from16 v18, p6

    move/from16 v19, v3

    invoke-virtual/range {v7 .. v19}, Lp4/e0$a;->j(Lp4/r;IILn3/s0;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v3, :cond_8

    .line 29
    iput-object v6, v0, Lr4/h;->w:Lr4/e;

    .line 30
    iget-object v1, v0, Lr4/h;->o:Ll5/c0;

    invoke-interface {v1}, Ll5/c0;->d()V

    .line 31
    iget-object v1, v0, Lr4/h;->m:Lp4/n0$a;

    invoke-interface {v1, v0}, Lp4/n0$a;->j(Lp4/n0;)V

    :cond_8
    return-object p1
.end method

.method public final p(J)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    iget-boolean v2, p0, Lr4/h;->D:Z

    invoke-virtual {v0, p1, p2, v2}, Lp4/l0;->r(JZ)I

    move-result p1

    .line 3
    iget-object p2, p0, Lr4/h;->C:Lr4/a;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, v1}, Lr4/a;->e(I)I

    move-result p2

    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    .line 5
    iget v1, v0, Lp4/l0;->q:I

    iget v0, v0, Lp4/l0;->s:I

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    :cond_1
    iget-object p2, p0, Lr4/h;->t:Lp4/l0;

    invoke-virtual {p2, p1}, Lp4/l0;->F(I)V

    .line 8
    invoke-virtual {p0}, Lr4/h;->y()V

    return p1
.end method

.method public final r(I)Lr4/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/a;

    .line 2
    iget-object v1, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lm5/g0;->Q(Ljava/util/List;II)V

    .line 3
    iget p1, p0, Lr4/h;->B:I

    iget-object v1, p0, Lr4/h;->r:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lr4/h;->B:I

    .line 5
    iget-object p1, p0, Lr4/h;->t:Lp4/l0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/a;->e(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lp4/l0;->l(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lr4/h;->u:[Lp4/l0;

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 7
    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lr4/a;->e(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lp4/l0;->l(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final s(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lr4/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    .line 3
    iget v1, v0, Lp4/l0;->q:I

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, p3, v2}, Lp4/l0;->i(JZZ)V

    .line 5
    iget-object p1, p0, Lr4/h;->t:Lp4/l0;

    .line 6
    iget p2, p1, Lp4/l0;->q:I

    const/4 v0, 0x0

    if-le p2, v1, :cond_2

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget v1, p1, Lp4/l0;->p:I

    if-nez v1, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lp4/l0;->n:[J

    iget v2, p1, Lp4/l0;->r:I

    aget-wide v2, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v2

    :goto_0
    monitor-exit p1

    move p1, v0

    .line 9
    :goto_1
    iget-object v3, p0, Lr4/h;->u:[Lp4/l0;

    array-length v4, v3

    if-ge p1, v4, :cond_2

    .line 10
    aget-object v3, v3, p1

    iget-object v4, p0, Lr4/h;->k:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v1, v2, p3, v4}, Lp4/l0;->i(JZZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 11
    monitor-exit p1

    throw p2

    .line 12
    :cond_2
    invoke-virtual {p0, p2, v0}, Lr4/h;->z(II)I

    move-result p1

    .line 13
    iget p2, p0, Lr4/h;->B:I

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_3

    .line 15
    iget-object p2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-static {p2, v0, p1}, Lm5/g0;->Q(Ljava/util/List;II)V

    .line 16
    iget p2, p0, Lr4/h;->B:I

    sub-int/2addr p2, p1

    iput p2, p0, Lr4/h;->B:I

    :cond_3
    return-void
.end method

.method public final v()Lr4/a;
    .locals 2

    iget-object v0, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/a;

    return-object v0
.end method

.method public final w(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/a;

    .line 2
    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    .line 3
    iget v1, v0, Lp4/l0;->q:I

    iget v0, v0, Lp4/l0;->s:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lr4/a;->e(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    move v1, v0

    .line 5
    :cond_1
    iget-object v2, p0, Lr4/h;->u:[Lp4/l0;

    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 6
    aget-object v2, v2, v1

    .line 7
    iget v4, v2, Lp4/l0;->q:I

    iget v2, v2, Lp4/l0;->s:I

    add-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Lr4/a;->e(I)I

    move-result v2

    if-le v4, v2, :cond_1

    return v3

    :cond_2
    return v0
.end method

.method public final x()Z
    .locals 4

    iget-wide v0, p0, Lr4/h;->z:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()V
    .locals 10

    .line 1
    iget-object v0, p0, Lr4/h;->t:Lp4/l0;

    .line 2
    iget v1, v0, Lp4/l0;->q:I

    iget v0, v0, Lp4/l0;->s:I

    add-int/2addr v1, v0

    .line 3
    iget v0, p0, Lr4/h;->B:I

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Lr4/h;->z(II)I

    move-result v0

    .line 5
    :goto_0
    iget v1, p0, Lr4/h;->B:I

    if-gt v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 6
    iput v2, p0, Lr4/h;->B:I

    .line 7
    iget-object v2, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/a;

    .line 8
    iget-object v9, v1, Lr4/e;->d:Ln3/s0;

    .line 9
    iget-object v2, p0, Lr4/h;->x:Ln3/s0;

    invoke-virtual {v9, v2}, Ln3/s0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    iget-object v2, p0, Lr4/h;->n:Lp4/e0$a;

    iget v3, p0, Lr4/h;->h:I

    iget v5, v1, Lr4/e;->e:I

    iget-object v6, v1, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v7, v1, Lr4/e;->g:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lp4/e0$a;->b(ILn3/s0;ILjava/lang/Object;J)V

    .line 11
    :cond_0
    iput-object v9, p0, Lr4/h;->x:Ln3/s0;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final z(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 1
    iget-object v0, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2
    iget-object v0, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/a;->e(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 3
    :cond_1
    iget-object p1, p0, Lr4/h;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method
