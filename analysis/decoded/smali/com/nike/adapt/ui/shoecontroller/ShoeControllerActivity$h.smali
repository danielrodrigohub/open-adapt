.class public final Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$h;
.super Lrd/o;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Lx8/d0;",
        "Lx8/k0;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$h;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lx8/d0;

    check-cast p2, Lx8/k0;

    const-string v0, "$this$$receiver"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickLacingAction"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lx8/d0;->l:Lx8/d0;

    if-eq p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$h;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    .line 5
    iput-object p1, v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->K:Lx8/d0;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$h;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-static {p1, p2}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->q0(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;Lx8/k0;)V

    .line 7
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
