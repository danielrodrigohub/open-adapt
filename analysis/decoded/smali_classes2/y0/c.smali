.class public final synthetic Ly0/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ly0/c;->b:I

    iput-object p1, p0, Ly0/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ly0/c;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ly0/c;->c:Ljava/lang/Object;

    check-cast v0, Ln3/l1;

    check-cast p1, Ln3/o1$c;

    sget v1, Ln3/k0;->m0:I

    .line 1
    iget v0, v0, Ln3/l1;->e:I

    invoke-interface {p1, v0}, Ln3/o1$c;->U(I)V

    return-void

    .line 2
    :goto_0
    check-cast p1, Lo3/b;

    .line 3
    invoke-interface {p1}, Lo3/b;->q0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
