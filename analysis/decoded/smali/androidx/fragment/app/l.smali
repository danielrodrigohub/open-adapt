.class public Landroidx/fragment/app/l;
.super Landroidx/fragment/app/m;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public a0:Landroid/os/Handler;

.field public b0:Landroidx/fragment/app/l$a;

.field public c0:Landroidx/fragment/app/l$b;

.field public d0:Landroidx/fragment/app/l$c;

.field public e0:I

.field public f0:I

.field public g0:Z

.field public h0:Z

.field public i0:I

.field public j0:Z

.field public k0:Landroidx/fragment/app/l$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/w<",
            "Landroidx/lifecycle/q;",
            ">;"
        }
    .end annotation
.end field

.field public l0:Landroid/app/Dialog;

.field public m0:Z

.field public n0:Z

.field public o0:Z

.field public p0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/l$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/l$a;-><init>(Landroidx/fragment/app/l;)V

    iput-object v0, p0, Landroidx/fragment/app/l;->b0:Landroidx/fragment/app/l$a;

    .line 3
    new-instance v0, Landroidx/fragment/app/l$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/l$b;-><init>(Landroidx/fragment/app/l;)V

    iput-object v0, p0, Landroidx/fragment/app/l;->c0:Landroidx/fragment/app/l$b;

    .line 4
    new-instance v0, Landroidx/fragment/app/l$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/l$c;-><init>(Landroidx/fragment/app/l;)V

    iput-object v0, p0, Landroidx/fragment/app/l;->d0:Landroidx/fragment/app/l$c;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/fragment/app/l;->e0:I

    .line 6
    iput v0, p0, Landroidx/fragment/app/l;->f0:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/l;->g0:Z

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/l;->h0:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Landroidx/fragment/app/l;->i0:I

    .line 10
    new-instance v1, Landroidx/fragment/app/l$d;

    invoke-direct {v1, p0}, Landroidx/fragment/app/l$d;-><init>(Landroidx/fragment/app/l;)V

    iput-object v1, p0, Landroidx/fragment/app/l;->k0:Landroidx/fragment/app/l$d;

    .line 11
    iput-boolean v0, p0, Landroidx/fragment/app/l;->p0:Z

    return-void
.end method


# virtual methods
.method public final G(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/m;->W:Landroidx/lifecycle/v;

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/l;->k0:Landroidx/fragment/app/l$d;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/w;)V

    .line 4
    iget-boolean p1, p0, Landroidx/fragment/app/l;->o0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/l;->n0:Z

    :cond_0
    return-void
.end method

