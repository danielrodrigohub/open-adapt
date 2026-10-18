.class public final Landroidx/recyclerview/widget/u;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Landroidx/recyclerview/widget/t$f;

.field public final synthetic i:I

.field public final synthetic j:Landroidx/recyclerview/widget/t;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/t$f;I)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/u;->j:Landroidx/recyclerview/widget/t;

    iput-object p2, p0, Landroidx/recyclerview/widget/u;->h:Landroidx/recyclerview/widget/t$f;

    iput p3, p0, Landroidx/recyclerview/widget/u;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->j:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/u;->h:Landroidx/recyclerview/widget/t$f;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/t$f;->k:Z

    if-nez v1, :cond_4

    iget-object v0, v0, Landroidx/recyclerview/widget/t$f;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->j:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->j:Landroidx/recyclerview/widget/t;

    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 7
    iget-object v4, v0, Landroidx/recyclerview/widget/t;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/t$f;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/t$f;->l:Z

    if-nez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->j:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->m:Landroidx/recyclerview/widget/t$d;

    iget-object v1, p0, Landroidx/recyclerview/widget/u;->h:Landroidx/recyclerview/widget/t$f;

    iget-object v1, v1, Landroidx/recyclerview/widget/t$f;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/t$d;->j(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->j:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method
