.class public final Landroidx/fragment/app/p$a;
.super Landroidx/fragment/app/u;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/lifecycle/o0;
.implements Landroidx/activity/j;
.implements Landroidx/activity/result/e;
.implements Landroidx/fragment/app/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/u<",
        "Landroidx/fragment/app/p;",
        ">;",
        "Landroidx/lifecycle/o0;",
        "Landroidx/activity/j;",
        "Landroidx/activity/result/e;",
        "Landroidx/fragment/app/b0;"
    }
.end annotation


# instance fields
.field public final synthetic l:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    .line 2
    invoke-direct {p0, p1}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/p;)V

    return-void
.end method


# virtual methods
.method public final J()Landroidx/activity/result/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->o:Landroidx/activity/ComponentActivity$b;

    return-object v0
.end method

.method public final P()Landroidx/lifecycle/n0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->P()Landroidx/lifecycle/n0;

    move-result-object v0

    return-object v0
.end method

.method public final a()Landroidx/lifecycle/i;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public final b(Landroidx/fragment/app/m;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/p;->f0(Landroidx/fragment/app/m;)V

    return-void
.end method

.method public final e()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->n:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final h(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    return-object v0
.end method

.method public final l()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/p$a;->l:Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->g0()V

    return-void
.end method
