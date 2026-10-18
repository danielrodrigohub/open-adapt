.class public final Lx4/k;
.super Ljava/lang/Object;
.source "RtpVp8Reader.java"

# interfaces
.implements Lx4/i;


# instance fields
.field public final a:Lw4/f;

.field public b:Ls3/w;

.field public c:J

.field public d:I

.field public e:I

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lw4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx4/k;->a:Lw4/f;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lx4/k;->c:J

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lx4/k;->d:I

    .line 5
    iput p1, p0, Lx4/k;->e:I

    .line 6
    iput-wide v0, p0, Lx4/k;->f:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lx4/k;->g:J

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lx4/k;->h:Z

    .line 9
    iput-boolean p1, p0, Lx4/k;->i:Z

    .line 10
    iput-boolean p1, p0, Lx4/k;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lx4/k;->b:Ls3/w;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lm5/w;->t()I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lx4/k;->h:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lx4/k;->e:I

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lx4/k;->e()V

    .line 5
    :cond_0
    iput-boolean v4, p0, Lx4/k;->h:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v1, p0, Lx4/k;->h:Z

    const-string v5, "RtpVP8Reader"

    if-eqz v1, :cond_7

    .line 7
    iget v1, p0, Lx4/k;->d:I

    invoke-static {v1}, Lw4/c;->a(I)I

    move-result v1

    if-ge p4, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 9
    invoke-static {v1, v0}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v5, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lm5/w;->t()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p1}, Lm5/w;->t()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p1, v4}, Lm5/w;->E(I)V

    :cond_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p1, v4}, Lm5/w;->E(I)V

    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_5

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 15
    :cond_5
    invoke-virtual {p1, v4}, Lm5/w;->E(I)V

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    const-string v0, "RTP packet is not the start of a new VP8 partition, skipping."

    .line 16
    invoke-static {v5, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v3

    :goto_2
    if-eqz v0, :cond_f

    .line 17
    iget v0, p0, Lx4/k;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lx4/k;->h:Z

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {p1}, Lm5/w;->b()I

    move-result v0

    and-int/2addr v0, v4

    if-nez v0, :cond_8

    move v3, v4

    :cond_8
    iput-boolean v3, p0, Lx4/k;->i:Z

    .line 19
    :cond_9
    iget-boolean v0, p0, Lx4/k;->j:Z

    if-nez v0, :cond_c

    .line 20
    iget v0, p1, Lm5/w;->b:I

    add-int/lit8 v2, v0, 0x6

    .line 21
    invoke-virtual {p1, v2}, Lm5/w;->D(I)V

    .line 22
    invoke-virtual {p1}, Lm5/w;->l()I

    move-result v2

    and-int/lit16 v2, v2, 0x3fff

    .line 23
    invoke-virtual {p1}, Lm5/w;->l()I

    move-result v3

    and-int/lit16 v3, v3, 0x3fff

    .line 24
    invoke-virtual {p1, v0}, Lm5/w;->D(I)V

    .line 25
    iget-object v0, p0, Lx4/k;->a:Lw4/f;

    iget-object v0, v0, Lw4/f;->c:Ln3/s0;

    iget v5, v0, Ln3/s0;->x:I

    if-ne v2, v5, :cond_a

    iget v5, v0, Ln3/s0;->y:I

    if-eq v3, v5, :cond_b

    .line 26
    :cond_a
    iget-object v5, p0, Lx4/k;->b:Ls3/w;

    .line 27
    new-instance v6, Ln3/s0$a;

    invoke-direct {v6, v0}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 28
    iput v2, v6, Ln3/s0$a;->p:I

    .line 29
    iput v3, v6, Ln3/s0$a;->q:I

    .line 30
    new-instance v0, Ln3/s0;

    invoke-direct {v0, v6}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 31
    invoke-interface {v5, v0}, Ls3/w;->b(Ln3/s0;)V

    .line 32
    :cond_b
    iput-boolean v4, p0, Lx4/k;->j:Z

    .line 33
    :cond_c
    iget v0, p1, Lm5/w;->c:I

    iget v2, p1, Lm5/w;->b:I

    sub-int/2addr v0, v2

    .line 34
    iget-object v2, p0, Lx4/k;->b:Ls3/w;

    invoke-interface {v2, p1, v0}, Ls3/w;->f(Lm5/w;I)V

    .line 35
    iget p1, p0, Lx4/k;->e:I

    if-ne p1, v1, :cond_d

    .line 36
    iput v0, p0, Lx4/k;->e:I

    goto :goto_3

    :cond_d
    add-int/2addr p1, v0

    .line 37
    iput p1, p0, Lx4/k;->e:I

    .line 38
    :goto_3
    iget-wide v0, p0, Lx4/k;->g:J

    iget-wide v2, p0, Lx4/k;->c:J

    sub-long v4, p2, v2

    const-wide/32 v6, 0xf4240

    const-wide/32 v8, 0x15f90

    .line 39
    invoke-static/range {v4 .. v9}, Lm5/g0;->R(JJJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    .line 40
    iput-wide p1, p0, Lx4/k;->f:J

    if-eqz p5, :cond_e

    .line 41
    invoke-virtual {p0}, Lx4/k;->e()V

    .line 42
    :cond_e
    iput p4, p0, Lx4/k;->d:I

    :cond_f
    return-void
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/k;->c:J

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lx4/k;->e:I

    .line 3
    iput-wide p3, p0, Lx4/k;->g:J

    return-void
.end method

.method public final c(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lx4/k;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput-wide p1, p0, Lx4/k;->c:J

    return-void
.end method

.method public final d(Ls3/j;I)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lx4/k;->b:Ls3/w;

    .line 2
    iget-object p2, p0, Lx4/k;->a:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lx4/k;->b:Ls3/w;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lx4/k;->f:J

    .line 4
    iget-boolean v3, p0, Lx4/k;->i:Z

    iget v4, p0, Lx4/k;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    invoke-interface/range {v0 .. v6}, Ls3/w;->c(JIIILs3/w$a;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lx4/k;->e:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v1, p0, Lx4/k;->f:J

    .line 8
    iput-boolean v0, p0, Lx4/k;->h:Z

    return-void
.end method
