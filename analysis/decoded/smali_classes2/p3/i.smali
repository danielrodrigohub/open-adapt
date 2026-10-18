.class public final synthetic Lp3/i;
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

    iput p3, p0, Lp3/i;->h:I

    iput-object p1, p0, Lp3/i;->i:Ljava/lang/Object;

    iput-object p2, p0, Lp3/i;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lp3/i;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lp3/i;->i:Ljava/lang/Object;

    check-cast v0, Lp3/p$a;

    iget-object v1, p0, Lp3/i;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lp3/p$a;->b:Lp3/p;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Lp3/p;->v(Ljava/lang/String;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lp3/i;->i:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/fragment/app/r0;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
