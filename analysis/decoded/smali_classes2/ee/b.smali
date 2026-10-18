.class public final Lee/b;
.super Lde/n;
.source "FixedLengthSource.kt"


# instance fields
.field public final h:J

.field public final i:Z

.field public j:J


# direct methods
.method public constructor <init>(Lde/j0;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lde/n;-><init>(Lde/j0;)V

    .line 2
    iput-wide p2, p0, Lee/b;->h:J

    .line 3
    iput-boolean p4, p0, Lee/b;->i:Z

    return-void
.end method


# virtual methods
.method public final read(Lde/c;J)J
    .locals 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lee/b;->j:J

    iget-wide v2, p0, Lee/b;->h:J

    cmp-long v4, v0, v2

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    if-lez v4, :cond_0

    move-wide p2, v7

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v4, p0, Lee/b;->i:Z

    if-eqz v4, :cond_2

    sub-long/2addr v2, v0

    cmp-long v0, v2, v7

    if-nez v0, :cond_1

    return-wide v5

    .line 3
    :cond_1
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 4
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lde/n;->read(Lde/c;J)J

    move-result-wide p2

    cmp-long v0, p2, v5

    if-eqz v0, :cond_3

    .line 5
    iget-wide v1, p0, Lee/b;->j:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lee/b;->j:J

    .line 6
    :cond_3
    iget-wide v1, p0, Lee/b;->j:J

    iget-wide v3, p0, Lee/b;->h:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    cmp-long v0, v1, v3

    if-lez v0, :cond_7

    :cond_5
    cmp-long p2, p2, v7

    if-lez p2, :cond_6

    cmp-long p2, v1, v3

    if-lez p2, :cond_6

    .line 7
    iget-wide p2, p1, Lde/c;->i:J

    sub-long/2addr v1, v3

    sub-long/2addr p2, v1

    .line 8
    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Lde/c;->s(Lde/j0;)J

    .line 10
    invoke-virtual {p1, v0, p2, p3}, Lde/c;->write(Lde/c;J)V

    .line 11
    invoke-virtual {v0}, Lde/c;->x()V

    .line 12
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "expected "

    .line 13
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 14
    iget-wide v0, p0, Lee/b;->h:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lee/b;->j:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-wide p2
.end method
