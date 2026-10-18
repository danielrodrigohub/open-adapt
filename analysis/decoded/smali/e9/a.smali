.class public final Le9/a;
.super Landroidx/recyclerview/widget/t$d;
.source "ItemTouchHelperCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le9/a$a;
    }
.end annotation


# instance fields
.field public final d:Le9/d;


# direct methods
.method public constructor <init>(Le9/d;)V
    .locals 1

    const-string v0, "modeEditAdapter"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/t$d;-><init>()V

    iput-object p1, p0, Le9/a;->d:Le9/d;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/t$d;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 2
    instance-of p1, p2, Le9/a$a;

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Le9/a$a;

    .line 4
    invoke-interface {p2}, Le9/a$a;->a()V

    :cond_0
    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V
    .locals 3

    const-string v0, "c"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    .line 2
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/16 v0, 0x6e

    int-to-float v0, v0

    sub-float/2addr v2, v0

    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_0

    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    if-ne p6, v0, :cond_1

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->d()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/t$d;->g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le9/a;->d:Le9/d;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->h()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->h()I

    move-result p3

    if-ge p2, p3, :cond_0

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 2
    iget-object v1, p1, Le9/d;->g:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, 0x1

    if-gt v0, p2, :cond_1

    move v1, p2

    .line 3
    :goto_1
    iget-object v2, p1, Le9/d;->g:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq v1, v0, :cond_1

    move v1, v3

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->c(II)V

    .line 5
    iget-object p1, p1, Le9/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->modesReordered()V

    .line 7
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string p2, "Pressed : Mode Re -Ordered"

    invoke-virtual {p1, p2}, Lo7/x;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "modeRecyclerView"

    .line 8
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    instance-of p2, p1, Le9/a$a;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Le9/a$a;

    .line 3
    invoke-interface {p1}, Le9/a$a;->b()V

    :cond_0
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le9/a;->d:Le9/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Le9/d;->m(I)V

    return-void
.end method
