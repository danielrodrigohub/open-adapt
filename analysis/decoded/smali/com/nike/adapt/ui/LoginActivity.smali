.class public final Lcom/nike/adapt/ui/LoginActivity;
.super Lo8/y;
.source "LoginActivity.kt"


# static fields
.field public static final synthetic C:I


# instance fields
.field public B:Lq7/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo8/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d002c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a00e8

    .line 5
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const v2, 0x7f0a00e9

    .line 6
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_1

    const v2, 0x7f0a00ea

    .line 7
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_1

    const v2, 0x7f0a00eb

    .line 8
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    const v2, 0x7f0a02c5

    .line 9
    invoke-static {p1, v2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v5, :cond_1

    .line 10
    new-instance p1, Lq7/m;

    invoke-direct {p1, v0, v3, v4}, Lq7/m;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 11
    iput-object p1, p0, Lcom/nike/adapt/ui/LoginActivity;->B:Lq7/m;

    .line 12
    invoke-virtual {p0, v0}, Lf/e;->setContentView(Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lcom/nike/adapt/ui/LoginActivity;->B:Lq7/m;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lq7/m;->a:Landroid/widget/Button;

    const v0, 0x7f1100e4

    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-static {p0}, Landroidx/activity/k;->m(Landroidx/lifecycle/q;)Landroidx/lifecycle/l;

    move-result-object p1

    new-instance v0, Lcom/nike/adapt/ui/LoginActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/nike/adapt/ui/LoginActivity$a;-><init>(Lcom/nike/adapt/ui/LoginActivity;Ljd/d;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->c(Lqd/p;)Lkotlinx/coroutines/Job;

    return-void

    :cond_0
    const-string p1, "binding"

    .line 15
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onStart()V
    .locals 5

    .line 1
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    sget-object v1, Lcom/nike/adapt/analytics/TrackManager$Screen;->LOGIN:Lcom/nike/adapt/analytics/TrackManager$Screen;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/analytics/TrackManager;->isScreenViewed(Lcom/nike/adapt/analytics/TrackManager$Screen;)V

    .line 2
    invoke-super {p0}, Lo8/y;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/LoginActivity;->B:Lq7/m;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/m;->b:Landroid/widget/Button;

    new-instance v3, Lo8/j;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lo8/j;-><init>(Lf/e;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/LoginActivity;->B:Lq7/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq7/m;->a:Landroid/widget/Button;

    new-instance v1, Lo8/k;

    invoke-direct {v1, p0, v4}, Lo8/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
