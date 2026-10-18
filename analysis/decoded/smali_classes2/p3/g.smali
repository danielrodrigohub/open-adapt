.class public final synthetic Lp3/g;
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

    iput p3, p0, Lp3/g;->h:I

    iput-object p1, p0, Lp3/g;->i:Ljava/lang/Object;

    iput-object p2, p0, Lp3/g;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lp3/g;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lp3/g;->i:Ljava/lang/Object;

    check-cast v0, Ln5/s$a;

    iget-object v1, p0, Lp3/g;->j:Ljava/lang/Object;

    check-cast v1, Ln5/t;

    .line 1
    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Ln5/s;->b(Ln5/t;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lp3/g;->i:Ljava/lang/Object;

    check-cast v0, Lp3/p$a;

    iget-object v1, p0, Lp3/g;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    .line 3
    iget-object v0, v0, Lp3/p$a;->b:Lp3/p;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Lp3/p;->m(Ljava/lang/Exception;)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lp3/g;->i:Ljava/lang/Object;

    check-cast v0, Lhc/l;

    iget-object v1, p0, Lp3/g;->j:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CompletableFuture;

    const-string v2, "this$0"

    .line 5
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$stopCompletable"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lhc/a0;

    invoke-direct {v2, v1}, Lhc/a0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v2}, Lhc/l;->B(Lnc/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
