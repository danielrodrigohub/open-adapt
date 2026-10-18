.class public final Ly8/c;
.super Landroidx/fragment/app/c0;
.source "LightNavigationFragment.kt"


# instance fields
.field public g:Ly8/d;

.field public h:Ly8/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/x;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/c0;-><init>(Landroidx/fragment/app/x;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    return-void
.end method

.method public final k(Lcom/nike/adapt/adk/model/ShoeColor;)V
    .locals 4

    const-string v0, "shoeColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->isDuo()Z

    move-result v0

    const-string v1, "it.requireActivity().fin\u2026ingIconViewId(shoeColor))"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ly8/c;->h:Ly8/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    sget-object v3, Ly8/k;->a:Ly8/k;

    invoke-virtual {v3, p1}, Ly8/k;->a(Lcom/nike/adapt/adk/model/ShoeColor;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ly8/d;->r0(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ly8/c;->g:Ly8/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    sget-object v3, Ly8/k;->a:Ly8/k;

    invoke-virtual {v3, p1}, Ly8/k;->a(Lcom/nike/adapt/adk/model/ShoeColor;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ly8/d;->r0(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
