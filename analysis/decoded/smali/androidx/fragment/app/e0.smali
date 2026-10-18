.class public final Landroidx/fragment/app/e0;
.super Ljava/lang/Object;
.source "FragmentStateManager.java"


# instance fields
.field public final a:Landroidx/fragment/app/w;

.field public final b:Landroidx/fragment/app/f0;

.field public final c:Landroidx/fragment/app/m;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/w;Landroidx/fragment/app/f0;Landroidx/fragment/app/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/e0;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/w;Landroidx/fragment/app/f0;Landroidx/fragment/app/m;Landroidx/fragment/app/d0;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Landroidx/fragment/app/e0;->e:I

    .line 35
    iput-object p1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    .line 36
    iput-object p2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    .line 37
    iput-object p3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p3, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    .line 39
    iput-object p1, p3, Landroidx/fragment/app/m;->k:Landroid/os/Bundle;

    .line 40
    iput v0, p3, Landroidx/fragment/app/m;->y:I

    .line 41
    iput-boolean v0, p3, Landroidx/fragment/app/m;->v:Z

    .line 42
    iput-boolean v0, p3, Landroidx/fragment/app/m;->s:Z

    .line 43
    iget-object p2, p3, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    .line 44
    iput-object p1, p3, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    .line 45
    iget-object p1, p4, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 46
    iput-object p1, p3, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/w;Landroidx/fragment/app/f0;Ljava/lang/ClassLoader;Landroidx/fragment/app/t;Landroidx/fragment/app/d0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/e0;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    .line 12
    iget-object p1, p5, Landroidx/fragment/app/d0;->h:Ljava/lang/String;

    invoke-virtual {p4, p3, p1}, Landroidx/fragment/app/t;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 13
    iget-object p2, p5, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    :cond_0
    iget-object p2, p5, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 16
    iget-object p2, p5, Landroidx/fragment/app/d0;->i:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    .line 17
    iget-boolean p2, p5, Landroidx/fragment/app/d0;->j:Z

    iput-boolean p2, p1, Landroidx/fragment/app/m;->u:Z

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Landroidx/fragment/app/m;->w:Z

    .line 19
    iget p2, p5, Landroidx/fragment/app/d0;->k:I

    iput p2, p1, Landroidx/fragment/app/m;->D:I

    .line 20
    iget p2, p5, Landroidx/fragment/app/d0;->l:I

    iput p2, p1, Landroidx/fragment/app/m;->E:I

    .line 21
    iget-object p2, p5, Landroidx/fragment/app/d0;->m:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/m;->F:Ljava/lang/String;

    .line 22
    iget-boolean p2, p5, Landroidx/fragment/app/d0;->n:Z

    iput-boolean p2, p1, Landroidx/fragment/app/m;->I:Z

    .line 23
    iget-boolean p2, p5, Landroidx/fragment/app/d0;->o:Z

    iput-boolean p2, p1, Landroidx/fragment/app/m;->t:Z

    .line 24
    iget-boolean p2, p5, Landroidx/fragment/app/d0;->p:Z

    iput-boolean p2, p1, Landroidx/fragment/app/m;->H:Z

    .line 25
    iget-boolean p2, p5, Landroidx/fragment/app/d0;->r:Z

    iput-boolean p2, p1, Landroidx/fragment/app/m;->G:Z

    .line 26
    invoke-static {}, Landroidx/lifecycle/i$c;->values()[Landroidx/lifecycle/i$c;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/d0;->s:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/m;->T:Landroidx/lifecycle/i$c;

    .line 27
    iget-object p2, p5, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 28
    iput-object p2, p1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    goto :goto_0

    .line 29
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    :goto_0
    const/4 p2, 0x2

    .line 30
    invoke-static {p2}, Landroidx/fragment/app/x;->L(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    const-string v1, "moveto ACTIVITY_CREATED: "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v3, v1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    .line 5
    iget-object v3, v1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v3}, Landroidx/fragment/app/x;->R()V

    .line 6
    iput v0, v1, Landroidx/fragment/app/m;->h:I

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, v1, Landroidx/fragment/app/m;->K:Z

    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/m;->E()V

    .line 9
    iget-boolean v4, v1, Landroidx/fragment/app/m;->K:Z

    const-string v5, "Fragment "

    if-eqz v4, :cond_6

    .line 10
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/m;->M:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 13
    iget-object v4, v1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    .line 14
    iget-object v6, v1, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v0, v6}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 16
    iput-object v2, v1, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    .line 17
    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, v1, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    iget-object v6, v1, Landroidx/fragment/app/m;->k:Landroid/os/Bundle;

    .line 19
    iget-object v0, v0, Landroidx/fragment/app/l0;->j:Lb1/c;

    invoke-virtual {v0, v6}, Lb1/c;->c(Landroid/os/Bundle;)V

    .line 20
    iput-object v2, v1, Landroidx/fragment/app/m;->k:Landroid/os/Bundle;

    .line 21
    :cond_3
    iput-boolean v3, v1, Landroidx/fragment/app/m;->K:Z

    .line 22
    invoke-virtual {v1, v4}, Landroidx/fragment/app/m;->V(Landroid/os/Bundle;)V

    .line 23
    iget-boolean v0, v1, Landroidx/fragment/app/m;->K:Z

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, v1, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, v1, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    sget-object v4, Landroidx/lifecycle/i$b;->ON_CREATE:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/l0;->b(Landroidx/lifecycle/i$b;)V

    goto :goto_0

    .line 26
    :cond_4
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_5
    :goto_0
    iput-object v2, v1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    .line 28
    iget-object v0, v1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 29
    iput-boolean v3, v0, Landroidx/fragment/app/x;->B:Z

    .line 30
    iput-boolean v3, v0, Landroidx/fragment/app/x;->C:Z

    .line 31
    iget-object v1, v0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 32
    iput-boolean v3, v1, Landroidx/fragment/app/a0;->h:Z

    const/4 v1, 0x4

    .line 33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->t(I)V

    .line 34
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v2, v1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/w;->a(Landroidx/fragment/app/m;Landroid/os/Bundle;Z)V

    return-void

    .line 35
    :cond_6
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v4, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_0
    if-ltz v4, :cond_2

    .line 4
    iget-object v5, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/m;

    .line 5
    iget-object v6, v5, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-ne v6, v2, :cond_1

    iget-object v5, v5, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 7
    iget-object v4, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 8
    iget-object v4, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/m;

    .line 9
    iget-object v5, v4, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-ne v5, v2, :cond_2

    iget-object v4, v4, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v0, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveto ATTACHED: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v0, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    const-string v2, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    const/4 v4, 0x0

    const-string v5, "Fragment "

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iget-object v1, v1, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->h(Ljava/lang/String;)Landroidx/fragment/app/e0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v2, v1, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    iget-object v2, v2, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    .line 7
    iput-object v4, v1, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    move-object v4, v0

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    invoke-static {v5}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v3, v3, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 12
    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f0;->h(Ljava/lang/String;)Landroidx/fragment/app/e0;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    invoke-static {v5}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v3, v3, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    .line 16
    invoke-static {v1, v3, v2}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v4}, Landroidx/fragment/app/e0;->k()V

    .line 19
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v0, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 20
    iget-object v2, v1, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 21
    iput-object v2, v0, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    .line 22
    iget-object v1, v1, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    .line 23
    iput-object v1, v0, Landroidx/fragment/app/m;->C:Landroidx/fragment/app/m;

    .line 24
    iget-object v1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/w;->g(Landroidx/fragment/app/m;Z)V

    .line 25
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 26
    iget-object v1, v0, Landroidx/fragment/app/m;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m$d;

    .line 27
    invoke-virtual {v3}, Landroidx/fragment/app/m$d;->a()V

    goto :goto_1

    .line 28
    :cond_6
    iget-object v1, v0, Landroidx/fragment/app/m;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    iget-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    iget-object v3, v0, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->d()Landroidx/fragment/app/r;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Landroidx/fragment/app/x;->b(Landroidx/fragment/app/u;Landroidx/fragment/app/r;Landroidx/fragment/app/m;)V

    .line 30
    iput v2, v0, Landroidx/fragment/app/m;->h:I

    .line 31
    iput-boolean v2, v0, Landroidx/fragment/app/m;->K:Z

    .line 32
    iget-object v1, v0, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    .line 33
    iget-object v1, v1, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    .line 35
    iget-boolean v1, v0, Landroidx/fragment/app/m;->K:Z

    if-eqz v1, :cond_8

    .line 36
    iget-object v1, v0, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 37
    iget-object v1, v1, Landroidx/fragment/app/x;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/b0;

    .line 38
    invoke-interface {v3, v0}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/m;)V

    goto :goto_2

    .line 39
    :cond_7
    iget-object v0, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 40
    iput-boolean v2, v0, Landroidx/fragment/app/x;->B:Z

    .line 41
    iput-boolean v2, v0, Landroidx/fragment/app/x;->C:Z

    .line 42
    iget-object v1, v0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 43
    iput-boolean v2, v1, Landroidx/fragment/app/a0;->h:Z

    .line 44
    invoke-virtual {v0, v2}, Landroidx/fragment/app/x;->t(I)V

    .line 45
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/w;->b(Landroidx/fragment/app/m;Z)V

    return-void

    .line 46
    :cond_8
    new-instance v1, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onAttach()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d()I
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v0, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    if-nez v1, :cond_0

    .line 2
    iget v0, v0, Landroidx/fragment/app/m;->h:I

    return v0

    .line 3
    :cond_0
    iget v1, p0, Landroidx/fragment/app/e0;->e:I

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/m;->T:Landroidx/lifecycle/i$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_1

    if-eq v0, v4, :cond_4

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v9, v0, Landroidx/fragment/app/m;->u:Z

    if-eqz v9, :cond_7

    .line 10
    iget-boolean v9, v0, Landroidx/fragment/app/m;->v:Z

    if-eqz v9, :cond_5

    .line 11
    iget v0, p0, Landroidx/fragment/app/e0;->e:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 13
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 14
    :cond_5
    iget v9, p0, Landroidx/fragment/app/e0;->e:I

    if-ge v9, v4, :cond_6

    .line 15
    iget v0, v0, Landroidx/fragment/app/m;->h:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 17
    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v0, v0, Landroidx/fragment/app/m;->s:Z

    if-nez v0, :cond_8

    .line 18
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 19
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v9, v0, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    if-eqz v9, :cond_d

    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/x;->J()Landroidx/fragment/app/s0;

    move-result-object v0

    .line 22
    invoke-static {v9, v0}, Landroidx/fragment/app/p0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s0;)Landroidx/fragment/app/p0;

    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v9, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 25
    invoke-virtual {v0, v9}, Landroidx/fragment/app/p0;->d(Landroidx/fragment/app/m;)Landroidx/fragment/app/p0$b;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 26
    iget v8, v9, Landroidx/fragment/app/p0$b;->b:I

    .line 27
    :cond_9
    iget-object v9, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 28
    iget-object v0, v0, Landroidx/fragment/app/p0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/p0$b;

    .line 29
    iget-object v12, v11, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 30
    invoke-virtual {v12, v9}, Landroidx/fragment/app/m;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 31
    iget-boolean v12, v11, Landroidx/fragment/app/p0$b;->f:Z

    if-nez v12, :cond_a

    move-object v10, v11

    :cond_b
    if-eqz v10, :cond_d

    if-eqz v8, :cond_c

    if-ne v8, v5, :cond_d

    .line 32
    :cond_c
    iget v8, v10, Landroidx/fragment/app/p0$b;->b:I

    :cond_d
    if-ne v8, v6, :cond_e

    const/4 v0, 0x6

    .line 33
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_e
    if-ne v8, v7, :cond_f

    .line 34
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 35
    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v7, v0, Landroidx/fragment/app/m;->t:Z

    if-eqz v7, :cond_11

    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/m;->D()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 38
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39
    :cond_11
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v2, v0, Landroidx/fragment/app/m;->N:Z

    if-eqz v2, :cond_12

    iget v0, v0, Landroidx/fragment/app/m;->h:I

    if-ge v0, v3, :cond_12

    .line 40
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 41
    :cond_12
    invoke-static {v6}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "computeExpectedState() of "

    const-string v2, " for "

    .line 42
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v1
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveto CREATED: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v1, v0, Landroidx/fragment/app/m;->S:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v3, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroidx/fragment/app/w;->h(Landroidx/fragment/app/m;Landroid/os/Bundle;Z)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    .line 7
    iget-object v3, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v3}, Landroidx/fragment/app/x;->R()V

    .line 8
    iput v2, v0, Landroidx/fragment/app/m;->h:I

    .line 9
    iput-boolean v4, v0, Landroidx/fragment/app/m;->K:Z

    .line 10
    iget-object v3, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    new-instance v5, Landroidx/fragment/app/Fragment$5;

    invoke-direct {v5, v0}, Landroidx/fragment/app/Fragment$5;-><init>(Landroidx/fragment/app/m;)V

    invoke-virtual {v3, v5}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    .line 11
    iget-object v3, v0, Landroidx/fragment/app/m;->X:Lb1/c;

    invoke-virtual {v3, v1}, Lb1/c;->c(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->H(Landroid/os/Bundle;)V

    .line 13
    iput-boolean v2, v0, Landroidx/fragment/app/m;->S:Z

    .line 14
    iget-boolean v1, v0, Landroidx/fragment/app/m;->K:Z

    if-eqz v1, :cond_1

    .line 15
    iget-object v0, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    sget-object v1, Landroidx/lifecycle/i$b;->ON_CREATE:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v2, v1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v4}, Landroidx/fragment/app/w;->c(Landroidx/fragment/app/m;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onCreate()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_2
    iget-object v1, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->h0(Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput v2, v0, Landroidx/fragment/app/m;->h:I

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v0, v0, Landroidx/fragment/app/m;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_1

    const-string v0, "moveto CREATE_VIEW: "

    .line 3
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v2, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/m;->Y(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v4, v3, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v2, v4

    goto :goto_1

    .line 7
    :cond_2
    iget v4, v3, Landroidx/fragment/app/m;->E:I

    if-eqz v4, :cond_5

    const/4 v2, -0x1

    if-eq v4, v2, :cond_4

    .line 8
    iget-object v2, v3, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 9
    iget-object v2, v2, Landroidx/fragment/app/x;->r:Landroidx/fragment/app/r;

    .line 10
    invoke-virtual {v2, v4}, Landroidx/fragment/app/r;->h(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    .line 11
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v4, v3, Landroidx/fragment/app/m;->w:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Landroidx/fragment/app/m;->w()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget v1, v1, Landroidx/fragment/app/m;->E:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unknown"

    .line 13
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No view found for id 0x"

    .line 14
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 15
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget v3, v3, Landroidx/fragment/app/m;->E:I

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create fragment "

    .line 18
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_5
    :goto_1
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput-object v2, v3, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    .line 21
    iget-object v4, v3, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v2, v4}, Landroidx/fragment/app/m;->W(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    const/4 v3, 0x2

    if-eqz v0, :cond_a

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v0, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 24
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v5, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    sget v6, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->b()V

    .line 26
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v2, v0, Landroidx/fragment/app/m;->G:Z

    if-eqz v2, :cond_7

    .line 27
    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 29
    invoke-static {v0}, Lj0/a0$g;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 31
    invoke-static {v0}, Lj0/a0$h;->c(Landroid/view/View;)V

    goto :goto_2

    .line 32
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 33
    new-instance v2, Landroidx/fragment/app/e0$a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/e0$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 34
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 35
    iget-object v2, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    iget-object v5, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v5}, Landroidx/fragment/app/m;->U(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 37
    invoke-virtual {v0, v3}, Landroidx/fragment/app/x;->t(I)V

    .line 38
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v5, v2, Landroidx/fragment/app/m;->M:Landroid/view/View;

    iget-object v6, v2, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v5, v6, v4}, Landroidx/fragment/app/w;->m(Landroidx/fragment/app/m;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 39
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 40
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v2, v2, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 41
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 42
    invoke-virtual {v4}, Landroidx/fragment/app/m;->h()Landroidx/fragment/app/m$b;

    move-result-object v4

    iput v2, v4, Landroidx/fragment/app/m$b;->m:F

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v4, v2, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v4, :cond_a

    if-nez v0, :cond_a

    .line 44
    iget-object v0, v2, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 45
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/m;->k0(Landroid/view/View;)V

    .line 46
    invoke-static {v3}, Landroidx/fragment/app/x;->L(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Saved focused view "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 49
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput v3, v0, Landroidx/fragment/app/m;->h:I

    return-void
.end method

.method public final g()V
    .locals 8

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    const-string v1, "movefrom CREATED: "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v3, v1, Landroidx/fragment/app/m;->t:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/m;->D()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-nez v1, :cond_5

    .line 5
    iget-object v3, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    .line 6
    iget-object v3, v3, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/a0;

    .line 7
    iget-object v6, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 8
    iget-object v7, v3, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    iget-object v6, v6, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-boolean v6, v3, Landroidx/fragment/app/a0;->f:Z

    if-eqz v6, :cond_3

    .line 10
    iget-boolean v3, v3, Landroidx/fragment/app/a0;->g:Z

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v3, v5

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v4

    :goto_4
    if-eqz v3, :cond_10

    .line 11
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v3, v3, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    .line 12
    instance-of v6, v3, Landroidx/lifecycle/o0;

    if-eqz v6, :cond_6

    .line 13
    iget-object v3, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    .line 14
    iget-object v3, v3, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/a0;

    .line 15
    iget-boolean v4, v3, Landroidx/fragment/app/a0;->g:Z

    goto :goto_5

    .line 16
    :cond_6
    iget-object v3, v3, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 17
    instance-of v6, v3, Landroid/app/Activity;

    if-eqz v6, :cond_7

    .line 18
    check-cast v3, Landroid/app/Activity;

    .line 19
    invoke-virtual {v3}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v3

    xor-int/2addr v4, v3

    :cond_7
    :goto_5
    if-nez v1, :cond_8

    if-eqz v4, :cond_b

    .line 20
    :cond_8
    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    .line 21
    iget-object v1, v1, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/a0;

    .line 22
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing non-config state for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_9
    iget-object v0, v1, Landroidx/fragment/app/a0;->d:Ljava/util/HashMap;

    iget-object v2, v3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a0;

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->a()V

    .line 27
    iget-object v0, v1, Landroidx/fragment/app/a0;->d:Ljava/util/HashMap;

    iget-object v2, v3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_a
    iget-object v0, v1, Landroidx/fragment/app/a0;->e:Ljava/util/HashMap;

    iget-object v2, v3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/n0;

    if-eqz v0, :cond_b

    .line 29
    invoke-virtual {v0}, Landroidx/lifecycle/n0;->a()V

    .line 30
    iget-object v0, v1, Landroidx/fragment/app/a0;->e:Ljava/util/HashMap;

    iget-object v1, v3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 32
    iget-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/x;->l()V

    .line 33
    iget-object v1, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    sget-object v2, Landroidx/lifecycle/i$b;->ON_DESTROY:Landroidx/lifecycle/i$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 34
    iput v5, v0, Landroidx/fragment/app/m;->h:I

    .line 35
    iput-boolean v5, v0, Landroidx/fragment/app/m;->K:Z

    .line 36
    iput-boolean v5, v0, Landroidx/fragment/app/m;->S:Z

    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/m;->J()V

    .line 38
    iget-boolean v1, v0, Landroidx/fragment/app/m;->K:Z

    if-eqz v1, :cond_f

    .line 39
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1, v5}, Landroidx/fragment/app/w;->d(Landroidx/fragment/app/m;Z)V

    .line 40
    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/e0;

    if-eqz v1, :cond_c

    .line 41
    iget-object v1, v1, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 42
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v2, v2, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    iget-object v3, v1, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 43
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput-object v2, v1, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    const/4 v2, 0x0

    .line 44
    iput-object v2, v1, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    goto :goto_6

    .line 45
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v0, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 46
    iget-object v2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/f0;->d(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    .line 47
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/f0;->k(Landroidx/fragment/app/e0;)V

    goto :goto_7

    .line 48
    :cond_f
    new-instance v1, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onDestroy()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 50
    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f0;->d(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 51
    iget-boolean v1, v0, Landroidx/fragment/app/m;->I:Z

    if-eqz v1, :cond_11

    .line 52
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput-object v0, v1, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/m;

    .line 53
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput v5, v0, Landroidx/fragment/app/m;->h:I

    :goto_7
    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "movefrom CREATE_VIEW: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v0, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->X()V

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/w;->n(Landroidx/fragment/app/m;Z)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    .line 9
    iput-object v1, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 10
    iput-object v1, v0, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/m;->W:Landroidx/lifecycle/v;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->h(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput-boolean v2, v0, Landroidx/fragment/app/m;->v:Z

    return-void
.end method

.method public final i()V
    .locals 8

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    const-string v1, "movefrom ATTACHED: "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    const/4 v3, -0x1

    .line 5
    iput v3, v1, Landroidx/fragment/app/m;->h:I

    const/4 v4, 0x0

    .line 6
    iput-boolean v4, v1, Landroidx/fragment/app/m;->K:Z

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/m;->L()V

    const/4 v5, 0x0

    .line 8
    iput-object v5, v1, Landroidx/fragment/app/m;->R:Landroid/view/LayoutInflater;

    .line 9
    iget-boolean v6, v1, Landroidx/fragment/app/m;->K:Z

    if-eqz v6, :cond_8

    .line 10
    iget-object v6, v1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 11
    iget-boolean v7, v6, Landroidx/fragment/app/x;->D:Z

    if-nez v7, :cond_1

    .line 12
    invoke-virtual {v6}, Landroidx/fragment/app/x;->l()V

    .line 13
    new-instance v6, Landroidx/fragment/app/y;

    invoke-direct {v6}, Landroidx/fragment/app/y;-><init>()V

    iput-object v6, v1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 14
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v6, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v1, v6, v4}, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/m;Z)V

    .line 15
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput v3, v1, Landroidx/fragment/app/m;->h:I

    .line 16
    iput-object v5, v1, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    .line 17
    iput-object v5, v1, Landroidx/fragment/app/m;->C:Landroidx/fragment/app/m;

    .line 18
    iput-object v5, v1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 19
    iget-boolean v3, v1, Landroidx/fragment/app/m;->t:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/m;->D()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-nez v1, :cond_5

    .line 20
    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    .line 21
    iget-object v1, v1, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/a0;

    .line 22
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 23
    iget-object v7, v1, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    iget-object v3, v3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    iget-boolean v3, v1, Landroidx/fragment/app/a0;->f:Z

    if-eqz v3, :cond_4

    .line 25
    iget-boolean v6, v1, Landroidx/fragment/app/a0;->g:Z

    :cond_4
    :goto_1
    if-eqz v6, :cond_7

    .line 26
    :cond_5
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "initState called for fragment: "

    .line 27
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Landroidx/lifecycle/r;

    invoke-direct {v1, v0}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/q;)V

    iput-object v1, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    .line 31
    invoke-static {v0}, Lb1/c;->a(Lb1/d;)Lb1/c;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/m;->X:Lb1/c;

    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    .line 33
    iput-boolean v4, v0, Landroidx/fragment/app/m;->s:Z

    .line 34
    iput-boolean v4, v0, Landroidx/fragment/app/m;->t:Z

    .line 35
    iput-boolean v4, v0, Landroidx/fragment/app/m;->u:Z

    .line 36
    iput-boolean v4, v0, Landroidx/fragment/app/m;->v:Z

    .line 37
    iput-boolean v4, v0, Landroidx/fragment/app/m;->w:Z

    .line 38
    iput v4, v0, Landroidx/fragment/app/m;->y:I

    .line 39
    iput-object v5, v0, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 40
    new-instance v1, Landroidx/fragment/app/y;

    invoke-direct {v1}, Landroidx/fragment/app/y;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 41
    iput-object v5, v0, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    .line 42
    iput v4, v0, Landroidx/fragment/app/m;->D:I

    .line 43
    iput v4, v0, Landroidx/fragment/app/m;->E:I

    .line 44
    iput-object v5, v0, Landroidx/fragment/app/m;->F:Ljava/lang/String;

    .line 45
    iput-boolean v4, v0, Landroidx/fragment/app/m;->G:Z

    .line 46
    iput-boolean v4, v0, Landroidx/fragment/app/m;->H:Z

    :cond_7
    return-void

    .line 47
    :cond_8
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDetach()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v1, v0, Landroidx/fragment/app/m;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/m;->v:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Landroidx/fragment/app/m;->x:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveto CREATE_VIEW: "

    .line 3
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->Y(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v3, v3, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/m;->W(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v2, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    sget v3, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v2, v0, Landroidx/fragment/app/m;->G:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 11
    iget-object v2, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    iget-object v3, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/m;->U(Landroid/view/View;Landroid/os/Bundle;)V

    .line 12
    iget-object v0, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    const/4 v2, 0x2

    .line 13
    invoke-virtual {v0, v2}, Landroidx/fragment/app/x;->t(I)V

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v4, v3, Landroidx/fragment/app/m;->M:Landroid/view/View;

    iget-object v5, v3, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v4, v5, v1}, Landroidx/fragment/app/w;->m(Landroidx/fragment/app/m;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput v2, v0, Landroidx/fragment/app/m;->h:I

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v1}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 3
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 7
    :try_start_0
    iput-boolean v3, p0, Landroidx/fragment/app/e0;->d:Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->d()I

    move-result v4

    iget-object v5, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget v6, v5, Landroidx/fragment/app/m;->h:I

    const/4 v7, 0x3

    if-eq v4, v6, :cond_9

    if-le v4, v6, :cond_4

    add-int/lit8 v6, v6, 0x1

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->n()V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x6

    .line 10
    iput v4, v5, Landroidx/fragment/app/m;->h:I

    goto :goto_0

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->p()V

    goto :goto_0

    .line 12
    :pswitch_3
    iget-object v4, v5, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, v5, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v5}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Landroidx/fragment/app/x;->J()Landroidx/fragment/app/s0;

    move-result-object v5

    .line 15
    invoke-static {v4, v5}, Landroidx/fragment/app/p0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s0;)Landroidx/fragment/app/p0;

    move-result-object v4

    .line 16
    iget-object v5, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v5, v5, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 17
    invoke-static {v5}, Landroidx/fragment/app/r0;->b(I)I

    move-result v5

    .line 18
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Landroidx/fragment/app/x;->L(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v7, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_2
    invoke-virtual {v4, v5, v1, p0}, Landroidx/fragment/app/p0;->a(IILandroidx/fragment/app/e0;)V

    .line 25
    :cond_3
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    const/4 v5, 0x4

    iput v5, v4, Landroidx/fragment/app/m;->h:I

    goto :goto_0

    .line 26
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->a()V

    goto :goto_0

    .line 27
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->j()V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()V

    goto :goto_0

    .line 29
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->e()V

    goto :goto_0

    .line 30
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->c()V

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, -0x1

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 31
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->l()V

    goto/16 :goto_0

    :pswitch_9
    const/4 v4, 0x5

    .line 32
    iput v4, v5, Landroidx/fragment/app/m;->h:I

    goto/16 :goto_0

    .line 33
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->q()V

    goto/16 :goto_0

    .line 34
    :pswitch_b
    invoke-static {v7}, Landroidx/fragment/app/x;->L(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_5
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v5, v4, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 37
    iget-object v4, v4, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    if-nez v4, :cond_6

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->o()V

    .line 39
    :cond_6
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v5, v4, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, v4, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    .line 40
    invoke-virtual {v4}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object v4

    .line 41
    invoke-virtual {v4}, Landroidx/fragment/app/x;->J()Landroidx/fragment/app/s0;

    move-result-object v4

    .line 42
    invoke-static {v5, v4}, Landroidx/fragment/app/p0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s0;)Landroidx/fragment/app/p0;

    move-result-object v4

    .line 43
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v1}, Landroidx/fragment/app/x;->L(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v6, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_7
    invoke-virtual {v4, v3, v7, p0}, Landroidx/fragment/app/p0;->a(IILandroidx/fragment/app/e0;)V

    .line 50
    :cond_8
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput v7, v4, Landroidx/fragment/app/m;->h:I

    goto/16 :goto_0

    .line 51
    :pswitch_c
    iput-boolean v0, v5, Landroidx/fragment/app/m;->v:Z

    .line 52
    iput v1, v5, Landroidx/fragment/app/m;->h:I

    goto/16 :goto_0

    .line 53
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->h()V

    .line 54
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput v3, v4, Landroidx/fragment/app/m;->h:I

    goto/16 :goto_0

    .line 55
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->g()V

    goto/16 :goto_0

    .line 56
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->i()V

    goto/16 :goto_0

    .line 57
    :cond_9
    iget-boolean v4, v5, Landroidx/fragment/app/m;->Q:Z

    if-eqz v4, :cond_f

    .line 58
    iget-object v4, v5, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v4, :cond_d

    iget-object v4, v5, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v4, :cond_d

    .line 59
    invoke-virtual {v5}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroidx/fragment/app/x;->J()Landroidx/fragment/app/s0;

    move-result-object v5

    .line 61
    invoke-static {v4, v5}, Landroidx/fragment/app/p0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s0;)Landroidx/fragment/app/p0;

    move-result-object v4

    .line 62
    iget-object v5, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v5, v5, Landroidx/fragment/app/m;->G:Z

    if-eqz v5, :cond_b

    .line 63
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v1}, Landroidx/fragment/app/x;->L(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v5, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_a
    invoke-virtual {v4, v7, v3, p0}, Landroidx/fragment/app/p0;->a(IILandroidx/fragment/app/e0;)V

    goto :goto_1

    .line 70
    :cond_b
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {v1}, Landroidx/fragment/app/x;->L(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v6, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_c
    invoke-virtual {v4, v1, v3, p0}, Landroidx/fragment/app/p0;->a(IILandroidx/fragment/app/e0;)V

    .line 77
    :cond_d
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v2, v1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    if-eqz v2, :cond_e

    .line 78
    iget-boolean v4, v1, Landroidx/fragment/app/m;->s:Z

    if-eqz v4, :cond_e

    invoke-virtual {v2, v1}, Landroidx/fragment/app/x;->M(Landroidx/fragment/app/m;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 79
    iput-boolean v3, v2, Landroidx/fragment/app/x;->A:Z

    .line 80
    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput-boolean v0, v1, Landroidx/fragment/app/m;->Q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_f
    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    .line 82
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "movefrom RESUMED: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 5
    iget-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    const/4 v2, 0x5

    .line 6
    invoke-virtual {v1, v2}, Landroidx/fragment/app/x;->t(I)V

    .line 7
    iget-object v1, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, v0, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    sget-object v2, Landroidx/lifecycle/i$b;->ON_PAUSE:Landroidx/lifecycle/i$b;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/l0;->b(Landroidx/lifecycle/i$b;)V

    .line 9
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    sget-object v2, Landroidx/lifecycle/i$b;->ON_PAUSE:Landroidx/lifecycle/i$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    const/4 v1, 0x6

    .line 10
    iput v1, v0, Landroidx/fragment/app/m;->h:I

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Landroidx/fragment/app/m;->K:Z

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/m;->O()V

    .line 13
    iget-boolean v2, v0, Landroidx/fragment/app/m;->K:Z

    if-eqz v2, :cond_2

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/m;Z)V

    return-void

    .line 15
    :cond_2
    new-instance v1, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onPause()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, p1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, p1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/m;->k:Landroid/os/Bundle;

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, p1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, p1, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/m;->q:I

    .line 8
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, p1, Landroidx/fragment/app/m;->l:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/m;->O:Z

    .line 10
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/m;->l:Ljava/lang/Boolean;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p1, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/m;->O:Z

    .line 12
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v0, p1, Landroidx/fragment/app/m;->O:Z

    if-nez v0, :cond_3

    .line 13
    iput-boolean v1, p1, Landroidx/fragment/app/m;->N:Z

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 8

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_0

    const-string v0, "moveto RESUMED: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 5
    iget-object v2, v0, Landroidx/fragment/app/m;->P:Landroidx/fragment/app/m$b;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, v2, Landroidx/fragment/app/m$b;->n:Landroid/view/View;

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 7
    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-ne v2, v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 9
    iget-object v6, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v6, v6, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-ne v0, v6, :cond_3

    :goto_2
    move v0, v4

    goto :goto_3

    .line 10
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v5

    :goto_3
    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    const/4 v6, 0x2

    .line 12
    invoke-static {v6}, Landroidx/fragment/app/x;->L(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestFocus: Restoring focused view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v0, "succeeded"

    goto :goto_4

    :cond_5
    const-string v0, "failed"

    .line 14
    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/m;->k0(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 19
    iget-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/x;->R()V

    .line 20
    iget-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/x;->z(Z)Z

    const/4 v1, 0x7

    .line 21
    iput v1, v0, Landroidx/fragment/app/m;->h:I

    .line 22
    iput-boolean v5, v0, Landroidx/fragment/app/m;->K:Z

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/m;->Q()V

    .line 24
    iget-boolean v2, v0, Landroidx/fragment/app/m;->K:Z

    if-eqz v2, :cond_8

    .line 25
    iget-object v2, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    sget-object v4, Landroidx/lifecycle/i$b;->ON_RESUME:Landroidx/lifecycle/i$b;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 26
    iget-object v2, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 27
    iget-object v2, v0, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    invoke-virtual {v2, v4}, Landroidx/fragment/app/l0;->b(Landroidx/lifecycle/i$b;)V

    .line 28
    :cond_7
    iget-object v0, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 29
    iput-boolean v5, v0, Landroidx/fragment/app/x;->B:Z

    .line 30
    iput-boolean v5, v0, Landroidx/fragment/app/x;->C:Z

    .line 31
    iget-object v2, v0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 32
    iput-boolean v5, v2, Landroidx/fragment/app/a0;->h:Z

    .line 33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->t(I)V

    .line 34
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1, v5}, Landroidx/fragment/app/w;->i(Landroidx/fragment/app/m;Z)V

    .line 35
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput-object v3, v0, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    .line 36
    iput-object v3, v0, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    .line 37
    iput-object v3, v0, Landroidx/fragment/app/m;->k:Landroid/os/Bundle;

    return-void

    .line 38
    :cond_8
    new-instance v1, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onResume()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v1, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput-object v0, v1, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    .line 6
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v1, v1, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    .line 8
    iget-object v1, v1, Landroidx/fragment/app/l0;->j:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->d(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iput-object v0, v1, Landroidx/fragment/app/m;->k:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 5

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveto STARTED: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 5
    iget-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/x;->R()V

    .line 6
    iget-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/x;->z(Z)Z

    const/4 v1, 0x5

    .line 7
    iput v1, v0, Landroidx/fragment/app/m;->h:I

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v0, Landroidx/fragment/app/m;->K:Z

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/m;->S()V

    .line 10
    iget-boolean v3, v0, Landroidx/fragment/app/m;->K:Z

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    sget-object v4, Landroidx/lifecycle/i$b;->ON_START:Landroidx/lifecycle/i$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 12
    iget-object v3, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 13
    iget-object v3, v0, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/l0;->b(Landroidx/lifecycle/i$b;)V

    .line 14
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 15
    iput-boolean v2, v0, Landroidx/fragment/app/x;->B:Z

    .line 16
    iput-boolean v2, v0, Landroidx/fragment/app/x;->C:Z

    .line 17
    iget-object v3, v0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 18
    iput-boolean v2, v3, Landroidx/fragment/app/a0;->h:Z

    .line 19
    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->t(I)V

    .line 20
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/w;->k(Landroidx/fragment/app/m;Z)V

    return-void

    .line 21
    :cond_2
    new-instance v1, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onStart()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "movefrom STARTED: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 5
    iget-object v1, v0, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Landroidx/fragment/app/x;->C:Z

    .line 7
    iget-object v3, v1, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 8
    iput-boolean v2, v3, Landroidx/fragment/app/a0;->h:Z

    const/4 v2, 0x4

    .line 9
    invoke-virtual {v1, v2}, Landroidx/fragment/app/x;->t(I)V

    .line 10
    iget-object v1, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v0, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    sget-object v3, Landroidx/lifecycle/i$b;->ON_STOP:Landroidx/lifecycle/i$b;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/l0;->b(Landroidx/lifecycle/i$b;)V

    .line 12
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    sget-object v3, Landroidx/lifecycle/i$b;->ON_STOP:Landroidx/lifecycle/i$b;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 13
    iput v2, v0, Landroidx/fragment/app/m;->h:I

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Landroidx/fragment/app/m;->K:Z

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/m;->T()V

    .line 16
    iget-boolean v2, v0, Landroidx/fragment/app/m;->K:Z

    if-eqz v2, :cond_2

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/w;->l(Landroidx/fragment/app/m;Z)V

    return-void

    .line 18
    :cond_2
    new-instance v1, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onStop()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/fragment/app/t0;-><init>(Ljava/lang/String;)V

    throw v1
.end method
