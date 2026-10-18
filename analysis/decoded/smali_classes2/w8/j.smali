.class public final synthetic Lw8/j;
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

    iput p2, p0, Lw8/j;->h:I

    iput-object p1, p0, Lw8/j;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lw8/j;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lw8/j;->i:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "$this_with"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lw8/j;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    sget v1, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->d0:I

    const-string v1, "this$0"

    .line 4
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->I:Lq7/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/h;->i:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 6
    :goto_0
    iget-object v0, p0, Lw8/j;->i:Ljava/lang/Object;

    check-cast v0, Lqd/a;

    const-string v1, "$tmp0"

    .line 7
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
