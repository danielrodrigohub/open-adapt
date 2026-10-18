.class public final Lj5/i$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj5/i$g<",
        "Lj5/i$a;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lj5/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:I

.field public final B:Z

.field public final C:Z

.field public final l:I

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Lj5/i$c;

.field public final p:Z

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Z

.field public final u:I

.field public final v:I

.field public final w:Z

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(ILp4/t0;ILj5/i$c;IZLt6/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lp4/t0;",
            "I",
            "Lj5/i$c;",
            "IZ",
            "Lt6/i<",
            "Ln3/s0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lj5/i$g;-><init>(ILp4/t0;I)V

    .line 2
    iput-object p4, p0, Lj5/i$a;->o:Lj5/i$c;

    .line 3
    iget-object p1, p0, Lj5/i$g;->k:Ln3/s0;

    iget-object p1, p1, Ln3/s0;->j:Ljava/lang/String;

    invoke-static {p1}, Lj5/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj5/i$a;->n:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    invoke-static {p5, p1}, Lj5/i;->h(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lj5/i$a;->p:Z

    move p2, p1

    .line 5
    :goto_0
    iget-object p3, p4, Lj5/q;->u:Lu6/v;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    const v0, 0x7fffffff

    if-ge p2, p3, :cond_1

    .line 6
    iget-object p3, p0, Lj5/i$g;->k:Ln3/s0;

    iget-object v1, p4, Lj5/q;->u:Lu6/v;

    .line 7
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {p3, v1, p1}, Lj5/i;->g(Ln3/s0;Ljava/lang/String;Z)I

    move-result p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p3, p1

    move p2, v0

    .line 9
    :goto_1
    iput p2, p0, Lj5/i$a;->r:I

    .line 10
    iput p3, p0, Lj5/i$a;->q:I

    .line 11
    iget-object p2, p0, Lj5/i$g;->k:Ln3/s0;

    iget p2, p2, Ln3/s0;->l:I

    iget p3, p4, Lj5/q;->v:I

    .line 12
    invoke-static {p2, p3}, Lj5/i;->e(II)I

    move-result p2

    iput p2, p0, Lj5/i$a;->s:I

    .line 13
    iget-object p2, p0, Lj5/i$g;->k:Ln3/s0;

    iget p3, p2, Ln3/s0;->l:I

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p3, p1

    goto :goto_3

    :cond_3
    :goto_2
    move p3, v1

    :goto_3
    iput-boolean p3, p0, Lj5/i$a;->t:Z

    .line 14
    iget p3, p2, Ln3/s0;->k:I

    and-int/2addr p3, v1

    if-eqz p3, :cond_4

    move p3, v1

    goto :goto_4

    :cond_4
    move p3, p1

    :goto_4
    iput-boolean p3, p0, Lj5/i$a;->w:Z

    .line 15
    iget p3, p2, Ln3/s0;->F:I

    iput p3, p0, Lj5/i$a;->x:I

    .line 16
    iget v2, p2, Ln3/s0;->G:I

    iput v2, p0, Lj5/i$a;->y:I

    .line 17
    iget v2, p2, Ln3/s0;->o:I

    iput v2, p0, Lj5/i$a;->z:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 18
    iget v4, p4, Lj5/q;->x:I

    if-gt v2, v4, :cond_7

    :cond_5
    if-eq p3, v3, :cond_6

    iget v2, p4, Lj5/q;->w:I

    if-gt p3, v2, :cond_7

    .line 19
    :cond_6
    check-cast p7, Lj5/h;

    invoke-virtual {p7, p2}, Lj5/h;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_5

    :cond_7
    move p2, p1

    :goto_5
    iput-boolean p2, p0, Lj5/i$a;->m:Z

    .line 20
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 21
    sget p3, Lm5/g0;->a:I

    const/16 p7, 0x18

    if-lt p3, p7, :cond_8

    .line 22
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p2

    const-string p3, ","

    .line 23
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    move p3, p1

    goto :goto_7

    :cond_8
    new-array p7, v1, [Ljava/lang/String;

    .line 24
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/16 v2, 0x15

    if-lt p3, v2, :cond_9

    .line 25
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 26
    :cond_9
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_6
    aput-object p2, p7, p1

    move p3, p1

    move-object p2, p7

    .line 27
    :goto_7
    array-length p7, p2

    if-ge p3, p7, :cond_a

    .line 28
    aget-object p7, p2, p3

    invoke-static {p7}, Lm5/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    aput-object p7, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_a
    move p3, p1

    .line 29
    :goto_8
    array-length p7, p2

    if-ge p3, p7, :cond_c

    .line 30
    iget-object p7, p0, Lj5/i$g;->k:Ln3/s0;

    aget-object v2, p2, p3

    .line 31
    invoke-static {p7, v2, p1}, Lj5/i;->g(Ln3/s0;Ljava/lang/String;Z)I

    move-result p7

    if-lez p7, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    move p7, p1

    move p3, v0

    .line 32
    :goto_9
    iput p3, p0, Lj5/i$a;->u:I

    .line 33
    iput p7, p0, Lj5/i$a;->v:I

    move p2, p1

    .line 34
    :goto_a
    iget-object p3, p4, Lj5/q;->y:Lu6/v;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p2, p3, :cond_e

    .line 35
    iget-object p3, p0, Lj5/i$g;->k:Ln3/s0;

    iget-object p3, p3, Ln3/s0;->s:Ljava/lang/String;

    if-eqz p3, :cond_d

    iget-object p7, p4, Lj5/q;->y:Lu6/v;

    .line 36
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    move v0, p2

    goto :goto_b

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 37
    :cond_e
    :goto_b
    iput v0, p0, Lj5/i$a;->A:I

    and-int/lit16 p2, p5, 0x80

    const/16 p3, 0x80

    if-ne p2, p3, :cond_f

    move p2, v1

    goto :goto_c

    :cond_f
    move p2, p1

    .line 38
    :goto_c
    iput-boolean p2, p0, Lj5/i$a;->B:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p3, 0x40

    if-ne p2, p3, :cond_10

    move p2, v1

    goto :goto_d

    :cond_10
    move p2, p1

    .line 39
    :goto_d
    iput-boolean p2, p0, Lj5/i$a;->C:Z

    .line 40
    iget-object p2, p0, Lj5/i$a;->o:Lj5/i$c;

    iget-boolean p2, p2, Lj5/i$c;->S:Z

    invoke-static {p5, p2}, Lj5/i;->h(IZ)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_e

    .line 41
    :cond_11
    iget-boolean p2, p0, Lj5/i$a;->m:Z

    if-nez p2, :cond_12

    iget-object p2, p0, Lj5/i$a;->o:Lj5/i$c;

    iget-boolean p2, p2, Lj5/i$c;->M:Z

    if-nez p2, :cond_12

    goto :goto_e

    .line 42
    :cond_12
    invoke-static {p5, p1}, Lj5/i;->h(IZ)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lj5/i$a;->m:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lj5/i$g;->k:Ln3/s0;

    iget p1, p1, Ln3/s0;->o:I

    if-eq p1, v3, :cond_14

    iget-object p1, p0, Lj5/i$a;->o:Lj5/i$c;

    iget-boolean p2, p1, Lj5/q;->E:Z

    if-nez p2, :cond_14

    iget-boolean p2, p1, Lj5/q;->D:Z

    if-nez p2, :cond_14

    iget-boolean p1, p1, Lj5/i$c;->U:Z

    if-nez p1, :cond_13

    if-nez p6, :cond_14

    :cond_13
    const/4 p1, 0x2

    goto :goto_e

    :cond_14
    move p1, v1

    .line 43
    :goto_e
    iput p1, p0, Lj5/i$a;->l:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lj5/i$a;->l:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj5/i$a;

    invoke-virtual {p0, p1}, Lj5/i$a;->i(Lj5/i$a;)I

    move-result p1

    return p1
.end method

.method public final g(Lj5/i$g;)Z
    .locals 4

    .line 1
    check-cast p1, Lj5/i$a;

    .line 2
    iget-object v0, p0, Lj5/i$a;->o:Lj5/i$c;

    iget-boolean v1, v0, Lj5/i$c;->P:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lj5/i$g;->k:Ln3/s0;

    iget v1, v1, Ln3/s0;->F:I

    if-eq v1, v2, :cond_3

    iget-object v3, p1, Lj5/i$g;->k:Ln3/s0;

    iget v3, v3, Ln3/s0;->F:I

    if-ne v1, v3, :cond_3

    :cond_0
    iget-boolean v0, v0, Lj5/i$c;->N:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj5/i$g;->k:Ln3/s0;

    iget-object v0, v0, Ln3/s0;->s:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lj5/i$g;->k:Ln3/s0;

    iget-object v1, v1, Ln3/s0;->s:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lj5/i$a;->o:Lj5/i$c;

    iget-boolean v1, v0, Lj5/i$c;->O:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lj5/i$g;->k:Ln3/s0;

    iget v1, v1, Ln3/s0;->G:I

    if-eq v1, v2, :cond_3

    iget-object v2, p1, Lj5/i$g;->k:Ln3/s0;

    iget v2, v2, Ln3/s0;->G:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v0, v0, Lj5/i$c;->Q:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lj5/i$a;->B:Z

    iget-boolean v1, p1, Lj5/i$a;->B:Z

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lj5/i$a;->C:Z

    iget-boolean p1, p1, Lj5/i$a;->C:Z

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final i(Lj5/i$a;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lj5/i$a;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj5/i$a;->p:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lj5/i;->i:Lu6/o0;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lj5/i;->i:Lu6/o0;

    .line 4
    invoke-virtual {v0}, Lu6/o0;->b()Lu6/o0;

    move-result-object v0

    .line 5
    :goto_0
    sget-object v1, Lu6/p;->a:Lu6/p$a;

    iget-boolean v2, p0, Lj5/i$a;->p:Z

    iget-boolean v3, p1, Lj5/i$a;->p:Z

    .line 6
    invoke-virtual {v1, v2, v3}, Lu6/p$a;->d(ZZ)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->r:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$a;->r:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    sget-object v4, Lu6/s0;->h:Lu6/s0;

    .line 10
    invoke-virtual {v1, v2, v3, v4}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->q:I

    iget v3, p1, Lj5/i$a;->q:I

    .line 11
    invoke-virtual {v1, v2, v3}, Lu6/p;->a(II)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->s:I

    iget v3, p1, Lj5/i$a;->s:I

    .line 12
    invoke-virtual {v1, v2, v3}, Lu6/p;->a(II)Lu6/p;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$a;->w:Z

    iget-boolean v3, p1, Lj5/i$a;->w:Z

    .line 13
    invoke-virtual {v1, v2, v3}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$a;->t:Z

    iget-boolean v3, p1, Lj5/i$a;->t:Z

    .line 14
    invoke-virtual {v1, v2, v3}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->u:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$a;->u:I

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 17
    invoke-virtual {v1, v2, v3, v4}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->v:I

    iget v3, p1, Lj5/i$a;->v:I

    .line 18
    invoke-virtual {v1, v2, v3}, Lu6/p;->a(II)Lu6/p;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$a;->m:Z

    iget-boolean v3, p1, Lj5/i$a;->m:Z

    .line 19
    invoke-virtual {v1, v2, v3}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->A:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$a;->A:I

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 22
    invoke-virtual {v1, v2, v3, v4}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->z:I

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$a;->z:I

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 25
    iget-object v4, p0, Lj5/i$a;->o:Lj5/i$c;

    iget-boolean v4, v4, Lj5/q;->D:Z

    if-eqz v4, :cond_1

    .line 26
    sget-object v4, Lj5/i;->i:Lu6/o0;

    .line 27
    invoke-virtual {v4}, Lu6/o0;->b()Lu6/o0;

    move-result-object v4

    goto :goto_1

    .line 28
    :cond_1
    sget-object v4, Lj5/i;->j:Lu6/o0;

    .line 29
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$a;->B:Z

    iget-boolean v3, p1, Lj5/i$a;->B:Z

    .line 30
    invoke-virtual {v1, v2, v3}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$a;->C:Z

    iget-boolean v3, p1, Lj5/i$a;->C:Z

    .line 31
    invoke-virtual {v1, v2, v3}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->x:I

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$a;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->y:I

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$a;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$a;->z:I

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$a;->z:I

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 36
    iget-object v4, p0, Lj5/i$a;->n:Ljava/lang/String;

    iget-object p1, p1, Lj5/i$a;->n:Ljava/lang/String;

    invoke-static {v4, p1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 37
    :cond_2
    sget-object v0, Lj5/i;->j:Lu6/o0;

    .line 38
    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lu6/p;->f()I

    move-result p1

    return p1
.end method
