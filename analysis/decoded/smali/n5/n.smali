.class public final synthetic Ln5/n;
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

    iput p3, p0, Ln5/n;->h:I

    iput-object p1, p0, Ln5/n;->i:Ljava/lang/Object;

    iput-object p2, p0, Ln5/n;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ln5/n;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ln5/n;->i:Ljava/lang/Object;

    check-cast v0, Ln5/s$a;

    iget-object v1, p0, Ln5/n;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1
    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Ln5/s;->d(Ljava/lang/String;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Ln5/n;->i:Ljava/lang/Object;

    check-cast v0, Lhc/l;

    iget-object v1, p0, Ln5/n;->j:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CompletableFuture;

    const-string v2, "this$0"

    .line 3
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$currentAnimationFuture"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lhc/z;

    invoke-direct {v2, v1}, Lhc/z;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v2}, Lhc/l;->N(Lnc/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
