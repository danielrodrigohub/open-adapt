.class public final Lz3/b;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Lz3/e;


# instance fields
.field public final a:J

.field public final b:Lm5/q;

.field public final c:Lm5/q;

.field public d:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lz3/b;->d:J

    .line 3
    iput-wide p5, p0, Lz3/b;->a:J

    .line 4
    new-instance p1, Lm5/q;

    invoke-direct {p1}, Lm5/q;-><init>()V

    iput-object p1, p0, Lz3/b;->b:Lm5/q;

    .line 5
    new-instance p2, Lm5/q;

    invoke-direct {p2}, Lm5/q;-><init>()V

    iput-object p2, p0, Lz3/b;->c:Lm5/q;

    const-wide/16 p5, 0x0

    .line 6
    invoke-virtual {p1, p5, p6}, Lm5/q;->a(J)V

    .line 7
    invoke-virtual {p2, p3, p4}, Lm5/q;->a(J)V

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lz3/b;->b:Lm5/q;

    .line 2
    iget v1, v0, Lm5/q;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {v0, v1}, Lm5/q;->b(I)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x186a0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final c(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lz3/b;->c:Lm5/q;

    .line 2
    invoke-static {v0, p1, p2}, Lm5/g0;->d(Lm5/q;J)I

    move-result p1

    .line 3
    iget-object p2, p0, Lz3/b;->b:Lm5/q;

    invoke-virtual {p2, p1}, Lm5/q;->b(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lz3/b;->a:J

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(J)Ls3/u$a;
    .locals 6

    .line 1
    iget-object v0, p0, Lz3/b;->b:Lm5/q;

    .line 2
    invoke-static {v0, p1, p2}, Lm5/g0;->d(Lm5/q;J)I

    move-result v0

    .line 3
    new-instance v1, Ls3/v;

    iget-object v2, p0, Lz3/b;->b:Lm5/q;

    invoke-virtual {v2, v0}, Lm5/q;->b(I)J

    move-result-wide v2

    iget-object v4, p0, Lz3/b;->c:Lm5/q;

    invoke-virtual {v4, v0}, Lm5/q;->b(I)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ls3/v;-><init>(JJ)V

    cmp-long p1, v2, p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lz3/b;->b:Lm5/q;

    .line 5
    iget p2, p1, Lm5/q;->a:I

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Ls3/v;

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lm5/q;->b(I)J

    move-result-wide v2

    iget-object p1, p0, Lz3/b;->c:Lm5/q;

    invoke-virtual {p1, v0}, Lm5/q;->b(I)J

    move-result-wide v4

    invoke-direct {p2, v2, v3, v4, v5}, Ls3/v;-><init>(JJ)V

    .line 8
    new-instance p1, Ls3/u$a;

    invoke-direct {p1, v1, p2}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    return-object p1

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Ls3/u$a;

    .line 10
    invoke-direct {p1, v1, v1}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    return-object p1
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lz3/b;->d:J

    return-wide v0
.end method
