.class public final Lx4/a;
.super Ljava/lang/Object;
.source "RtpAacReader.java"

# interfaces
.implements Lx4/i;


# instance fields
.field public final a:Lw4/f;

.field public final b:Lm5/v;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:J

.field public h:Ls3/w;

.field public i:J


# direct methods
.method public constructor <init>(Lw4/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx4/a;->a:Lw4/f;

    .line 3
    new-instance v0, Lm5/v;

    invoke-direct {v0}, Lm5/v;-><init>()V

    iput-object v0, p0, Lx4/a;->b:Lm5/v;

    .line 4
    iget v0, p1, Lw4/f;->b:I

    iput v0, p0, Lx4/a;->c:I

    .line 5
    iget-object p1, p1, Lw4/f;->d:Lu6/x;

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lu6/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AAC-hbr"

    .line 7
    invoke-static {p1, v0}, Landroidx/activity/k;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd

    .line 8
    iput p1, p0, Lx4/a;->d:I

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lx4/a;->e:I

    goto :goto_0

    :cond_0
    const-string v0, "AAC-lbr"

    .line 10
    invoke-static {p1, v0}, Landroidx/activity/k;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    .line 11
    iput p1, p0, Lx4/a;->d:I

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lx4/a;->e:I

    .line 13
    :goto_0
    iget p1, p0, Lx4/a;->e:I

    iget v0, p0, Lx4/a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lx4/a;->f:I

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AAC mode not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lx4/a;->h:Ls3/w;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lm5/w;->p()S

    move-result v2

    .line 4
    iget v3, v0, Lx4/a;->f:I

    div-int v3, v2, v3

    .line 5
    iget-wide v4, v0, Lx4/a;->i:J

    iget-wide v6, v0, Lx4/a;->g:J

    iget v8, v0, Lx4/a;->c:I

    sub-long v9, p2, v6

    int-to-long v13, v8

    const-wide/32 v11, 0xf4240

    .line 6
    invoke-static/range {v9 .. v14}, Lm5/g0;->R(JJJ)J

    move-result-wide v6

    add-long v9, v4, v6

    .line 7
    iget-object v4, v0, Lx4/a;->b:Lm5/v;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v5, v1, Lm5/w;->a:[B

    .line 9
    iget v6, v1, Lm5/w;->c:I

    .line 10
    invoke-virtual {v4, v5, v6}, Lm5/v;->j([BI)V

    .line 11
    iget v5, v1, Lm5/w;->b:I

    mul-int/lit8 v5, v5, 0x8

    .line 12
    invoke-virtual {v4, v5}, Lm5/v;->k(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 13
    iget-object v2, v0, Lx4/a;->b:Lm5/v;

    iget v3, v0, Lx4/a;->d:I

    invoke-virtual {v2, v3}, Lm5/v;->g(I)I

    move-result v12

    .line 14
    iget-object v2, v0, Lx4/a;->b:Lm5/v;

    iget v3, v0, Lx4/a;->e:I

    invoke-virtual {v2, v3}, Lm5/v;->m(I)V

    .line 15
    iget-object v2, v0, Lx4/a;->h:Ls3/w;

    .line 16
    iget v3, v1, Lm5/w;->c:I

    iget v4, v1, Lm5/w;->b:I

    sub-int/2addr v3, v4

    .line 17
    invoke-interface {v2, v1, v3}, Ls3/w;->f(Lm5/w;I)V

    if-eqz p5, :cond_1

    .line 18
    iget-object v8, v0, Lx4/a;->h:Ls3/w;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 19
    invoke-interface/range {v8 .. v14}, Ls3/w;->c(JIIILs3/w$a;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 20
    div-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Lm5/w;->E(I)V

    const/4 v2, 0x0

    move-wide v11, v9

    :goto_0
    if-ge v2, v3, :cond_1

    .line 21
    iget-object v4, v0, Lx4/a;->b:Lm5/v;

    iget v5, v0, Lx4/a;->d:I

    invoke-virtual {v4, v5}, Lm5/v;->g(I)I

    move-result v8

    .line 22
    iget-object v4, v0, Lx4/a;->b:Lm5/v;

    iget v5, v0, Lx4/a;->e:I

    invoke-virtual {v4, v5}, Lm5/v;->m(I)V

    .line 23
    iget-object v4, v0, Lx4/a;->h:Ls3/w;

    invoke-interface {v4, v1, v8}, Ls3/w;->f(Lm5/w;I)V

    .line 24
    iget-object v4, v0, Lx4/a;->h:Ls3/w;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v11

    .line 25
    invoke-interface/range {v4 .. v10}, Ls3/w;->c(JIIILs3/w$a;)V

    int-to-long v13, v3

    const-wide/32 v15, 0xf4240

    .line 26
    iget v4, v0, Lx4/a;->c:I

    int-to-long v4, v4

    move-wide/from16 v17, v4

    .line 27
    invoke-static/range {v13 .. v18}, Lm5/g0;->R(JJJ)J

    move-result-wide v4

    add-long/2addr v11, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/a;->g:J

    .line 2
    iput-wide p3, p0, Lx4/a;->i:J

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lx4/a;->g:J

    return-void
.end method

.method public final d(Ls3/j;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lx4/a;->h:Ls3/w;

    .line 2
    iget-object p2, p0, Lx4/a;->a:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method
