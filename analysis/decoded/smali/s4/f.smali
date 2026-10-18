.class public final Ls4/f;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Ls4/d;


# instance fields
.field public final a:Ls3/c;

.field public final b:J


# direct methods
.method public constructor <init>(Ls3/c;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls4/f;->a:Ls3/c;

    .line 3
    iput-wide p2, p0, Ls4/f;->b:J

    return-void
.end method


# virtual methods
.method public final c(J)J
    .locals 2

    iget-object v0, p0, Ls4/f;->a:Ls3/c;

    iget-object v0, v0, Ls3/c;->e:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    iget-wide v0, p0, Ls4/f;->b:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final d(JJ)J
    .locals 2

    .line 1
    iget-object p3, p0, Ls4/f;->a:Ls3/c;

    iget-wide v0, p0, Ls4/f;->b:J

    add-long/2addr p1, v0

    .line 2
    iget-object p3, p3, Ls3/c;->e:[J

    const/4 p4, 0x1

    invoke-static {p3, p1, p2, p4}, Lm5/g0;->f([JJZ)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public final e(JJ)J
    .locals 0

    iget-object p3, p0, Ls4/f;->a:Ls3/c;

    iget-object p3, p3, Ls3/c;->d:[J

    long-to-int p1, p1

    aget-wide p1, p3, p1

    return-wide p1
.end method

.method public final f(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final g(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final h(J)Lt4/i;
    .locals 7

    new-instance v6, Lt4/i;

    iget-object v0, p0, Ls4/f;->a:Ls3/c;

    iget-object v1, v0, Ls3/c;->c:[J

    long-to-int p1, p1

    aget-wide v2, v1, p1

    iget-object p2, v0, Ls3/c;->b:[I

    aget p1, p2, p1

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lt4/i;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final k(J)J
    .locals 0

    iget-object p1, p0, Ls4/f;->a:Ls3/c;

    iget p1, p1, Ls3/c;->a:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public final l(JJ)J
    .locals 0

    iget-object p1, p0, Ls4/f;->a:Ls3/c;

    iget p1, p1, Ls3/c;->a:I

    int-to-long p1, p1

    return-wide p1
.end method
