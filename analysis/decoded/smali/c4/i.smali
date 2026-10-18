.class public final Lc4/i;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Lc4/j;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/d0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Ls3/w;

.field public c:Z

.field public d:I

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc4/d0$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/i;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ls3/w;

    iput-object p1, p0, Lc4/i;->b:[Ls3/w;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lc4/i;->f:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc4/i;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lc4/i;->f:J

    return-void
.end method

.method public final b(Lm5/w;I)Z
    .locals 2

    .line 1
    iget v0, p1, Lm5/w;->c:I

    iget v1, p1, Lm5/w;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lm5/w;->t()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 3
    iput-boolean v1, p0, Lc4/i;->c:Z

    .line 4
    :cond_1
    iget p1, p0, Lc4/i;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lc4/i;->d:I

    .line 5
    iget-boolean p1, p0, Lc4/i;->c:Z

    return p1
.end method

.method public final c(Lm5/w;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lc4/i;->c:Z

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lc4/i;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lc4/i;->b(Lm5/w;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lc4/i;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lc4/i;->b(Lm5/w;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p1, Lm5/w;->b:I

    .line 5
    iget v2, p1, Lm5/w;->c:I

    sub-int/2addr v2, v0

    .line 6
    iget-object v3, p0, Lc4/i;->b:[Ls3/w;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 7
    invoke-virtual {p1, v0}, Lm5/w;->D(I)V

    .line 8
    invoke-interface {v5, p1, v2}, Ls3/w;->f(Lm5/w;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lc4/i;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lc4/i;->e:I

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lc4/i;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-wide v0, p0, Lc4/i;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc4/i;->b:[Ls3/w;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    iget-wide v5, p0, Lc4/i;->f:J

    const/4 v7, 0x1

    iget v8, p0, Lc4/i;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Ls3/w;->c(JIIILs3/w$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v1, p0, Lc4/i;->c:Z

    :cond_1
    return-void
.end method

.method public final e(JI)V
    .locals 2

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 1
    iput-boolean p3, p0, Lc4/i;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 2
    iput-wide p1, p0, Lc4/i;->f:J

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lc4/i;->e:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lc4/i;->d:I

    return-void
.end method

.method public final f(Ls3/j;Lc4/d0$d;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lc4/i;->b:[Ls3/w;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lc4/i;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc4/d0$a;

    .line 3
    invoke-virtual {p2}, Lc4/d0$d;->a()V

    .line 4
    invoke-virtual {p2}, Lc4/d0$d;->c()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Ls3/j;->p(II)Ls3/w;

    move-result-object v2

    .line 5
    new-instance v3, Ln3/s0$a;

    invoke-direct {v3}, Ln3/s0$a;-><init>()V

    .line 6
    invoke-virtual {p2}, Lc4/d0$d;->b()Ljava/lang/String;

    move-result-object v4

    .line 7
    iput-object v4, v3, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v4, "application/dvbsubs"

    .line 8
    iput-object v4, v3, Ln3/s0$a;->k:Ljava/lang/String;

    .line 9
    iget-object v4, v1, Lc4/d0$a;->b:[B

    .line 10
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 11
    iput-object v4, v3, Ln3/s0$a;->m:Ljava/util/List;

    .line 12
    iget-object v1, v1, Lc4/d0$a;->a:Ljava/lang/String;

    .line 13
    iput-object v1, v3, Ln3/s0$a;->c:Ljava/lang/String;

    .line 14
    new-instance v1, Ln3/s0;

    invoke-direct {v1, v3}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 15
    invoke-interface {v2, v1}, Ls3/w;->b(Ln3/s0;)V

    .line 16
    iget-object v1, p0, Lc4/i;->b:[Ls3/w;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
