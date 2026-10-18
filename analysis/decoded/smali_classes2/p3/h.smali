.class public final synthetic Lp3/h;
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

    iput p3, p0, Lp3/h;->h:I

    iput-object p1, p0, Lp3/h;->i:Ljava/lang/Object;

    iput-object p2, p0, Lp3/h;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lp3/h;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lp3/h;->i:Ljava/lang/Object;

    check-cast v0, Lv4/b$b;

    iget-object v1, p0, Lp3/h;->j:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1
    iput-boolean v2, v0, Lv4/b$b;->p:Z

    .line 2
    invoke-virtual {v0, v1}, Lv4/b$b;->c(Landroid/net/Uri;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lp3/h;->i:Ljava/lang/Object;

    check-cast v0, Lp3/p$a;

    iget-object v1, p0, Lp3/h;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    .line 4
    iget-object v0, v0, Lp3/p$a;->b:Lp3/p;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Lp3/p;->s(Ljava/lang/Exception;)V

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Lp3/h;->i:Ljava/lang/Object;

    check-cast v0, Lqd/l;

    iget-object v1, p0, Lp3/h;->j:Ljava/lang/Object;

    check-cast v1, Lha/b;

    const-string v2, "$this_run"

    .line 6
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$result"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v1, Lha/b;->h:Lha/u;

    .line 8
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
