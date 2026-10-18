.class public final Lcom/google/android/exoplayer2/ui/d$b;
.super Ljava/lang/Object;
.source "PlayerControlView.java"

# interfaces
.implements Ln3/o1$c;
.implements Lcom/google/android/exoplayer2/ui/f$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/android/exoplayer2/ui/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final E(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ui/d;->S:Z

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/d;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->v:Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/d;->w:Ljava/util/Formatter;

    .line 6
    invoke-static {v2, v0, p1, p2}, Lm5/g0;->C(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final H(JZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ui/d;->S:Z

    if-nez p3, :cond_3

    .line 3
    iget-object p3, v0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    if-eqz p3, :cond_3

    .line 4
    invoke-interface {p3}, Ln3/o1;->O()Ln3/b2;

    move-result-object v2

    .line 5
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ui/d;->R:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ln3/b2;->s()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v2}, Ln3/b2;->r()I

    move-result v3

    .line 7
    :goto_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/d;->y:Ln3/b2$d;

    invoke-virtual {v2, v1, v4}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v4

    invoke-virtual {v4}, Ln3/b2$d;->c()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v3, -0x1

    if-ne v1, v6, :cond_1

    move-wide p1, v4

    goto :goto_1

    :cond_1
    sub-long/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p3}, Ln3/o1;->C()I

    move-result v1

    .line 9
    :goto_1
    invoke-interface {p3, v1, p1, p2}, Ln3/o1;->n(IJ)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/d;->m()V

    :cond_3
    return-void
.end method

.method public final J(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/d;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->v:Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/d;->w:Ljava/util/Formatter;

    .line 5
    invoke-static {v2, v0, p1, p2}, Lm5/g0;->C(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final m0(Ln3/o1$b;)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Ln3/o1$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/d;->l()V

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_1

    invoke-virtual {p1, v1}, Ln3/o1$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/d;->m()V

    :cond_1
    const/16 v1, 0x8

    .line 7
    iget-object v2, p1, Ln3/o1$b;->a:Lm5/j;

    invoke-virtual {v2, v1}, Lm5/j;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/d;->n()V

    :cond_2
    const/16 v1, 0x9

    .line 10
    iget-object v2, p1, Ln3/o1$b;->a:Lm5/j;

    invoke-virtual {v2, v1}, Lm5/j;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/d;->o()V

    :cond_3
    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_2

    invoke-virtual {p1, v1}, Ln3/o1$b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/d;->k()V

    :cond_4
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-virtual {p1, v0}, Ln3/o1$b;->a([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/d;->p()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x5
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0xd
    .end array-data

    :array_3
    .array-data 4
        0xb
        0x0
    .end array-data
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->k:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 4
    invoke-interface {v1}, Ln3/o1;->T()V

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->j:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 6
    invoke-interface {v1}, Ln3/o1;->Z()V

    goto/16 :goto_4

    .line 7
    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->n:Landroid/view/View;

    if-ne v2, p1, :cond_3

    .line 8
    invoke-interface {v1}, Ln3/o1;->s()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    .line 9
    invoke-interface {v1}, Ln3/o1;->U()V

    goto :goto_4

    .line 10
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->o:Landroid/view/View;

    if-ne v2, p1, :cond_4

    .line 11
    invoke-interface {v1}, Ln3/o1;->W()V

    goto :goto_4

    .line 12
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->l:Landroid/view/View;

    if-ne v2, p1, :cond_5

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/d;->b(Ln3/o1;)V

    goto :goto_4

    .line 14
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->m:Landroid/view/View;

    if-ne v2, p1, :cond_6

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v1}, Ln3/o1;->c()V

    goto :goto_4

    .line 17
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-ne v2, p1, :cond_d

    .line 18
    invoke-interface {v1}, Ln3/o1;->M()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d$b;->h:Lcom/google/android/exoplayer2/ui/d;

    .line 19
    iget v0, v0, Lcom/google/android/exoplayer2/ui/d;->V:I

    move v2, v3

    :goto_0
    const/4 v4, 0x2

    if-gt v2, v4, :cond_c

    add-int v5, p1, v2

    .line 20
    rem-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_9

    const/4 v6, 0x0

    if-eq v5, v3, :cond_8

    if-eq v5, v4, :cond_7

    goto :goto_2

    :cond_7
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_a

    goto :goto_1

    :cond_8
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_a

    :cond_9
    :goto_1
    move v6, v3

    :cond_a
    :goto_2
    if-eqz v6, :cond_b

    move p1, v5

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_c
    :goto_3
    invoke-interface {v1, p1}, Ln3/o1;->E(I)V

    goto :goto_4

    .line 22
    :cond_d
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/d;->q:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_e

    .line 23
    invoke-interface {v1}, Ln3/o1;->Q()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-interface {v1, p1}, Ln3/o1;->r(Z)V

    :cond_e
    :goto_4
    return-void
.end method
