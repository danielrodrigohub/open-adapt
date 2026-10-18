.class public final Lm9/v;
.super Lp8/b;
.source "RestartingShoesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/v$a;
    }
.end annotation


# static fields
.field public static final o0:Lm9/v$a;


# instance fields
.field public final h0:Ljava/lang/String;

.field public i0:Lq7/t0;

.field public j0:Lcom/nike/adapt/adk/IAdaptRequester;

.field public k0:Lm9/o$b;

.field public l0:Landroid/os/Handler;

.field public m0:Lh8/c;

.field public final n0:Landroidx/activity/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/v$a;

    invoke-direct {v0}, Lm9/v$a;-><init>()V

    sput-object v0, Lm9/v;->o0:Lm9/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/b;-><init>()V

    const-string v0, "RestartingShoesFragment"

    .line 2
    iput-object v0, p0, Lm9/v;->h0:Ljava/lang/String;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object v0, p0, Lm9/v;->m0:Lh8/c;

    .line 5
    new-instance v0, Landroidx/activity/g;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroidx/activity/g;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lm9/v;->n0:Landroidx/activity/g;

    return-void
.end method


# virtual methods
.method public final G(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lm9/o$b;

    iput-object p1, p0, Lm9/v;->k0:Lm9/o$b;

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lm9/v;->l0:Landroid/os/Handler;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p2}, Lq7/t0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lq7/t0;

    move-result-object p1

    iput-object p1, p0, Lm9/v;->i0:Lq7/t0;

    .line 3
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->softwareUpdateRestart()V

    .line 4
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lp8/r;->d0:Li8/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    .line 6
    invoke-static/range {v0 .. v6}, Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lm9/v;->j0:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 7
    iget-object p1, p0, Lm9/v;->i0:Lq7/t0;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, Lq7/t0;->a:Landroid/widget/FrameLayout;

    .line 9
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "FirmwareUpdateCrumb Restart Screen loaded : FW_STATS"

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lm9/v;->i0:Lq7/t0;

    if-eqz v0, :cond_0

    iget-object p2, v0, Lq7/t0;->b:Landroid/widget/TextView;

    const p3, 0x7f1100a7

    invoke-static {p3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "binding.root.apply {\n   \u2026opy.getString()\n        }"

    .line 11
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 12
    :cond_0
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_1
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2
.end method

.method public final S()V
    .locals 9

    .line 1
    invoke-super {p0}, Lp8/b;->S()V

    .line 2
    iget-object v0, p0, Lm9/v;->l0:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lm9/v;->n0:Landroidx/activity/g;

    iget-object v2, p0, Lm9/v;->m0:Lh8/c;

    .line 3
    invoke-virtual {v2}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    const-string v7, "PREF_TIMER_FOR_RESTART_FROM_FLASH"

    .line 5
    invoke-interface {v2, v7, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v2, v7

    const-wide/16 v7, 0x1

    cmp-long v4, v2, v7

    if-gez v4, :cond_0

    const-wide/16 v5, 0x3e8

    goto :goto_0

    :cond_0
    cmp-long v4, v2, v5

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v5, v2

    .line 7
    :goto_0
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const-string v0, "handler"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm9/v;->l0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lm9/v;->n0:Landroidx/activity/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lp8/b;->T()V

    return-void

    :cond_0
    const-string v0, "handler"

    .line 3
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm9/v;->h0:Ljava/lang/String;

    return-object v0
.end method
