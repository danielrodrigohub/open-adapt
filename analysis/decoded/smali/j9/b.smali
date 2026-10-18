.class public final Lj9/b;
.super Ljava/lang/Object;
.source "AdaptShoeUtils.kt"


# instance fields
.field public final a:Lcom/nike/adapt/adk/IDeviceController;

.field public final b:Lh8/d;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/IDeviceController;Lh8/d;)V
    .locals 1

    const-string v0, "preference"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9/b;->a:Lcom/nike/adapt/adk/IDeviceController;

    iput-object p2, p0, Lj9/b;->b:Lh8/d;

    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lj9/b;->b:Lh8/d;

    invoke-interface {v0}, Lh8/d;->d()Ls9/r;

    move-result-object v0

    .line 2
    sget-object v1, Ls9/p;->a:Ls9/p;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ls9/p$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const v1, 0x3f4ccccd

    packed-switch v0, :pswitch_data_0

    .line 4
    :pswitch_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :pswitch_1
    const v1, 0x3f333333

    :pswitch_2
    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lj9/b;->c:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lj9/b;->d:I

    :goto_1
    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    return p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
