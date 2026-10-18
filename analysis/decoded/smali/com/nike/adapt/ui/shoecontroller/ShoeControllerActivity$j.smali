.class public final Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$j;
.super Lrd/o;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$j;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lh9/p0;

    sget-object v0, Lv7/m;->n:Lv7/m;

    invoke-direct {p1, v0}, Lh9/p0;-><init>(Lv7/m;)V

    iget-object v0, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$j;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$j;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lh8/a;->f0()V

    .line 7
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
