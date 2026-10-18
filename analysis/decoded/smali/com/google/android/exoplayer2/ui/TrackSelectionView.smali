.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;
    }
.end annotation


# instance fields
.field public final h:I

.field public final i:Landroid/view/LayoutInflater;

.field public final j:Landroid/widget/CheckedTextView;

.field public final k:Landroid/widget/CheckedTextView;

.field public final l:Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;

.field public final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/c2$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lp4/t0;",
            "Lj5/p;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field public p:Z

.field public q:Lk5/f;

.field public r:[[Landroid/widget/CheckedTextView;

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, p2, [I

    const v3, 0x101030e

    aput v3, v2, v0

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:I

    .line 7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Landroid/view/LayoutInflater;

    .line 9
    new-instance v1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;

    .line 10
    new-instance v3, Lcom/google/android/exoplayer2/ui/c;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/ui/c;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->q:Lk5/f;

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    .line 12
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    const v3, 0x109000f

    .line 13
    invoke-virtual {p1, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:Landroid/widget/CheckedTextView;

    .line 14
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    sget v5, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 16
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    invoke-virtual {v4, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 18
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x8

    .line 19
    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 20
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    sget v4, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {p1, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    invoke-virtual {p1, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Landroid/widget/CheckedTextView;

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->s:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->s:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move v0, v2

    .line 3
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->r:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/c2$a;

    .line 5
    iget-object v3, v3, Ln3/c2$a;->i:Lp4/t0;

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5/p;

    move v3, v2

    .line 7
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->r:[[Landroid/widget/CheckedTextView;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v3, v5, :cond_2

    if-eqz v1, :cond_1

    .line 8
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    check-cast v4, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    .line 11
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->r:[[Landroid/widget/CheckedTextView;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget-object v6, v1, Lj5/p;->i:Lu6/v;

    iget v4, v4, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lu6/v;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_3

    .line 12
    :cond_1
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->r:[[Landroid/widget/CheckedTextView;

    .line 9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    move v3, v2

    .line 10
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 11
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/c2$a;

    .line 12
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Z

    if-eqz v5, :cond_3

    .line 13
    iget-boolean v5, v4, Ln3/c2$a;->j:Z

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 14
    :goto_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->r:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Ln3/c2$a;->h:I

    new-array v8, v7, [Landroid/widget/CheckedTextView;

    aput-object v8, v6, v3

    .line 15
    new-array v6, v7, [Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    move v8, v2

    .line 16
    :goto_4
    iget v9, v4, Ln3/c2$a;->h:I

    if-ge v8, v9, :cond_4

    .line 17
    new-instance v9, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    invoke-direct {v9, v4, v8}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;-><init>(Ln3/c2$a;I)V

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    move v8, v2

    :goto_5
    if-ge v8, v7, :cond_a

    if-nez v8, :cond_5

    .line 18
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Landroid/view/LayoutInflater;

    sget v10, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {v9, v10, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    if-nez v5, :cond_7

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const v9, 0x109000f

    goto :goto_7

    :cond_7
    :goto_6
    const v9, 0x1090010

    .line 19
    :goto_7
    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Landroid/view/LayoutInflater;

    .line 20
    invoke-virtual {v10, v9, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckedTextView;

    .line 21
    iget v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->q:Lk5/f;

    aget-object v11, v6, v8

    .line 23
    iget-object v12, v11, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->a:Ln3/c2$a;

    iget v11, v11, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->b:I

    .line 24
    iget-object v12, v12, Ln3/c2$a;->i:Lp4/t0;

    .line 25
    iget-object v12, v12, Lp4/t0;->k:[Ln3/s0;

    aget-object v11, v12, v11

    .line 26
    invoke-interface {v10, v11}, Lk5/f;->a(Ln3/s0;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    aget-object v10, v6, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object v10, v4, Ln3/c2$a;->k:[I

    aget v10, v10, v8

    const/4 v11, 0x4

    if-eq v10, v11, :cond_8

    move v10, v2

    goto :goto_8

    :cond_8
    move v10, v1

    :goto_8
    if-eqz v10, :cond_9

    .line 29
    invoke-virtual {v9, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 30
    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 31
    :cond_9
    invoke-virtual {v9, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 32
    invoke-virtual {v9, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    :goto_9
    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->r:[[Landroid/widget/CheckedTextView;

    aget-object v10, v10, v3

    aput-object v9, v10, v8

    .line 34
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 35
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a()V

    return-void
.end method

.method public getIsDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->s:Z

    return v0
.end method

.method public getOverrides()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lp4/t0;",
            "Lj5/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method public setAllowAdaptiveSelections(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b()V

    :cond_0
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->p:Z

    if-eq v0, p1, :cond_3

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->p:Z

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/c2$a;

    .line 8
    iget-object v3, v3, Ln3/c2$a;->i:Lp4/t0;

    .line 9
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj5/p;

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    iget-object v4, v3, Lj5/p;->h:Lp4/t0;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b()V

    :cond_3
    return-void
.end method

.method public setShowDisableOption(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Lk5/f;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->q:Lk5/f;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b()V

    return-void
.end method
