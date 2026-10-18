.class public final synthetic Ly0/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Ly0/k;->b:I

    iput-object p1, p0, Ly0/k;->c:Ljava/lang/Object;

    iput-object p2, p0, Ly0/k;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ly0/k;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1}, Lo3/b;->d0()V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Ly0/k;->c:Ljava/lang/Object;

    check-cast v0, Lo3/b$a;

    iget-object v1, p0, Ly0/k;->d:Ljava/lang/Object;

    check-cast v1, Lp4/u;

    check-cast p1, Lo3/b;

    .line 3
    invoke-interface {p1, v0, v1}, Lo3/b;->f0(Lo3/b$a;Lp4/u;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
