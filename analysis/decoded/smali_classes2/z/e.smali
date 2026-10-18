.class public final synthetic Lz/e;
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

    iput p3, p0, Lz/e;->h:I

    iput-object p1, p0, Lz/e;->i:Ljava/lang/Object;

    iput-object p2, p0, Lz/e;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lz/e;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lz/e;->i:Ljava/lang/Object;

    check-cast v0, Lz/d$e;

    iget-object v1, p0, Lz/e;->j:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    .line 1
    invoke-virtual {v0, v1}, Lz/d$e;->e(Landroid/graphics/Typeface;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lz/e;->i:Ljava/lang/Object;

    check-cast v0, Lr3/k$a;

    iget-object v1, p0, Lz/e;->j:Ljava/lang/Object;

    check-cast v1, Lr3/k;

    .line 3
    iget v2, v0, Lr3/k$a;->a:I

    iget-object v0, v0, Lr3/k$a;->b:Lp4/x$b;

    invoke-interface {v1, v2, v0}, Lr3/k;->p0(ILp4/x$b;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
