.class public final Lu3/e;
.super Ljava/lang/Object;
.source "ChunkReader.java"


# instance fields
.field public final a:Ls3/w;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:[J

.field public l:[I


# direct methods
.method public constructor <init>(IIJILs3/w;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :cond_1
    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    iput-wide p3, p0, Lu3/e;->d:J

    .line 4
    iput p5, p0, Lu3/e;->e:I

    .line 5
    iput-object p6, p0, Lu3/e;->a:Ls3/w;

    if-ne p2, v1, :cond_2

    const/high16 p3, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 p3, 0x62770000

    .line 6
    :goto_1
    div-int/lit8 p4, p1, 0xa

    .line 7
    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 p4, p4, 0x30

    or-int/2addr p1, p4

    or-int/2addr p3, p1

    .line 8
    iput p3, p0, Lu3/e;->b:I

    if-ne p2, v1, :cond_3

    const/high16 p2, 0x62640000

    or-int/2addr p1, p2

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    .line 9
    :goto_2
    iput p1, p0, Lu3/e;->c:I

    const/16 p1, 0x200

    new-array p2, p1, [J

    .line 10
    iput-object p2, p0, Lu3/e;->k:[J

    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lu3/e;->l:[I

    return-void
.end method


# virtual methods
.method public final a(I)Ls3/v;
    .locals 7

    .line 1
    new-instance v0, Ls3/v;

    iget-object v1, p0, Lu3/e;->l:[I

    aget v1, v1, p1

    int-to-long v1, v1

    .line 2
    iget-wide v3, p0, Lu3/e;->d:J

    const/4 v5, 0x1

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget v5, p0, Lu3/e;->e:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    mul-long/2addr v3, v1

    .line 3
    iget-object v1, p0, Lu3/e;->k:[J

    aget-wide v5, v1, p1

    invoke-direct {v0, v3, v4, v5, v6}, Ls3/v;-><init>(JJ)V

    return-object v0
.end method

.method public final b(J)Ls3/u$a;
    .locals 5

    .line 1
    iget-wide v0, p0, Lu3/e;->d:J

    const/4 v2, 0x1

    int-to-long v3, v2

    mul-long/2addr v0, v3

    iget v3, p0, Lu3/e;->e:I

    int-to-long v3, v3

    div-long/2addr v0, v3

    .line 2
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 3
    iget-object p2, p0, Lu3/e;->l:[I

    .line 4
    invoke-static {p2, p1, v2, v2}, Lm5/g0;->e([IIZZ)I

    move-result p2

    .line 5
    iget-object v0, p0, Lu3/e;->l:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_0

    .line 6
    new-instance p1, Ls3/u$a;

    invoke-virtual {p0, p2}, Lu3/e;->a(I)Ls3/v;

    move-result-object p2

    .line 7
    invoke-direct {p1, p2, p2}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lu3/e;->a(I)Ls3/v;

    move-result-object p1

    add-int/2addr p2, v2

    .line 9
    iget-object v0, p0, Lu3/e;->k:[J

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 10
    new-instance v0, Ls3/u$a;

    invoke-virtual {p0, p2}, Lu3/e;->a(I)Ls3/v;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    return-object v0

    .line 11
    :cond_1
    new-instance p2, Ls3/u$a;

    .line 12
    invoke-direct {p2, p1, p1}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    return-object p2
.end method
