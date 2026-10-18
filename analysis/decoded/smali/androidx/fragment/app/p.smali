.class public Landroidx/fragment/app/p;
.super Landroidx/activity/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Lx/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/p$a;
    }
.end annotation


# instance fields
.field public final u:Landroidx/fragment/app/s;

.field public final v:Landroidx/lifecycle/r;

.field public w:Z

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/p$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/p$a;-><init>(Landroidx/fragment/app/p;)V

    .line 3
    new-instance v1, Landroidx/fragment/app/s;

    invoke-direct {v1, v0}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/u;)V

    .line 4
    iput-object v1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 5
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/p;->y:Z

    .line 7
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->l:Lb1/c;

    .line 8
    iget-object v0, v0, Lb1/c;->b:Lb1/b;

    .line 9
    new-instance v1, Landroidx/fragment/app/n;

    invoke-direct {v1, p0}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/p;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Lb1/b;->b(Ljava/lang/String;Lb1/b$b;)V

    .line 10
    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/p;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->a0(Ld/b;)V

    return-void
.end method

.method public static e0(Landroidx/fragment/app/x;)Z
    .locals 5

    .line 1
    sget-object v0, Landroidx/lifecycle/i$c;->k:Landroidx/lifecycle/i$c;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/x;->I()Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v2, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/u;->k()Ljava/lang/Object;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v2}, Landroidx/fragment/app/m;->k()Landroidx/fragment/app/x;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroidx/fragment/app/p;->e0(Landroidx/fragment/app/x;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 7
    :cond_3
    iget-object v3, v2, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v3}, Landroidx/fragment/app/l0;->c()V

    .line 9
    iget-object v3, v3, Landroidx/fragment/app/l0;->i:Landroidx/lifecycle/r;

    .line 10
    iget-object v3, v3, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    .line 11
    invoke-virtual {v3, v0}, Landroidx/lifecycle/i$c;->b(Landroidx/lifecycle/i$c;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object v1, v2, Landroidx/fragment/app/m;->V:Landroidx/fragment/app/l0;

    .line 13
    iget-object v1, v1, Landroidx/fragment/app/l0;->i:Landroidx/lifecycle/r;

    invoke-virtual {v1}, Landroidx/lifecycle/r;->k()V

    move v1, v4

    .line 14
    :cond_4
    iget-object v3, v2, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    .line 15
    iget-object v3, v3, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    .line 16
    invoke-virtual {v3, v0}, Landroidx/lifecycle/i$c;->b(Landroidx/lifecycle/i$c;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    iget-object v1, v2, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    invoke-virtual {v1}, Landroidx/lifecycle/r;->k()V

    move v1, v4

    goto :goto_0

    :cond_5
    return v1
.end method


# virtual methods
.method public final A()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final d0()Landroidx/fragment/app/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    return-object v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Landroidx/fragment/app/p;->w:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Landroidx/fragment/app/p;->x:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Landroidx/fragment/app/p;->y:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Lv0/a;->b(Landroidx/lifecycle/q;)Lv0/a;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lv0/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 13
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/x;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public f0(Landroidx/fragment/app/m;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public g0()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    .line 2
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->h(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    sget-object v0, Landroidx/lifecycle/i$b;->ON_CREATE:Landroidx/lifecycle/i$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object p1, p1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {p1}, Landroidx/fragment/app/x;->j()V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object p1, p1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {p1, p2, v1}, Landroidx/fragment/app/x;->k(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    return v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/x;->f:Landroidx/fragment/app/v;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 7
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/x;->f:Landroidx/fragment/app/v;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->l()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    sget-object v1, Landroidx/lifecycle/i$b;->ON_DESTROY:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->m()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object p1, p1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/x;->i(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 5
    iget-object p1, p1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object p1, p1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/x;->o(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->n(Z)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    .line 2
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/x;->p(Landroid/view/Menu;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/p;->x:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->t(I)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    sget-object v1, Landroidx/lifecycle/i$b;->ON_PAUSE:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->r(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    sget-object v1, Landroidx/lifecycle/i$b;->ON_RESUME:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Landroidx/fragment/app/x;->B:Z

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/x;->C:Z

    .line 7
    iget-object v2, v0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 8
    iput-boolean v1, v2, Landroidx/fragment/app/a0;->h:Z

    const/4 v1, 0x7

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->t(I)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object p1, p1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/x;->s(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/p;->x:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 5
    iget-object v1, v1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/x;->z(Z)Z

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/p;->y:Z

    .line 4
    iget-boolean v1, p0, Landroidx/fragment/app/p;->w:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5
    iput-boolean v2, p0, Landroidx/fragment/app/p;->w:Z

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 7
    iget-object v1, v1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    .line 8
    iput-boolean v0, v1, Landroidx/fragment/app/x;->B:Z

    .line 9
    iput-boolean v0, v1, Landroidx/fragment/app/x;->C:Z

    .line 10
    iget-object v3, v1, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 11
    iput-boolean v0, v3, Landroidx/fragment/app/a0;->h:Z

    const/4 v3, 0x4

    .line 12
    invoke-virtual {v1, v3}, Landroidx/fragment/app/x;->t(I)V

    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/x;->z(Z)Z

    .line 15
    iget-object v1, p0, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    sget-object v2, Landroidx/lifecycle/i$b;->ON_START:Landroidx/lifecycle/i$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 17
    iget-object v1, v1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    .line 18
    iput-boolean v0, v1, Landroidx/fragment/app/x;->B:Z

    .line 19
    iput-boolean v0, v1, Landroidx/fragment/app/x;->C:Z

    .line 20
    iget-object v2, v1, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 21
    iput-boolean v0, v2, Landroidx/fragment/app/a0;->h:Z

    const/4 v0, 0x5

    .line 22
    invoke-virtual {v1, v0}, Landroidx/fragment/app/x;->t(I)V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/p;->y:Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v1

    invoke-static {v1}, Landroidx/fragment/app/p;->e0(Landroidx/fragment/app/x;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 5
    iget-object v1, v1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    .line 6
    iput-boolean v0, v1, Landroidx/fragment/app/x;->C:Z

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 8
    iput-boolean v0, v2, Landroidx/fragment/app/a0;->h:Z

    const/4 v0, 0x4

    .line 9
    invoke-virtual {v1, v0}, Landroidx/fragment/app/x;->t(I)V

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    sget-object v1, Landroidx/lifecycle/i$b;->ON_STOP:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    return-void
.end method
