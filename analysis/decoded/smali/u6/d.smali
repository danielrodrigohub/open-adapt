.class public abstract Lu6/d;
.super Lu6/f;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/d$e;,
        Lu6/d$h;,
        Lu6/d$b;,
        Lu6/d$c;,
        Lu6/d$f;,
        Lu6/d$i;,
        Lu6/d$d;,
        Lu6/d$g;,
        Lu6/d$k;,
        Lu6/d$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/f<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public transient l:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lu6/f;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lt6/h;->b(Z)V

    .line 3
    iput-object p1, p0, Lu6/d;->k:Ljava/util/Map;

    return-void
.end method

.method public static synthetic f(Lu6/d;)I
    .locals 2

    iget v0, p0, Lu6/d;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lu6/d;->l:I

    return v0
.end method

.method public static synthetic g(Lu6/d;)I
    .locals 2

    iget v0, p0, Lu6/d;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lu6/d;->l:I

    return v0
.end method

.method public static synthetic h(Lu6/d;I)I
    .locals 1

    iget v0, p0, Lu6/d;->l:I

    add-int/2addr v0, p1

    iput v0, p0, Lu6/d;->l:I

    return v0
.end method

.method public static synthetic i(Lu6/d;I)I
    .locals 1

    iget v0, p0, Lu6/d;->l:I

    sub-int/2addr v0, p1

    iput v0, p0, Lu6/d;->l:I

    return v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/d;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lu6/d;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lu6/d;->l:I

    return-void
.end method

.method public final e()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lu6/d$a;

    invoke-direct {v0, p0}, Lu6/d$a;-><init>(Lu6/d;)V

    return-object v0
.end method

.method public abstract j()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract k(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu6/d;->l:I

    return v0
.end method
