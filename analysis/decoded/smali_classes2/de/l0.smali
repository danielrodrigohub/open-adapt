.class public final Lde/l0;
.super Lde/k;
.source "ZipFileSystem.kt"


# static fields
.field public static final d:Lde/a0;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Lde/a0;

.field public final b:Lde/k;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lde/a0;",
            "Lee/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lde/a0;->i:Lde/a0$a;

    const/4 v1, 0x0

    const-string v2, "/"

    .line 2
    invoke-virtual {v0, v2, v1}, Lde/a0$a;->a(Ljava/lang/String;Z)Lde/a0;

    move-result-object v0

    .line 3
    sput-object v0, Lde/l0;->d:Lde/a0;

    return-void
.end method

.method public constructor <init>(Lde/a0;Lde/k;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/a0;",
            "Lde/k;",
            "Ljava/util/Map<",
            "Lde/a0;",
            "Lee/f;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lde/k;-><init>()V

    .line 2
    iput-object p1, p0, Lde/l0;->a:Lde/a0;

    .line 3
    iput-object p2, p0, Lde/l0;->b:Lde/k;

    .line 4
    iput-object p3, p0, Lde/l0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lde/a0;)Lde/a0;
    .locals 2

    .line 1
    sget-object v0, Lde/l0;->d:Lde/a0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "child"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, p1, v1}, Lee/l;->c(Lde/a0;Lde/a0;Z)Lde/a0;

    move-result-object p1

    return-object p1
.end method

.method public final appendingSink(Lde/a0;Z)Lde/h0;
    .locals 0

    const-string p2, "file"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final atomicMove(Lde/a0;Lde/a0;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lde/a0;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/a0;",
            "Z)",
            "Ljava/util/List<",
            "Lde/a0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lde/l0;->a(Lde/a0;)Lde/a0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lde/l0;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lee/f;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not a directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    iget-object p1, v0, Lee/f;->h:Ljava/util/ArrayList;

    .line 5
    invoke-static {p1}, Lgd/n;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final canonicalize(Lde/a0;)Lde/a0;
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lde/l0;->a(Lde/a0;)Lde/a0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lde/l0;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createDirectory(Lde/a0;Z)V
    .locals 0

    const-string p2, "dir"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createSymlink(Lde/a0;Lde/a0;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final delete(Lde/a0;Z)V
    .locals 0

    const-string p2, "path"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final list(Lde/a0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/a0;",
            ")",
            "Ljava/util/List<",
            "Lde/a0;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/l0;->b(Lde/a0;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final listOrNull(Lde/a0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/a0;",
            ")",
            "Ljava/util/List<",
            "Lde/a0;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/l0;->b(Lde/a0;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final metadataOrNull(Lde/a0;)Lde/j;
    .locals 11

    const-string v0, "path"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lde/l0;->a(Lde/a0;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lee/f;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v9, Lde/j;

    .line 4
    iget-boolean v3, p1, Lee/f;->b:Z

    xor-int/lit8 v2, v3, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v5, v0

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v5, p1, Lee/f;->d:J

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v5, v1

    :goto_0
    const/4 v6, 0x0

    .line 7
    iget-object v7, p1, Lee/f;->f:Ljava/lang/Long;

    const/4 v8, 0x0

    move-object v1, v9

    .line 8
    invoke-direct/range {v1 .. v8}, Lde/j;-><init>(ZZLde/a0;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 9
    iget-wide v1, p1, Lee/f;->g:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    return-object v9

    .line 10
    :cond_2
    iget-object v1, p0, Lde/l0;->b:Lde/k;

    iget-object v2, p0, Lde/l0;->a:Lde/a0;

    invoke-virtual {v1, v2}, Lde/k;->openReadOnly(Lde/a0;)Lde/i;

    move-result-object v1

    .line 11
    :try_start_0
    iget-wide v2, p1, Lee/f;->g:J

    .line 12
    invoke-virtual {v1, v2, v3}, Lde/i;->h0(J)Lde/j0;

    move-result-object p1

    invoke-static {p1}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    :goto_1
    if-eqz v1, :cond_4

    .line 13
    :try_start_1
    invoke-virtual {v1}, Lde/i;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {v0, v1}, Lp4/h;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 15
    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 16
    invoke-static {p1, v9}, Lee/g;->e(Lde/f;Lde/j;)Lde/j;

    move-result-object p1

    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    return-object p1

    .line 17
    :cond_5
    throw v0
.end method

.method public final openReadOnly(Lde/a0;)Lde/i;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented yet!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final openReadWrite(Lde/a0;ZZ)Lde/i;
    .locals 0

    const-string p2, "file"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip entries are not writable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sink(Lde/a0;Z)Lde/h0;
    .locals 0

    const-string p2, "file"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final source(Lde/a0;)Lde/j0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lde/l0;->a(Lde/a0;)Lde/a0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lde/l0;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lee/f;

    if-eqz v0, :cond_4

    .line 3
    iget-object p1, p0, Lde/l0;->b:Lde/k;

    iget-object v1, p0, Lde/l0;->a:Lde/a0;

    invoke-virtual {p1, v1}, Lde/k;->openReadOnly(Lde/a0;)Lde/i;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-wide v2, v0, Lee/f;->g:J

    .line 5
    invoke-virtual {p1, v2, v3}, Lde/i;->h0(J)Lde/j0;

    move-result-object v2

    invoke-static {v2}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-nez v2, :cond_0

    move-object v2, p1

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v2, p1}, Lp4/h;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    .line 8
    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 9
    invoke-static {v3, v1}, Lee/g;->e(Lde/f;Lde/j;)Lde/j;

    .line 10
    iget p1, v0, Lee/f;->e:I

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 11
    new-instance p1, Lee/b;

    .line 12
    iget-wide v4, v0, Lee/f;->d:J

    .line 13
    invoke-direct {p1, v3, v4, v5, v1}, Lee/b;-><init>(Lde/j0;JZ)V

    goto :goto_2

    .line 14
    :cond_2
    new-instance p1, Lde/r;

    .line 15
    new-instance v2, Lee/b;

    .line 16
    iget-wide v4, v0, Lee/f;->c:J

    .line 17
    invoke-direct {v2, v3, v4, v5, v1}, Lee/b;-><init>(Lde/j0;JZ)V

    .line 18
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 19
    invoke-direct {p1, v2, v3}, Lde/r;-><init>(Lde/j0;Ljava/util/zip/Inflater;)V

    .line 20
    new-instance v1, Lee/b;

    .line 21
    iget-wide v2, v0, Lee/f;->d:J

    const/4 v0, 0x0

    .line 22
    invoke-direct {v1, p1, v2, v3, v0}, Lee/b;-><init>(Lde/j0;JZ)V

    move-object p1, v1

    :goto_2
    return-object p1

    .line 23
    :cond_3
    throw v2

    .line 24
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
