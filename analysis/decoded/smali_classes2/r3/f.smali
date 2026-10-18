.class public final synthetic Lr3/f;
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

    iput p3, p0, Lr3/f;->h:I

    iput-object p1, p0, Lr3/f;->i:Ljava/lang/Object;

    iput-object p2, p0, Lr3/f;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lr3/f;->h:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lr3/f;->i:Ljava/lang/Object;

    check-cast v0, Lq4/b$a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    throw v1

    .line 3
    :pswitch_1
    iget-object v0, p0, Lr3/f;->i:Ljava/lang/Object;

    check-cast v0, Lr3/k$a;

    iget-object v1, p0, Lr3/f;->j:Ljava/lang/Object;

    check-cast v1, Lr3/k;

    .line 4
    iget v2, v0, Lr3/k$a;->a:I

    iget-object v0, v0, Lr3/k$a;->b:Lp4/x$b;

    invoke-interface {v1, v2, v0}, Lr3/k;->i0(ILp4/x$b;)V

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Lr3/f;->i:Ljava/lang/Object;

    check-cast v0, Lhc/l;

    iget-object v2, p0, Lr3/f;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CompletableFuture;

    const-string v3, "this$0"

    .line 6
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$completableFuture"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v6, Lhc/m0;

    .line 8
    sget-object v3, Lhc/d;->C:Lhc/d;

    const/16 v3, 0x6e

    int-to-byte v3, v3

    .line 9
    sget-object v4, Lhc/m0$a;->i:Lhc/m0$a;

    .line 10
    invoke-direct {v6, v3, v4, v1}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 11
    iget-object v4, v0, Lhc/l;->k:Lhc/e;

    .line 12
    new-instance v0, Lhc/y;

    invoke-direct {v0, v2}, Lhc/y;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    new-instance v7, Lhc/x;

    invoke-direct {v7, v0}, Lhc/x;-><init>(Lhc/y;)V

    const-wide/16 v8, 0x4e20

    const-string v5, "Start Key Exchange"

    .line 13
    invoke-virtual/range {v4 .. v9}, Lhc/e;->k(Ljava/lang/String;Lhc/m0;Lpc/c;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
