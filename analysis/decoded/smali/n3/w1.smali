.class public final Ln3/w1;
.super Ljava/lang/Object;
.source "SeekParameters.java"


# static fields
.field public static final c:Ln3/w1;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ln3/w1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ln3/w1;-><init>(JJ)V

    .line 2
    new-instance v3, Ln3/w1;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Ln3/w1;-><init>(JJ)V

    .line 3
    new-instance v3, Ln3/w1;

    invoke-direct {v3, v4, v5, v1, v2}, Ln3/w1;-><init>(JJ)V

    .line 4
    new-instance v3, Ln3/w1;

    invoke-direct {v3, v1, v2, v4, v5}, Ln3/w1;-><init>(JJ)V

    .line 5
    sput-object v0, Ln3/w1;->c:Ln3/w1;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 2
    :goto_0
    invoke-static {v2}, Lm5/a;->a(Z)V

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 3
    :goto_1
    invoke-static {v3}, Lm5/a;->a(Z)V

    .line 4
    iput-wide p1, p0, Ln3/w1;->a:J

    .line 5
    iput-wide p3, p0, Ln3/w1;->b:J

    return-void
.end method


# virtual methods
.method public final a(JJJ)J
    .locals 13

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Ln3/w1;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v5, v0, Ln3/w1;->b:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    return-wide p1

    :cond_0
    const-wide/high16 v5, -0x8000000000000000L

    .line 2
    sget v7, Lm5/g0;->a:I

    sub-long v7, p1, v1

    xor-long/2addr v1, p1

    xor-long v9, p1, v7

    and-long/2addr v1, v9

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v5, v7

    .line 3
    :goto_0
    iget-wide v1, v0, Ln3/w1;->b:J

    const-wide v7, 0x7fffffffffffffffL

    add-long v9, p1, v1

    xor-long v11, p1, v9

    xor-long/2addr v1, v9

    and-long/2addr v1, v11

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v7, v9

    :goto_1
    cmp-long v1, v5, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_3

    cmp-long v1, p3, v7

    if-gtz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    cmp-long v4, v5, p5

    if-gtz v4, :cond_4

    cmp-long v4, p5, v7

    if-gtz v4, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    sub-long v1, p3, p1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long v3, p5, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5

    return-wide p3

    :cond_5
    return-wide p5

    :cond_6
    if-eqz v1, :cond_7

    return-wide p3

    :cond_7
    if-eqz v2, :cond_8

    return-wide p5

    :cond_8
    return-wide v5
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
    const-class v2, Ln3/w1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/w1;

    .line 3
    iget-wide v2, p0, Ln3/w1;->a:J

    iget-wide v4, p1, Ln3/w1;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ln3/w1;->b:J

    iget-wide v4, p1, Ln3/w1;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

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

    iget-wide v0, p0, Ln3/w1;->a:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ln3/w1;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
