.class public final Lh4/b;
.super Landroidx/fragment/app/r;
.source "EventMessageDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lf4/d;Ljava/nio/ByteBuffer;)Lf4/a;
    .locals 3

    new-instance p1, Lf4/a;

    const/4 v0, 0x1

    new-array v0, v0, [Lf4/a$b;

    new-instance v1, Lm5/w;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {v1, v2, p2}, Lm5/w;-><init>([BI)V

    invoke-virtual {p0, v1}, Lh4/b;->k(Lm5/w;)Lh4/a;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lf4/a;-><init>([Lf4/a$b;)V

    return-object p1
.end method

.method public final k(Lm5/w;)Lh4/a;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lm5/w;->n()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lm5/w;->n()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lm5/w;->m()J

    move-result-wide v3

    .line 6
    invoke-virtual {p1}, Lm5/w;->m()J

    move-result-wide v5

    .line 7
    iget-object v0, p1, Lm5/w;->a:[B

    .line 8
    iget v7, p1, Lm5/w;->b:I

    .line 9
    iget p1, p1, Lm5/w;->c:I

    .line 10
    invoke-static {v0, v7, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 11
    new-instance p1, Lh4/a;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lh4/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p1
.end method
