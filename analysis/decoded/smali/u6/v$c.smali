.class public final Lu6/v$c;
.super Lu6/v;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/v<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient j:I

.field public final transient k:I

.field public final synthetic l:Lu6/v;


# direct methods
.method public constructor <init>(Lu6/v;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu6/v$c;->l:Lu6/v;

    invoke-direct {p0}, Lu6/v;-><init>()V

    .line 2
    iput p2, p0, Lu6/v$c;->j:I

    .line 3
    iput p3, p0, Lu6/v$c;->k:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lu6/v$c;->k:I

    invoke-static {p1, v0}, Lt6/h;->c(II)I

    .line 2
    iget-object v0, p0, Lu6/v$c;->l:Lu6/v;

    iget v1, p0, Lu6/v$c;->j:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu6/v;->u(I)Lu6/a;

    move-result-object v0

    return-object v0
.end method

.method public final l()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lu6/v$c;->l:Lu6/v;

    invoke-virtual {v0}, Lu6/t;->l()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lu6/v;->u(I)Lu6/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lu6/v;->u(I)Lu6/a;

    move-result-object p1

    return-object p1
.end method

.method public final m()I
    .locals 2

    iget-object v0, p0, Lu6/v$c;->l:Lu6/v;

    invoke-virtual {v0}, Lu6/t;->n()I

    move-result v0

    iget v1, p0, Lu6/v$c;->j:I

    add-int/2addr v0, v1

    iget v1, p0, Lu6/v$c;->k:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final n()I
    .locals 2

    iget-object v0, p0, Lu6/v$c;->l:Lu6/v;

    invoke-virtual {v0}, Lu6/t;->n()I

    move-result v0

    iget v1, p0, Lu6/v$c;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu6/v$c;->k:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu6/v$c;->y(II)Lu6/v;

    move-result-object p1

    return-object p1
.end method

.method public final y(II)Lu6/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lu6/v<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lu6/v$c;->k:I

    invoke-static {p1, p2, v0}, Lt6/h;->f(III)V

    .line 2
    iget-object v0, p0, Lu6/v$c;->l:Lu6/v;

    iget v1, p0, Lu6/v$c;->j:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lu6/v;->y(II)Lu6/v;

    move-result-object p1

    return-object p1
.end method
