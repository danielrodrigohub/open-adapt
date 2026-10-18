.class public final synthetic Lv9/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Lqd/a;


# direct methods
.method public synthetic constructor <init>(Lqd/a;I)V
    .locals 0

    iput p2, p0, Lv9/a0;->h:I

    iput-object p1, p0, Lv9/a0;->i:Lqd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lv9/a0;->h:I

    const-string v1, "$tmp0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lv9/a0;->i:Lqd/a;

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lv9/a0;->i:Lqd/a;

    sget-object v2, Lnb/b;->i:Lnb/b;

    .line 4
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
