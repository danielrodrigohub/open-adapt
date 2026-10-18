.class public final synthetic Lu8/k;
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

    iput p3, p0, Lu8/k;->h:I

    iput-object p1, p0, Lu8/k;->i:Ljava/lang/Object;

    iput-object p2, p0, Lu8/k;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lu8/k;->h:I

    const-string v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lu8/k;->i:Ljava/lang/Object;

    check-cast p1, Li9/y;

    iget-object v1, p0, Lu8/k;->j:Ljava/lang/Object;

    check-cast v1, Ls9/r;

    sget-object v2, Li9/y;->h0:Li9/y$b;

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shoeType"

    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Choose Your Shoes - Pressed: Next"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Li9/y;->s0()Lh8/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lh8/d;->e(Ls9/r;)V

    .line 4
    iput-object v1, p1, Li9/y;->f0:Ls9/r;

    .line 5
    invoke-virtual {p1}, Li9/y;->s0()Lh8/d;

    move-result-object v0

    invoke-interface {v0}, Lh8/d;->j()V

    .line 6
    sget-object v0, Ls9/p;->a:Ls9/p;

    invoke-virtual {v0, v1}, Ls9/p;->b(Ls9/r;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v3, p1, Li9/y;->d0:Lo8/d;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lo8/d;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "stateListener"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Li9/y;->s0()Lh8/d;

    move-result-object v2

    invoke-virtual {v0, v1}, Ls9/p;->b(Ls9/r;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lh8/d;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v1}, Li9/y;->q0(Ls9/r;)V

    return-void

    .line 10
    :pswitch_1
    iget-object p1, p0, Lu8/k;->i:Ljava/lang/Object;

    check-cast p1, Lrd/u;

    iget-object v1, p0, Lu8/k;->j:Ljava/lang/Object;

    check-cast v1, Lu8/q;

    const-string v2, "$userClosed"

    .line 11
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Get Help"

    invoke-virtual {v0, v2}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lrd/u;->h:Z

    .line 14
    iget-object p1, v1, Lu8/q;->l:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 15
    :cond_2
    new-instance p1, Lh9/g0;

    sget-object v0, Lh9/g0;->f:Lh9/g0$b;

    invoke-virtual {v0}, Lh9/g0$b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lh9/g0;-><init>(Ljava/lang/String;Z)V

    iget-object v0, v1, Lu8/q;->d:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    .line 16
    :goto_1
    iget-object p1, p0, Lu8/k;->i:Ljava/lang/Object;

    check-cast p1, Lqd/l;

    iget-object v0, p0, Lu8/k;->j:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/d;

    const-string v1, "$neutralAction"

    .line 17
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$dialog"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
