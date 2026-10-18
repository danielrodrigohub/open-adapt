.class public final Lz3/d;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Ls3/h;


# static fields
.field public static final u:Ly0/e;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lm5/w;

.field public final d:Lp3/b0$a;

.field public final e:Ls3/q;

.field public final f:Ls3/r;

.field public final g:Ls3/g;

.field public h:Ls3/j;

.field public i:Ls3/w;

.field public j:Ls3/w;

.field public k:I

.field public l:Lf4/a;

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:Lz3/e;

.field public r:Z

.field public s:Z

.field public t:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ln3/p;->e:Ln3/p;

    .line 2
    sget-object v0, Ly0/e;->d:Ly0/e;

    sput-object v0, Lz3/d;->u:Ly0/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    invoke-direct {p0, v0, v1}, Lz3/d;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lz3/d;->a:I

    .line 4
    iput-wide p1, p0, Lz3/d;->b:J

    .line 5
    new-instance p1, Lm5/w;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lm5/w;-><init>(I)V

    iput-object p1, p0, Lz3/d;->c:Lm5/w;

    .line 6
    new-instance p1, Lp3/b0$a;

    invoke-direct {p1}, Lp3/b0$a;-><init>()V

    iput-object p1, p0, Lz3/d;->d:Lp3/b0$a;

    .line 7
    new-instance p1, Ls3/q;

    invoke-direct {p1}, Ls3/q;-><init>()V

    iput-object p1, p0, Lz3/d;->e:Ls3/q;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lz3/d;->m:J

    .line 9
    new-instance p1, Ls3/r;

    invoke-direct {p1}, Ls3/r;-><init>()V

    iput-object p1, p0, Lz3/d;->f:Ls3/r;

    .line 10
    new-instance p1, Ls3/g;

    invoke-direct {p1}, Ls3/g;-><init>()V

    iput-object p1, p0, Lz3/d;->g:Ls3/g;

    .line 11
    iput-object p1, p0, Lz3/d;->j:Ls3/w;

    return-void
.end method

