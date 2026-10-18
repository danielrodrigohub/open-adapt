.class public final synthetic Lu8/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lu8/j;->h:I

    iput-object p1, p0, Lu8/j;->i:Ljava/lang/Object;

    iput-object p2, p0, Lu8/j;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lu8/j;->h:I

    const-string v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lu8/j;->i:Ljava/lang/Object;

    check-cast p1, Li9/y;

    iget-object v1, p0, Lu8/j;->j:Ljava/lang/Object;

    check-cast v1, Ls9/r;

    sget-object v2, Li9/y;->h0:Li9/y$b;

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shoeType"

    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p1, Li9/y;->e0:Z

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Choose Your Shoes - Pressed: Next"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Li9/y;->s0()Lh8/d;

    move-result-object v0

    invoke-interface {v0}, Lh8/d;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p1, Li9/y;->d0:Lo8/d;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lo8/d;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "stateListener"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Li9/y;->q0(Ls9/r;)V

    :cond_2
    return-void

    .line 7
    :pswitch_1
    iget-object p1, p0, Lu8/j;->i:Ljava/lang/Object;

    check-cast p1, Lrd/u;

    iget-object v1, p0, Lu8/j;->j:Ljava/lang/Object;

    check-cast v1, Lu8/q;

    const-string v2, "$userClosed"

    .line 8
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Try Again"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Lrd/u;->h:Z

    .line 11
    iget-object p1, v1, Lu8/q;->f:Lqd/a;

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 12
    iget-object p1, v1, Lu8/q;->l:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lf/n;->dismiss()V

    :cond_3
    return-void

    .line 13
    :goto_1
    iget-object p1, p0, Lu8/j;->i:Ljava/lang/Object;

    check-cast p1, Lqd/l;

    iget-object v0, p0, Lu8/j;->j:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/d;

    const-string v1, "$action"

    .line 14
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$dialog"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
