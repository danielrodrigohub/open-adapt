.class public final synthetic Landroidx/appcompat/widget/g1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/g1;->h:I

    iput-object p1, p0, Landroidx/appcompat/widget/g1;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/appcompat/widget/g1;->h:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/g1;->i:Ljava/lang/Object;

    check-cast v0, Lo5/j;

    .line 1
    iget-object v2, v0, Lo5/j;->o:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 2
    iget-object v3, v0, Lo5/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo5/j$b;

    .line 3
    invoke-interface {v4}, Lo5/j$b;->j()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, v0, Lo5/j;->n:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 7
    :cond_2
    iput-object v1, v0, Lo5/j;->n:Landroid/graphics/SurfaceTexture;

    .line 8
    iput-object v1, v0, Lo5/j;->o:Landroid/view/Surface;

    return-void

    .line 9
    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/g1;->i:Ljava/lang/Object;

    check-cast v0, Ln3/z1;

    sget v1, Ln3/z1$b;->b:I

    .line 10
    invoke-virtual {v0}, Ln3/z1;->e()V

    return-void

    .line 11
    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/g1;->i:Ljava/lang/Object;

    check-cast v0, Ly0/w;

    .line 12
    iget-object v0, v0, Ly0/w;->h:Ly0/d0$d;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ly0/d0$d;->a()V

    return-void

    .line 15
    :pswitch_3
    iget-object v0, p0, Landroidx/appcompat/widget/g1;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->o()V

    return-void

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/g1;->i:Ljava/lang/Object;

    check-cast v0, Li9/g;

    sget-object v2, Li9/g;->K0:Li9/g$a;

    const-string v2, "this$0"

    .line 16
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v2, v0, Li9/g;->r0:Lx8/n0;

    const-string v3, "rightShoeControllerUiHelper"

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lx8/q0;->p(Z)V

    .line 18
    iget-object v2, v0, Li9/g;->r0:Lx8/n0;

    if-eqz v2, :cond_4

    sget-object v4, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-virtual {v2, v4}, Lx8/q0;->t(Lcom/nike/adapt/adk/IDeviceCacheADK;)V

    .line 19
    iget-object v0, v0, Li9/g;->r0:Lx8/n0;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lx8/q0;->f(Z)V

    return-void

    .line 21
    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_4
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_5
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
