.class public final synthetic Lg9/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Lf/e;


# direct methods
.method public synthetic constructor <init>(Lf/e;I)V
    .locals 0

    iput p2, p0, Lg9/a;->h:I

    iput-object p1, p0, Lg9/a;->i:Lf/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lg9/a;->h:I

    const-string v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lg9/a;->i:Lf/e;

    check-cast p1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;

    sget v1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->U:I

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/nike/adapt/ui/myshoes/autolace/AutoLaceActivity;->T:Lq7/i0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/i0;->a:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 3
    :goto_0
    iget-object p1, p0, Lg9/a;->i:Lf/e;

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;

    sget v1, Lcom/nike/adapt/ui/settings/SettingsAboutActivity;->B:I

    .line 4
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lh9/p0;

    sget-object v1, Lv7/m;->l:Lv7/m;

    invoke-direct {v0, v1}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
