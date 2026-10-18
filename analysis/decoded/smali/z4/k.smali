.class public final Lz4/k;
.super Ljava/lang/Object;
.source "SubtitleExtractor.java"

# interfaces
.implements Ls3/h;


# instance fields
.field public final a:Lz4/h;

.field public final b:Landroidx/appcompat/widget/p;

.field public final c:Lm5/w;

.field public final d:Ln3/s0;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm5/w;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ls3/j;

.field public h:Ls3/w;

.field public i:I

.field public j:I

.field public k:J


# direct methods
.method public constructor <init>(Lz4/h;Ln3/s0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz4/k;->a:Lz4/h;

    .line 3
    new-instance p1, Landroidx/appcompat/widget/p;

    invoke-direct {p1}, Landroidx/appcompat/widget/p;-><init>()V

    iput-object p1, p0, Lz4/k;->b:Landroidx/appcompat/widget/p;

    .line 4
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Lz4/k;->c:Lm5/w;

    .line 5
    new-instance p1, Ln3/s0$a;

    invoke-direct {p1, p2}, Ln3/s0$a;-><init>(Ln3/s0;)V

    const-string v0, "text/x-exoplayer-cues"

    .line 6
    iput-object v0, p1, Ln3/s0$a;->k:Ljava/lang/String;

    .line 7
    iget-object p2, p2, Ln3/s0;->s:Ljava/lang/String;

    .line 8
    iput-object p2, p1, Ln3/s0$a;->h:Ljava/lang/String;

    .line 9
    new-instance p2, Ln3/s0;

    invoke-direct {p2, p1}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 10
    iput-object p2, p0, Lz4/k;->d:Ln3/s0;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz4/k;->e:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz4/k;->f:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lz4/k;->j:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    iput-wide p1, p0, Lz4/k;->k:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lz4/k;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lz4/k;->a:Lz4/h;

    invoke-interface {v0}, Lq3/d;->a()V

    .line 3
    iput v1, p0, Lz4/k;->j:I

    return-void
.end method

.method public final b(JJ)V
    .locals 1

    .line 1
    iget p1, p0, Lz4/k;->j:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lm5/a;->e(Z)V

    .line 2
    iput-wide p3, p0, Lz4/k;->k:J

    .line 3
    iget p1, p0, Lz4/k;->j:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 4
    iput p2, p0, Lz4/k;->j:I

    .line 5
    :cond_1
    iget p1, p0, Lz4/k;->j:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lz4/k;->j:I

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lz4/k;->h:Ls3/w;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lz4/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lz4/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 3
    iget-wide v0, p0, Lz4/k;->k:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    move v0, v3

    goto :goto_1

    .line 4
    :cond_1
    iget-object v4, p0, Lz4/k;->e:Ljava/util/ArrayList;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    invoke-static {v4, v0, v2}, Lm5/g0;->c(Ljava/util/List;Ljava/lang/Comparable;Z)I

    move-result v0

    .line 7
    :goto_1
    iget-object v1, p0, Lz4/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 8
    iget-object v1, p0, Lz4/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/w;

    .line 9
    invoke-virtual {v1, v3}, Lm5/w;->D(I)V

    .line 10
    iget-object v2, v1, Lm5/w;->a:[B

    .line 11
    array-length v8, v2

    .line 12
    iget-object v2, p0, Lz4/k;->h:Ls3/w;

    invoke-interface {v2, v1, v8}, Ls3/w;->f(Lm5/w;I)V

    .line 13
    iget-object v4, p0, Lz4/k;->h:Ls3/w;

    iget-object v1, p0, Lz4/k;->e:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 15
    invoke-interface/range {v4 .. v10}, Ls3/w;->c(JIIILs3/w$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lz4/k;->j:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p2}, Lm5/a;->e(Z)V

    .line 2
    iget p2, p0, Lz4/k;->j:I

    const/4 v2, 0x2

    const/16 v3, 0x400

    const-wide/16 v4, -0x1

    if-ne p2, v0, :cond_2

    .line 3
    iget-object p2, p0, Lz4/k;->c:Lm5/w;

    .line 4
    invoke-interface {p1}, Ls3/i;->a()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1

    .line 5
    invoke-interface {p1}, Ls3/i;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Lw6/a;->a(J)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v3

    .line 6
    :goto_1
    invoke-virtual {p2, v6}, Lm5/w;->A(I)V

    .line 7
    iput v1, p0, Lz4/k;->i:I

    .line 8
    iput v2, p0, Lz4/k;->j:I

    .line 9
    :cond_2
    iget p2, p0, Lz4/k;->j:I

    const/4 v6, 0x4

    const/4 v7, -0x1

    if-ne p2, v2, :cond_b

    .line 10
    iget-object p2, p0, Lz4/k;->c:Lm5/w;

    .line 11
    iget-object v2, p2, Lm5/w;->a:[B

    array-length v2, v2

    .line 12
    iget v8, p0, Lz4/k;->i:I

    if-ne v2, v8, :cond_3

    add-int/2addr v8, v3

    .line 13
    invoke-virtual {p2, v8}, Lm5/w;->a(I)V

    .line 14
    :cond_3
    iget-object p2, p0, Lz4/k;->c:Lm5/w;

    .line 15
    iget-object p2, p2, Lm5/w;->a:[B

    .line 16
    iget v2, p0, Lz4/k;->i:I

    .line 17
    array-length v8, p2

    sub-int/2addr v8, v2

    .line 18
    invoke-interface {p1, p2, v2, v8}, Ls3/i;->b([BII)I

    move-result p2

    if-eq p2, v7, :cond_4

    .line 19
    iget v2, p0, Lz4/k;->i:I

    add-int/2addr v2, p2

    iput v2, p0, Lz4/k;->i:I

    .line 20
    :cond_4
    invoke-interface {p1}, Ls3/i;->a()J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-eqz v2, :cond_5

    .line 21
    iget v2, p0, Lz4/k;->i:I

    int-to-long v10, v2

    cmp-long v2, v10, v8

    if-eqz v2, :cond_6

    :cond_5
    if-ne p2, v7, :cond_7

    :cond_6
    move p2, v0

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    if-eqz p2, :cond_b

    .line 22
    :try_start_0
    iget-object p2, p0, Lz4/k;->a:Lz4/h;

    invoke-interface {p2}, Lq3/d;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz4/l;

    :goto_3
    const-wide/16 v8, 0x5

    if-nez p2, :cond_8

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 24
    iget-object p2, p0, Lz4/k;->a:Lz4/h;

    invoke-interface {p2}, Lq3/d;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz4/l;

    goto :goto_3

    .line 25
    :cond_8
    iget v2, p0, Lz4/k;->i:I

    invoke-virtual {p2, v2}, Lq3/g;->q(I)V

    .line 26
    iget-object v2, p2, Lq3/g;->j:Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lz4/k;->c:Lm5/w;

    .line 27
    iget-object v10, v10, Lm5/w;->a:[B

    .line 28
    iget v11, p0, Lz4/k;->i:I

    invoke-virtual {v2, v10, v1, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 29
    iget-object v2, p2, Lq3/g;->j:Ljava/nio/ByteBuffer;

    iget v10, p0, Lz4/k;->i:I

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 30
    iget-object v2, p0, Lz4/k;->a:Lz4/h;

    invoke-interface {v2, p2}, Lq3/d;->c(Ljava/lang/Object;)V

    .line 31
    iget-object p2, p0, Lz4/k;->a:Lz4/h;

    invoke-interface {p2}, Lq3/d;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz4/m;

    :goto_4
    if-nez p2, :cond_9

    .line 32
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 33
    iget-object p2, p0, Lz4/k;->a:Lz4/h;

    invoke-interface {p2}, Lq3/d;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz4/m;

    goto :goto_4

    :cond_9
    move v2, v1

    .line 34
    :goto_5
    invoke-virtual {p2}, Lz4/m;->j()I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 35
    invoke-virtual {p2, v2}, Lz4/m;->g(I)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lz4/m;->i(J)Ljava/util/List;

    move-result-object v8

    .line 36
    iget-object v9, p0, Lz4/k;->b:Landroidx/appcompat/widget/p;

    invoke-virtual {v9, v8}, Landroidx/appcompat/widget/p;->d(Ljava/util/List;)[B

    move-result-object v8

    .line 37
    iget-object v9, p0, Lz4/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Lz4/m;->g(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v9, p0, Lz4/k;->f:Ljava/util/ArrayList;

    new-instance v10, Lm5/w;

    invoke-direct {v10, v8}, Lm5/w;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 39
    :cond_a
    invoke-virtual {p2}, Lq3/h;->o()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lz4/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-virtual {p0}, Lz4/k;->c()V

    .line 41
    iput v6, p0, Lz4/k;->j:I

    goto :goto_6

    :catch_0
    move-exception p1

    const-string p2, "SubtitleDecoder failed."

    .line 42
    invoke-static {p2, p1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1

    .line 43
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 44
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 45
    :cond_b
    :goto_6
    iget p2, p0, Lz4/k;->j:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_e

    .line 46
    invoke-interface {p1}, Ls3/i;->a()J

    move-result-wide v8

    cmp-long p2, v8, v4

    if-eqz p2, :cond_c

    .line 47
    invoke-interface {p1}, Ls3/i;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lw6/a;->a(J)I

    move-result v3

    .line 48
    :cond_c
    invoke-interface {p1, v3}, Ls3/i;->d(I)I

    move-result p1

    if-ne p1, v7, :cond_d

    goto :goto_7

    :cond_d
    move v0, v1

    :goto_7
    if-eqz v0, :cond_e

    .line 49
    invoke-virtual {p0}, Lz4/k;->c()V

    .line 50
    iput v6, p0, Lz4/k;->j:I

    .line 51
    :cond_e
    iget p1, p0, Lz4/k;->j:I

    if-ne p1, v6, :cond_f

    return v7

    :cond_f
    return v1
.end method

.method public final g(Ls3/j;)V
    .locals 7

    .line 1
    iget v0, p0, Lz4/k;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput-object p1, p0, Lz4/k;->g:Ls3/j;

    const/4 v0, 0x3

    .line 3
    invoke-interface {p1, v2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lz4/k;->h:Ls3/w;

    .line 4
    iget-object p1, p0, Lz4/k;->g:Ls3/j;

    invoke-interface {p1}, Ls3/j;->b()V

    .line 5
    iget-object p1, p0, Lz4/k;->g:Ls3/j;

    new-instance v0, Ls3/s;

    new-array v3, v1, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    new-array v6, v1, [J

    aput-wide v4, v6, v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v3, v6, v4, v5}, Ls3/s;-><init>([J[JJ)V

    invoke-interface {p1, v0}, Ls3/j;->j(Ls3/u;)V

    .line 6
    iget-object p1, p0, Lz4/k;->h:Ls3/w;

    iget-object v0, p0, Lz4/k;->d:Ln3/s0;

    invoke-interface {p1, v0}, Ls3/w;->b(Ln3/s0;)V

    .line 7
    iput v1, p0, Lz4/k;->j:I

    return-void
.end method

.method public final j(Ls3/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
