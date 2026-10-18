.class public final synthetic Lp3/j;
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

    iput p3, p0, Lp3/j;->h:I

    iput-object p1, p0, Lp3/j;->j:Ljava/lang/Object;

    iput-object p2, p0, Lp3/j;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lp3/j;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lp3/j;->j:Ljava/lang/Object;

    check-cast v0, Ln5/s$a;

    iget-object v1, p0, Lp3/j;->i:Ljava/lang/Object;

    check-cast v1, Lq3/e;

    .line 1
    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Ln5/s;->q(Lq3/e;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lp3/j;->j:Ljava/lang/Object;

    check-cast v0, Lp3/p$a;

    iget-object v1, p0, Lp3/j;->i:Ljava/lang/Object;

    check-cast v1, Lq3/e;

    .line 3
    iget-object v0, v0, Lp3/p$a;->b:Lp3/p;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Lp3/p;->y(Lq3/e;)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lp3/j;->j:Ljava/lang/Object;

    check-cast v0, Lo5/j;

    iget-object v1, p0, Lp3/j;->i:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 5
    iget-object v2, v0, Lo5/j;->n:Landroid/graphics/SurfaceTexture;

    .line 6
    iget-object v3, v0, Lo5/j;->o:Landroid/view/Surface;

    .line 7
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 8
    iput-object v1, v0, Lo5/j;->n:Landroid/graphics/SurfaceTexture;

    .line 9
    iput-object v4, v0, Lo5/j;->o:Landroid/view/Surface;

    .line 10
    iget-object v0, v0, Lo5/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo5/j$b;

    .line 11
    invoke-interface {v1, v4}, Lo5/j$b;->e(Landroid/view/Surface;)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
