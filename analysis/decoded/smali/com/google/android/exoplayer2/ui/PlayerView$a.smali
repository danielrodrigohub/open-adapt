.class public final Lcom/google/android/exoplayer2/ui/PlayerView$a;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Ln3/o1$c;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/ui/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final h:Ln3/b2$b;

.field public i:Ljava/lang/Object;

.field public final synthetic j:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ln3/b2$b;

    invoke-direct {p1}, Ln3/b2$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->h:Ln3/b2$b;

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v1, Lcom/google/android/exoplayer2/ui/PlayerView;->H:I

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->m()V

    return-void
.end method

.method public final U(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->H:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->l()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->n()V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->E:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->f(Z)V

    :goto_0
    return-void
.end method

.method public final V(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget p2, Lcom/google/android/exoplayer2/ui/PlayerView;->H:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->l()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->E:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->f(Z)V

    :goto_0
    return-void
.end method

.method public final b(Ln5/t;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->H:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->k()V

    return-void
.end method

.method public final g0(Ln3/o1$d;Ln3/o1$d;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget p2, Lcom/google/android/exoplayer2/ui/PlayerView;->H:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->E:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final l0(Ln3/c2;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Ln3/o1;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->i:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Ln3/o1;->t()Ln3/c2;

    move-result-object v1

    .line 8
    iget-object v1, v1, Ln3/c2;->h:Lu6/v;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-interface {p1}, Ln3/o1;->x()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->h:Ln3/b2$b;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v3}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object p1

    iget-object p1, p1, Ln3/b2$b;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->i:Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->i:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0, v1}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 12
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->h:Ln3/b2$b;

    .line 13
    invoke-virtual {v0, v1, v4, v2}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v0

    .line 14
    iget v0, v0, Ln3/b2$b;->j:I

    .line 15
    invoke-interface {p1}, Ln3/o1;->C()I

    move-result p1

    if-ne p1, v0, :cond_2

    return-void

    .line 16
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->i:Ljava/lang/Object;

    .line 17
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 18
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->o(Z)V

    return-void
.end method

.method public final o(Lz4/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->n:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lz4/c;->h:Lu6/v;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->H:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->j()V

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->j:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget p2, p2, Lcom/google/android/exoplayer2/ui/PlayerView;->G:I

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/view/TextureView;I)V

    return-void
.end method
