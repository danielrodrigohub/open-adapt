.class public final synthetic Ly0/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Ly0/u;->h:I

    iput-object p1, p0, Ly0/u;->i:Ljava/lang/Object;

    iput-object p2, p0, Ly0/u;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Ly0/u;->h:I

    const/4 v1, 0x0

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Ly0/u;->i:Ljava/lang/Object;

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ly0/u;->j:Ljava/lang/Object;

    check-cast v1, Li9/g;

    sget-object v3, Li9/g;->K0:Li9/g$a;

    const-string v3, "$layoutView"

    .line 1
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lb7/j1;->c(Landroid/view/View;)V

    .line 3
    iget-object v0, v1, Li9/g;->i0:Lq7/o0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/o0;->c:Lq7/k1;

    iget-object v0, v0, Lq7/k1;->e:Landroid/widget/TextView;

    const-string v1, "binding.itemPresetCreati\u2026presetCreationStatusTitle"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lb7/j1;->c(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :pswitch_1
    iget-object v0, p0, Ly0/u;->i:Ljava/lang/Object;

    check-cast v0, Lx8/w;

    iget-object v3, p0, Ly0/u;->j:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    sget-object v4, Lx8/w;->C:Lfd/h;

    .line 5
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$view"

    invoke-static {v3, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    iput v2, v0, Lx8/w;->b:F

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 7
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v2, v1

    int-to-float v1, v1

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "view.context"

    invoke-static {v2, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v0, Lx8/w;->s:I

    invoke-static {v2, v5}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    iput v2, v0, Lx8/w;->c:F

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v0, Lx8/w;->s:I

    invoke-static {v2, v5}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lx8/w;->d:F

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v0, Lx8/w;->e:I

    invoke-static {v2, v5}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lx8/w;->l:I

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v0, Lx8/w;->f:I

    invoke-static {v2, v5}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lx8/w;->k:I

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v0, Lx8/w;->f:I

    invoke-static {v2, v3}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lx8/w;->p:I

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lx8/w;->v:Z

    return-void

    .line 15
    :pswitch_2
    iget-object v0, p0, Ly0/u;->i:Ljava/lang/Object;

    check-cast v0, Li8/a;

    iget-object v1, p0, Ly0/u;->j:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/r;

    const-string v3, "$request"

    .line 16
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :try_start_0
    instance-of v2, v0, Lj8/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "  "

    if-eqz v2, :cond_1

    .line 18
    :try_start_1
    move-object v2, v0

    check-cast v2, Lj8/e;

    .line 19
    sget-object v4, Lo7/x;->a:Lo7/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_1
    instance-of v2, v0, Lk8/f;

    if-eqz v2, :cond_2

    .line 21
    move-object v2, v0

    check-cast v2, Lk8/f;

    .line 22
    sget-object v4, Lo7/x;->a:Lo7/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lo7/x;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :catchall_0
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v1, v0}, Landroidx/fragment/app/r;->j(Li8/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    .line 24
    sget-object v5, Lo7/x;->a:Lo7/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prevented fatal: "

    .line 25
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 26
    invoke-static/range {v5 .. v11}, Lxc/a$a;->a(Lxc/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :goto_1
    return-void

    .line 27
    :pswitch_3
    iget-object v0, p0, Ly0/u;->i:Ljava/lang/Object;

    check-cast v0, Lr3/b$e;

    iget-object v2, p0, Ly0/u;->j:Ljava/lang/Object;

    check-cast v2, Ln3/s0;

    .line 28
    iget-object v3, v0, Lr3/b$e;->e:Lr3/b;

    .line 29
    iget v4, v3, Lr3/b;->p:I

    if-eqz v4, :cond_4

    .line 30
    iget-boolean v4, v0, Lr3/b$e;->d:Z

    if-eqz v4, :cond_3

    goto :goto_2

    .line 31
    :cond_3
    iget-object v4, v3, Lr3/b;->t:Landroid/os/Looper;

    .line 32
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v5, v0, Lr3/b$e;->b:Lr3/k$a;

    .line 34
    invoke-virtual {v3, v4, v5, v2, v1}, Lr3/b;->g(Landroid/os/Looper;Lr3/k$a;Ln3/s0;Z)Lr3/e;

    move-result-object v1

    .line 35
    iput-object v1, v0, Lr3/b$e;->c:Lr3/e;

    .line 36
    iget-object v1, v0, Lr3/b$e;->e:Lr3/b;

    .line 37
    iget-object v1, v1, Lr3/b;->n:Ljava/util/Set;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void

    .line 39
    :pswitch_4
    iget-object v0, p0, Ly0/u;->i:Ljava/lang/Object;

    check-cast v0, Ly0/w;

    .line 40
    iget-object v0, v0, Ly0/w;->h:Ly0/d0$d;

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    invoke-interface {v0}, Ly0/d0$d;->a()V

    return-void

    .line 43
    :goto_3
    iget-object v0, p0, Ly0/u;->i:Ljava/lang/Object;

    check-cast v0, Lqd/l;

    iget-object v1, p0, Ly0/u;->j:Ljava/lang/Object;

    check-cast v1, Lha/a;

    const-string v2, "$this_run"

    .line 44
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$error"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
