.class public final Lc4/a;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Ls3/h;


# instance fields
.field public final a:Lc4/b;

.field public final b:Lm5/w;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/h;->g:Ly0/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc4/b;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lc4/b;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lc4/a;->a:Lc4/b;

    .line 5
    new-instance v0, Lm5/w;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    iput-object v0, p0, Lc4/a;->b:Lm5/w;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lc4/a;->c:Z

    .line 2
    iget-object p1, p0, Lc4/a;->a:Lc4/b;

    invoke-virtual {p1}, Lc4/b;->a()V

    return-void
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc4/a;->b:Lm5/w;

    .line 2
    iget-object p2, p2, Lm5/w;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    .line 3
    invoke-interface {p1, p2, v0, v1}, Ls3/i;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 4
    :cond_0
    iget-object p2, p0, Lc4/a;->b:Lm5/w;

    invoke-virtual {p2, v0}, Lm5/w;->D(I)V

    .line 5
    iget-object p2, p0, Lc4/a;->b:Lm5/w;

    invoke-virtual {p2, p1}, Lm5/w;->C(I)V

    .line 6
    iget-boolean p1, p0, Lc4/a;->c:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lc4/a;->a:Lc4/b;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lc4/b;->e(JI)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lc4/a;->c:Z

    .line 9
    :cond_1
    iget-object p1, p0, Lc4/a;->a:Lc4/b;

    iget-object p2, p0, Lc4/a;->b:Lm5/w;

    invoke-virtual {p1, p2}, Lc4/b;->c(Lm5/w;)V

    return v0
.end method

.method public final g(Ls3/j;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/a;->a:Lc4/b;

    new-instance v1, Lc4/d0$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lc4/d0$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lc4/b;->f(Ls3/j;Lc4/d0$d;)V

    .line 2
    invoke-interface {p1}, Ls3/j;->b()V

    .line 3
    new-instance v0, Ls3/u$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Ls3/u$b;-><init>(J)V

    invoke-interface {p1, v0}, Ls3/j;->j(Ls3/u;)V

    return-void
.end method

.method public final j(Ls3/i;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lm5/w;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    iget-object v4, v0, Lm5/w;->a:[B

    .line 3
    move-object v5, p1

    check-cast v5, Ls3/e;

    .line 4
    invoke-virtual {v5, v4, v2, v1, v2}, Ls3/e;->p([BIIZ)Z

    .line 5
    invoke-virtual {v0, v2}, Lm5/w;->D(I)V

    .line 6
    invoke-virtual {v0}, Lm5/w;->v()I

    move-result v4

    const v6, 0x494433

    const/4 v7, 0x3

    if-eq v4, v6, :cond_7

    .line 7
    iput v2, v5, Ls3/e;->f:I

    .line 8
    invoke-virtual {v5, v3, v2}, Ls3/e;->n(IZ)Z

    move p1, v2

    move v4, v3

    .line 9
    :goto_1
    iget-object v6, v0, Lm5/w;->a:[B

    const/4 v8, 0x6

    .line 10
    invoke-virtual {v5, v6, v2, v8, v2}, Ls3/e;->p([BIIZ)Z

    .line 11
    invoke-virtual {v0, v2}, Lm5/w;->D(I)V

    .line 12
    invoke-virtual {v0}, Lm5/w;->y()I

    move-result v6

    const/16 v9, 0xb77

    if-eq v6, v9, :cond_1

    .line 13
    iput v2, v5, Ls3/e;->f:I

    add-int/lit8 v4, v4, 0x1

    sub-int p1, v4, v3

    const/16 v6, 0x2000

    if-lt p1, v6, :cond_0

    return v2

    .line 14
    :cond_0
    invoke-virtual {v5, v4, v2}, Ls3/e;->n(IZ)Z

    move p1, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    add-int/2addr p1, v6

    const/4 v9, 0x4

    if-lt p1, v9, :cond_2

    return v6

    .line 15
    :cond_2
    iget-object v10, v0, Lm5/w;->a:[B

    .line 16
    array-length v11, v10

    const/4 v12, -0x1

    if-ge v11, v8, :cond_3

    move v9, v12

    goto :goto_3

    :cond_3
    const/4 v11, 0x5

    .line 17
    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xf8

    shr-int/2addr v11, v7

    if-le v11, v1, :cond_4

    move v11, v6

    goto :goto_2

    :cond_4
    move v11, v2

    :goto_2
    if-eqz v11, :cond_5

    const/4 v8, 0x2

    .line 18
    aget-byte v9, v10, v8

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x8

    .line 19
    aget-byte v10, v10, v7

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/2addr v9, v6

    mul-int/2addr v9, v8

    goto :goto_3

    .line 20
    :cond_5
    aget-byte v6, v10, v9

    and-int/lit16 v6, v6, 0xc0

    shr-int/2addr v6, v8

    .line 21
    aget-byte v8, v10, v9

    and-int/lit8 v8, v8, 0x3f

    .line 22
    invoke-static {v6, v8}, Lp3/b;->a(II)I

    move-result v9

    :goto_3
    if-ne v9, v12, :cond_6

    return v2

    :cond_6
    add-int/lit8 v9, v9, -0x6

    .line 23
    invoke-virtual {v5, v9, v2}, Ls3/e;->n(IZ)Z

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {v0, v7}, Lm5/w;->E(I)V

    .line 25
    invoke-virtual {v0}, Lm5/w;->s()I

    move-result v4

    add-int/lit8 v6, v4, 0xa

    add-int/2addr v3, v6

    .line 26
    invoke-virtual {v5, v4, v2}, Ls3/e;->n(IZ)Z

    goto/16 :goto_0
.end method
