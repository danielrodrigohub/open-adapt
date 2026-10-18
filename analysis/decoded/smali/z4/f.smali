.class public abstract Lz4/f;
.super Lq3/j;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lz4/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq3/j<",
        "Lz4/l;",
        "Lz4/m;",
        "Lz4/i;",
        ">;",
        "Lz4/h;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lz4/l;

    new-array v0, v0, [Lz4/m;

    .line 1
    invoke-direct {p0, v1, v0}, Lq3/j;-><init>([Lq3/g;[Lq3/h;)V

    .line 2
    iget v0, p0, Lq3/j;->g:I

    iget-object v1, p0, Lq3/j;->e:[Lq3/g;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 3
    iget-object v0, p0, Lq3/j;->e:[Lq3/g;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/16 v4, 0x400

    .line 4
    invoke-virtual {v3, v4}, Lq3/g;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0

    return-void
.end method

.method public final f(Lq3/g;Lq3/h;Z)Lq3/f;
    .locals 6

    .line 1
    check-cast p1, Lz4/l;

    check-cast p2, Lz4/m;

    .line 2
    :try_start_0
    iget-object v0, p1, Lq3/g;->j:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lz4/f;->k([BIZ)Lz4/g;

    move-result-object v3

    .line 5
    iget-wide v1, p1, Lq3/g;->l:J

    iget-wide v4, p1, Lz4/l;->p:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lz4/m;->q(JLz4/g;J)V

    .line 6
    iget p1, p2, Lq3/a;->h:I

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    iput p1, p2, Lq3/a;->h:I
    :try_end_0
    .catch Lz4/i; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-object p1
.end method

.method public abstract k([BIZ)Lz4/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation
.end method
