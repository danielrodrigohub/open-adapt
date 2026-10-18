.class public final Lu6/v$a;
.super Lu6/t$a;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/t$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu6/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lu6/v$a;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lu6/v$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lu6/t$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lu6/t$a;->b(I)V

    .line 3
    iget-object v0, p0, Lu6/t$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lu6/t$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lu6/t$a;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final d(Ljava/lang/Iterable;)Lu6/v$a;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lu6/v$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 3
    iget v1, p0, Lu6/t$a;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lu6/t$a;->b(I)V

    .line 4
    instance-of v1, v0, Lu6/t;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lu6/t;

    .line 6
    iget-object p1, p0, Lu6/t$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lu6/t$a;->b:I

    invoke-virtual {v0, p1, v1}, Lu6/t;->k([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lu6/t$a;->b:I

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public final e()Lu6/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu6/v<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lu6/t$a;->c:Z

    .line 2
    iget-object v0, p0, Lu6/t$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lu6/t$a;->b:I

    invoke-static {v0, v1}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v0

    return-object v0
.end method
