.class public final Ld4/a$c;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Ld4/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ls3/j;

.field public final b:Ls3/w;

.field public final c:Ld4/b;

.field public final d:Ln3/s0;

.field public final e:I

.field public f:J

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Ls3/j;Ls3/w;Ld4/b;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld4/a$c;->a:Ls3/j;

    .line 3
    iput-object p2, p0, Ld4/a$c;->b:Ls3/w;

    .line 4
    iput-object p3, p0, Ld4/a$c;->c:Ld4/b;

    .line 5
    iget p1, p3, Ld4/b;->a:I

    iget p2, p3, Ld4/b;->d:I

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 6
    iget p2, p3, Ld4/b;->c:I

    if-ne p2, p1, :cond_0

    .line 7
    iget p2, p3, Ld4/b;->b:I

    mul-int/2addr p2, p1

    mul-int/lit8 v0, p2, 0x8

    .line 8
    div-int/lit8 p2, p2, 0xa

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ld4/a$c;->e:I

    .line 10
    new-instance p2, Ln3/s0$a;

    invoke-direct {p2}, Ln3/s0$a;-><init>()V

    .line 11
    iput-object p4, p2, Ln3/s0$a;->k:Ljava/lang/String;

    .line 12
    iput v0, p2, Ln3/s0$a;->f:I

    .line 13
    iput v0, p2, Ln3/s0$a;->g:I

    .line 14
    iput p1, p2, Ln3/s0$a;->l:I

    .line 15
    iget p1, p3, Ld4/b;->a:I

    .line 16
    iput p1, p2, Ln3/s0$a;->x:I

    .line 17
    iget p1, p3, Ld4/b;->b:I

    .line 18
    iput p1, p2, Ln3/s0$a;->y:I

    .line 19
    iput p5, p2, Ln3/s0$a;->z:I

    .line 20
    new-instance p1, Ln3/s0;

    invoke-direct {p1, p2}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 21
    iput-object p1, p0, Ld4/a$c;->d:Ln3/s0;

    return-void

    :cond_0
    const-string p2, "Expected block size: "

    const-string p4, "; got: "

    .line 22
    invoke-static {p2, p1, p4}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 23
    iget p2, p3, Ld4/b;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Ls3/i;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    .line 1
    iget v7, v0, Ld4/a$c;->g:I

    iget v8, v0, Ld4/a$c;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    .line 2
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    .line 3
    iget-object v7, v0, Ld4/a$c;->b:Ls3/w;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Ls3/w;->d(Ll5/h;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 4
    :cond_0
    iget v3, v0, Ld4/a$c;->g:I

    add-int/2addr v3, v5

    iput v3, v0, Ld4/a$c;->g:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Ld4/a$c;->c:Ld4/b;

    iget v2, v1, Ld4/b;->c:I

    .line 6
    iget v3, v0, Ld4/a$c;->g:I

    div-int/2addr v3, v2

    if-lez v3, :cond_2

    .line 7
    iget-wide v7, v0, Ld4/a$c;->f:J

    iget-wide v9, v0, Ld4/a$c;->h:J

    const-wide/32 v11, 0xf4240

    iget v1, v1, Ld4/b;->b:I

    int-to-long v13, v1

    .line 8
    invoke-static/range {v9 .. v14}, Lm5/g0;->R(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    .line 9
    iget v1, v0, Ld4/a$c;->g:I

    sub-int/2addr v1, v15

    .line 10
    iget-object v11, v0, Ld4/a$c;->b:Ls3/w;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-interface/range {v11 .. v17}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 11
    iget-wide v7, v0, Ld4/a$c;->h:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Ld4/a$c;->h:J

    .line 12
    iput v1, v0, Ld4/a$c;->g:I

    :cond_2
    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    return v6
.end method

.method public final b(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Ld4/a$c;->a:Ls3/j;

    new-instance v8, Ld4/d;

    iget-object v2, p0, Ld4/a$c;->c:Ld4/b;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Ld4/d;-><init>(Ld4/b;IJJ)V

    invoke-interface {v0, v8}, Ls3/j;->j(Ls3/u;)V

    .line 2
    iget-object p1, p0, Ld4/a$c;->b:Ls3/w;

    iget-object p2, p0, Ld4/a$c;->d:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ld4/a$c;->f:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ld4/a$c;->g:I

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Ld4/a$c;->h:J

    return-void
.end method
