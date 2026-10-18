.class public final synthetic Ln3/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;
.implements Le4/r$f;
.implements Lq3/h$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ln3/x;->b:I

    iput-object p1, p0, Ln3/x;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Ln3/x;->c:Ljava/lang/Object;

    check-cast v0, Ln3/s0;

    check-cast p1, Le4/n;

    sget-object v1, Le4/r;->a:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-virtual {p1, v0}, Le4/n;->e(Ln3/s0;)Z

    move-result p1
    :try_end_0
    .catch Le4/r$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ln3/x;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ln3/x;->c:Ljava/lang/Object;

    check-cast v0, Ln3/l1;

    check-cast p1, Ln3/o1$c;

    .line 1
    iget-object v0, v0, Ln3/l1;->f:Ln3/q;

    invoke-interface {p1, v0}, Ln3/o1$c;->h0(Ln3/k1;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Ln3/x;->c:Ljava/lang/Object;

    check-cast v0, Ln3/k0$b;

    check-cast p1, Ln3/o1$c;

    .line 3
    iget-object v0, v0, Ln3/k0$b;->h:Ln3/k0;

    .line 4
    iget-object v0, v0, Ln3/k0;->O:Ln3/a1;

    .line 5
    invoke-interface {p1, v0}, Ln3/o1$c;->I(Ln3/a1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
