.class public final synthetic Ln3/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$b;
.implements Lm5/o$a;
.implements Lp4/h0$a;
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ln3/z;->b:I

    iput-object p1, p0, Ln3/z;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lm5/j;)V
    .locals 1

    iget-object v0, p0, Ln3/z;->c:Ljava/lang/Object;

    check-cast v0, Ln3/k0;

    check-cast p1, Ln3/o1$c;

    iget-object v0, v0, Ln3/k0;->f:Ln3/o1;

    new-instance v0, Ln3/o1$b;

    invoke-direct {v0, p2}, Ln3/o1$b;-><init>(Lm5/j;)V

    invoke-interface {p1, v0}, Ln3/o1$c;->m0(Ln3/o1$b;)V

    return-void
.end method

.method public final create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    iget-object v0, p0, Ln3/z;->c:Ljava/lang/Object;

    check-cast v0, Lokhttp3/EventListener;

    invoke-static {v0, p1}, Lokhttp3/internal/_UtilJvmKt;->a(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ln3/z;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ln3/z;->c:Ljava/lang/Object;

    check-cast v0, Ln3/o;

    check-cast p1, Ln3/o1$c;

    .line 1
    invoke-interface {p1, v0}, Ln3/o1$c;->L(Ln3/o;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Ln3/z;->c:Ljava/lang/Object;

    check-cast v0, Ln3/a1;

    check-cast p1, Ln3/o1$c;

    .line 3
    invoke-interface {p1, v0}, Ln3/o1$c;->I(Ln3/a1;)V

    return-void

    .line 4
    :goto_0
    check-cast p1, Lo3/b;

    .line 5
    invoke-interface {p1}, Lo3/b;->D0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
