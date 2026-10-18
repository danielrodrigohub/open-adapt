.class public final Lo9/j;
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

    iput-object p1, p0, Lo9/j;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: Lights"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lh9/s;->c:Lh9/s;

    iget-object v1, p0, Lo9/j;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-virtual {v0, v1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 3
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
