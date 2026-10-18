.class public final Lcom/nike/adapt/ui/modes/ModeRenameActivity;
.super Lp8/a;
.source "ModeRenameActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic P:I


# instance fields
.field public I:Lq7/p;

.field public J:Lcom/nike/adapt/adk/IDeviceController;

.field public K:Lcom/nike/adapt/adk/IAdaptRequester;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Lea/m;

.field public final O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    .line 2
    new-instance v7, Lu8/q;

    new-instance v3, Lcom/nike/adapt/ui/modes/ModeRenameActivity$a;

    invoke-direct {v3, p0}, Lcom/nike/adapt/ui/modes/ModeRenameActivity$a;-><init>(Lcom/nike/adapt/ui/modes/ModeRenameActivity;)V

    const-wide/16 v4, 0x0

    const/16 v6, 0x1c

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 3
    new-instance v1, Lu8/c;

    const v2, 0x7f0a0068

    invoke-direct {v1, v2, p0}, Lu8/c;-><init>(ILf/e;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->O:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final o0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->O:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 2
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp8/a;->onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceController;->subscribe(Lea/m;)V

    .line 7
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->N:Lea/m;

    goto :goto_0

    :cond_2
    const-string p1, "deviceController"

    .line 8
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 1
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of p1, p1, Lcom/nike/adapt/adk/StopAnimationNotificationResult;

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/p;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.activityModeRenameBackground"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/q;->onBackPressed()V

    const v0, 0x7f010023

    const v1, 0x7f010024

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "binding"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/p;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lq7/p;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz v2, :cond_0

    iget-object v1, v2, Lq7/p;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 5
    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 6
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 7
    :sswitch_1
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/p;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 8
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/p;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 9
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz v2, :cond_3

    iget-object v1, v2, Lq7/p;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 10
    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 11
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 12
    :sswitch_2
    invoke-virtual {p0}, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->q0()V

    goto :goto_0

    :sswitch_3
    const-string p1, "Mode Rename Cancel"

    .line 13
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "Pressed: "

    .line 14
    invoke-static {v1, p1, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    .line 15
    invoke-virtual {p0, v2, v3}, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->p0(ILandroid/content/Intent;)V

    :cond_6
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0069 -> :sswitch_3
        0x7f0a006c -> :sswitch_2
        0x7f0a0487 -> :sswitch_1
        0x7f0a0488 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lp8/q;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d002f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0069

    .line 5
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_d

    const v2, 0x7f0a006a

    .line 6
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_d

    const v2, 0x7f0a006b

    .line 7
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_d

    const v2, 0x7f0a006c

    .line 8
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_d

    const v2, 0x7f0a0487

    .line 9
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_d

    const v2, 0x7f0a0488

    .line 10
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 11
    new-instance p1, Lq7/p;

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    invoke-direct/range {v2 .. v9}, Lq7/p;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    .line 12
    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    .line 13
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 16
    sget-object v2, Lc9/j;->h:Lc9/j;

    .line 17
    new-instance v3, Lc9/i;

    invoke-direct {v3, p0}, Lc9/i;-><init>(Lcom/nike/adapt/ui/modes/ModeRenameActivity;)V

    .line 18
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0, v2, v3}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 19
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lp8/q;->B:Li8/d;

    .line 21
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, v0}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    .line 22
    sget-object p1, Lp7/b;->a:Lp7/b;

    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    const-string v0, "binding"

    if-eqz p1, :cond_c

    iget-object p1, p1, Lq7/p;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "binding.activityModeRenameBackground"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp7/b;->f(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "rename_device_preset_id"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string v2, ""

    if-nez p1, :cond_1

    move-object p1, v2

    :cond_1
    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->L:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v3, "rename_device_preset_name"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, p1

    :goto_2
    iput-object v2, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->M:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lq7/p;->c:Landroid/widget/EditText;

    .line 26
    new-instance v2, Lc9/g;

    invoke-direct {v2, p0, p1}, Lc9/g;-><init>(Lcom/nike/adapt/ui/modes/ModeRenameActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 28
    iget-object v2, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->M:Ljava/lang/String;

    const-string v3, "incomingPresetName"

    if-eqz v2, :cond_a

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v2, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->M:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 31
    new-instance v2, Lc9/h;

    invoke-direct {v2, p0}, Lc9/h;-><init>(Lcom/nike/adapt/ui/modes/ModeRenameActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 32
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq7/p;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/nike/adapt/ui/modes/ModeRenameActivity$b;

    invoke-direct {v2, p0}, Lcom/nike/adapt/ui/modes/ModeRenameActivity$b;-><init>(Lcom/nike/adapt/ui/modes/ModeRenameActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 33
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lq7/p;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/p;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/p;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/p;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_5
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_7
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_9
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_a
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_b
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_c
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p0(ILandroid/content/Intent;)V
    .locals 3

    .line 1
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq7/p;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const p1, 0x7f010023

    const p2, 0x7f010024

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final q0()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Mode Rename Save"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, v1, Lq7/p;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->M:Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->N:Lea/m;

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v3, v1}, Lcom/nike/adapt/analytics/TrackManager;->modeRenamed(Ljava/lang/String;)V

    .line 5
    iget-object v3, v0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->N:Lea/m;

    const-string v5, "adaptKitPairedDevices"

    if-eqz v3, :cond_8

    invoke-static {v3}, Lp4/h;->w(Lea/m;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 7
    check-cast v8, Lea/e;

    .line 8
    iget-object v8, v8, Lea/e;->h:Ljava/lang/String;

    .line 9
    iget-object v10, v0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->L:Ljava/lang/String;

    if-eqz v10, :cond_3

    invoke-static {v8, v10}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "incomingPresetId"

    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_4
    move v7, v9

    :goto_2
    if-ne v7, v9, :cond_5

    .line 10
    invoke-virtual {v0, v4, v2}, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->p0(ILandroid/content/Intent;)V

    .line 11
    :cond_5
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lea/e;

    const/16 v6, 0x3d

    invoke-static {v4, v1, v2, v6}, Lea/e;->a(Lea/e;Ljava/lang/String;Ljava/lang/Integer;I)Lea/e;

    move-result-object v1

    .line 12
    invoke-static {v3}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v17

    .line 13
    move-object/from16 v3, v17

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v10, v0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->N:Lea/m;

    if-eqz v10, :cond_7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1f7f

    invoke-static/range {v10 .. v21}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v1

    .line 15
    iget-object v3, v0, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v3, :cond_6

    invoke-interface {v3, v1}, Lcom/nike/adapt/adk/IDeviceController;->updatePair(Lea/m;)V

    .line 16
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "PARAM_MODE_UPDATED"

    .line 17
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, v9, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    invoke-virtual {v0, v9, v2}, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->p0(ILandroid/content/Intent;)V

    return-void

    :cond_6
    const-string v1, "deviceController"

    .line 20
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_7
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_8
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string v1, "incomingPresetName"

    .line 23
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_a
    :goto_3
    invoke-virtual {v0, v4, v2}, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->p0(ILandroid/content/Intent;)V

    return-void

    :cond_b
    const-string v1, "binding"

    .line 25
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method