.method public H(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->H(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/l;->a0:Landroid/os/Handler;

    .line 3
    iget v0, p0, Landroidx/fragment/app/m;->E:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/l;->h0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/l;->e0:I

    const-string v0, "android:theme"

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/l;->f0:I

    const-string v0, "android:cancelable"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/l;->g0:Z

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/l;->h0:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/l;->h0:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/l;->i0:I

    :cond_1
    return-void
.end method

.method public final K()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/l;->m0:Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 6
    iget-boolean v1, p0, Landroidx/fragment/app/l;->n0:Z

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/l;->onDismiss(Landroid/content/DialogInterface;)V

    .line 8
    :cond_0
    iput-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/l;->p0:Z

    :cond_1
    return-void
.end method

.method public final L()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-boolean v1, p0, Landroidx/fragment/app/l;->o0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/fragment/app/l;->n0:Z

    if-nez v1, :cond_0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/l;->n0:Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->W:Landroidx/lifecycle/v;

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/l;->k0:Landroidx/fragment/app/l$d;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->g(Landroidx/lifecycle/w;)V

    return-void
.end method

.method public final M(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->M(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/l;->h0:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_9

    iget-boolean v3, p0, Landroidx/fragment/app/l;->j0:Z

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/l;->p0:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_0
    iput-boolean v3, p0, Landroidx/fragment/app/l;->j0:Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/l;->q0()Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    .line 6
    iget-boolean v5, p0, Landroidx/fragment/app/l;->h0:Z

    if-eqz v5, :cond_5

    .line 7
    iget v5, p0, Landroidx/fragment/app/l;->e0:I

    if-eq v5, v3, :cond_3

    if-eq v5, v2, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_3

    const/16 v6, 0x18

    .line 9
    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 10
    :cond_3
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v4

    .line 12
    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_4

    .line 13
    iget-object v5, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 14
    :cond_4
    iget-object v4, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    iget-boolean v5, p0, Landroidx/fragment/app/l;->g0:Z

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 15
    iget-object v4, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    iget-object v5, p0, Landroidx/fragment/app/l;->c0:Landroidx/fragment/app/l$b;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 16
    iget-object v4, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    iget-object v5, p0, Landroidx/fragment/app/l;->d0:Landroidx/fragment/app/l$c;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 17
    iput-boolean v3, p0, Landroidx/fragment/app/l;->p0:Z

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 18
    iput-object v3, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_1
    iput-boolean v0, p0, Landroidx/fragment/app/l;->j0:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/fragment/app/l;->j0:Z

    .line 20
    throw p1

    .line 21
    :cond_6
    :goto_2
    invoke-static {v2}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get layout inflater for DialogFragment "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from dialog context"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_8
    return-object p1

    .line 25
    :cond_9
    :goto_3
    invoke-static {v2}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting layout inflater for DialogFragment "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-boolean v2, p0, Landroidx/fragment/app/l;->h0:Z

    if-nez v2, :cond_a

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowsDialog = false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 29
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCreatingDialog = true: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    return-object p1
.end method

.method public R(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android:dialogShowing"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    :cond_0
    iget v0, p0, Landroidx/fragment/app/l;->e0:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7
    :cond_1
    iget v0, p0, Landroidx/fragment/app/l;->f0:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/l;->g0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/l;->h0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    :cond_4
    iget v0, p0, Landroidx/fragment/app/l;->i0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public S()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/l;->m0:Z

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-static {v0, p0}, Landroidx/lifecycle/p0;->a(Landroid/view/View;Landroidx/lifecycle/q;)V

    .line 7
    sget v1, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    invoke-static {v0, p0}, Landroidx/lifecycle/o;->H(Landroid/view/View;Lb1/d;)V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final V(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final W(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/m;->W(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final d()Landroidx/fragment/app/r;
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/m$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m$a;-><init>(Landroidx/fragment/app/m;)V

    .line 2
    new-instance v1, Landroidx/fragment/app/l$e;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/l$e;-><init>(Landroidx/fragment/app/l;Landroidx/fragment/app/r;)V

    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/fragment/app/l;->m0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Landroidx/fragment/app/x;->L(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/l;->p0(ZZ)V

    :cond_1
    return-void
.end method

.method public final p0(ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/l;->n0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/l;->n0:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/l;->o0:Z

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v2, p0, Landroidx/fragment/app/l;->a0:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 8
    iget-object p2, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/l;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/l;->a0:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/l;->b0:Landroidx/fragment/app/l$a;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/l;->m0:Z

    .line 11
    iget p2, p0, Landroidx/fragment/app/l;->i0:I

    if-ltz p2, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object p1

    iget p2, p0, Landroidx/fragment/app/l;->i0:I

    if-ltz p2, :cond_3

    .line 13
    new-instance v0, Landroidx/fragment/app/x$m;

    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/x$m;-><init>(Landroidx/fragment/app/x;I)V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/x;->x(Landroidx/fragment/app/x$l;Z)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Landroidx/fragment/app/l;->i0:I

    goto :goto_1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad id: "

    .line 16
    invoke-static {v0, p2}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object p2

    .line 19
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 20
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/m;)Landroidx/fragment/app/g0;

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->j(Z)I

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    :goto_1
    return-void
.end method

.method public q0()Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog called for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object v1

    .line 4
    iget v2, p0, Landroidx/fragment/app/l;->f0:I

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final r0()Landroid/app/Dialog;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
