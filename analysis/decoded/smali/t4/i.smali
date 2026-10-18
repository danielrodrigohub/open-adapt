.class public final Lt4/i;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iput-object p1, p0, Lt4/i;->c:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lt4/i;->a:J

    .line 4
    iput-wide p4, p0, Lt4/i;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lt4/i;Ljava/lang/String;)Lt4/i;
    .locals 13

    .line 1
    iget-object v0, p0, Lt4/i;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lm5/e0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    iget-object v1, p1, Lt4/i;->c:Ljava/lang/String;

    invoke-static {p2, v1}, Lm5/e0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-wide v3, p0, Lt4/i;->b:J

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_2

    iget-wide v7, p0, Lt4/i;->a:J

    add-long v9, v7, v3

    iget-wide v11, p1, Lt4/i;->a:J

    cmp-long p2, v9, v11

    if-nez p2, :cond_2

    .line 5
    new-instance p2, Lt4/i;

    .line 6
    iget-wide v0, p1, Lt4/i;->b:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    add-long/2addr v3, v0

    move-wide v5, v3

    :goto_0
    move-object v1, p2

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lt4/i;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    .line 7
    :cond_2
    iget-wide v7, p1, Lt4/i;->b:J

    cmp-long p2, v7, v5

    if-eqz p2, :cond_4

    iget-wide p1, p1, Lt4/i;->a:J

    add-long v9, p1, v7

    iget-wide v11, p0, Lt4/i;->a:J

    cmp-long v1, v9, v11

    if-nez v1, :cond_4

    .line 8
    new-instance v0, Lt4/i;

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    add-long/2addr v7, v3

    move-wide v5, v7

    :goto_1
    move-object v1, v0

    move-wide v3, p1

    .line 9
    invoke-direct/range {v1 .. v6}, Lt4/i;-><init>(Ljava/lang/String;JJ)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lt4/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lt4/i;

    .line 3
    iget-wide v2, p0, Lt4/i;->a:J

    iget-wide v4, p1, Lt4/i;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lt4/i;->b:J

    iget-wide v4, p1, Lt4/i;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lt4/i;->c:Ljava/lang/String;

    iget-object p1, p1, Lt4/i;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lt4/i;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-wide v1, p0, Lt4/i;->a:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lt4/i;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lt4/i;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 5
    iput v1, p0, Lt4/i;->d:I

    .line 6
    :cond_0
    iget v0, p0, Lt4/i;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RangedUri(referenceUri="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lt4/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lt4/i;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lt4/i;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
