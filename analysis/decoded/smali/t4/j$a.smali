.class public final Lt4/j$a;
.super Lt4/j;
.source "Representation.java"

# interfaces
.implements Ls4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final h:Lt4/k$a;


# direct methods
.method public constructor <init>(JLn3/s0;Ljava/util/List;Lt4/k$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ln3/s0;",
            "Ljava/util/List<",
            "Lt4/b;",
            ">;",
            "Lt4/k$a;",
            "Ljava/util/List<",
            "Lt4/e;",
            ">;",
            "Ljava/util/List<",
            "Lt4/e;",
            ">;",
            "Ljava/util/List<",
            "Lt4/e;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 1
    invoke-direct/range {v0 .. v6}, Lt4/j;-><init>(Ln3/s0;Ljava/util/List;Lt4/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2
    iput-object p5, p0, Lt4/j$a;->h:Lt4/k$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ls4/d;
    .locals 0

    return-object p0
.end method

.method public final c(J)J
    .locals 1

    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    invoke-virtual {v0, p1, p2}, Lt4/k$a;->g(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final d(JJ)J
    .locals 1

    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt4/k$a;->f(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e(JJ)J
    .locals 1

    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt4/k$a;->e(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final f(JJ)J
    .locals 1

    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt4/k$a;->c(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final g(JJ)J
    .locals 3

    .line 1
    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    .line 2
    iget-object v1, v0, Lt4/k$a;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lt4/k$a;->c(JJ)J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lt4/k$a;->b(JJ)J

    move-result-wide p3

    add-long/2addr p3, v1

    .line 5
    invoke-virtual {v0, p3, p4}, Lt4/k$a;->g(J)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, p3, p4, p1, p2}, Lt4/k$a;->e(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iget-wide p3, v0, Lt4/k$a;->i:J

    sub-long/2addr p1, p3

    :goto_0
    return-wide p1
.end method

.method public final h(J)Lt4/i;
    .locals 1

    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    invoke-virtual {v0, p0, p1, p2}, Lt4/k$a;->h(Lt4/j;J)Lt4/i;

    move-result-object p1

    return-object p1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    invoke-virtual {v0}, Lt4/k$a;->i()Z

    move-result v0

    return v0
.end method

.method public final j()J
    .locals 2

    .line 1
    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    .line 2
    iget-wide v0, v0, Lt4/k$a;->d:J

    return-wide v0
.end method

.method public final k(J)J
    .locals 1

    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    invoke-virtual {v0, p1, p2}, Lt4/k$a;->d(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final l(JJ)J
    .locals 1

    iget-object v0, p0, Lt4/j$a;->h:Lt4/k$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt4/k$a;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final m()Lt4/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
