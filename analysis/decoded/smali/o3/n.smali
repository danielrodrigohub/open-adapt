.class public final synthetic Lo3/n;
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

    iput p3, p0, Lo3/n;->b:I

    iput-object p1, p0, Lo3/n;->c:Lo3/b$a;

    iput-object p2, p0, Lo3/n;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lo3/n;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1}, Lo3/b;->N0()V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v0, Ln5/t;

    check-cast p1, Lo3/b;

    .line 3
    invoke-interface {p1, v0}, Lo3/b;->b(Ln5/t;)V

    .line 4
    iget v0, v0, Ln5/t;->h:I

    invoke-interface {p1}, Lo3/b;->K0()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
