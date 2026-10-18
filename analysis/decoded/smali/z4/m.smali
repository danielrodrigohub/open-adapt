.class public abstract Lz4/m;
.super Lq3/h;
.source "SubtitleOutputBuffer.java"

# interfaces
.implements Lz4/g;


# instance fields
.field public j:Lz4/g;

.field public k:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq3/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lz4/m;->j:Lz4/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lz4/m;->k:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lz4/g;->b(J)I

    move-result p1

    return p1
.end method

.method public final g(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lz4/m;->j:Lz4/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1}, Lz4/g;->g(I)J

    move-result-wide v0

    iget-wide v2, p0, Lz4/m;->k:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final i(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lz4/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz4/m;->j:Lz4/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lz4/m;->k:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lz4/g;->i(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/m;->j:Lz4/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lz4/g;->j()I

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lq3/a;->h:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lz4/m;->j:Lz4/g;

    return-void
.end method

.method public final q(JLz4/g;J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lq3/h;->i:J

    .line 2
    iput-object p3, p0, Lz4/m;->j:Lz4/g;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p4, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p4

    .line 3
    :goto_0
    iput-wide p1, p0, Lz4/m;->k:J

    return-void
.end method
