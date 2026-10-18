.class public final synthetic Lu8/i;
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

    iput p3, p0, Lu8/i;->h:I

    iput-object p1, p0, Lu8/i;->i:Ljava/lang/Object;

    iput-object p2, p0, Lu8/i;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lu8/i;->h:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lu8/i;->i:Ljava/lang/Object;

    check-cast p1, Lrd/u;

    iget-object v0, p0, Lu8/i;->j:Ljava/lang/Object;

    check-cast v0, Lu8/q;

    const-string v1, "$userClosed"

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Dismissed"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Lrd/u;->h:Z

    .line 4
    iget-object p1, v0, Lu8/q;->l:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 5
    :cond_0
    iget-object p1, v0, Lu8/q;->e:Lqd/a;

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void

    .line 6
    :goto_0
    iget-object p1, p0, Lu8/i;->i:Ljava/lang/Object;

    check-cast p1, Lqd/l;

    iget-object v0, p0, Lu8/i;->j:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/d;

    const-string v1, "$positiveAction"

    .line 7
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$dialog"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
