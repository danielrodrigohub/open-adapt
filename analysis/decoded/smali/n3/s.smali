.class public final synthetic Ln3/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt6/o;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ln3/s;->h:I

    iput-object p1, p0, Ln3/s;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ln3/s;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ln3/s;->i:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 1
    new-instance v1, Ln3/m;

    invoke-direct {v1, v0}, Ln3/m;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 2
    :goto_0
    iget-object v0, p0, Ln3/s;->i:Ljava/lang/Object;

    check-cast v0, Ln3/o0;

    .line 3
    iget-boolean v0, v0, Ln3/o0;->G:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
