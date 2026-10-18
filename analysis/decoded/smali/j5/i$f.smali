.class public final Lj5/i$f;
.super Lj5/i$g;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj5/i$g<",
        "Lj5/i$f;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lj5/i$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:I

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Z


# direct methods
.method public constructor <init>(ILp4/t0;ILj5/i$c;ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lj5/i$g;-><init>(ILp4/t0;I)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p5, p1}, Lj5/i;->h(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lj5/i$f;->m:Z

    .line 3
    iget-object p2, p0, Lj5/i$g;->k:Ln3/s0;

    iget p2, p2, Ln3/s0;->k:I

    iget p3, p4, Lj5/q;->B:I

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p1

    .line 4
    :goto_0
    iput-boolean p3, p0, Lj5/i$f;->n:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    .line 5
    :goto_1
    iput-boolean p2, p0, Lj5/i$f;->o:Z

    const p2, 0x7fffffff

    .line 6
    iget-object p3, p4, Lj5/q;->z:Lu6/v;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ""

    .line 7
    invoke-static {p3}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object p3

    goto :goto_2

    .line 8
    :cond_2
    iget-object p3, p4, Lj5/q;->z:Lu6/v;

    :goto_2
    move v1, p1

    .line 9
    :goto_3
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 10
    iget-object v2, p0, Lj5/i$g;->k:Ln3/s0;

    .line 11
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p4, Lj5/q;->C:Z

    .line 12
    invoke-static {v2, v3, v4}, Lj5/i;->g(Ln3/s0;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_3

    move p2, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v2, p1

    .line 13
    :goto_4
    iput p2, p0, Lj5/i$f;->p:I

    .line 14
    iput v2, p0, Lj5/i$f;->q:I

    .line 15
    iget-object p2, p0, Lj5/i$g;->k:Ln3/s0;

    iget p2, p2, Ln3/s0;->l:I

    iget p3, p4, Lj5/q;->A:I

    .line 16
    invoke-static {p2, p3}, Lj5/i;->e(II)I

    move-result p2

    iput p2, p0, Lj5/i$f;->r:I

    .line 17
    iget-object p3, p0, Lj5/i$g;->k:Ln3/s0;

    iget p3, p3, Ln3/s0;->l:I

    and-int/lit16 p3, p3, 0x440

    if-eqz p3, :cond_5

    move p3, v0

    goto :goto_5

    :cond_5
    move p3, p1

    :goto_5
    iput-boolean p3, p0, Lj5/i$f;->t:Z

    .line 18
    invoke-static {p6}, Lj5/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    move p3, v0

    goto :goto_6

    :cond_6
    move p3, p1

    .line 19
    :goto_6
    iget-object v1, p0, Lj5/i$g;->k:Ln3/s0;

    .line 20
    invoke-static {v1, p6, p3}, Lj5/i;->g(Ln3/s0;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lj5/i$f;->s:I

    if-gtz v2, :cond_9

    .line 21
    iget-object p6, p4, Lj5/q;->z:Lu6/v;

    .line 22
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_7

    if-gtz p2, :cond_9

    :cond_7
    iget-boolean p2, p0, Lj5/i$f;->n:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lj5/i$f;->o:Z

    if-eqz p2, :cond_8

    if-lez p3, :cond_8

    goto :goto_7

    :cond_8
    move p2, p1

    goto :goto_8

    :cond_9
    :goto_7
    move p2, v0

    .line 23
    :goto_8
    iget-boolean p3, p4, Lj5/i$c;->S:Z

    .line 24
    invoke-static {p5, p3}, Lj5/i;->h(IZ)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    move p1, v0

    .line 25
    :cond_a
    iput p1, p0, Lj5/i$f;->l:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lj5/i$f;->l:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj5/i$f;

    invoke-virtual {p0, p1}, Lj5/i$f;->i(Lj5/i$f;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic g(Lj5/i$g;)Z
    .locals 0

    check-cast p1, Lj5/i$f;

    const/4 p1, 0x0

    return p1
.end method

.method public final i(Lj5/i$f;)I
    .locals 6

    .line 1
    sget-object v0, Lu6/p;->a:Lu6/p$a;

    iget-boolean v1, p0, Lj5/i$f;->m:Z

    iget-boolean v2, p1, Lj5/i$f;->m:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lu6/p$a;->d(ZZ)Lu6/p;

    move-result-object v0

    iget v1, p0, Lj5/i$f;->p:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lj5/i$f;->p:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    sget-object v3, Lu6/m0;->h:Lu6/m0;

    sget-object v4, Lu6/s0;->h:Lu6/s0;

    .line 6
    invoke-virtual {v0, v1, v2, v4}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v0

    iget v1, p0, Lj5/i$f;->q:I

    iget v2, p1, Lj5/i$f;->q:I

    .line 7
    invoke-virtual {v0, v1, v2}, Lu6/p;->a(II)Lu6/p;

    move-result-object v0

    iget v1, p0, Lj5/i$f;->r:I

    iget v2, p1, Lj5/i$f;->r:I

    .line 8
    invoke-virtual {v0, v1, v2}, Lu6/p;->a(II)Lu6/p;

    move-result-object v0

    iget-boolean v1, p0, Lj5/i$f;->n:Z

    iget-boolean v2, p1, Lj5/i$f;->n:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v0

    iget-boolean v1, p0, Lj5/i$f;->o:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lj5/i$f;->o:Z

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    iget v5, p0, Lj5/i$f;->q:I

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 13
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v0

    iget v1, p0, Lj5/i$f;->s:I

    iget v2, p1, Lj5/i$f;->s:I

    .line 14
    invoke-virtual {v0, v1, v2}, Lu6/p;->a(II)Lu6/p;

    move-result-object v0

    .line 15
    iget v1, p0, Lj5/i$f;->r:I

    if-nez v1, :cond_1

    .line 16
    iget-boolean v1, p0, Lj5/i$f;->t:Z

    iget-boolean p1, p1, Lj5/i$f;->t:Z

    invoke-virtual {v0, v1, p1}, Lu6/p;->e(ZZ)Lu6/p;

    move-result-object v0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lu6/p;->f()I

    move-result p1

    return p1
.end method
