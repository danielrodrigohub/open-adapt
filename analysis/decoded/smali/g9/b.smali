.class public final synthetic Lg9/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg9/b;->h:Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lg9/b;->h:Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;

    sget v0, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->U:I

    const-string v0, "this$0"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->Q:Lt9/c;

    invoke-virtual {v0}, Lt9/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v2, Lp8/f0;

    invoke-direct {v2, p2}, Lp8/f0;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 4
    iget-object p1, p1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->Q:Lt9/c;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lt9/c;->a:Z

    .line 6
    iput-boolean p2, p1, Lt9/c;->b:Z

    :goto_0
    return-void

    :cond_1
    const-string p1, "deviceController"

    .line 7
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
