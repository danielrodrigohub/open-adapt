.class public final Lw3/e;
.super Lw3/d;
.source "VideoTagPayloadReader.java"


# instance fields
.field public final b:Lm5/w;

.field public final c:Lm5/w;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Ls3/w;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lw3/d;-><init>(Ls3/w;)V

    .line 2
    new-instance p1, Lm5/w;

    sget-object v0, Lm5/t;->a:[B

    invoke-direct {p1, v0}, Lm5/w;-><init>([B)V

    iput-object p1, p0, Lw3/e;->b:Lm5/w;

    .line 3
    new-instance p1, Lm5/w;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lm5/w;-><init>(I)V

    iput-object p1, p0, Lw3/e;->c:Lm5/w;

    return-void
.end method


# virtual methods
.method public final b(Lm5/w;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lw3/d$a;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm5/w;->t()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Lw3/e;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance v0, Lw3/d$a;

    const-string v1, "Video format not supported: "

    .line 4
    invoke-static {v1, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Lw3/d$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lm5/w;J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm5/w;->t()I

    move-result v0

    .line 2
    iget-object v1, p1, Lm5/w;->a:[B

    iget v2, p1, Lm5/w;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lm5/w;->b:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lm5/w;->b:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p1, Lm5/w;->b:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    add-long v5, v1, p2

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lw3/e;->e:Z

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Lm5/w;

    .line 5
    iget v1, p1, Lm5/w;->c:I

    sub-int/2addr v1, v3

    .line 6
    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lm5/w;-><init>([B)V

    .line 7
    iget-object v1, v0, Lm5/w;->a:[B

    .line 8
    iget v2, p1, Lm5/w;->c:I

    iget v3, p1, Lm5/w;->b:I

    sub-int/2addr v2, v3

    .line 9
    invoke-virtual {p1, v1, p3, v2}, Lm5/w;->d([BII)V

    .line 10
    invoke-static {v0}, Ln5/a;->b(Lm5/w;)Ln5/a;

    move-result-object p1

    .line 11
    iget v0, p1, Ln5/a;->b:I

    iput v0, p0, Lw3/e;->d:I

    .line 12
    new-instance v0, Ln3/s0$a;

    invoke-direct {v0}, Ln3/s0$a;-><init>()V

    const-string v1, "video/avc"

    .line 13
    iput-object v1, v0, Ln3/s0$a;->k:Ljava/lang/String;

    .line 14
    iget-object v1, p1, Ln5/a;->f:Ljava/lang/String;

    .line 15
    iput-object v1, v0, Ln3/s0$a;->h:Ljava/lang/String;

    .line 16
    iget v1, p1, Ln5/a;->c:I

    .line 17
    iput v1, v0, Ln3/s0$a;->p:I

    .line 18
    iget v1, p1, Ln5/a;->d:I

    .line 19
    iput v1, v0, Ln3/s0$a;->q:I

    .line 20
    iget v1, p1, Ln5/a;->e:F

    .line 21
    iput v1, v0, Ln3/s0$a;->t:F

    .line 22
    iget-object p1, p1, Ln5/a;->a:Ljava/util/List;

    .line 23
    iput-object p1, v0, Ln3/s0$a;->m:Ljava/util/List;

    .line 24
    new-instance p1, Ln3/s0;

    invoke-direct {p1, v0}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 25
    iget-object v0, p0, Lw3/d;->a:Ls3/w;

    invoke-interface {v0, p1}, Ls3/w;->b(Ln3/s0;)V

    .line 26
    iput-boolean p2, p0, Lw3/e;->e:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_4

    .line 27
    iget-boolean v0, p0, Lw3/e;->e:Z

    if-eqz v0, :cond_4

    .line 28
    iget v0, p0, Lw3/e;->g:I

    if-ne v0, p2, :cond_1

    move v7, p2

    goto :goto_0

    :cond_1
    move v7, p3

    .line 29
    :goto_0
    iget-boolean v0, p0, Lw3/e;->f:Z

    if-nez v0, :cond_2

    if-nez v7, :cond_2

    return p3

    .line 30
    :cond_2
    iget-object v0, p0, Lw3/e;->c:Lm5/w;

    .line 31
    iget-object v0, v0, Lm5/w;->a:[B

    .line 32
    aput-byte p3, v0, p3

    .line 33
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 34
    aput-byte p3, v0, v1

    .line 35
    iget v0, p0, Lw3/e;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    move v8, p3

    .line 36
    :goto_1
    iget v2, p1, Lm5/w;->c:I

    iget v3, p1, Lm5/w;->b:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    .line 37
    iget-object v2, p0, Lw3/e;->c:Lm5/w;

    .line 38
    iget-object v2, v2, Lm5/w;->a:[B

    .line 39
    iget v3, p0, Lw3/e;->d:I

    invoke-virtual {p1, v2, v0, v3}, Lm5/w;->d([BII)V

    .line 40
    iget-object v2, p0, Lw3/e;->c:Lm5/w;

    invoke-virtual {v2, p3}, Lm5/w;->D(I)V

    .line 41
    iget-object v2, p0, Lw3/e;->c:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->w()I

    move-result v2

    .line 42
    iget-object v3, p0, Lw3/e;->b:Lm5/w;

    invoke-virtual {v3, p3}, Lm5/w;->D(I)V

    .line 43
    iget-object v3, p0, Lw3/d;->a:Ls3/w;

    iget-object v4, p0, Lw3/e;->b:Lm5/w;

    invoke-interface {v3, v4, v1}, Ls3/w;->f(Lm5/w;I)V

    add-int/lit8 v8, v8, 0x4

    .line 44
    iget-object v3, p0, Lw3/d;->a:Ls3/w;

    invoke-interface {v3, p1, v2}, Ls3/w;->f(Lm5/w;I)V

    add-int/2addr v8, v2

    goto :goto_1

    .line 45
    :cond_3
    iget-object v4, p0, Lw3/d;->a:Ls3/w;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 46
    iput-boolean p2, p0, Lw3/e;->f:Z

    return p2

    :cond_4
    return p3
.end method
