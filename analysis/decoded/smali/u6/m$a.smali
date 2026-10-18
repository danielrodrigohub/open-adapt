.class public final Lu6/m$a;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lu6/m;


# direct methods
.method public constructor <init>(Lu6/m;)V
    .locals 0

    iput-object p1, p0, Lu6/m$a;->h:Lu6/m;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lu6/m$a;->h:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lu6/m$a;->h:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    .line 5
    iget-object v0, p0, Lu6/m$a;->h:Lu6/m;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Lu6/m;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lu6/m$a;->h:Lu6/m;

    .line 8
    invoke-virtual {v2, v0}, Lu6/m;->o(I)Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/m$a;->h:Lu6/m;

    .line 2
    invoke-virtual {v0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lu6/k;

    invoke-direct {v1, v0}, Lu6/k;-><init>(Lu6/m;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lu6/m$a;->h:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    .line 5
    iget-object v0, p0, Lu6/m$a;->h:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lu6/m$a;->h:Lu6/m;

    .line 7
    invoke-virtual {v0}, Lu6/m;->b()I

    move-result v0

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lu6/m$a;->h:Lu6/m;

    .line 10
    iget-object v5, p1, Lu6/m;->h:Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lu6/m$a;->h:Lu6/m;

    .line 12
    invoke-virtual {p1}, Lu6/m;->k()[I

    move-result-object v6

    .line 13
    iget-object p1, p0, Lu6/m$a;->h:Lu6/m;

    .line 14
    invoke-virtual {p1}, Lu6/m;->l()[Ljava/lang/Object;

    move-result-object v7

    .line 15
    iget-object p1, p0, Lu6/m$a;->h:Lu6/m;

    .line 16
    invoke-virtual {p1}, Lu6/m;->m()[Ljava/lang/Object;

    move-result-object v8

    move v4, v0

    .line 17
    invoke-static/range {v2 .. v8}, Lu6/n;->b(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    .line 18
    :cond_2
    iget-object v1, p0, Lu6/m$a;->h:Lu6/m;

    invoke-virtual {v1, p1, v0}, Lu6/m;->g(II)V

    .line 19
    iget-object p1, p0, Lu6/m$a;->h:Lu6/m;

    .line 20
    iget v0, p1, Lu6/m;->m:I

    add-int/2addr v0, v2

    iput v0, p1, Lu6/m;->m:I

    .line 21
    invoke-virtual {p1}, Lu6/m;->c()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lu6/m$a;->h:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->size()I

    move-result v0

    return v0
.end method
