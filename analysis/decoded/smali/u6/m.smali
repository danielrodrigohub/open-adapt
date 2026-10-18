.class public final Lu6/m;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/m$e;,
        Lu6/m$d;,
        Lu6/m$a;,
        Lu6/m$c;,
        Lu6/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/Object;


# instance fields
.field public transient h:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient i:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient j:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient k:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient l:I

.field public transient m:I

.field public transient n:Lu6/m$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient o:Lu6/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient p:Lu6/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu6/m;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lu6/m;->e(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lu6/m;->e(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/m;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lu6/m;->l:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lu6/m;->l:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lu6/m;->l:I

    return-void
.end method

.method public final clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lu6/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lu6/m;->c()V

    .line 3
    invoke-virtual {p0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lu6/m;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lw6/a;->b(II)I

    move-result v3

    iput v3, p0, Lu6/m;->l:I

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    iput-object v1, p0, Lu6/m;->h:Ljava/lang/Object;

    .line 7
    iput v2, p0, Lu6/m;->m:I

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lu6/m;->l()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lu6/m;->m:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lu6/m;->m()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lu6/m;->m:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lu6/m;->h:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 13
    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_3

    .line 14
    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    .line 15
    :cond_3
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 16
    :goto_0
    invoke-virtual {p0}, Lu6/m;->k()[I

    move-result-object v0

    iget v1, p0, Lu6/m;->m:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 17
    iput v2, p0, Lu6/m;->m:I

    :goto_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lu6/m;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lu6/m;->m:I

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lu6/m;->o(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lu6/m;->i()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lu6/s;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lu6/m;->b()I

    move-result v2

    .line 4
    iget-object v3, p0, Lu6/m;->h:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int v4, v0, v2

    .line 5
    invoke-static {v3, v4}, Lu6/n;->c(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    not-int v4, v2

    and-int/2addr v0, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 6
    invoke-virtual {p0}, Lu6/m;->k()[I

    move-result-object v5

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    .line 7
    invoke-virtual {p0, v3}, Lu6/m;->f(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v6}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v3

    :cond_3
    and-int v3, v5, v2

    if-nez v3, :cond_2

    return v1
.end method

.method public final e(I)V
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1
    invoke-static {p1, v0}, Lw6/a;->b(II)I

    move-result p1

    iput p1, p0, Lu6/m;->l:I

    return-void

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected size must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/m;->o:Lu6/m$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lu6/m$a;

    invoke-direct {v0, p0}, Lu6/m$a;-><init>(Lu6/m;)V

    .line 3
    iput-object v0, p0, Lu6/m;->o:Lu6/m$a;

    :cond_0
    return-object v0
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lu6/m;->l()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final g(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lu6/m;->h:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lu6/m;->k()[I

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lu6/m;->l()[Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lu6/m;->m()[Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lu6/m;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v4, :cond_2

    .line 6
    aget-object v7, v2, v4

    .line 7
    aput-object v7, v2, p1

    .line 8
    aget-object v8, v3, v4

    aput-object v8, v3, p1

    .line 9
    aput-object v6, v2, v4

    .line 10
    aput-object v6, v3, v4

    .line 11
    aget v2, v1, v4

    aput v2, v1, p1

    .line 12
    aput v5, v1, v4

    .line 13
    invoke-static {v7}, Lu6/s;->b(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    .line 14
    invoke-static {v0, v2}, Lu6/n;->c(Ljava/lang/Object;I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 15
    invoke-static {v0, v2, p1}, Lu6/n;->d(Ljava/lang/Object;II)V

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 16
    aget v0, v1, v3

    and-int v2, v0, p2

    if-ne v2, v4, :cond_1

    add-int/lit8 p1, p1, 0x1

    not-int v2, p2

    and-int/2addr v0, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    .line 17
    aput p1, v1, v3

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_0

    .line 18
    :cond_2
    aput-object v6, v2, p1

    .line 19
    aput-object v6, v3, p1

    .line 20
    aput v5, v1, p1

    :goto_1
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lu6/m;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lu6/m;->o(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lu6/m;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lu6/m;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lu6/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lu6/m;->q:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lu6/m;->b()I

    move-result v7

    const/4 v1, 0x0

    .line 4
    iget-object v3, p0, Lu6/m;->h:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lu6/m;->k()[I

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lu6/m;->l()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v7

    .line 7
    invoke-static/range {v0 .. v6}, Lu6/n;->b(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 8
    sget-object p1, Lu6/m;->q:Ljava/lang/Object;

    return-object p1

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lu6/m;->o(I)Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v7}, Lu6/m;->g(II)V

    .line 11
    iget p1, p0, Lu6/m;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lu6/m;->m:I

    .line 12
    invoke-virtual {p0}, Lu6/m;->c()V

    return-object v0
.end method

.method public final k()[I
    .locals 1

    iget-object v0, p0, Lu6/m;->i:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/m;->n:Lu6/m$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lu6/m$c;

    invoke-direct {v0, p0}, Lu6/m$c;-><init>(Lu6/m;)V

    .line 3
    iput-object v0, p0, Lu6/m;->n:Lu6/m$c;

    :cond_0
    return-object v0
.end method

.method public final l()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu6/m;->j:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public final m()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu6/m;->k:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public final n(IIII)I
    .locals 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {p2}, Lu6/n;->a(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 2
    invoke-static {v0, p3, p4}, Lu6/n;->d(Ljava/lang/Object;II)V

    .line 3
    :cond_0
    iget-object p3, p0, Lu6/m;->h:Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lu6/m;->k()[I

    move-result-object p4

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 5
    invoke-static {p3, v1}, Lu6/n;->c(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 6
    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 7
    invoke-static {v0, v6}, Lu6/n;->c(Ljava/lang/Object;I)I

    move-result v7

    .line 8
    invoke-static {v0, v6, v2}, Lu6/n;->d(Ljava/lang/Object;II)V

    not-int v2, p2

    and-int/2addr v2, v5

    and-int v5, v7, p2

    or-int/2addr v2, v5

    .line 9
    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iput-object v0, p0, Lu6/m;->h:Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 12
    iget p3, p0, Lu6/m;->l:I

    and-int/lit8 p3, p3, -0x20

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, p3

    .line 13
    iput p1, p0, Lu6/m;->l:I

    return p2
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lu6/m;->m()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lu6/m;->i()Z

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x20

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v3, :cond_2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lu6/m;->i()Z

    move-result v3

    const-string v8, "Arrays already allocated"

    invoke-static {v3, v8}, Lt6/h;->g(ZLjava/lang/Object;)V

    .line 3
    iget v3, v0, Lu6/m;->l:I

    add-int/lit8 v8, v3, 0x1

    .line 4
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v9

    int-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    if-le v8, v10, :cond_1

    shl-int/lit8 v8, v9, 0x1

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v8, 0x40000000    # 2.0f

    :goto_0
    move v9, v8

    .line 6
    :cond_1
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 7
    invoke-static {v8}, Lu6/n;->a(I)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lu6/m;->h:Ljava/lang/Object;

    add-int/2addr v8, v4

    .line 8
    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x20

    .line 9
    iget v9, v0, Lu6/m;->l:I

    and-int/lit8 v9, v9, -0x20

    and-int/lit8 v8, v8, 0x1f

    or-int/2addr v8, v9

    .line 10
    iput v8, v0, Lu6/m;->l:I

    .line 11
    new-array v8, v3, [I

    iput-object v8, v0, Lu6/m;->i:[I

    .line 12
    new-array v8, v3, [Ljava/lang/Object;

    iput-object v8, v0, Lu6/m;->j:[Ljava/lang/Object;

    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lu6/m;->k:[Ljava/lang/Object;

    .line 14
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 15
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 16
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lu6/m;->k()[I

    move-result-object v3

    .line 17
    invoke-virtual/range {p0 .. p0}, Lu6/m;->l()[Ljava/lang/Object;

    move-result-object v8

    .line 18
    invoke-virtual/range {p0 .. p0}, Lu6/m;->m()[Ljava/lang/Object;

    move-result-object v9

    .line 19
    iget v10, v0, Lu6/m;->m:I

    add-int/lit8 v11, v10, 0x1

    .line 20
    invoke-static/range {p1 .. p1}, Lu6/s;->b(Ljava/lang/Object;)I

    move-result v12

    .line 21
    invoke-virtual/range {p0 .. p0}, Lu6/m;->b()I

    move-result v13

    and-int v14, v12, v13

    .line 22
    iget-object v15, v0, Lu6/m;->h:Ljava/lang/Object;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v15, v14}, Lu6/n;->c(Ljava/lang/Object;I)I

    move-result v15

    const/16 v16, 0x0

    const/4 v6, 0x1

    if-nez v15, :cond_6

    if-le v11, v13, :cond_5

    if-ge v13, v5, :cond_4

    const/16 v17, 0x4

    goto :goto_1

    :cond_4
    move/from16 v17, v7

    :goto_1
    add-int/lit8 v3, v13, 0x1

    mul-int v3, v3, v17

    .line 24
    invoke-virtual {v0, v13, v3, v12, v10}, Lu6/m;->n(IIII)I

    move-result v13

    goto/16 :goto_6

    .line 25
    :cond_5
    iget-object v3, v0, Lu6/m;->h:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v3, v14, v11}, Lu6/n;->d(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :cond_6
    not-int v14, v13

    and-int v7, v12, v14

    move/from16 v18, v16

    :goto_2
    sub-int/2addr v15, v6

    .line 27
    aget v19, v3, v15

    and-int v5, v19, v14

    if-ne v5, v7, :cond_7

    .line 28
    aget-object v4, v8, v15

    .line 29
    invoke-static {v1, v4}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 30
    aget-object v1, v9, v15

    .line 31
    aput-object v2, v9, v15

    return-object v1

    :cond_7
    and-int v4, v19, v13

    move/from16 v19, v7

    add-int/lit8 v7, v18, 0x1

    if-nez v4, :cond_f

    const/16 v4, 0x9

    if-lt v7, v4, :cond_b

    .line 32
    invoke-virtual/range {p0 .. p0}, Lu6/m;->b()I

    move-result v3

    add-int/2addr v3, v6

    .line 33
    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lu6/m;->isEmpty()Z

    move-result v3

    move-object v5, v0

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v3, v16

    :goto_3
    if-ltz v3, :cond_a

    .line 35
    invoke-virtual {v5, v3}, Lu6/m;->f(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3}, Lu6/m;->o(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    .line 36
    iget v6, v5, Lu6/m;->m:I

    if-ge v3, v6, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    const/4 v3, -0x1

    goto :goto_3

    .line 37
    :cond_a
    iput-object v4, v5, Lu6/m;->h:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 38
    iput-object v3, v5, Lu6/m;->i:[I

    .line 39
    iput-object v3, v5, Lu6/m;->j:[Ljava/lang/Object;

    .line 40
    iput-object v3, v5, Lu6/m;->k:[Ljava/lang/Object;

    .line 41
    invoke-virtual {v5}, Lu6/m;->c()V

    .line 42
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_b
    if-le v11, v13, :cond_d

    const/16 v5, 0x20

    if-ge v13, v5, :cond_c

    const/16 v17, 0x4

    goto :goto_5

    :cond_c
    const/16 v17, 0x2

    :goto_5
    add-int/lit8 v3, v13, 0x1

    mul-int v3, v3, v17

    .line 43
    invoke-virtual {v0, v13, v3, v12, v10}, Lu6/m;->n(IIII)I

    move-result v13

    goto :goto_6

    :cond_d
    and-int v4, v11, v13

    or-int/2addr v4, v5

    .line 44
    aput v4, v3, v15

    .line 45
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lu6/m;->k()[I

    move-result-object v3

    array-length v3, v3

    if-le v11, v3, :cond_e

    const v4, 0x3fffffff

    ushr-int/lit8 v5, v3, 0x1

    .line 46
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    or-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_e

    .line 47
    invoke-virtual/range {p0 .. p0}, Lu6/m;->k()[I

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lu6/m;->i:[I

    .line 48
    invoke-virtual/range {p0 .. p0}, Lu6/m;->l()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lu6/m;->j:[Ljava/lang/Object;

    .line 49
    invoke-virtual/range {p0 .. p0}, Lu6/m;->m()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lu6/m;->k:[Ljava/lang/Object;

    :cond_e
    not-int v3, v13

    and-int/2addr v3, v12

    and-int/lit8 v4, v13, 0x0

    or-int/2addr v3, v4

    .line 50
    invoke-virtual/range {p0 .. p0}, Lu6/m;->k()[I

    move-result-object v4

    aput v3, v4, v10

    .line 51
    invoke-virtual/range {p0 .. p0}, Lu6/m;->l()[Ljava/lang/Object;

    move-result-object v3

    aput-object v1, v3, v10

    .line 52
    invoke-virtual/range {p0 .. p0}, Lu6/m;->m()[Ljava/lang/Object;

    move-result-object v1

    aput-object v2, v1, v10

    .line 53
    iput v11, v0, Lu6/m;->m:I

    .line 54
    invoke-virtual/range {p0 .. p0}, Lu6/m;->c()V

    const/4 v15, 0x0

    return-object v15

    :cond_f
    move v15, v4

    move/from16 v18, v7

    move/from16 v7, v19

    const/16 v5, 0x20

    goto/16 :goto_2
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lu6/m;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    sget-object v0, Lu6/m;->q:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lu6/m;->m:I

    :goto_0
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/m;->p:Lu6/m$e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lu6/m$e;

    invoke-direct {v0, p0}, Lu6/m$e;-><init>(Lu6/m;)V

    .line 3
    iput-object v0, p0, Lu6/m;->p:Lu6/m$e;

    :cond_0
    return-object v0
.end method