.method public static f(Lf4/a;)J
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p0, Lf4/a;->h:[Lf4/a$b;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lf4/a;->h:[Lf4/a$b;

    aget-object v2, v2, v1

    .line 3
    instance-of v3, v2, Lk4/l;

    if-eqz v3, :cond_0

    check-cast v2, Lk4/l;

    iget-object v3, v2, Lk4/h;->h:Ljava/lang/String;

    const-string v4, "TLEN"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p0, v2, Lk4/l;->j:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lm5/g0;->L(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lz3/d;->k:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lz3/d;->m:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lz3/d;->n:J

    .line 4
    iput p1, p0, Lz3/d;->p:I

    .line 5
    iput-wide p3, p0, Lz3/d;->t:J

    .line 6
    iget-object p1, p0, Lz3/d;->q:Lz3/e;

    instance-of p2, p1, Lz3/b;

    if-eqz p2, :cond_0

    check-cast p1, Lz3/b;

    invoke-virtual {p1, p3, p4}, Lz3/b;->a(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lz3/d;->s:Z

    .line 8
    iget-object p1, p0, Lz3/d;->g:Ls3/g;

    iput-object p1, p0, Lz3/d;->j:Ls3/w;

    :cond_0
    return-void
.end method

.method public final c(J)J
    .locals 4

    iget-wide v0, p0, Lz3/d;->m:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object v2, p0, Lz3/d;->d:Lp3/b0$a;

    iget v2, v2, Lp3/b0$a;->d:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final d(Ls3/i;Z)Lz3/e;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz3/d;->c:Lm5/w;

    .line 2
    iget-object v0, v0, Lm5/w;->a:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v0, v2, v1}, Ls3/i;->s([BII)V

    .line 4
    iget-object v0, p0, Lz3/d;->c:Lm5/w;

    invoke-virtual {v0, v2}, Lm5/w;->D(I)V

    .line 5
    iget-object v0, p0, Lz3/d;->d:Lp3/b0$a;

    iget-object v1, p0, Lz3/d;->c:Lm5/w;

    invoke-virtual {v1}, Lm5/w;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lp3/b0$a;->a(I)Z

    .line 6
    new-instance v0, Lz3/a;

    .line 7
    invoke-interface {p1}, Ls3/i;->a()J

    move-result-wide v3

    invoke-interface {p1}, Ls3/i;->u()J

    move-result-wide v5

    iget-object v7, p0, Lz3/d;->d:Lp3/b0$a;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lz3/a;-><init>(JJLp3/b0$a;Z)V

    return-object v0
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lz3/d;->i:Ls3/w;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lm5/g0;->a:I

    .line 3
    iget v2, v0, Lz3/d;->k:I

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0, v1, v4}, Lz3/d;->i(Ls3/i;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto/16 :goto_22

    .line 5
    :cond_0
    :goto_0
    iget-object v2, v0, Lz3/d;->q:Lz3/e;

    const/4 v7, 0x1

    if-nez v2, :cond_28

    .line 6
    new-instance v2, Lm5/w;

    iget-object v8, v0, Lz3/d;->d:Lp3/b0$a;

    iget v8, v8, Lp3/b0$a;->c:I

    invoke-direct {v2, v8}, Lm5/w;-><init>(I)V

    .line 7
    iget-object v8, v2, Lm5/w;->a:[B

    .line 8
    iget-object v9, v0, Lz3/d;->d:Lp3/b0$a;

    iget v9, v9, Lp3/b0$a;->c:I

    invoke-interface {v1, v8, v4, v9}, Ls3/i;->s([BII)V

    .line 9
    iget-object v8, v0, Lz3/d;->d:Lp3/b0$a;

    iget v9, v8, Lp3/b0$a;->a:I

    and-int/2addr v9, v7

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    .line 10
    iget v8, v8, Lp3/b0$a;->e:I

    if-eq v8, v7, :cond_3

    move v11, v10

    goto :goto_1

    .line 11
    :cond_1
    iget v8, v8, Lp3/b0$a;->e:I

    if-eq v8, v7, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0xd

    .line 12
    :cond_3
    :goto_1
    iget v8, v2, Lm5/w;->c:I

    add-int/lit8 v9, v11, 0x4

    const v12, 0x56425249

    const v13, 0x58696e67

    const v14, 0x496e666f

    if-lt v8, v9, :cond_4

    .line 13
    invoke-virtual {v2, v11}, Lm5/w;->D(I)V

    .line 14
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v8

    if-eq v8, v13, :cond_6

    if-ne v8, v14, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget v8, v2, Lm5/w;->c:I

    const/16 v9, 0x28

    if-lt v8, v9, :cond_5

    .line 16
    invoke-virtual {v2, v10}, Lm5/w;->D(I)V

    .line 17
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v8

    if-ne v8, v12, :cond_5

    move v8, v12

    goto :goto_2

    :cond_5
    move v8, v4

    :cond_6
    :goto_2
    const-string v9, ", "

    const-wide/32 v15, 0xf4240

    const-wide/16 v17, -0x1

    const/4 v5, 0x2

    const/16 v19, 0x0

    if-eq v8, v13, :cond_11

    if-ne v8, v14, :cond_7

    goto/16 :goto_8

    :cond_7
    if-ne v8, v12, :cond_10

    .line 18
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v13

    iget-object v8, v0, Lz3/d;->d:Lp3/b0$a;

    const/16 v4, 0xa

    .line 19
    invoke-virtual {v2, v4}, Lm5/w;->E(I)V

    .line 20
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v4

    if-gtz v4, :cond_8

    goto :goto_5

    .line 21
    :cond_8
    iget v3, v8, Lp3/b0$a;->d:I

    move-wide/from16 v26, v11

    int-to-long v10, v4

    const/16 v4, 0x7d00

    if-lt v3, v4, :cond_9

    const/16 v4, 0x480

    goto :goto_3

    :cond_9
    const/16 v4, 0x240

    :goto_3
    int-to-long v6, v4

    mul-long v22, v6, v15

    int-to-long v3, v3

    move-wide/from16 v20, v10

    move-wide/from16 v24, v3

    .line 22
    invoke-static/range {v20 .. v25}, Lm5/g0;->R(JJJ)J

    move-result-wide v31

    .line 23
    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v3

    .line 24
    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v4

    .line 25
    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v6

    .line 26
    invoke-virtual {v2, v5}, Lm5/w;->E(I)V

    .line 27
    iget v7, v8, Lp3/b0$a;->c:I

    int-to-long v7, v7

    add-long/2addr v7, v13

    .line 28
    new-array v10, v3, [J

    .line 29
    new-array v11, v3, [J

    move-wide v14, v13

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v3, :cond_e

    move/from16 v16, v6

    int-to-long v5, v13

    mul-long v5, v5, v31

    int-to-long v0, v3

    .line 30
    div-long/2addr v5, v0

    aput-wide v5, v10, v13

    .line 31
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, v11, v13

    move/from16 v0, v16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    :goto_5
    move-object/from16 v0, v19

    goto :goto_7

    .line 32
    :cond_a
    invoke-virtual {v2}, Lm5/w;->w()I

    move-result v1

    goto :goto_6

    .line 33
    :cond_b
    invoke-virtual {v2}, Lm5/w;->v()I

    move-result v1

    goto :goto_6

    .line 34
    :cond_c
    invoke-virtual {v2}, Lm5/w;->y()I

    move-result v1

    goto :goto_6

    .line 35
    :cond_d
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v1

    :goto_6
    int-to-long v5, v1

    move v1, v13

    int-to-long v12, v4

    mul-long/2addr v5, v12

    add-long/2addr v14, v5

    add-int/lit8 v13, v1, 0x1

    const/4 v5, 0x2

    move-object/from16 v1, p1

    move v6, v0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_e
    cmp-long v0, v26, v17

    if-eqz v0, :cond_f

    cmp-long v0, v26, v14

    if-eqz v0, :cond_f

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRI data size mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VbriSeeker"

    invoke-static {v1, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_f
    new-instance v0, Lz3/f;

    move-object/from16 v28, v0

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-wide/from16 v33, v14

    invoke-direct/range {v28 .. v34}, Lz3/f;-><init>([J[JJJ)V

    :goto_7
    move-object/from16 v1, p0

    .line 38
    iget-object v2, v1, Lz3/d;->d:Lp3/b0$a;

    iget v2, v2, Lp3/b0$a;->c:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ls3/i;->k(I)V

    goto/16 :goto_e

    :cond_10
    move-object v3, v1

    move-object v1, v0

    .line 39
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    move-object/from16 v0, v19

    goto/16 :goto_e

    :cond_11
    :goto_8
    move-object v3, v1

    move-object v1, v0

    .line 40
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v29

    iget-object v0, v1, Lz3/d;->d:Lp3/b0$a;

    .line 41
    iget v6, v0, Lp3/b0$a;->g:I

    .line 42
    iget v7, v0, Lp3/b0$a;->d:I

    .line 43
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v10

    and-int/lit8 v12, v10, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    .line 44
    invoke-virtual {v2}, Lm5/w;->w()I

    move-result v13

    if-nez v13, :cond_12

    goto/16 :goto_b

    :cond_12
    int-to-long v12, v13

    move/from16 v22, v8

    move-object/from16 v23, v9

    int-to-long v8, v6

    mul-long v33, v8, v15

    int-to-long v6, v7

    move-wide/from16 v31, v12

    move-wide/from16 v35, v6

    .line 45
    invoke-static/range {v31 .. v36}, Lm5/g0;->R(JJJ)J

    move-result-wide v32

    const/4 v6, 0x6

    and-int/lit8 v7, v10, 0x6

    if-eq v7, v6, :cond_13

    .line 46
    new-instance v2, Lz3/g;

    iget v0, v0, Lp3/b0$a;->c:I

    const-wide/16 v34, -0x1

    const/16 v36, 0x0

    move-object/from16 v28, v2

    move/from16 v31, v0

    .line 47
    invoke-direct/range {v28 .. v36}, Lz3/g;-><init>(JIJJ[J)V

    goto :goto_a

    .line 48
    :cond_13
    invoke-virtual {v2}, Lm5/w;->u()J

    move-result-wide v34

    const/16 v6, 0x64

    new-array v7, v6, [J

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_14

    .line 49
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v9

    int-to-long v9, v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_14
    cmp-long v2, v4, v17

    if-eqz v2, :cond_15

    add-long v8, v29, v34

    cmp-long v2, v4, v8

    if-eqz v2, :cond_15

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XING data size mismatch: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "XingSeeker"

    invoke-static {v4, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_15
    new-instance v2, Lz3/g;

    iget v0, v0, Lp3/b0$a;->c:I

    move-object/from16 v28, v2

    move/from16 v31, v0

    move-object/from16 v36, v7

    invoke-direct/range {v28 .. v36}, Lz3/g;-><init>(JIJJ[J)V

    :goto_a
    move-object v0, v2

    goto :goto_c

    :cond_16
    :goto_b
    move/from16 v22, v8

    move-object/from16 v0, v19

    :goto_c
    if-eqz v0, :cond_19

    .line 52
    iget-object v2, v1, Lz3/d;->e:Ls3/q;

    .line 53
    iget v4, v2, Ls3/q;->a:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    iget v2, v2, Ls3/q;->b:I

    if-eq v2, v5, :cond_17

    const/4 v2, 0x1

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_19

    .line 54
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    add-int/lit16 v11, v11, 0x8d

    .line 55
    invoke-interface {v3, v11}, Ls3/i;->t(I)V

    .line 56
    iget-object v2, v1, Lz3/d;->c:Lm5/w;

    .line 57
    iget-object v2, v2, Lm5/w;->a:[B

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 58
    invoke-interface {v3, v2, v5, v4}, Ls3/i;->s([BII)V

    .line 59
    iget-object v2, v1, Lz3/d;->c:Lm5/w;

    invoke-virtual {v2, v5}, Lm5/w;->D(I)V

    .line 60
    iget-object v2, v1, Lz3/d;->e:Ls3/q;

    iget-object v4, v1, Lz3/d;->c:Lm5/w;

    invoke-virtual {v4}, Lm5/w;->v()I

    move-result v4

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v5, v4, 0xc

    and-int/lit16 v4, v4, 0xfff

    if-gtz v5, :cond_18

    if-lez v4, :cond_19

    .line 61
    :cond_18
    iput v5, v2, Ls3/q;->a:I

    .line 62
    iput v4, v2, Ls3/q;->b:I

    .line 63
    :cond_19
    iget-object v2, v1, Lz3/d;->d:Lp3/b0$a;

    iget v2, v2, Lp3/b0$a;->c:I

    invoke-interface {v3, v2}, Ls3/i;->k(I)V

    if-eqz v0, :cond_1a

    .line 64
    invoke-virtual {v0}, Lz3/g;->f()Z

    move-result v2

    if-nez v2, :cond_1a

    move/from16 v4, v22

    if-ne v4, v14, :cond_1a

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v3, v2}, Lz3/d;->d(Ls3/i;Z)Lz3/e;

    move-result-object v0

    .line 66
    :cond_1a
    :goto_e
    iget-object v2, v1, Lz3/d;->l:Lf4/a;

    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v4

    if-eqz v2, :cond_1d

    .line 67
    iget-object v6, v2, Lf4/a;->h:[Lf4/a$b;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v6, :cond_1d

    .line 68
    iget-object v8, v2, Lf4/a;->h:[Lf4/a$b;

    aget-object v8, v8, v7

    .line 69
    instance-of v9, v8, Lk4/j;

    if-eqz v9, :cond_1c

    .line 70
    check-cast v8, Lk4/j;

    invoke-static {v2}, Lz3/d;->f(Lf4/a;)J

    move-result-wide v6

    .line 71
    iget-object v2, v8, Lk4/j;->l:[I

    array-length v2, v2

    add-int/lit8 v9, v2, 0x1

    .line 72
    new-array v10, v9, [J

    .line 73
    new-array v9, v9, [J

    const/4 v11, 0x0

    .line 74
    aput-wide v4, v10, v11

    const-wide/16 v12, 0x0

    .line 75
    aput-wide v12, v9, v11

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    :goto_10
    if-gt v12, v2, :cond_1b

    .line 76
    iget v11, v8, Lk4/j;->j:I

    iget-object v15, v8, Lk4/j;->l:[I

    add-int/lit8 v16, v12, -0x1

    aget v15, v15, v16

    add-int/2addr v11, v15

    move v15, v2

    int-to-long v2, v11

    add-long/2addr v4, v2

    .line 77
    iget v2, v8, Lk4/j;->k:I

    iget-object v3, v8, Lk4/j;->m:[I

    aget v3, v3, v16

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v13, v2

    .line 78
    aput-wide v4, v10, v12

    .line 79
    aput-wide v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p1

    move v2, v15

    goto :goto_10

    .line 80
    :cond_1b
    new-instance v2, Lz3/c;

    invoke-direct {v2, v10, v9, v6, v7}, Lz3/c;-><init>([J[JJ)V

    goto :goto_11

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p1

    goto :goto_f

    :cond_1d
    move-object/from16 v2, v19

    .line 81
    :goto_11
    iget-boolean v3, v1, Lz3/d;->r:Z

    if-eqz v3, :cond_1e

    .line 82
    new-instance v0, Lz3/e$a;

    invoke-direct {v0}, Lz3/e$a;-><init>()V

    goto :goto_15

    .line 83
    :cond_1e
    iget v3, v1, Lz3/d;->a:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_21

    if-eqz v2, :cond_1f

    .line 84
    iget-wide v2, v2, Lz3/c;->c:J

    :goto_12
    move-wide v5, v2

    move-wide/from16 v9, v17

    goto :goto_13

    :cond_1f
    if-eqz v0, :cond_20

    .line 85
    invoke-interface {v0}, Ls3/u;->i()J

    move-result-wide v2

    .line 86
    invoke-interface {v0}, Lz3/e;->d()J

    move-result-wide v17

    goto :goto_12

    .line 87
    :cond_20
    iget-object v0, v1, Lz3/d;->l:Lf4/a;

    invoke-static {v0}, Lz3/d;->f(Lf4/a;)J

    move-result-wide v2

    goto :goto_12

    .line 88
    :goto_13
    new-instance v0, Lz3/b;

    .line 89
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lz3/b;-><init>(JJJ)V

    goto :goto_14

    :cond_21
    if-eqz v2, :cond_22

    move-object v0, v2

    goto :goto_14

    :cond_22
    if-eqz v0, :cond_23

    goto :goto_14

    :cond_23
    move-object/from16 v0, v19

    :goto_14
    if-eqz v0, :cond_25

    .line 90
    invoke-interface {v0}, Ls3/u;->f()Z

    move-result v2

    if-nez v2, :cond_24

    iget v2, v1, Lz3/d;->a:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_24

    goto :goto_16

    :cond_24
    :goto_15
    move-object/from16 v2, p1

    goto :goto_18

    .line 91
    :cond_25
    :goto_16
    iget v0, v1, Lz3/d;->a:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    move-object/from16 v2, p1

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_17

    :cond_26
    const/4 v0, 0x0

    .line 92
    :goto_17
    invoke-virtual {v1, v2, v0}, Lz3/d;->d(Ls3/i;Z)Lz3/e;

    move-result-object v0

    .line 93
    :goto_18
    iput-object v0, v1, Lz3/d;->q:Lz3/e;

    .line 94
    iget-object v3, v1, Lz3/d;->h:Ls3/j;

    invoke-interface {v3, v0}, Ls3/j;->j(Ls3/u;)V

    .line 95
    iget-object v0, v1, Lz3/d;->j:Ls3/w;

    new-instance v3, Ln3/s0$a;

    invoke-direct {v3}, Ln3/s0$a;-><init>()V

    iget-object v4, v1, Lz3/d;->d:Lp3/b0$a;

    iget-object v5, v4, Lp3/b0$a;->b:Ljava/lang/String;

    .line 96
    iput-object v5, v3, Ln3/s0$a;->k:Ljava/lang/String;

    const/16 v5, 0x1000

    .line 97
    iput v5, v3, Ln3/s0$a;->l:I

    .line 98
    iget v5, v4, Lp3/b0$a;->e:I

    .line 99
    iput v5, v3, Ln3/s0$a;->x:I

    .line 100
    iget v4, v4, Lp3/b0$a;->d:I

    .line 101
    iput v4, v3, Ln3/s0$a;->y:I

    .line 102
    iget-object v4, v1, Lz3/d;->e:Ls3/q;

    iget v5, v4, Ls3/q;->a:I

    .line 103
    iput v5, v3, Ln3/s0$a;->A:I

    .line 104
    iget v4, v4, Ls3/q;->b:I

    .line 105
    iput v4, v3, Ln3/s0$a;->B:I

    .line 106
    iget v4, v1, Lz3/d;->a:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_27

    move-object/from16 v4, v19

    goto :goto_19

    :cond_27
    iget-object v4, v1, Lz3/d;->l:Lf4/a;

    .line 107
    :goto_19
    iput-object v4, v3, Ln3/s0$a;->i:Lf4/a;

    .line 108
    new-instance v4, Ln3/s0;

    invoke-direct {v4, v3}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 109
    invoke-interface {v0, v4}, Ls3/w;->b(Ln3/s0;)V

    .line 110
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    iput-wide v3, v1, Lz3/d;->o:J

    goto :goto_1a

    :cond_28
    move-object v2, v1

    move-object v1, v0

    .line 111
    iget-wide v3, v1, Lz3/d;->o:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_29

    .line 112
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    .line 113
    iget-wide v5, v1, Lz3/d;->o:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_29

    sub-long/2addr v5, v3

    long-to-int v0, v5

    .line 114
    invoke-interface {v2, v0}, Ls3/i;->k(I)V

    .line 115
    :cond_29
    :goto_1a
    iget v0, v1, Lz3/d;->p:I

    if-nez v0, :cond_30

    .line 116
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 117
    invoke-virtual/range {p0 .. p1}, Lz3/d;->h(Ls3/i;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto/16 :goto_1f

    .line 118
    :cond_2a
    iget-object v0, v1, Lz3/d;->c:Lm5/w;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lm5/w;->D(I)V

    .line 119
    iget-object v0, v1, Lz3/d;->c:Lm5/w;

    invoke-virtual {v0}, Lm5/w;->e()I

    move-result v0

    .line 120
    iget v3, v1, Lz3/d;->k:I

    int-to-long v3, v3

    const v5, -0x1f400

    and-int/2addr v5, v0

    int-to-long v5, v5

    const-wide/32 v7, -0x1f400

    and-long/2addr v3, v7

    cmp-long v3, v5, v3

    if-nez v3, :cond_2b

    const/4 v3, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v3, 0x0

    :goto_1b
    if-eqz v3, :cond_2f

    .line 121
    invoke-static {v0}, Lp3/b0;->a(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    goto/16 :goto_1d

    .line 122
    :cond_2c
    iget-object v3, v1, Lz3/d;->d:Lp3/b0$a;

    invoke-virtual {v3, v0}, Lp3/b0$a;->a(I)Z

    .line 123
    iget-wide v3, v1, Lz3/d;->m:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_2d

    .line 124
    iget-object v0, v1, Lz3/d;->q:Lz3/e;

    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lz3/e;->c(J)J

    move-result-wide v3

    iput-wide v3, v1, Lz3/d;->m:J

    .line 125
    iget-wide v3, v1, Lz3/d;->b:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2d

    .line 126
    iget-object v0, v1, Lz3/d;->q:Lz3/e;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v3, v4}, Lz3/e;->c(J)J

    move-result-wide v3

    .line 127
    iget-wide v5, v1, Lz3/d;->m:J

    iget-wide v7, v1, Lz3/d;->b:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, v1, Lz3/d;->m:J

    .line 128
    :cond_2d
    iget-object v0, v1, Lz3/d;->d:Lp3/b0$a;

    iget v3, v0, Lp3/b0$a;->c:I

    iput v3, v1, Lz3/d;->p:I

    .line 129
    iget-object v3, v1, Lz3/d;->q:Lz3/e;

    instance-of v4, v3, Lz3/b;

    if-eqz v4, :cond_30

    .line 130
    check-cast v3, Lz3/b;

    .line 131
    iget-wide v4, v1, Lz3/d;->n:J

    iget v0, v0, Lp3/b0$a;->g:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 132
    invoke-virtual {v1, v4, v5}, Lz3/d;->c(J)J

    move-result-wide v4

    .line 133
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v6

    iget-object v0, v1, Lz3/d;->d:Lp3/b0$a;

    iget v0, v0, Lp3/b0$a;->c:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 134
    invoke-virtual {v3, v4, v5}, Lz3/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_1c

    .line 135
    :cond_2e
    iget-object v0, v3, Lz3/b;->b:Lm5/q;

    invoke-virtual {v0, v4, v5}, Lm5/q;->a(J)V

    .line 136
    iget-object v0, v3, Lz3/b;->c:Lm5/q;

    invoke-virtual {v0, v6, v7}, Lm5/q;->a(J)V

    .line 137
    :goto_1c
    iget-boolean v0, v1, Lz3/d;->s:Z

    if-eqz v0, :cond_30

    iget-wide v4, v1, Lz3/d;->t:J

    invoke-virtual {v3, v4, v5}, Lz3/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, v1, Lz3/d;->s:Z

    .line 139
    iget-object v3, v1, Lz3/d;->i:Ls3/w;

    iput-object v3, v1, Lz3/d;->j:Ls3/w;

    goto :goto_1e

    :cond_2f
    :goto_1d
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 140
    invoke-interface {v2, v3}, Ls3/i;->k(I)V

    .line 141
    iput v0, v1, Lz3/d;->k:I

    goto :goto_20

    :cond_30
    :goto_1e
    const/4 v3, 0x1

    .line 142
    iget-object v0, v1, Lz3/d;->j:Ls3/w;

    iget v4, v1, Lz3/d;->p:I

    invoke-interface {v0, v2, v4, v3}, Ls3/w;->d(Ll5/h;IZ)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_31

    :goto_1f
    const/4 v4, -0x1

    goto :goto_21

    .line 143
    :cond_31
    iget v2, v1, Lz3/d;->p:I

    sub-int/2addr v2, v0

    iput v2, v1, Lz3/d;->p:I

    if-lez v2, :cond_32

    :goto_20
    const/4 v4, 0x0

    goto :goto_21

    .line 144
    :cond_32
    iget-object v3, v1, Lz3/d;->j:Ls3/w;

    iget-wide v4, v1, Lz3/d;->n:J

    .line 145
    invoke-virtual {v1, v4, v5}, Lz3/d;->c(J)J

    move-result-wide v4

    const/4 v6, 0x1

    iget-object v0, v1, Lz3/d;->d:Lp3/b0$a;

    iget v7, v0, Lp3/b0$a;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 146
    invoke-interface/range {v3 .. v9}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 147
    iget-wide v2, v1, Lz3/d;->n:J

    iget-object v0, v1, Lz3/d;->d:Lp3/b0$a;

    iget v0, v0, Lp3/b0$a;->g:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lz3/d;->n:J

    const/4 v0, 0x0

    .line 148
    iput v0, v1, Lz3/d;->p:I

    move v4, v0

    :goto_21
    move v5, v4

    const/4 v0, -0x1

    :goto_22
    if-ne v5, v0, :cond_33

    .line 149
    iget-object v0, v1, Lz3/d;->q:Lz3/e;

    instance-of v0, v0, Lz3/b;

    if-eqz v0, :cond_33

    .line 150
    iget-wide v2, v1, Lz3/d;->n:J

    invoke-virtual {v1, v2, v3}, Lz3/d;->c(J)J

    move-result-wide v2

    .line 151
    iget-object v0, v1, Lz3/d;->q:Lz3/e;

    invoke-interface {v0}, Ls3/u;->i()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-eqz v0, :cond_33

    .line 152
    iget-object v0, v1, Lz3/d;->q:Lz3/e;

    move-object v4, v0

    check-cast v4, Lz3/b;

    .line 153
    iput-wide v2, v4, Lz3/b;->d:J

    .line 154
    iget-object v2, v1, Lz3/d;->h:Ls3/j;

    invoke-interface {v2, v0}, Ls3/j;->j(Ls3/u;)V

    :cond_33
    return v5
.end method

.method public final g(Ls3/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lz3/d;->h:Ls3/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lz3/d;->i:Ls3/w;

    .line 3
    iput-object p1, p0, Lz3/d;->j:Ls3/w;

    .line 4
    iget-object p1, p0, Lz3/d;->h:Ls3/j;

    invoke-interface {p1}, Ls3/j;->b()V

    return-void
.end method

.method public final h(Ls3/i;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz3/d;->q:Lz3/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lz3/e;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ls3/i;->q()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lz3/d;->c:Lm5/w;

    .line 5
    iget-object v0, v0, Lm5/w;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 6
    invoke-interface {p1, v0, v2, v3, v1}, Ls3/i;->p([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method public final i(Ls3/i;Z)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000

    .line 1
    :goto_0
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_4

    .line 3
    iget v3, v0, Lz3/d;->a:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    .line 4
    :cond_2
    sget-object v3, Lz3/d;->u:Ly0/e;

    .line 5
    :goto_2
    iget-object v7, v0, Lz3/d;->f:Ls3/r;

    invoke-virtual {v7, v1, v3}, Ls3/r;->a(Ls3/i;Lk4/g$a;)Lf4/a;

    move-result-object v3

    iput-object v3, v0, Lz3/d;->l:Lf4/a;

    if-eqz v3, :cond_3

    .line 6
    iget-object v7, v0, Lz3/d;->e:Ls3/q;

    invoke-virtual {v7, v3}, Ls3/q;->b(Lf4/a;)Z

    .line 7
    :cond_3
    invoke-interface/range {p1 .. p1}, Ls3/i;->q()J

    move-result-wide v7

    long-to-int v3, v7

    if-nez p2, :cond_5

    .line 8
    invoke-interface {v1, v3}, Ls3/i;->k(I)V

    goto :goto_3

    :cond_4
    move v3, v5

    :cond_5
    :goto_3
    move v7, v5

    move v8, v7

    move v9, v8

    .line 9
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lz3/d;->h(Ls3/i;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-lez v8, :cond_6

    goto :goto_7

    .line 10
    :cond_6
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 11
    :cond_7
    iget-object v10, v0, Lz3/d;->c:Lm5/w;

    invoke-virtual {v10, v5}, Lm5/w;->D(I)V

    .line 12
    iget-object v10, v0, Lz3/d;->c:Lm5/w;

    invoke-virtual {v10}, Lm5/w;->e()I

    move-result v10

    if-eqz v7, :cond_9

    int-to-long v11, v7

    const v13, -0x1f400

    and-int/2addr v13, v10

    int-to-long v13, v13

    const-wide/32 v15, -0x1f400

    and-long/2addr v11, v15

    cmp-long v11, v13, v11

    if-nez v11, :cond_8

    move v11, v6

    goto :goto_5

    :cond_8
    move v11, v5

    :goto_5
    if-eqz v11, :cond_a

    .line 13
    :cond_9
    invoke-static {v10}, Lp3/b0;->a(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_e

    :cond_a
    add-int/lit8 v7, v9, 0x1

    if-ne v9, v2, :cond_c

    if-eqz p2, :cond_b

    return v5

    :cond_b
    const-string v1, "Searched too many bytes."

    .line 14
    invoke-static {v1, v4}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_c
    if-eqz p2, :cond_d

    .line 15
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    add-int v8, v3, v7

    .line 16
    invoke-interface {v1, v8}, Ls3/i;->t(I)V

    goto :goto_6

    .line 17
    :cond_d
    invoke-interface {v1, v6}, Ls3/i;->k(I)V

    :goto_6
    move v8, v5

    move v9, v7

    move v7, v8

    goto :goto_4

    :cond_e
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_f

    .line 18
    iget-object v7, v0, Lz3/d;->d:Lp3/b0$a;

    invoke-virtual {v7, v10}, Lp3/b0$a;->a(I)Z

    move v7, v10

    goto :goto_9

    :cond_f
    const/4 v10, 0x4

    if-ne v8, v10, :cond_11

    :goto_7
    if-eqz p2, :cond_10

    add-int/2addr v3, v9

    .line 19
    invoke-interface {v1, v3}, Ls3/i;->k(I)V

    goto :goto_8

    .line 20
    :cond_10
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 21
    :goto_8
    iput v7, v0, Lz3/d;->k:I

    return v6

    :cond_11
    :goto_9
    add-int/lit8 v11, v11, -0x4

    .line 22
    invoke-interface {v1, v11}, Ls3/i;->t(I)V

    goto :goto_4
.end method

.method public final j(Ls3/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lz3/d;->i(Ls3/i;Z)Z

    move-result p1

    return p1
.end method
