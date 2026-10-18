.class public final Lm9/u;
.super Lp8/b;
.source "FirmwareUpdatingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/u$a;
    }
.end annotation


# static fields
.field public static final l0:Lm9/u$a;


# instance fields
.field public final h0:Ljava/lang/String;

.field public i0:Lcom/nike/adapt/adk/IAdaptRequester;

.field public j0:Lq7/z0;

.field public final k0:Lh8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/u$a;

    invoke-direct {v0}, Lm9/u$a;-><init>()V

    sput-object v0, Lm9/u;->l0:Lm9/u$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/b;-><init>()V

    const-string v0, "FirmwareUpdatingFragment"

    .line 2
    iput-object v0, p0, Lm9/u;->h0:Ljava/lang/String;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object v0, p0, Lm9/u;->k0:Lh8/c;

    return-void
.end method


# virtual methods
.method public final H(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lp8/r;->H(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lp8/r;->d0:Li8/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    .line 4
    invoke-static/range {v0 .. v6}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lm9/u;->i0:Lcom/nike/adapt/adk/IAdaptRequester;

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0082

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0201

    .line 2
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0203

    .line 3
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0204

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0205

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0206

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0207

    .line 7
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0208

    .line 8
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0209

    .line 9
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a020a

    .line 10
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a020b

    .line 11
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_3

    const p2, 0x7f0a020c

    .line 12
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    const p2, 0x7f0a020d

    .line 13
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0227

    .line 14
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    const p2, 0x7f0a0228

    .line 15
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const p2, 0x7f0a0229

    .line 16
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_3

    const p2, 0x7f0a022a

    .line 17
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 18
    new-instance p2, Lq7/z0;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lq7/z0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 19
    iput-object p2, p0, Lm9/u;->j0:Lq7/z0;

    const-string p2, "binding.root"

    .line 20
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lm9/u;->j0:Lq7/z0;

    const-string p3, "binding"

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p2, Lq7/z0;->d:Landroid/widget/TextView;

    new-instance v2, Lw8/b;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lw8/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p2, p0, Lm9/u;->j0:Lq7/z0;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lq7/z0;->a:Landroid/widget/TextView;

    sget-object v2, Ls9/g;->a:Ls9/g;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 23
    invoke-virtual {v2, v3, v4, v5}, Ls9/g;->i(FJ)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p2, p0, Lm9/u;->j0:Lq7/z0;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lq7/z0;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object p3

    const v1, 0x7f1101bb

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    .line 26
    new-instance v3, Landroid/util/Pair;

    const-string v4, "percent"

    const-string v5, "0.0"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    .line 27
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_0
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_1
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_2
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/FirmwareUpdateResult;)V
    .locals 10
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/nike/adapt/adk/FirmwareInProgressResult;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/m;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lm9/u;->j0:Lq7/z0;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lq7/z0;->c:Landroid/widget/ProgressBar;

    check-cast p1, Lcom/nike/adapt/adk/FirmwareInProgressResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/FirmwareInProgressResult;->getPercent()F

    move-result v3

    const/16 v4, 0xa

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    iget-object v0, p0, Lm9/u;->j0:Lq7/z0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq7/z0;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v3

    const v4, 0x7f1101bb

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/util/Pair;

    const/4 v6, 0x0

    new-instance v7, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/FirmwareInProgressResult;->getPercent()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    const-string v9, "percent"

    invoke-direct {v7, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    .line 5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lm9/u;->j0:Lq7/z0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lq7/z0;->a:Landroid/widget/TextView;

    sget-object v1, Ls9/g;->a:Ls9/g;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/FirmwareInProgressResult;->getPercent()F

    move-result p1

    iget-object v2, p0, Lm9/u;->k0:Lh8/c;

    .line 8
    invoke-virtual {v2}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "PREF_FIRMWARE_UPGRADE_START_TIME"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 9
    invoke-virtual {v1, p1, v2, v3}, Ls9/g;->i(FJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_3
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    return-void
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm9/u;->h0:Ljava/lang/String;

    return-object v0
.end method
