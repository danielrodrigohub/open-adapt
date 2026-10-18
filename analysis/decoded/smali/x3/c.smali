.class public final Lx3/c;
.super Ljava/lang/Object;
.source "StartOffsetExtractorInput.java"

# interfaces
.implements Ls3/i;


# instance fields
.field public final a:Ls3/i;

.field public final b:J


# direct methods
.method public constructor <init>(Ls3/i;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/c;->a:Ls3/i;

    .line 3
    invoke-interface {p1}, Ls3/i;->u()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lm5/a;->a(Z)V

    .line 4
    iput-wide p2, p0, Lx3/c;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0}, Ls3/i;->a()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lx3/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final b([BII)I
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0, p1, p2, p3}, Ls3/i;->b([BII)I

    move-result p1

    return p1
.end method

.method public final d(I)I
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0, p1}, Ls3/i;->d(I)I

    move-result p1

    return p1
.end method

.method public final e([BIIZ)Z
    .locals 1

    iget-object p2, p0, Lx3/c;->a:Ls3/i;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Ls3/i;->e([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final g([BII)I
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0, p1, p2, p3}, Ls3/i;->g([BII)I

    move-result p1

    return p1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0}, Ls3/i;->i()V

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0, p1}, Ls3/i;->k(I)V

    return-void
.end method

.method public final n(IZ)Z
    .locals 1

    iget-object p2, p0, Lx3/c;->a:Ls3/i;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Ls3/i;->n(IZ)Z

    move-result p1

    return p1
.end method

.method public final p([BIIZ)Z
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0, p1, p2, p3, p4}, Ls3/i;->p([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final q()J
    .locals 4

    .line 1
    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0}, Ls3/i;->q()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lx3/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final readFully([BII)V
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0, p1, p2, p3}, Ls3/i;->readFully([BII)V

    return-void
.end method

.method public final s([BII)V
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0, p1, p2, p3}, Ls3/i;->s([BII)V

    return-void
.end method

.method public final t(I)V
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0, p1}, Ls3/i;->t(I)V

    return-void
.end method

.method public final u()J
    .locals 4

    .line 1
    iget-object v0, p0, Lx3/c;->a:Ls3/i;

    invoke-interface {v0}, Ls3/i;->u()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lx3/c;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
