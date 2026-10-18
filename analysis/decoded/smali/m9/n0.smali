.class public final synthetic Lm9/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/n0;->h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lm9/n0;->h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->E:I

    const-string v0, "this$0"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/v;->a:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
