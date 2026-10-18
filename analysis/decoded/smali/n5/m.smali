.class public final synthetic Ln5/m;
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

    iput p3, p0, Ln5/m;->h:I

    iput-object p1, p0, Ln5/m;->i:Ljava/lang/Object;

    iput-object p2, p0, Ln5/m;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ln5/m;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ln5/m;->i:Ljava/lang/Object;

    check-cast v0, Lqd/l;

    iget-object v1, p0, Ln5/m;->j:Ljava/lang/Object;

    check-cast v1, Lfa/d;

    const-string v2, "$poster"

    .line 1
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$states"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Ln5/m;->i:Ljava/lang/Object;

    check-cast v0, Ln5/s$a;

    iget-object v1, p0, Ln5/m;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    .line 4
    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Ln5/s;->t(Ljava/lang/Exception;)V

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Ln5/m;->i:Ljava/lang/Object;

    check-cast v0, Lqd/l;

    iget-object v1, p0, Ln5/m;->j:Ljava/lang/Object;

    check-cast v1, Lha/a;

    const-string v2, "$this_run"

    .line 6
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$error"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
