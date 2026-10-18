.class public final synthetic Lo9/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9/c;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lo9/c;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lo9/n;

    invoke-direct {v1, v0}, Lo9/n;-><init>(Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;)V

    invoke-static {p1, v1}, Lf1/b;->c(Landroid/view/View;Lqd/a;)V

    const/4 p1, 0x1

    return p1
.end method
