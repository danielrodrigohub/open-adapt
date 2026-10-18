.class public final Lu8/q;
.super Lu8/g;
.source "IssuesConnectingErrorDisplay.kt"


# instance fields
.field public final d:Landroid/app/Activity;

.field public final e:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final g:J

.field public h:Lq7/n0;

.field public i:Landroid/os/Handler;

.field public j:Ly0/t;

.field public k:Li8/f;

.field public l:Landroidx/appcompat/app/d;

.field public final m:Lfd/d;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lqd/a;JI)V
    .locals 3

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object p2, Lu8/m;->h:Lu8/m;

    :cond_0
    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lu8/n;->h:Lu8/n;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    and-int/lit8 v2, p5, 0x8

    if-eqz v2, :cond_2

    sget-object v1, Lu8/o;->h:Lu8/o;

    :cond_2
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_3

    const-wide/16 p3, 0x7530

    :cond_3
    const-string p5, "activity"

    .line 3
    invoke-static {p1, p5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "onDismiss"

    invoke-static {p2, p5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "onRetry"

    invoke-static {v0, p5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "runtimeOverride"

    invoke-static {v1, p5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v1}, Lu8/g;-><init>(Lqd/a;)V

    .line 5
    iput-object p1, p0, Lu8/q;->d:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lu8/q;->e:Lqd/a;

    .line 7
    iput-object v0, p0, Lu8/q;->f:Lqd/a;

    .line 8
    iput-wide p3, p0, Lu8/q;->g:J

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lu8/q;->i:Landroid/os/Handler;

    .line 10
    new-instance p1, Ly0/t;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Ly0/t;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lu8/q;->j:Ly0/t;

    .line 11
    new-instance p1, Li8/f;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Li8/f;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lu8/q;->k:Li8/f;

    .line 12
    sget-object p1, Lu8/p;->h:Lu8/p;

    invoke-static {p2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    iput-object p1, p0, Lu8/q;->m:Lfd/d;

    .line 13
    iput-boolean p3, p0, Lu8/q;->n:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu8/q;->d()V

    .line 2
    invoke-super {p0}, Lu8/g;->a()V

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lu8/g;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, p0, Lu8/g;->c:Z

    if-nez v2, :cond_1

    .line 3
    :cond_0
    iget-boolean v2, p0, Lu8/q;->n:Z

    if-eqz v2, :cond_1

    .line 4
    iput-boolean v1, p0, Lu8/q;->n:Z

    .line 5
    iget-object v0, p0, Lu8/q;->i:Landroid/os/Handler;

    iget-object v2, p0, Lu8/q;->j:Ly0/t;

    iget-wide v3, p0, Lu8/q;->g:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lu8/g;->c:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lu8/q;->d()V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lu8/q;->g()V

    return v1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu8/q;->i:Landroid/os/Handler;

    iget-object v1, p0, Lu8/q;->j:Ly0/t;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lu8/q;->i:Landroid/os/Handler;

    iget-object v1, p0, Lu8/q;->k:Li8/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lu8/q;->l:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/n;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lu8/q;->n:Z

    return-void
.end method

.method public final e()Lh8/a;
    .locals 1

    iget-object v0, p0, Lu8/q;->m:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final f(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lu8/q;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu8/q;->l:Landroidx/appcompat/app/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_e

    .line 3
    new-instance v0, Lrd/u;

    invoke-direct {v0}, Lrd/u;-><init>()V

    .line 4
    new-instance v3, Lb6/b;

    iget-object v4, p0, Lu8/q;->d:Landroid/app/Activity;

    const v5, 0x7f120177

    invoke-direct {v3, v4, v5}, Lb6/b;-><init>(Landroid/content/Context;I)V

    .line 5
    iget-object v4, v3, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v2, v4, Landroidx/appcompat/app/AlertController$b;->k:Z

    .line 6
    new-instance v5, Lu8/h;

    invoke-direct {v5, p1, v0, p0}, Lu8/h;-><init>(ZLrd/u;Lu8/q;)V

    .line 7
    iput-object v5, v4, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 8
    iget-object v4, p0, Lu8/q;->d:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0062

    const/4 v6, 0x0

    .line 9
    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0172

    .line 10
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_d

    const v5, 0x7f0a0173

    .line 11
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_d

    const v5, 0x7f0a0174

    .line 12
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_d

    const v5, 0x7f0a0175

    .line 13
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_d

    const v5, 0x7f0a0176

    .line 14
    invoke-static {v4, v5}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_d

    .line 15
    new-instance v5, Lq7/n0;

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v8, v5

    move-object v9, v4

    invoke-direct/range {v8 .. v13}, Lq7/n0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 16
    iput-object v5, p0, Lu8/q;->h:Lq7/n0;

    .line 17
    invoke-virtual {v3, v4}, Lb6/b;->h(Landroid/view/View;)Lb6/b;

    const v4, 0x7f110092

    const-string v5, "DialogShowing: CONNECTION_ERROR"

    const-string v7, "binding"

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lu8/q;->h:Lq7/n0;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lq7/n0;->e:Landroid/widget/TextView;

    const v8, 0x7f110041

    invoke-static {v8}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget-object p1, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1, v5}, Lo7/x;->a(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lu8/q;->e()Lh8/a;

    move-result-object v5

    invoke-interface {v5}, Lh8/a;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 21
    invoke-virtual {p0}, Lu8/q;->e()Lh8/a;

    move-result-object v5

    invoke-interface {v5, v2}, Lh8/a;->I(Z)V

    const-string v5, "IssuesConnectingErrorDisplay"

    const-string v8, "isConnectAttemptAfterFirmwareUpgrade=false addFatalFailureFWUpgradeRecordBreadCrumb"

    .line 22
    invoke-virtual {p1, v5, v8}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lu8/q;->e()Lh8/a;

    move-result-object v5

    invoke-interface {v5}, Lh8/a;->W()Lv7/d;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 24
    iput-boolean v1, v5, Lv7/d;->j:Z

    .line 25
    invoke-virtual {v5}, Lv7/d;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {p1, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lu8/q;->e()Lh8/a;

    move-result-object p1

    invoke-interface {p1, v6}, Lh8/a;->B(Lv7/d;)V

    .line 28
    :cond_3
    iget-object p1, p0, Lu8/q;->h:Lq7/n0;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lq7/n0;->b:Landroid/widget/Button;

    .line 29
    invoke-static {v4}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v1, Lu8/l;

    invoke-direct {v1, v0, p0}, Lu8/l;-><init>(Lrd/u;Lu8/q;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lu8/q;->h:Lq7/n0;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lq7/n0;->d:Landroid/widget/Button;

    const v1, 0x7f11023e

    .line 32
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v1, Lu8/j;

    invoke-direct {v1, v0, p0, v2}, Lu8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 34
    :cond_4
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 35
    :cond_5
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 36
    :cond_6
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 37
    :cond_7
    iget-object p1, p0, Lu8/q;->h:Lq7/n0;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lq7/n0;->e:Landroid/widget/TextView;

    const v1, 0x7f110073

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    sget-object p1, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1, v5}, Lo7/x;->a(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lu8/q;->h:Lq7/n0;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lq7/n0;->b:Landroid/widget/Button;

    .line 40
    invoke-static {v4}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v4, Lu8/i;

    invoke-direct {v4, v0, p0, v2}, Lu8/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lu8/q;->h:Lq7/n0;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lq7/n0;->d:Landroid/widget/Button;

    .line 43
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v1, Lu8/k;

    invoke-direct {v1, v0, p0, v2}, Lu8/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :goto_2
    iget-object p1, p0, Lu8/q;->h:Lq7/n0;

    if-eqz p1, :cond_9

    .line 46
    invoke-virtual {v3}, Lb6/b;->create()Landroidx/appcompat/app/d;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lu8/q;->l:Landroidx/appcompat/app/d;

    .line 48
    iget-object p1, p0, Lu8/q;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    .line 49
    iget-object p1, p0, Lu8/q;->l:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 50
    :cond_8
    invoke-virtual {p0}, Lu8/q;->g()V

    goto :goto_3

    .line 51
    :cond_9
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 52
    :cond_a
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 53
    :cond_b
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 54
    :cond_c
    invoke-static {v7}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 55
    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_3
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lu8/g;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lu8/g;->c:Z

    if-nez v0, :cond_7

    .line 3
    :cond_0
    iget-object v0, p0, Lu8/q;->h:Lq7/n0;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lu8/q;->l:Landroidx/appcompat/app/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_7

    .line 4
    iget-boolean v0, p0, Lu8/g;->b:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_3

    .line 5
    iget-boolean v3, p0, Lu8/g;->c:Z

    if-nez v3, :cond_3

    .line 6
    iget-object v0, p0, Lu8/q;->h:Lq7/n0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/n0;->c:Landroid/widget/TextView;

    const v1, 0x7f11026b

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Lu8/q;->h:Lq7/n0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lq7/n0;->c:Landroid/widget/TextView;

    const v1, 0x7f11026e

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_5
    iget-object v0, p0, Lu8/q;->h:Lq7/n0;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lq7/n0;->c:Landroid/widget/TextView;

    const v1, 0x7f110275

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_1
    return-void
.end method
