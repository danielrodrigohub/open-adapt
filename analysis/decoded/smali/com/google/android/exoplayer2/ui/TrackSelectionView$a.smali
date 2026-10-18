.class public final Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;->h:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;->h:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:Landroid/widget/CheckedTextView;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 3
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->s:Z

    .line 4
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 6
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->s:Z

    .line 7
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    .line 8
    :cond_1
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->s:Z

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    check-cast v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    .line 12
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->a:Ln3/c2$a;

    .line 13
    iget-object v4, v4, Ln3/c2$a;->i:Lp4/t0;

    .line 14
    iget v5, v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->b:I

    .line 15
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj5/p;

    if-nez v6, :cond_3

    .line 16
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->p:Z

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 17
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 18
    :cond_2
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    new-instance v1, Lj5/p;

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lj5/p;-><init>(Lp4/t0;Ljava/util/List;)V

    .line 20
    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 21
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    iget-object v6, v6, Lj5/p;->i:Lu6/v;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 23
    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->a:Ln3/c2$a;

    .line 24
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Z

    if-eqz v6, :cond_4

    .line 25
    iget-boolean v1, v1, Ln3/c2$a;->j:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    if-nez v1, :cond_7

    .line 26
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->p:Z

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_5

    move v6, v2

    goto :goto_1

    :cond_5
    move v6, v3

    :goto_1
    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :cond_7
    :goto_2
    if-eqz p1, :cond_9

    if-eqz v2, :cond_9

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 30
    :cond_8
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    new-instance v1, Lj5/p;

    invoke-direct {v1, v4, v7}, Lj5/p;-><init>(Lp4/t0;Ljava/util/List;)V

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-nez p1, :cond_b

    if-eqz v1, :cond_a

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    new-instance v1, Lj5/p;

    invoke-direct {v1, v4, v7}, Lj5/p;-><init>(Lp4/t0;Ljava/util/List;)V

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 33
    :cond_a
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    new-instance v1, Lj5/p;

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lj5/p;-><init>(Lp4/t0;Ljava/util/List;)V

    .line 35
    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_b
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a()V

    return-void
.end method
