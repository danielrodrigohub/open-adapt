.class public Landroidx/recyclerview/widget/h0;
.super Lj0/a;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/h0$a;
    }
.end annotation


# instance fields
.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Landroidx/recyclerview/widget/h0$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj0/a;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/h0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h0;->j()Lj0/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    instance-of v0, p1, Landroidx/recyclerview/widget/h0$a;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/h0$a;

    iput-object p1, p0, Landroidx/recyclerview/widget/h0;->e:Landroidx/recyclerview/widget/h0$a;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/h0$a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/h0$a;-><init>(Landroidx/recyclerview/widget/h0;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/h0;->e:Landroidx/recyclerview/widget/h0$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lj0/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a0(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;Lk0/f;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lj0/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lk0/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h0;->k()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/h0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/h0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$m;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:Landroidx/recyclerview/widget/RecyclerView$y;

    const/4 v3, -0x1

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$m;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 8
    invoke-virtual {p2, v0}, Lk0/f;->a(I)V

    .line 9
    invoke-virtual {p2, v4}, Lk0/f;->w(Z)V

    .line 10
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$m;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$m;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 11
    invoke-virtual {p2, v0}, Lk0/f;->a(I)V

    .line 12
    invoke-virtual {p2, v4}, Lk0/f;->w(Z)V

    .line 13
    :cond_3
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->Q(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v0

    .line 14
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->B(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, p1, v1}, Lk0/f$b;->a(III)Lk0/f$b;

    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Lk0/f;->p(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj0/a;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h0;->k()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p1, p0, Landroidx/recyclerview/widget/h0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/h0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    .line 4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$m;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView$t;

    const/16 v2, 0x1000

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_1

    move p2, v0

    move v1, p2

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    .line 5
    invoke-virtual {v1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$m;->q:I

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->N()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->K()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$m;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 9
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$m;->p:I

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->L()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->M()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$m;->q:I

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->N()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->K()I

    move-result v1

    sub-int/2addr p2, v1

    move v1, p2

    goto :goto_1

    :cond_4
    move v1, v0

    .line 14
    :goto_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$m;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$m;->p:I

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->L()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->M()I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_2

    :cond_5
    move p2, v0

    :goto_2
    if-nez v1, :cond_6

    if-nez p2, :cond_6

    move p3, v0

    goto :goto_3

    .line 17
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$m;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->j0(IIZ)V

    :goto_3
    return p3

    :cond_7
    return v0
.end method

.method public j()Lj0/a;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/h0;->e:Landroidx/recyclerview/widget/h0$a;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/h0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->N()Z

    move-result v0

    return v0
.end method
