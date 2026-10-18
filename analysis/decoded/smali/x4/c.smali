.class public final Lx4/c;
.super Ljava/lang/Object;
.source "RtpAmrReader.java"

# interfaces
.implements Lx4/i;


# static fields
.field public static final h:[I

.field public static final i:[I


# instance fields
.field public final a:Lw4/f;

.field public final b:Z

.field public final c:I

.field public d:Ls3/w;

.field public e:J

.field public f:J

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lx4/c;->h:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lx4/c;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Lw4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx4/c;->a:Lw4/f;

    .line 3
    iget-object v0, p1, Lw4/f;->c:Ln3/s0;

    iget-object v0, v0, Ln3/s0;->s:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "audio/amr-wb"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lx4/c;->b:Z

    .line 6
    iget p1, p1, Lw4/f;->b:I

    iput p1, p0, Lx4/c;->c:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lx4/c;->e:J

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lx4/c;->g:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lx4/c;->f:J

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1
    iget-object v3, v0, Lx4/c;->d:Ls3/w;

    invoke-static {v3}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v3, v0, Lx4/c;->g:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 3
    invoke-static {v3}, Lw4/c;->a(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v5

    const-string v3, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d."

    .line 5
    invoke-static {v3, v6}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "RtpAmrReader"

    .line 6
    invoke-static {v6, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v1, v5}, Lm5/w;->E(I)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lm5/w;->b()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    const/16 v6, 0xf

    and-int/2addr v3, v6

    .line 9
    iget-boolean v7, v0, Lx4/c;->b:Z

    if-ltz v3, :cond_1

    const/16 v8, 0x8

    if-le v3, v8, :cond_2

    :cond_1
    if-ne v3, v6, :cond_3

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    const-string v8, "Illegal AMR "

    .line 10
    invoke-static {v8}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v7, :cond_4

    const-string v9, "WB"

    goto :goto_1

    :cond_4
    const-string v9, "NB"

    .line 11
    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " frame type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-static {v6, v8}, Lm5/a;->b(ZLjava/lang/Object;)V

    if-eqz v7, :cond_5

    .line 13
    sget-object v6, Lx4/c;->i:[I

    aget v3, v6, v3

    goto :goto_2

    .line 14
    :cond_5
    sget-object v6, Lx4/c;->h:[I

    aget v3, v6, v3

    .line 15
    :goto_2
    iget v6, v1, Lm5/w;->c:I

    iget v7, v1, Lm5/w;->b:I

    sub-int v12, v6, v7

    if-ne v12, v3, :cond_6

    move v4, v5

    :cond_6
    const-string v3, "compound payload not supported currently"

    .line 16
    invoke-static {v4, v3}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 17
    iget-object v3, v0, Lx4/c;->d:Ls3/w;

    invoke-interface {v3, v1, v12}, Ls3/w;->f(Lm5/w;I)V

    .line 18
    iget-wide v3, v0, Lx4/c;->f:J

    iget-wide v5, v0, Lx4/c;->e:J

    iget v1, v0, Lx4/c;->c:I

    sub-long v13, p2, v5

    int-to-long v5, v1

    const-wide/32 v15, 0xf4240

    move-wide/from16 v17, v5

    .line 19
    invoke-static/range {v13 .. v18}, Lm5/g0;->R(JJJ)J

    move-result-wide v5

    add-long v9, v3, v5

    .line 20
    iget-object v8, v0, Lx4/c;->d:Ls3/w;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 21
    iput v2, v0, Lx4/c;->g:I

    return-void
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/c;->e:J

    .line 2
    iput-wide p3, p0, Lx4/c;->f:J

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lx4/c;->e:J

    return-void
.end method

.method public final d(Ls3/j;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lx4/c;->d:Ls3/w;

    .line 2
    iget-object p2, p0, Lx4/c;->a:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method
