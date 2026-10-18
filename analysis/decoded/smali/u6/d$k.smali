.class public Lu6/d$k;
.super Lu6/d$j;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/d$k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/d<",
        "TK;TV;>.j;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic m:Lu6/d;


# direct methods
.method public constructor <init>(Lu6/d;Ljava/lang/Object;Ljava/util/List;Lu6/d$j;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lu6/d<",
            "TK;TV;>.j;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu6/d$k;->m:Lu6/d;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lu6/d$j;-><init>(Lu6/d;Ljava/lang/Object;Ljava/util/Collection;Lu6/d$j;)V

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 2
    iget-object v0, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 5
    check-cast v1, Ljava/util/List;

    .line 6
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lu6/d$k;->m:Lu6/d;

    invoke-static {p1}, Lu6/d;->f(Lu6/d;)I

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lu6/d$j;->h()V

    :cond_0
    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lu6/d$j;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 4
    check-cast v1, Ljava/util/List;

    .line 5
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p2, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 8
    iget-object v1, p0, Lu6/d$k;->m:Lu6/d;

    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Lu6/d;->h(Lu6/d;I)I

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lu6/d$j;->h()V

    :cond_1
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 2
    iget-object v0, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 2
    iget-object v0, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 2
    iget-object v0, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 2
    new-instance v0, Lu6/d$k$a;

    invoke-direct {v0, p0}, Lu6/d$k$a;-><init>(Lu6/d$k;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 4
    new-instance v0, Lu6/d$k$a;

    invoke-direct {v0, p0, p1}, Lu6/d$k$a;-><init>(Lu6/d$k;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 2
    iget-object v0, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lu6/d$k;->m:Lu6/d;

    invoke-static {v0}, Lu6/d;->g(Lu6/d;)I

    .line 6
    invoke-virtual {p0}, Lu6/d$j;->l()V

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 2
    iget-object v0, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/d$j;->k()V

    .line 2
    iget-object v0, p0, Lu6/d$k;->m:Lu6/d;

    .line 3
    iget-object v1, p0, Lu6/d$j;->h:Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lu6/d$j;->i:Ljava/util/Collection;

    .line 5
    check-cast v2, Ljava/util/List;

    .line 6
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lu6/d$j;->j:Lu6/d$j;

    if-nez p2, :cond_0

    move-object p2, p0

    .line 8
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    instance-of v2, p1, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Lu6/d$g;

    invoke-direct {v2, v0, v1, p1, p2}, Lu6/d$g;-><init>(Lu6/d;Ljava/lang/Object;Ljava/util/List;Lu6/d$j;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v2, Lu6/d$k;

    invoke-direct {v2, v0, v1, p1, p2}, Lu6/d$k;-><init>(Lu6/d;Ljava/lang/Object;Ljava/util/List;Lu6/d$j;)V

    :goto_0
    return-object v2
.end method
