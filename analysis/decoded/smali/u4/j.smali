.class public final Lu4/j;
.super Lr4/m;
.source "HlsMediaChunk.java"


# static fields
.field public static final L:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A:Z

.field public final B:Z

.field public C:Lu4/k;

.field public D:Lu4/n;

.field public E:I

.field public F:Z

.field public volatile G:Z

.field public H:Z

.field public I:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public J:Z

.field public K:Z

.field public final k:I

.field public final l:I

.field public final m:Landroid/net/Uri;

.field public final n:Z

.field public final o:I

.field public final p:Ll5/j;

.field public final q:Ll5/m;

.field public final r:Lu4/k;

.field public final s:Z

.field public final t:Z

.field public final u:Lm5/d0;

.field public final v:Lu4/i;

.field public final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lr3/d;

.field public final y:Lk4/g;

.field public final z:Lm5/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lu4/j;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lu4/i;Ll5/j;Ll5/m;Ln3/s0;ZLl5/j;Ll5/m;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLm5/d0;Lr3/d;Lu4/k;Lk4/g;Lm5/w;ZLo3/v0;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu4/i;",
            "Ll5/j;",
            "Ll5/m;",
            "Ln3/s0;",
            "Z",
            "Ll5/j;",
            "Ll5/m;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZIZZ",
            "Lm5/d0;",
            "Lr3/d;",
            "Lu4/k;",
            "Lk4/g;",
            "Lm5/w;",
            "Z",
            "Lo3/v0;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 1
    invoke-direct/range {v0 .. v11}, Lr4/m;-><init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 2
    iput-boolean v0, v12, Lu4/j;->A:Z

    move/from16 v0, p19

    .line 3
    iput v0, v12, Lu4/j;->o:I

    move/from16 v0, p20

    .line 4
    iput-boolean v0, v12, Lu4/j;->K:Z

    move/from16 v0, p21

    .line 5
    iput v0, v12, Lu4/j;->l:I

    .line 6
    iput-object v13, v12, Lu4/j;->q:Ll5/m;

    move-object/from16 v0, p6

    .line 7
    iput-object v0, v12, Lu4/j;->p:Ll5/j;

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-boolean v0, v12, Lu4/j;->F:Z

    move/from16 v0, p8

    .line 9
    iput-boolean v0, v12, Lu4/j;->B:Z

    move-object/from16 v0, p9

    .line 10
    iput-object v0, v12, Lu4/j;->m:Landroid/net/Uri;

    move/from16 v0, p23

    .line 11
    iput-boolean v0, v12, Lu4/j;->s:Z

    move-object/from16 v0, p24

    .line 12
    iput-object v0, v12, Lu4/j;->u:Lm5/d0;

    move/from16 v0, p22

    .line 13
    iput-boolean v0, v12, Lu4/j;->t:Z

    move-object v0, p1

    .line 14
    iput-object v0, v12, Lu4/j;->v:Lu4/i;

    move-object/from16 v0, p10

    .line 15
    iput-object v0, v12, Lu4/j;->w:Ljava/util/List;

    move-object/from16 v0, p25

    .line 16
    iput-object v0, v12, Lu4/j;->x:Lr3/d;

    move-object/from16 v0, p26

    .line 17
    iput-object v0, v12, Lu4/j;->r:Lu4/k;

    move-object/from16 v0, p27

    .line 18
    iput-object v0, v12, Lu4/j;->y:Lk4/g;

    move-object/from16 v0, p28

    .line 19
    iput-object v0, v12, Lu4/j;->z:Lm5/w;

    move/from16 v0, p29

    .line 20
    iput-boolean v0, v12, Lu4/j;->n:Z

    .line 21
    sget-object v0, Lu6/v;->i:Lu6/v$b;

    .line 22
    sget-object v0, Lu6/p0;->l:Lu6/p0;

    .line 23
    iput-object v0, v12, Lu4/j;->I:Lu6/v;

    .line 24
    sget-object v0, Lu4/j;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lu4/j;->k:I

    return-void
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 4
    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu4/j;->D:Lu4/n;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lu4/j;->C:Lu4/k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lu4/j;->r:Lu4/k;

    if-eqz v0, :cond_2

    move-object v3, v0

    check-cast v3, Lu4/b;

    .line 4
    iget-object v3, v3, Lu4/b;->a:Ls3/h;

    instance-of v4, v3, Lc4/c0;

    if-nez v4, :cond_1

    instance-of v3, v3, La4/e;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 5
    iput-object v0, p0, Lu4/j;->C:Lu4/k;

    .line 6
    iput-boolean v2, p0, Lu4/j;->F:Z

    .line 7
    :cond_2
    iget-boolean v0, p0, Lu4/j;->F:Z

    if-nez v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lu4/j;->p:Ll5/j;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lu4/j;->q:Ll5/m;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lu4/j;->p:Ll5/j;

    iget-object v3, p0, Lu4/j;->q:Ll5/m;

    iget-boolean v4, p0, Lu4/j;->B:Z

    invoke-virtual {p0, v0, v3, v4, v2}, Lu4/j;->e(Ll5/j;Ll5/m;ZZ)V

    .line 13
    iput v2, p0, Lu4/j;->E:I

    .line 14
    iput-boolean v2, p0, Lu4/j;->F:Z

    .line 15
    :goto_2
    iget-boolean v0, p0, Lu4/j;->G:Z

    if-nez v0, :cond_5

    .line 16
    iget-boolean v0, p0, Lu4/j;->t:Z

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lr4/e;->i:Ll5/i0;

    iget-object v2, p0, Lr4/e;->b:Ll5/m;

    iget-boolean v3, p0, Lu4/j;->A:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lu4/j;->e(Ll5/j;Ll5/m;ZZ)V

    .line 18
    :cond_4
    iget-boolean v0, p0, Lu4/j;->G:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lu4/j;->H:Z

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu4/j;->G:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lu4/j;->H:Z

    return v0
