.class public final Lo9/n;
.super Lrd/o;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lo9/n;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lo9/n;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->M:Lx8/n0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    sget-object v2, Lx8/d0;->j:Lx8/d0;

    invoke-virtual {v0, v2}, Lx8/q0;->m(Lx8/d0;)V

    .line 4
    iget-object v0, p0, Lo9/n;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 5
    iget-object v0, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->N:Lx8/f0;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lx8/q0;->m(Lx8/d0;)V

    .line 7
    iget-object v0, p0, Lo9/n;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 8
    iget-object v1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->j0:Lo9/s;

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->i0:Ln3/x1;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v0, v2}, Lo9/s;->b(Ln3/r;Z)V

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v0, v2}, Lo9/s;->b(Ln3/r;Z)V

    .line 12
    :cond_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :cond_1
    const-string v0, "leftShoeControllerUiHelper"

    .line 13
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "rightShoeControllerUiHelper"

    .line 14
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
