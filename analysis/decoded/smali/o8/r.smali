.class public final Lo8/r;
.super Ljava/lang/Object;
.source "PairingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/PairingActivity;

.field public final synthetic i:Ln3/r;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/PairingActivity;Ln3/r;)V
    .locals 0

    iput-object p1, p0, Lo8/r;->h:Lcom/nike/adapt/ui/PairingActivity;

    iput-object p2, p0, Lo8/r;->i:Ln3/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo8/r;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 2
    iget v0, v0, Lcom/nike/adapt/ui/PairingActivity;->O:I

    .line 3
    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lo8/r;->i:Ln3/r;

    invoke-interface {v0}, Ln3/o1;->b0()J

    move-result-wide v0

    const-wide/16 v2, 0x3fe8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 5
    iget-object v0, p0, Lo8/r;->i:Ln3/r;

    const-wide/16 v1, 0x3390

    invoke-interface {v0, v1, v2}, Ln3/o1;->R(J)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lo8/r;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 7
    iget v2, v0, Lcom/nike/adapt/ui/PairingActivity;->Q:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lcom/nike/adapt/ui/PairingActivity;->Q:I

    .line 9
    invoke-virtual {v0}, Lcom/nike/adapt/ui/PairingActivity;->p0()V

    .line 10
    iget-object v0, p0, Lo8/r;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 11
    iget-object v1, v0, Lcom/nike/adapt/ui/PairingActivity;->G:Lcom/nike/adapt/service/AdaptAuthenticationService;

    .line 12
    invoke-virtual {v0}, Lcom/nike/adapt/ui/PairingActivity;->r0()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lo8/r;->i:Ln3/r;

    invoke-interface {v0}, Ln3/o1;->b0()J

    move-result-wide v2

    const-wide/16 v4, 0x2260

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 14
    iget-object v0, p0, Lo8/r;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 15
    iget v2, v0, Lcom/nike/adapt/ui/PairingActivity;->Q:I

    add-int/2addr v2, v1

    .line 16
    iput v2, v0, Lcom/nike/adapt/ui/PairingActivity;->Q:I

    .line 17
    iget-object v0, p0, Lo8/r;->i:Ln3/r;

    const-wide/16 v1, 0x1d4c

    invoke-interface {v0, v1, v2}, Ln3/o1;->R(J)V

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Lo8/r;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 19
    iget-object v0, v0, Lcom/nike/adapt/ui/PairingActivity;->U:Landroid/os/Handler;

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
