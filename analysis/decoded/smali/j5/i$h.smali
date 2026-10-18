.class public final Lj5/i$h;
.super Lj5/i$g;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj5/i$g<",
        "Lj5/i$h;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:Z

.field public final m:Lj5/i$c;

.field public final n:Z

.field public final o:Z

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Z

.field public final u:Z

.field public final v:I

.field public final w:Z

.field public final x:Z

.field public final y:I


# direct methods
.method public constructor <init>(ILp4/t0;ILj5/i$c;IIZ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lj5/i$g;-><init>(ILp4/t0;I)V

    .line 2
    iput-object p4, p0, Lj5/i$h;->m:Lj5/i$c;

    .line 3
    iget-boolean p1, p4, Lj5/i$c;->K:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 4
    :goto_0
    iget-boolean p2, p4, Lj5/i$c;->J:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    and-int p2, p6, p1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    iput-boolean p2, p0, Lj5/i$h;->u:Z

    const/high16 p2, -0x40800000    # -1.0f

    const/4 p6, -0x1

    if-eqz p7, :cond_6

    .line 5
    iget-object v1, p0, Lj5/i$g;->k:Ln3/s0;

    iget v2, v1, Ln3/s0;->x:I

    if-eq v2, p6, :cond_2

    iget v3, p4, Lj5/q;->h:I

    if-gt v2, v3, :cond_6

    :cond_2
    iget v2, v1, Ln3/s0;->y:I

    if-eq v2, p6, :cond_3

    iget v3, p4, Lj5/q;->i:I

    if-gt v2, v3, :cond_6

    :cond_3
    iget v2, v1, Ln3/s0;->z:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_4

    iget v3, p4, Lj5/q;->j:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    :cond_4
    iget v1, v1, Ln3/s0;->o:I

    if-eq v1, p6, :cond_5

    iget v2, p4, Lj5/q;->k:I

    if-gt v1, v2, :cond_6

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    move v1, p3

    :goto_2
    iput-boolean v1, p0, Lj5/i$h;->l:Z

    if-eqz p7, :cond_b

    .line 6
    iget-object p7, p0, Lj5/i$g;->k:Ln3/s0;

    iget v1, p7, Ln3/s0;->x:I

    if-eq v1, p6, :cond_7

    iget v2, p4, Lj5/q;->l:I

    if-lt v1, v2, :cond_b

    :cond_7
    iget v1, p7, Ln3/s0;->y:I

    if-eq v1, p6, :cond_8

    iget v2, p4, Lj5/q;->m:I

    if-lt v1, v2, :cond_b

    :cond_8
    iget v1, p7, Ln3/s0;->z:F

    cmpl-float p2, v1, p2

    if-eqz p2, :cond_9

    iget p2, p4, Lj5/q;->n:I

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-ltz p2, :cond_b

    :cond_9
    iget p2, p7, Ln3/s0;->o:I

    if-eq p2, p6, :cond_a

    iget p7, p4, Lj5/q;->o:I

    if-lt p2, p7, :cond_b

    :cond_a
    move p2, v0

    goto :goto_3

    :cond_b
    move p2, p3

    :goto_3
    iput-boolean p2, p0, Lj5/i$h;->n:Z

    .line 7
    invoke-static {p5, p3}, Lj5/i;->h(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lj5/i$h;->o:Z

    .line 8
    iget-object p2, p0, Lj5/i$g;->k:Ln3/s0;

    iget p7, p2, Ln3/s0;->o:I

    iput p7, p0, Lj5/i$h;->p:I

    .line 9
    iget p7, p2, Ln3/s0;->x:I

    if-eq p7, p6, :cond_d

    iget v1, p2, Ln3/s0;->y:I

    if-ne v1, p6, :cond_c

    goto :goto_4

    :cond_c
    mul-int/2addr p7, v1

    goto :goto_5

    :cond_d
    :goto_4
    move p7, p6

    .line 10
    :goto_5
    iput p7, p0, Lj5/i$h;->q:I

    .line 11
    iget p2, p2, Ln3/s0;->l:I

    iget p7, p4, Lj5/q;->t:I

    .line 12
    invoke-static {p2, p7}, Lj5/i;->e(II)I

    move-result p2

    iput p2, p0, Lj5/i$h;->s:I

    .line 13
    iget-object p2, p0, Lj5/i$g;->k:Ln3/s0;

    iget p2, p2, Ln3/s0;->l:I

    if-eqz p2, :cond_f

    and-int/2addr p2, v0

    if-eqz p2, :cond_e

    goto :goto_6

    :cond_e
    move p2, p3

    goto :goto_7

    :cond_f
    :goto_6
    move p2, v0

    :goto_7
    iput-boolean p2, p0, Lj5/i$h;->t:Z

    const p2, 0x7fffffff

    move p7, p3

    .line 14
    :goto_8
    iget-object v1, p4, Lj5/q;->s:Lu6/v;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p7, v1, :cond_11

    .line 15
    iget-object v1, p0, Lj5/i$g;->k:Ln3/s0;

    iget-object v1, v1, Ln3/s0;->s:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v2, p4, Lj5/q;->s:Lu6/v;

    .line 16
    invoke-interface {v2, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move p2, p7

    goto :goto_9

    :cond_10
    add-int/lit8 p7, p7, 0x1

    goto :goto_8

    .line 17
    :cond_11
    :goto_9
    iput p2, p0, Lj5/i$h;->r:I

    and-int/lit16 p2, p5, 0x80

    const/16 p4, 0x80

    if-ne p2, p4, :cond_12

    move p2, v0

    goto :goto_a

    :cond_12
    move p2, p3

    .line 18
    :goto_a
    iput-boolean p2, p0, Lj5/i$h;->w:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p4, 0x40

    if-ne p2, p4, :cond_13

    move p2, v0

    goto :goto_b

    :cond_13
    move p2, p3

    .line 19
    :goto_b
    iput-boolean p2, p0, Lj5/i$h;->x:Z

    .line 20
    iget-object p2, p0, Lj5/i$g;->k:Ln3/s0;

    iget-object p4, p2, Ln3/s0;->s:Ljava/lang/String;

    const/4 p7, 0x2

    const/4 v1, 0x3

    if-nez p4, :cond_14

    goto :goto_e

    .line 21
    :cond_14
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_c
    move p4, p6

    goto :goto_d

    :sswitch_0
    const-string v2, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_15

    goto :goto_c

    :cond_15
    move p4, v1

    goto :goto_d

    :sswitch_1
    const-string v2, "video/avc"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_16

    goto :goto_c

    :cond_16
    move p4, p7

    goto :goto_d

    :sswitch_2
    const-string v2, "video/hevc"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_17

    goto :goto_c

    :cond_17
    move p4, v0

    goto :goto_d

    :sswitch_3
    const-string v2, "video/av01"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_18

    goto :goto_c

    :cond_18
    move p4, p3

    :goto_d
    packed-switch p4, :pswitch_data_0

    :goto_e
    move v1, p3

    goto :goto_f

    :pswitch_0
    move v1, p7

    goto :goto_f

    :pswitch_1
    move v1, v0

    goto :goto_f

    :pswitch_2
    const/4 v1, 0x4

    .line 22
    :goto_f
    :pswitch_3
    iput v1, p0, Lj5/i$h;->y:I

    .line 23
    iget p2, p2, Ln3/s0;->l:I

    and-int/lit16 p2, p2, 0x4000

    if-eqz p2, :cond_19

    goto :goto_10

    .line 24
    :cond_19
    iget-object p2, p0, Lj5/i$h;->m:Lj5/i$c;

    iget-boolean p2, p2, Lj5/i$c;->S:Z

    invoke-static {p5, p2}, Lj5/i;->h(IZ)Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_10

    .line 25
    :cond_1a
    iget-boolean p2, p0, Lj5/i$h;->l:Z

    if-nez p2, :cond_1b

    iget-object p2, p0, Lj5/i$h;->m:Lj5/i$c;

    iget-boolean p2, p2, Lj5/i$c;->I:Z

    if-nez p2, :cond_1b

    goto :goto_10

    .line 26
    :cond_1b
    invoke-static {p5, p3}, Lj5/i;->h(IZ)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-boolean p2, p0, Lj5/i$h;->n:Z

    if-eqz p2, :cond_1c

    iget-boolean p2, p0, Lj5/i$h;->l:Z

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lj5/i$g;->k:Ln3/s0;

    iget p2, p2, Ln3/s0;->o:I

    if-eq p2, p6, :cond_1c

    iget-object p2, p0, Lj5/i$h;->m:Lj5/i$c;

    iget-boolean p3, p2, Lj5/q;->E:Z

    if-nez p3, :cond_1c

    iget-boolean p2, p2, Lj5/q;->D:Z

    if-nez p2, :cond_1c

    and-int/2addr p1, p5

    if-eqz p1, :cond_1c

    move p3, p7

    goto :goto_10

    :cond_1c
    move p3, v0

    .line 27
    :goto_10
    iput p3, p0, Lj5/i$h;->v:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Lj5/i$h;Lj5/i$h;)I
    .locals 4

    .line 1
    sget-object v0, Lu6/p;->a:Lu6/p$a;

    iget-boolean v1, p0, Lj5/i$h;->o:Z

    iget-boolean v2, p1, Lj5/i$h;->o:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lu6/p$a;->d(ZZ)Lu6/p;

    move-result-object v0

    iget v1, p0, Lj5/i$h;->s:I

    iget v2, p1, Lj5/i$h;->s:I

    .line 3
    invoke-virtual {v0, v1, v2}, Lu6/p;->a(II)Lu6/p;

    move-result-object v0

    iget-boolean v1, p0, Lj5/i$h;->t:Z

    iget-boolean v2, p1, Lj5/i$h;->t:Z

    .line 4
    invoke-virtual {v0, v1, v2}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v0

    iget-boolean v1, p0, Lj5/i$h;->l:Z

    iget-boolean v2, p1, Lj5/i$h;->l:Z

    .line 5
    invoke-virtual {v0, v1, v2}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v0

    iget-boolean v1, p0, Lj5/i$h;->n:Z

    iget-boolean v2, p1, Lj5/i$h;->n:Z

    .line 6
    invoke-virtual {v0, v1, v2}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v0

    iget v1, p0, Lj5/i$h;->r:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lj5/i$h;->r:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9
    sget-object v3, Lu6/s0;->h:Lu6/s0;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v0

    iget-boolean v1, p0, Lj5/i$h;->w:Z

    iget-boolean v2, p1, Lj5/i$h;->w:Z

    .line 11
    invoke-virtual {v0, v1, v2}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v0

    iget-boolean v1, p0, Lj5/i$h;->x:Z

    iget-boolean v2, p1, Lj5/i$h;->x:Z

    .line 12
    invoke-virtual {v0, v1, v2}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lj5/i$h;->w:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lj5/i$h;->x:Z

    if-eqz v1, :cond_0

    .line 14
    iget p0, p0, Lj5/i$h;->y:I

    iget p1, p1, Lj5/i$h;->y:I

    invoke-virtual {v0, p0, p1}, Lu6/p;->a(II)Lu6/p;

    move-result-object v0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lu6/p;->f()I

    move-result p0

    return p0
.end method

.method public static j(Lj5/i$h;Lj5/i$h;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lj5/i$h;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj5/i$h;->o:Z

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

    iget v2, p0, Lj5/i$h;->p:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$h;->p:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lj5/i$h;->m:Lj5/i$c;

    iget-boolean v4, v4, Lj5/q;->D:Z

    if-eqz v4, :cond_1

    .line 9
    sget-object v4, Lj5/i;->i:Lu6/o0;

    .line 10
    invoke-virtual {v4}, Lu6/o0;->b()Lu6/o0;

    move-result-object v4

    goto :goto_1

    .line 11
    :cond_1
    sget-object v4, Lj5/i;->j:Lu6/o0;

    .line 12
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lu6/p$a;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v1

    iget v2, p0, Lj5/i$h;->q:I

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lj5/i$h;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object v1

    iget p0, p0, Lj5/i$h;->p:I

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lj5/i$h;->p:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lu6/p;->f()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lj5/i$h;->v:I

    return v0
.end method

.method public final g(Lj5/i$g;)Z
    .locals 2

    .line 1
    check-cast p1, Lj5/i$h;

    .line 2
    iget-boolean v0, p0, Lj5/i$h;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj5/i$g;->k:Ln3/s0;

    iget-object v0, v0, Ln3/s0;->s:Ljava/lang/String;

    iget-object v1, p1, Lj5/i$g;->k:Ln3/s0;

    iget-object v1, v1, Ln3/s0;->s:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lj5/i$h;->m:Lj5/i$c;

    iget-boolean v0, v0, Lj5/i$c;->L:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lj5/i$h;->w:Z

    iget-boolean v1, p1, Lj5/i$h;->w:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lj5/i$h;->x:Z

    iget-boolean p1, p1, Lj5/i$h;->x:Z

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
