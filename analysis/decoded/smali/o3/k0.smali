.class public final synthetic Lo3/k0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;
.implements Lm5/o$b;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lo3/k0;->b:I

    iput-object p1, p0, Lo3/k0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo3/k0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lm5/j;)V
    .locals 3

    iget-object v0, p0, Lo3/k0;->c:Ljava/lang/Object;

    check-cast v0, Lo3/r0;

    iget-object v1, p0, Lo3/k0;->d:Ljava/lang/Object;

    check-cast v1, Ln3/o1;

    check-cast p1, Lo3/b;

    new-instance v2, Lo3/b$b;

    iget-object v0, v0, Lo3/r0;->l:Landroid/util/SparseArray;

    invoke-direct {v2, p2, v0}, Lo3/b$b;-><init>(Lm5/j;Landroid/util/SparseArray;)V

    invoke-interface {p1, v1, v2}, Lo3/b;->L(Ln3/o1;Lo3/b$b;)V

    return-void
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lo3/k0;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1}, Lo3/b;->X()V

    return-void

    .line 2
    :goto_0
    check-cast p1, Lo3/b;

    .line 3
    invoke-interface {p1}, Lo3/b;->G()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
