.class public abstract Lde/l;
.super Lde/k;
.source "ForwardingFileSystem.kt"


# instance fields
.field private final delegate:Lde/k;


# direct methods
.method public constructor <init>(Lde/k;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lde/k;-><init>()V

    .line 2
    iput-object p1, p0, Lde/l;->delegate:Lde/k;

    return-void
.end method


# virtual methods
.method public appendingSink(Lde/a0;Z)Lde/h0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appendingSink"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1, p2}, Lde/k;->appendingSink(Lde/a0;Z)Lde/h0;

    move-result-object p1

    return-object p1
.end method

.method public atomicMove(Lde/a0;Lde/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "atomicMove"

    .line 1
    invoke-virtual {p0, p1, v2, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2, v2, v1}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1, p2}, Lde/k;->atomicMove(Lde/a0;Lde/a0;)V

    return-void
.end method

.method public canonicalize(Lde/a0;)Lde/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "canonicalize"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1}, Lde/k;->canonicalize(Lde/a0;)Lde/a0;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, v1}, Lde/l;->onPathResult(Lde/a0;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    return-object p1
.end method

.method public createDirectory(Lde/a0;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "createDirectory"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1, p2}, Lde/k;->createDirectory(Lde/a0;Z)V

    return-void
.end method

.method public createSymlink(Lde/a0;Lde/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "createSymlink"

    .line 1
    invoke-virtual {p0, p1, v2, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2, v2, v1}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1, p2}, Lde/k;->createSymlink(Lde/a0;Lde/a0;)V

    return-void
.end method

.method public final delegate()Lde/k;
    .locals 1

    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    return-object v0
.end method

.method public delete(Lde/a0;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "delete"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1, p2}, Lde/k;->delete(Lde/a0;Z)V

    return-void
.end method

.method public list(Lde/a0;)Ljava/util/List;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "list"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1}, Lde/k;->list(Lde/a0;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lde/a0;

    .line 6
    invoke-virtual {p0, v2, v1}, Lde/l;->onPathResult(Lde/a0;Ljava/lang/String;)Lde/a0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lgd/k;->U(Ljava/util/List;)V

    return-object v0
.end method

.method public listOrNull(Lde/a0;)Ljava/util/List;
    .locals 3
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

    const-string v1, "listOrNull"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1}, Lde/k;->listOrNull(Lde/a0;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lde/a0;

    .line 6
    invoke-virtual {p0, v2, v1}, Lde/l;->onPathResult(Lde/a0;Ljava/lang/String;)Lde/a0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lgd/k;->U(Ljava/util/List;)V

    return-object v0
.end method

.method public listRecursively(Lde/a0;Z)Lxd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/a0;",
            "Z)",
            "Lxd/d<",
            "Lde/a0;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listRecursively"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1, p2}, Lde/k;->listRecursively(Lde/a0;Z)Lxd/d;

    move-result-object p1

    .line 3
    new-instance p2, Lde/l$a;

    invoke-direct {p2, p0}, Lde/l$a;-><init>(Lde/l;)V

    invoke-static {p1, p2}, Lxd/g;->m(Lxd/d;Lqd/l;)Lxd/d;

    move-result-object p1

    return-object p1
.end method

.method public metadataOrNull(Lde/a0;)Lde/j;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataOrNull"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1}, Lde/k;->metadataOrNull(Lde/a0;)Lde/j;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lde/j;->c:Lde/a0;

    if-nez v0, :cond_1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, v0, v1}, Lde/l;->onPathResult(Lde/a0;Ljava/lang/String;)Lde/a0;

    move-result-object v5

    .line 5
    iget-boolean v3, p1, Lde/j;->a:Z

    .line 6
    iget-boolean v4, p1, Lde/j;->b:Z

    .line 7
    iget-object v6, p1, Lde/j;->d:Ljava/lang/Long;

    .line 8
    iget-object v7, p1, Lde/j;->e:Ljava/lang/Long;

    .line 9
    iget-object v8, p1, Lde/j;->f:Ljava/lang/Long;

    .line 10
    iget-object v9, p1, Lde/j;->g:Ljava/lang/Long;

    .line 11
    iget-object v10, p1, Lde/j;->h:Ljava/util/Map;

    const-string p1, "extras"

    .line 12
    invoke-static {v10, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance p1, Lde/j;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lde/j;-><init>(ZZLde/a0;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    return-object p1
.end method

.method public onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionName"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parameterName"

    invoke-static {p3, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPathResult(Lde/a0;Ljava/lang/String;)Lde/a0;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionName"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openReadOnly(Lde/a0;)Lde/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "openReadOnly"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1}, Lde/k;->openReadOnly(Lde/a0;)Lde/i;

    move-result-object p1

    return-object p1
.end method

.method public openReadWrite(Lde/a0;ZZ)Lde/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "openReadWrite"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1, p2, p3}, Lde/k;->openReadWrite(Lde/a0;ZZ)Lde/i;

    move-result-object p1

    return-object p1
.end method

.method public sink(Lde/a0;Z)Lde/h0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sink"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1, p2}, Lde/k;->sink(Lde/a0;Z)Lde/h0;

    move-result-object p1

    return-object p1
.end method

.method public source(Lde/a0;)Lde/j0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lde/l;->onPathParameter(Lde/a0;Ljava/lang/String;Ljava/lang/String;)Lde/a0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, p1}, Lde/k;->source(Lde/a0;)Lde/j0;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v1

    check-cast v1, Lrd/g;

    invoke-virtual {v1}, Lrd/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/l;->delegate:Lde/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
