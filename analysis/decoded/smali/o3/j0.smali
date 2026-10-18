.class public final synthetic Lo3/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo3/b$a;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lo3/j0;->b:I

    iput-object p1, p0, Lo3/j0;->c:Lo3/b$a;

    iput-object p2, p0, Lo3/j0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lo3/j0;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1}, Lo3/b;->I()V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lo3/b;

    .line 3
    invoke-interface {p1}, Lo3/b;->s0()V

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Lo3/b;

    .line 5
    invoke-interface {p1}, Lo3/b;->B0()V

    return-void

    .line 6
    :goto_0
    check-cast p1, Lo3/b;

    .line 7
    invoke-interface {p1}, Lo3/b;->c0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
