.class public final Lx4/g;
.super Ljava/lang/Object;
.source "RtpMpeg4Reader.java"

# interfaces
.implements Lx4/i;


# instance fields
.field public final a:Lw4/f;

.field public b:Ls3/w;

.field public c:I

.field public d:J

.field public e:I

.field public f:J

.field public g:I


# direct methods
.method public constructor <init>(Lw4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx4/g;->a:Lw4/f;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lx4/g;->d:J

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lx4/g;->e:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lx4/g;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 1
    iget-object v5, v0, Lx4/g;->b:Ls3/w;

    invoke-static {v5}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v5, v0, Lx4/g;->e:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v5, v7, :cond_0

    .line 3
    invoke-static {v5}, Lw4/c;->a(I)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    const-string v5, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 5
    invoke-static {v5, v9}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "RtpMpeg4Reader"

    .line 6
    invoke-static {v9, v5}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget v5, v1, Lm5/w;->c:I

    iget v9, v1, Lm5/w;->b:I

    sub-int/2addr v5, v9

    .line 8
    iget-object v9, v0, Lx4/g;->b:Ls3/w;

    invoke-interface {v9, v1, v5}, Ls3/w;->f(Lm5/w;I)V

    .line 9
    iget v9, v0, Lx4/g;->g:I

    if-nez v9, :cond_5

    .line 10
    iget-object v9, v1, Lm5/w;->a:[B

    const/4 v10, 0x4

    new-array v11, v10, [B

    .line 11
    fill-array-data v11, :array_0

    const-string v12, "array"

    .line 12
    invoke-static {v9, v12}, Lt6/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v8

    .line 13
    :goto_0
    array-length v13, v9

    sub-int/2addr v13, v10

    add-int/2addr v13, v6

    if-ge v12, v13, :cond_2

    move v13, v8

    :goto_1
    if-ge v13, v10, :cond_3

    add-int v14, v12, v13

    .line 14
    aget-byte v14, v9, v14

    aget-byte v15, v11, v13

    if-eq v14, v15, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move v12, v7

    :cond_3
    if-eq v12, v7, :cond_4

    add-int/2addr v12, v10

    .line 15
    invoke-virtual {v1, v12}, Lm5/w;->D(I)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lm5/w;->b()I

    move-result v1

    shr-int/lit8 v1, v1, 0x6

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v6, v8

    .line 17
    :goto_2
    iput v6, v0, Lx4/g;->c:I

    .line 18
    :cond_5
    iget v1, v0, Lx4/g;->g:I

    add-int/2addr v1, v5

    iput v1, v0, Lx4/g;->g:I

    if-eqz p5, :cond_7

    .line 19
    iget-wide v5, v0, Lx4/g;->d:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v9

    if-nez v1, :cond_6

    .line 20
    iput-wide v2, v0, Lx4/g;->d:J

    .line 21
    :cond_6
    iget-wide v5, v0, Lx4/g;->f:J

    iget-wide v9, v0, Lx4/g;->d:J

    sub-long v11, v2, v9

    const-wide/32 v13, 0xf4240

    const-wide/32 v15, 0x15f90

    .line 22
    invoke-static/range {v11 .. v16}, Lm5/g0;->R(JJJ)J

    move-result-wide v1

    add-long v10, v1, v5

    .line 23
    iget-object v9, v0, Lx4/g;->b:Ls3/w;

    iget v12, v0, Lx4/g;->c:I

    iget v13, v0, Lx4/g;->g:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 24
    iput v8, v0, Lx4/g;->g:I

    .line 25
    :cond_7
    iput v4, v0, Lx4/g;->e:I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        -0x4at
    .end array-data
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/g;->d:J

    .line 2
    iput-wide p3, p0, Lx4/g;->f:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lx4/g;->g:I

    return-void
.end method

.method public final c(J)V
    .locals 0

    return-void
.end method

.method public final d(Ls3/j;I)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lx4/g;->b:Ls3/w;

    .line 2
    sget p2, Lm5/g0;->a:I

    iget-object p2, p0, Lx4/g;->a:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method
