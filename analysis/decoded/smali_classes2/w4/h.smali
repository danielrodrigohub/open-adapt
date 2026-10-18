.class public final synthetic Lw4/h;
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

    iput p2, p0, Lw4/h;->h:I

    iput-object p1, p0, Lw4/h;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lw4/h;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lw4/h;->i:Ljava/lang/Object;

    check-cast v0, Lqd/a;

    sget-object v1, Lo7/b;->i:Lo7/b;

    const-string v1, "$execute"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lw4/h;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/d;->c()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lw4/h;->i:Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :goto_0
    iget-object v0, p0, Lw4/h;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    const-string v1, "this$0"

    .line 4
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v1

    invoke-interface {v1}, Lh8/a;->getShoeType()Ls9/r;

    move-result-object v1

    const-string v2, "<this>"

    .line 6
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Ls9/r;->l:Ls9/r;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    sget-object v2, Ls9/r;->m:Ls9/r;

    if-ne v1, v2, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v1

    invoke-interface {v1}, Lh8/a;->r()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v1

    iget-object v1, v1, Lq7/e0;->o:Lcom/nike/adapt/ui/helper/BottomSheet;

    const-string v2, "binding.jordanAppIconBottomSheet"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->v0()Lq7/e0;

    move-result-object v2

    iget-object v2, v2, Lq7/e0;->t:Landroid/view/View;

    const-string v3, "binding.shadedBackground"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object v2, v1, Lcom/nike/adapt/ui/helper/BottomSheet;->C:Landroid/view/View;

    .line 11
    iput-boolean v4, v1, Lcom/nike/adapt/ui/helper/BottomSheet;->D:Z

    .line 12
    new-instance v2, Lo9/k;

    invoke-direct {v2, v0}, Lo9/k;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    .line 13
    iput-object v2, v1, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    .line 14
    invoke-virtual {v1}, Lcom/nike/adapt/ui/helper/BottomSheet;->x()V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->X:Lx8/n;

    if-eqz v0, :cond_3

    sget-object v1, Lx8/n$a;->j:Lx8/n$a;

    invoke-static {v0, v1}, Lx8/n;->a(Lx8/n;Lx8/n$a;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
