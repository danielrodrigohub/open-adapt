.class public final Lp4/c;
.super Ljava/lang/Object;
.source "BundledExtractorsAdapter.java"

# interfaces
.implements Lp4/h0;


# instance fields
.field public final a:Ls3/l;

.field public b:Ls3/h;

.field public c:Ls3/e;


# direct methods
.method public constructor <init>(Ls3/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/c;->a:Ls3/l;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/c;->c:Ls3/e;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, v0, Ls3/e;->d:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final b(Ll5/h;Landroid/net/Uri;Ljava/util/Map;JJLs3/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Ls3/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Ls3/e;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Ls3/e;-><init>(Ll5/h;JJ)V

    .line 2
    iput-object v6, p0, Lp4/c;->c:Ls3/e;

    .line 3
    iget-object p1, p0, Lp4/c;->b:Ls3/h;

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lp4/c;->a:Ls3/l;

    invoke-interface {p1, p2, p3}, Ls3/l;->e(Landroid/net/Uri;Ljava/util/Map;)[Ls3/h;

    move-result-object p1

    .line 5
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 6
    aget-object p1, p1, p6

    iput-object p1, p0, Lp4/c;->b:Ls3/h;

    goto/16 :goto_6

    .line 7
    :cond_1
    array-length p3, p1

    move v0, p6

    :goto_0
    if-ge v0, p3, :cond_7

    aget-object v1, p1, v0

    .line 8
    :try_start_0
    invoke-interface {v1, v6}, Ls3/h;->j(Ls3/i;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iput-object v1, p0, Lp4/c;->b:Ls3/h;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput p6, v6, Ls3/e;->f:I

    goto :goto_4

    .line 11
    :cond_2
    iget-object v1, p0, Lp4/c;->b:Ls3/h;

    if-nez v1, :cond_6

    .line 12
    iget-wide v1, v6, Ls3/e;->d:J

    cmp-long v1, v1, p4

    if-nez v1, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    iget-object p2, p0, Lp4/c;->b:Ls3/h;

    if-nez p2, :cond_4

    .line 14
    iget-wide p2, v6, Ls3/e;->d:J

    cmp-long p2, p2, p4

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move p7, p6

    .line 15
    :cond_4
    :goto_1
    invoke-static {p7}, Lm5/a;->e(Z)V

    .line 16
    iput p6, v6, Ls3/e;->f:I

    .line 17
    throw p1

    .line 18
    :catch_0
    iget-object v1, p0, Lp4/c;->b:Ls3/h;

    if-nez v1, :cond_6

    .line 19
    iget-wide v1, v6, Ls3/e;->d:J

    cmp-long v1, v1, p4

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, p6

    goto :goto_3

    :cond_6
    :goto_2
    move v1, p7

    .line 20
    :goto_3
    invoke-static {v1}, Lm5/a;->e(Z)V

    .line 21
    iput p6, v6, Ls3/e;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_7
    :goto_4
    iget-object p3, p0, Lp4/c;->b:Ls3/h;

    if-nez p3, :cond_a

    .line 23
    new-instance p3, Lp4/v0;

    const-string p4, "None of the available extractors ("

    .line 24
    invoke-static {p4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 25
    sget p5, Lm5/g0;->a:I

    .line 26
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    :goto_5
    array-length p7, p1

    if-ge p6, p7, :cond_9

    .line 28
    aget-object p7, p1, p6

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    array-length p7, p1

    add-int/lit8 p7, p7, -0x1

    if-ge p6, p7, :cond_8

    const-string p7, ", "

    .line 30
    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 p6, p6, 0x1

    goto :goto_5

    .line 31
    :cond_9
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-direct {p3, p1}, Lp4/v0;-><init>(Ljava/lang/String;)V

    throw p3

    .line 35
    :cond_a
    :goto_6
    iget-object p1, p0, Lp4/c;->b:Ls3/h;

    invoke-interface {p1, p8}, Ls3/h;->g(Ls3/j;)V

    return-void
.end method
