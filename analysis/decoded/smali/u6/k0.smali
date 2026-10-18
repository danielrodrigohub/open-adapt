.class public final Lu6/k0;
.super Lu6/c;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient m:Lt6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/o<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lt6/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lt6/o<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lu6/c;-><init>(Ljava/util/Map;)V

    .line 2
    iput-object p2, p0, Lu6/k0;->m:Lt6/o;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/d;->k:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lu6/d$e;

    iget-object v1, p0, Lu6/d;->k:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lu6/d$e;-><init>(Lu6/d;Ljava/util/NavigableMap;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lu6/d$h;

    iget-object v1, p0, Lu6/d;->k:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lu6/d$h;-><init>(Lu6/d;Ljava/util/SortedMap;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lu6/d$b;

    iget-object v1, p0, Lu6/d;->k:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lu6/d$b;-><init>(Lu6/d;Ljava/util/Map;)V

    :goto_0
    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/d;->k:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lu6/d$f;

    iget-object v1, p0, Lu6/d;->k:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lu6/d$f;-><init>(Lu6/d;Ljava/util/NavigableMap;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lu6/d$i;

    iget-object v1, p0, Lu6/d;->k:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lu6/d$i;-><init>(Lu6/d;Ljava/util/SortedMap;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lu6/d$d;

    iget-object v1, p0, Lu6/d;->k:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lu6/d$d;-><init>(Lu6/d;Ljava/util/Map;)V

    :goto_0
    return-object v0
.end method

.method public final j()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lu6/k0;->m:Lt6/o;

    invoke-interface {v0}, Lt6/o;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
