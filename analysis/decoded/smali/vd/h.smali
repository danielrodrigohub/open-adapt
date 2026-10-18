.class public final Lvd/h;
.super Lvd/f;
.source "Ranges.kt"

# interfaces
.implements Lvd/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd/f;",
        "Lvd/b<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lvd/h;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lvd/h;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lvd/f;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lvd/h;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lvd/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lvd/h;

    invoke-virtual {v0}, Lvd/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-wide v0, p0, Lvd/f;->h:J

    .line 3
    check-cast p1, Lvd/h;

    .line 4
    iget-wide v2, p1, Lvd/f;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 5
    iget-wide v0, p0, Lvd/f;->i:J

    .line 6
    iget-wide v2, p1, Lvd/f;->i:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lvd/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    int-to-long v0, v0

    .line 2
    iget-wide v2, p0, Lvd/f;->h:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    mul-long/2addr v0, v2

    .line 3
    iget-wide v2, p0, Lvd/f;->i:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lvd/f;->h:J

    .line 2
    iget-wide v2, p0, Lvd/f;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Ljava/lang/Comparable;
    .locals 2

    .line 1
    iget-wide v0, p0, Lvd/f;->h:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/Comparable;
    .locals 2

    .line 1
    iget-wide v0, p0, Lvd/f;->i:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final n(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lvd/f;->h:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lvd/f;->i:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-wide v1, p0, Lvd/f;->h:J

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-wide v1, p0, Lvd/f;->i:J

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
