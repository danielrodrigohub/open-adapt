.class public final Ls3/x;
.super Ljava/lang/Object;
.source "TrueHdSampleRechunker.java"


# instance fields
.field public final a:[B

.field public b:Z

.field public c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Ls3/x;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Ls3/w;Ls3/w$a;)V
    .locals 8

    .line 1
    iget v0, p0, Ls3/x;->c:I

    if-lez v0, :cond_0

    .line 2
    iget-wide v2, p0, Ls3/x;->d:J

    iget v4, p0, Ls3/x;->e:I

    iget v5, p0, Ls3/x;->f:I

    iget v6, p0, Ls3/x;->g:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Ls3/w;->c(JIIILs3/w$a;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ls3/x;->c:I

    :cond_0
    return-void
.end method

.method public final b(Ls3/w;JIIILs3/w$a;)V
    .locals 3

    .line 1
    iget v0, p0, Ls3/x;->g:I

    add-int v1, p5, p6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Ls3/x;->b:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Ls3/x;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls3/x;->c:I

    if-nez v0, :cond_2

    .line 4
    iput-wide p2, p0, Ls3/x;->d:J

    .line 5
    iput p4, p0, Ls3/x;->e:I

    .line 6
    iput v2, p0, Ls3/x;->f:I

    .line 7
    :cond_2
    iget p2, p0, Ls3/x;->f:I

    add-int/2addr p2, p5

    iput p2, p0, Ls3/x;->f:I

    .line 8
    iput p6, p0, Ls3/x;->g:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_3

    .line 9
    invoke-virtual {p0, p1, p7}, Ls3/x;->a(Ls3/w;Ls3/w$a;)V

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ls3/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ls3/x;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls3/x;->a:[B

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ls3/i;->s([BII)V

    .line 3
    invoke-interface {p1}, Ls3/i;->i()V

    .line 4
    iget-object p1, p0, Ls3/x;->a:[B

    const/4 v0, 0x4

    .line 5
    aget-byte v1, p1, v0

    const/4 v3, -0x8

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_4

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_4

    const/4 v1, 0x7

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xfe

    const/16 v5, 0xba

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xbb

    if-ne v3, v5, :cond_2

    move v2, v4

    :cond_2
    const/16 v3, 0x28

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    .line 7
    :goto_0
    aget-byte p1, p1, v2

    shr-int/2addr p1, v0

    and-int/2addr p1, v1

    shl-int v2, v3, p1

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    return-void

    .line 8
    :cond_5
    iput-boolean v4, p0, Ls3/x;->b:Z

    return-void
.end method