.end method

.method public final e(Ll5/j;Ll5/m;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 1
    iget p3, p0, Lu4/j;->E:I

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    move v2, p3

    move-object p3, p2

    goto :goto_1

    .line 2
    :cond_1
    iget p3, p0, Lu4/j;->E:I

    int-to-long v2, p3

    invoke-virtual {p2, v2, v3}, Ll5/m;->b(J)Ll5/m;

    move-result-object p3

    move v2, v1

    .line 3
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lu4/j;->h(Ll5/j;Ll5/m;Z)Ls3/e;

    move-result-object p3

    if-eqz v2, :cond_2

    .line 4
    iget p4, p0, Lu4/j;->E:I

    invoke-virtual {p3, p4}, Ls3/e;->k(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_2
    :goto_2
    :try_start_1
    iget-boolean p4, p0, Lu4/j;->G:Z

    if-nez p4, :cond_4

    iget-object p4, p0, Lu4/j;->C:Lu4/k;

    check-cast p4, Lu4/b;

    .line 6
    iget-object p4, p4, Lu4/b;->a:Ls3/h;

    sget-object v2, Lu4/b;->d:Ls3/t;

    invoke-interface {p4, p3, v2}, Ls3/h;->e(Ls3/i;Ls3/t;)I

    move-result p4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_3

    move p4, v0

    goto :goto_3

    :cond_3
    move p4, v1

    :goto_3
    if-eqz p4, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p4

    goto :goto_6

    .line 7
    :cond_4
    :try_start_2
    iget-wide p3, p3, Ls3/e;->d:J

    .line 8
    iget-wide v0, p2, Ll5/m;->f:J

    :goto_4
    sub-long/2addr p3, v0

    long-to-int p2, p3

    iput p2, p0, Lu4/j;->E:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catch_0
    move-exception p4

    .line 9
    :try_start_3
    iget-object v0, p0, Lr4/e;->d:Ln3/s0;

    iget v0, v0, Ln3/s0;->l:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_5

    .line 10
    iget-object p4, p0, Lu4/j;->C:Lu4/k;

    check-cast p4, Lu4/b;

    .line 11
    iget-object p4, p4, Lu4/b;->a:Ls3/h;

    const-wide/16 v0, 0x0

    invoke-interface {p4, v0, v1, v0, v1}, Ls3/h;->b(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    iget-wide p3, p3, Ls3/e;->d:J

    .line 13
    iget-wide v0, p2, Ll5/m;->f:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 14
    :goto_5
    invoke-static {p1}, Lc3/d;->i(Ll5/j;)V

    return-void

    .line 15
    :cond_5
    :try_start_5
    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    :goto_6
    :try_start_6
    iget-wide v0, p3, Ls3/e;->d:J

    .line 17
    iget-wide p2, p2, Ll5/m;->f:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lu4/j;->E:I

    .line 18
    throw p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p2

    .line 19
    invoke-static {p1}, Lc3/d;->i(Ll5/j;)V

    .line 20
    throw p2
.end method

.method public final g(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu4/j;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Lu4/j;->I:Lu6/v;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lu4/j;->I:Lu6/v;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final h(Ll5/j;Ll5/m;Z)Ls3/e;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractor"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-interface/range {p1 .. p2}, Ll5/j;->l(Ll5/m;)J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p3, :cond_4

    .line 2
    :try_start_0
    iget-object v2, v1, Lu4/j;->u:Lm5/d0;

    iget-boolean v3, v1, Lu4/j;->s:Z

    iget-wide v4, v1, Lr4/e;->g:J

    .line 3
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-wide v12, v2, Lm5/d0;->a:J

    const-wide v14, 0x7ffffffffffffffeL

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    invoke-static {v12}, Lm5/a;->e(Z)V

    .line 5
    iget-wide v12, v2, Lm5/d0;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v12, v12, v8

    if-eqz v12, :cond_1

    .line 6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    .line 7
    :try_start_3
    iget-object v3, v2, Lm5/d0;->d:Ljava/lang/ThreadLocal;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iget-wide v3, v2, Lm5/d0;->b:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_3

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 10
    :cond_3
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 11
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 12
    :cond_4
    :goto_3
    new-instance v12, Ls3/e;

    iget-wide v4, v0, Ll5/m;->f:J

    move-object v2, v12

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Ls3/e;-><init>(Ll5/h;JJ)V

    .line 13
    iget-object v2, v1, Lu4/j;->C:Lu4/k;

    if-nez v2, :cond_2d

    .line 14
    iput v11, v12, Ls3/e;->f:I

    const/16 v2, 0x8

    .line 15
    :try_start_5
    iget-object v3, v1, Lu4/j;->z:Lm5/w;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lm5/w;->A(I)V

    .line 16
    iget-object v3, v1, Lu4/j;->z:Lm5/w;

    .line 17
    iget-object v3, v3, Lm5/w;->a:[B

    .line 18
    invoke-virtual {v12, v3, v11, v4, v11}, Ls3/e;->p([BIIZ)Z
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1

    .line 19
    iget-object v3, v1, Lu4/j;->z:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->v()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_5

    goto/16 :goto_5

    .line 20
    :cond_5
    iget-object v3, v1, Lu4/j;->z:Lm5/w;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lm5/w;->E(I)V

    .line 21
    iget-object v3, v1, Lu4/j;->z:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->s()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    .line 22
    iget-object v6, v1, Lu4/j;->z:Lm5/w;

    .line 23
    iget-object v7, v6, Lm5/w;->a:[B

    array-length v13, v7

    if-le v5, v13, :cond_6

    .line 24
    invoke-virtual {v6, v5}, Lm5/w;->A(I)V

    .line 25
    iget-object v5, v1, Lu4/j;->z:Lm5/w;

    .line 26
    iget-object v5, v5, Lm5/w;->a:[B

    .line 27
    invoke-static {v7, v11, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    :cond_6
    iget-object v5, v1, Lu4/j;->z:Lm5/w;

    .line 29
    iget-object v5, v5, Lm5/w;->a:[B

    .line 30
    invoke-virtual {v12, v5, v4, v3, v11}, Ls3/e;->p([BIIZ)Z

    .line 31
    iget-object v4, v1, Lu4/j;->y:Lk4/g;

    iget-object v5, v1, Lu4/j;->z:Lm5/w;

    .line 32
    iget-object v5, v5, Lm5/w;->a:[B

    .line 33
    invoke-virtual {v4, v5, v3}, Lk4/g;->l([BI)Lf4/a;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_5

    .line 34
    :cond_7
    iget-object v4, v3, Lf4/a;->h:[Lf4/a$b;

    array-length v4, v4

    move v5, v11

    :goto_4
    if-ge v5, v4, :cond_9

    .line 35
    iget-object v6, v3, Lf4/a;->h:[Lf4/a$b;

    aget-object v6, v6, v5

    .line 36
    instance-of v7, v6, Lk4/k;

    if-eqz v7, :cond_8

    .line 37
    check-cast v6, Lk4/k;

    .line 38
    iget-object v7, v6, Lk4/k;->i:Ljava/lang/String;

    const-string v13, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 39
    iget-object v3, v6, Lk4/k;->j:[B

    iget-object v4, v1, Lu4/j;->z:Lm5/w;

    .line 40
    iget-object v4, v4, Lm5/w;->a:[B

    .line 41
    invoke-static {v3, v11, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v3, v1, Lu4/j;->z:Lm5/w;

    invoke-virtual {v3, v11}, Lm5/w;->D(I)V

    .line 43
    iget-object v3, v1, Lu4/j;->z:Lm5/w;

    invoke-virtual {v3, v2}, Lm5/w;->C(I)V

    .line 44
    iget-object v2, v1, Lu4/j;->z:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->m()J

    move-result-wide v2

    const-wide v4, 0x1ffffffffL

    and-long v8, v2, v4

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 45
    :catch_1
    :cond_9
    :goto_5
    iput v11, v12, Ls3/e;->f:I

    .line 46
    iget-object v2, v1, Lu4/j;->r:Lu4/k;

    if-eqz v2, :cond_11

    .line 47
    check-cast v2, Lu4/b;

    .line 48
    iget-object v0, v2, Lu4/b;->a:Ls3/h;

    instance-of v3, v0, Lc4/c0;

    if-nez v3, :cond_b

    instance-of v0, v0, La4/e;

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move v0, v11

    goto :goto_7

    :cond_b
    :goto_6
    move v0, v10

    :goto_7
    xor-int/2addr v0, v10

    .line 49
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 50
    iget-object v0, v2, Lu4/b;->a:Ls3/h;

    instance-of v3, v0, Lu4/q;

    if-eqz v3, :cond_c

    .line 51
    new-instance v0, Lu4/q;

    iget-object v3, v2, Lu4/b;->b:Ln3/s0;

    iget-object v3, v3, Ln3/s0;->j:Ljava/lang/String;

    iget-object v4, v2, Lu4/b;->c:Lm5/d0;

    invoke-direct {v0, v3, v4}, Lu4/q;-><init>(Ljava/lang/String;Lm5/d0;)V

    goto :goto_8

    .line 52
    :cond_c
    instance-of v3, v0, Lc4/e;

    if-eqz v3, :cond_d

    .line 53
    new-instance v0, Lc4/e;

    .line 54
    invoke-direct {v0, v11}, Lc4/e;-><init>(I)V

    goto :goto_8

    .line 55
    :cond_d
    instance-of v3, v0, Lc4/a;

    if-eqz v3, :cond_e

    .line 56
    new-instance v0, Lc4/a;

    invoke-direct {v0}, Lc4/a;-><init>()V

    goto :goto_8

    .line 57
    :cond_e
    instance-of v3, v0, Lc4/c;

    if-eqz v3, :cond_f

    .line 58
    new-instance v0, Lc4/c;

    invoke-direct {v0}, Lc4/c;-><init>()V

    goto :goto_8

    .line 59
    :cond_f
    instance-of v0, v0, Lz3/d;

    if-eqz v0, :cond_10

    .line 60
    new-instance v0, Lz3/d;

    invoke-direct {v0}, Lz3/d;-><init>()V

    .line 61
    :goto_8
    new-instance v3, Lu4/b;

    iget-object v4, v2, Lu4/b;->b:Ln3/s0;

    iget-object v2, v2, Lu4/b;->c:Lm5/d0;

    invoke-direct {v3, v0, v4, v2}, Lu4/b;-><init>(Ls3/h;Ln3/s0;Lm5/d0;)V

    move-wide/from16 v16, v8

    goto/16 :goto_18

    .line 62
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected extractor type for recreation: "

    .line 63
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    iget-object v2, v2, Lu4/b;->a:Ls3/h;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_11
    iget-object v2, v1, Lu4/j;->v:Lu4/i;

    iget-object v0, v0, Ll5/m;->a:Landroid/net/Uri;

    iget-object v3, v1, Lr4/e;->d:Ln3/s0;

    iget-object v4, v1, Lu4/j;->w:Ljava/util/List;

    iget-object v5, v1, Lu4/j;->u:Lm5/d0;

    .line 67
    invoke-interface/range {p1 .. p1}, Ll5/j;->h()Ljava/util/Map;

    move-result-object v6

    .line 68
    check-cast v2, Lu4/d;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v2, v3, Ln3/s0;->s:Ljava/lang/String;

    invoke-static {v2}, Lm5/h0;->b(Ljava/lang/String;)I

    move-result v2

    .line 70
    invoke-static {v6}, Lm5/h0;->c(Ljava/util/Map;)I

    move-result v6

    .line 71
    invoke-static {v0}, Lm5/h0;->d(Landroid/net/Uri;)I

    move-result v0

    .line 72
    new-instance v7, Ljava/util/ArrayList;

    sget-object v13, Lu4/d;->b:[I

    const/4 v14, 0x7

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-static {v2, v7}, Lu4/d;->a(ILjava/util/List;)V

    .line 74
    invoke-static {v6, v7}, Lu4/d;->a(ILjava/util/List;)V

    .line 75
    invoke-static {v0, v7}, Lu4/d;->a(ILjava/util/List;)V

    move v15, v11

    :goto_9
    if-ge v15, v14, :cond_12

    .line 76
    aget v10, v13, v15

    .line 77
    invoke-static {v10, v7}, Lu4/d;->a(ILjava/util/List;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x1

    goto :goto_9

    .line 78
    :cond_12
    iput v11, v12, Ls3/e;->f:I

    const/4 v10, 0x0

    move v13, v11

    const/4 v11, 0x1

    .line 79
    :goto_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_28

    .line 80
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 p1, v7

    const/16 v7, 0xb

    if-eqz v15, :cond_24

    if-eq v15, v11, :cond_23

    const/4 v11, 0x2

    if-eq v15, v11, :cond_22

    if-eq v15, v14, :cond_21

    const/16 v11, 0x8

    if-eq v15, v11, :cond_1b

    if-eq v15, v7, :cond_14

    const/16 v7, 0xd

    if-eq v15, v7, :cond_13

    const/4 v7, 0x0

    goto :goto_b

    .line 81
    :cond_13
    new-instance v7, Lu4/q;

    iget-object v11, v3, Ln3/s0;->j:Ljava/lang/String;

    invoke-direct {v7, v11, v5}, Lu4/q;-><init>(Ljava/lang/String;Lm5/d0;)V

    :goto_b
    move-wide/from16 v16, v8

    goto/16 :goto_15

    :cond_14
    if-eqz v4, :cond_15

    const/16 v7, 0x30

    move-object v11, v4

    goto :goto_c

    .line 82
    :cond_15
    new-instance v7, Ln3/s0$a;

    invoke-direct {v7}, Ln3/s0$a;-><init>()V

    const-string v11, "application/cea-608"

    .line 83
    iput-object v11, v7, Ln3/s0$a;->k:Ljava/lang/String;

    .line 84
    new-instance v11, Ln3/s0;

    invoke-direct {v11, v7}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 85
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v11, 0x10

    move/from16 v18, v11

    move-object v11, v7

    move/from16 v7, v18

    .line 86
    :goto_c
    iget-object v14, v3, Ln3/s0;->p:Ljava/lang/String;

    .line 87
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_19

    move-wide/from16 v16, v8

    const-string v8, "audio/mp4a-latm"

    .line 88
    invoke-static {v14, v8}, Lm5/s;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    goto :goto_d

    :cond_16
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_17

    or-int/lit8 v7, v7, 0x2

    :cond_17
    const-string v8, "video/avc"

    .line 89
    invoke-static {v14, v8}, Lm5/s;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18

    const/4 v8, 0x1

    goto :goto_e

    :cond_18
    const/4 v8, 0x0

    :goto_e
    if-nez v8, :cond_1a

    or-int/lit8 v7, v7, 0x4

    goto :goto_f

    :cond_19
    move-wide/from16 v16, v8

    .line 90
    :cond_1a
    :goto_f
    new-instance v8, Lc4/c0;

    new-instance v9, Lc4/g;

    invoke-direct {v9, v7, v11}, Lc4/g;-><init>(ILjava/util/List;)V

    const/4 v7, 0x2

    .line 91
    invoke-direct {v8, v7, v5, v9}, Lc4/c0;-><init>(ILm5/d0;Lc4/d0$c;)V

    move-object v7, v8

    goto :goto_15

    :cond_1b
    move-wide/from16 v16, v8

    .line 92
    new-instance v7, La4/e;

    .line 93
    iget-object v8, v3, Ln3/s0;->q:Lf4/a;

    if-nez v8, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v9, 0x0

    .line 94
    :goto_10
    iget-object v11, v8, Lf4/a;->h:[Lf4/a$b;

    array-length v14, v11

    if-ge v9, v14, :cond_1e

    .line 95
    aget-object v11, v11, v9

    .line 96
    instance-of v14, v11, Lu4/o;

    if-eqz v14, :cond_1d

    .line 97
    check-cast v11, Lu4/o;

    iget-object v8, v11, Lu4/o;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1e
    :goto_11
    const/4 v8, 0x0

    :goto_12
    if-eqz v8, :cond_1f

    const/4 v8, 0x4

    goto :goto_13

    :cond_1f
    const/4 v8, 0x0

    :goto_13
    if-eqz v4, :cond_20

    move-object v9, v4

    goto :goto_14

    .line 98
    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    :goto_14
    const/4 v11, 0x0

    invoke-direct {v7, v8, v5, v11, v9}, La4/e;-><init>(ILm5/d0;La4/l;Ljava/util/List;)V

    goto :goto_15

    :cond_21
    move-wide/from16 v16, v8

    .line 99
    new-instance v7, Lz3/d;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Lz3/d;-><init>(J)V

    goto :goto_15

    :cond_22
    move-wide/from16 v16, v8

    .line 100
    new-instance v7, Lc4/e;

    const/4 v8, 0x0

    .line 101
    invoke-direct {v7, v8}, Lc4/e;-><init>(I)V

    goto :goto_15

    :cond_23
    move-wide/from16 v16, v8

    .line 102
    new-instance v7, Lc4/c;

    invoke-direct {v7}, Lc4/c;-><init>()V

    goto :goto_15

    :cond_24
    move-wide/from16 v16, v8

    .line 103
    new-instance v7, Lc4/a;

    invoke-direct {v7}, Lc4/a;-><init>()V

    .line 104
    :goto_15
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :try_start_6
    invoke-interface {v7, v12}, Ls3/h;->j(Ls3/i;)Z

    move-result v8
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v9, 0x0

    .line 106
    iput v9, v12, Ls3/e;->f:I

    goto :goto_16

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x0

    iput v0, v12, Ls3/e;->f:I

    .line 107
    throw v2

    :catch_2
    const/4 v8, 0x0

    .line 108
    iput v8, v12, Ls3/e;->f:I

    move v9, v8

    :goto_16
    if-eqz v8, :cond_25

    .line 109
    new-instance v0, Lu4/b;

    invoke-direct {v0, v7, v3, v5}, Lu4/b;-><init>(Ls3/h;Ln3/s0;Lm5/d0;)V

    goto :goto_17

    :cond_25
    if-nez v10, :cond_27

    if-eq v15, v2, :cond_26

    if-eq v15, v6, :cond_26

    if-eq v15, v0, :cond_26

    const/16 v8, 0xb

    if-ne v15, v8, :cond_27

    :cond_26
    move-object v10, v7

    :cond_27
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x7

    const/4 v11, 0x1

    move-object/from16 v7, p1

    move-wide/from16 v8, v16

    goto/16 :goto_a

    :cond_28
    move-wide/from16 v16, v8

    const/4 v9, 0x0

    .line 110
    new-instance v0, Lu4/b;

    .line 111
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {v0, v10, v3, v5}, Lu4/b;-><init>(Ls3/h;Ln3/s0;Lm5/d0;)V

    :goto_17
    move-object v3, v0

    move v11, v9

    .line 113
    :goto_18
    iput-object v3, v1, Lu4/j;->C:Lu4/k;

    .line 114
    iget-object v0, v3, Lu4/b;->a:Ls3/h;

    instance-of v2, v0, Lc4/e;

    if-nez v2, :cond_2a

    instance-of v2, v0, Lc4/a;

    if-nez v2, :cond_2a

    instance-of v2, v0, Lc4/c;

    if-nez v2, :cond_2a

    instance-of v0, v0, Lz3/d;

    if-eqz v0, :cond_29

    goto :goto_19

    :cond_29
    move v0, v11

    goto :goto_1a

    :cond_2a
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    if-eqz v0, :cond_2c

    .line 115
    iget-object v0, v1, Lu4/j;->D:Lu4/n;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v16, v2

    if-eqz v2, :cond_2b

    .line 116
    iget-object v2, v1, Lu4/j;->u:Lm5/d0;

    move-wide/from16 v8, v16

    invoke-virtual {v2, v8, v9}, Lm5/d0;->b(J)J

    move-result-wide v2

    goto :goto_1b

    .line 117
    :cond_2b
    iget-wide v2, v1, Lr4/e;->g:J

    .line 118
    :goto_1b
    invoke-virtual {v0, v2, v3}, Lu4/n;->I(J)V

    goto :goto_1c

    .line 119
    :cond_2c
    iget-object v0, v1, Lu4/j;->D:Lu4/n;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lu4/n;->I(J)V

    .line 120
    :goto_1c
    iget-object v0, v1, Lu4/j;->D:Lu4/n;

    .line 121
    iget-object v0, v0, Lu4/n;->E:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 122
    iget-object v0, v1, Lu4/j;->C:Lu4/k;

    iget-object v2, v1, Lu4/j;->D:Lu4/n;

    check-cast v0, Lu4/b;

    .line 123
    iget-object v0, v0, Lu4/b;->a:Ls3/h;

    invoke-interface {v0, v2}, Ls3/h;->g(Ls3/j;)V

    .line 124
    :cond_2d
    iget-object v0, v1, Lu4/j;->D:Lu4/n;

    iget-object v2, v1, Lu4/j;->x:Lr3/d;

    .line 125
    iget-object v3, v0, Lu4/n;->d0:Lr3/d;

    invoke-static {v3, v2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 126
    iput-object v2, v0, Lu4/n;->d0:Lr3/d;

    .line 127
    :goto_1d
    iget-object v3, v0, Lu4/n;->C:[Lu4/n$d;

    array-length v4, v3

    if-ge v11, v4, :cond_2f

    .line 128
    iget-object v4, v0, Lu4/n;->V:[Z

    aget-boolean v4, v4, v11

    if-eqz v4, :cond_2e

    .line 129
    aget-object v3, v3, v11

    .line 130
    iput-object v2, v3, Lu4/n$d;->I:Lr3/d;

    const/4 v4, 0x1

    .line 131
    iput-boolean v4, v3, Lp4/l0;->z:Z

    :cond_2e
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    :cond_2f
    return-object v12
.end method
