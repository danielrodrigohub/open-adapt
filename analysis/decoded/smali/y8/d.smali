.class public final Ly8/d;
.super Lp8/h;
.source "LightNavigationFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly8/d$b;,
        Ly8/d$a;
    }
.end annotation


# static fields
.field public static final e0:Ly8/d$a;


# instance fields
.field public final b0:Ljava/lang/String;

.field public c0:Ly8/d$b;

.field public d0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly8/d$a;

    invoke-direct {v0}, Ly8/d$a;-><init>()V

    sput-object v0, Ly8/d;->e0:Ly8/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/h;-><init>()V

    const-string v0, "LightNavigationFragment"

    .line 2
    iput-object v0, p0, Ly8/d;->b0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v1, "param_position"

    .line 2
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Ly8/d;->d0:Z

    if-eqz v1, :cond_2

    const p3, 0x7f0d0079

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    const p3, 0x7f0d007d

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final U(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string p2, "view"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls9/g;->a:Ls9/g;

    invoke-virtual {p1}, Ls9/g;->d()Z

    move-result p1

    invoke-virtual {p0, p1}, Ly8/d;->q0(Z)V

    .line 2
    invoke-static {}, Lcom/nike/adapt/adk/model/ShoeColor;->values()[Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object p1

    .line 3
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 4
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/ShoeColor;->isDuo()Z

    move-result v2

    iget-boolean v3, p0, Ly8/d;->d0:Z

    if-ne v2, v3, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    sget-object v3, Ly8/k;->a:Ly8/k;

    invoke-virtual {v3, v1}, Ly8/k;->a(Lcom/nike/adapt/adk/model/ShoeColor;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/ShoeColor;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v3, Lr9/a;

    const/16 v4, 0x1f4

    invoke-direct {v3, p0, v4}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/ShoeColor;->isDuo()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lcom/nike/adapt/ui/view/DuoImageView;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/ShoeColor;->getLeftLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIcon()I

    move-result v3

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/ShoeColor;->getRightLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIcon()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/nike/adapt/ui/view/DuoImageView;->a(II)V

    goto :goto_1

    .line 9
    :cond_0
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/ShoeColor;->getLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIcon()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/nike/adapt/ui/view/DuoImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/nike/adapt/ui/view/DuoImageView;

    .line 2
    iget-boolean v0, v0, Lcom/nike/adapt/ui/view/DuoImageView;->j:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ly8/d;->r0(Landroid/view/View;)V

    .line 4
    :cond_1
    iget-object v0, p0, Ly8/d;->c0:Ly8/d$b;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, p1}, Ly8/d$b;->onLightIconClicked(Landroid/view/View;)V

    return-void

    :cond_2
    const-string p1, "callback"

    .line 6
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly8/d;->b0:Ljava/lang/String;

    return-object v0
.end method

.method public final q0(Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/nike/adapt/adk/model/ShoeColor;->values()[Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/ShoeColor;->isDuo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v4

    sget-object v5, Ly8/k;->a:Ly8/k;

    invoke-virtual {v5, v3}, Ly8/k;->a(Lcom/nike/adapt/adk/model/ShoeColor;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    instance-of v4, v3, Lcom/nike/adapt/ui/view/DuoImageView;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/nike/adapt/ui/view/DuoImageView;

    invoke-virtual {v3, p1}, Lcom/nike/adapt/ui/view/DuoImageView;->setSupported(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r0(Landroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/nike/adapt/adk/model/ShoeColor;->values()[Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v5

    sget-object v6, Ly8/k;->a:Ly8/k;

    invoke-virtual {v6, v4}, Ly8/k;->a(Lcom/nike/adapt/adk/model/ShoeColor;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/ShoeColor;->isDuo()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "null cannot be cast to non-null type com.nike.adapt.ui.view.DuoImageView"

    invoke-static {v5, v6}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/nike/adapt/ui/view/DuoImageView;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/ShoeColor;->getLeftLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIcon()I

    move-result v6

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/ShoeColor;->getRightLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIcon()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lcom/nike/adapt/ui/view/DuoImageView;->a(II)V

    goto :goto_1

    :cond_0
    const-string v6, "null cannot be cast to non-null type android.widget.ImageView"

    .line 5
    invoke-static {v5, v6}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/ShoeColor;->getLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIcon()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Ly8/k;->a:Ly8/k;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ly8/k;->b(I)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    .line 7
    instance-of v1, p1, Lcom/nike/adapt/ui/view/DuoImageView;

    if-eqz v1, :cond_2

    .line 8
    move-object v1, p1

    check-cast v1, Lcom/nike/adapt/ui/view/DuoImageView;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/ShoeColor;->getLeftLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIconAnimated()I

    move-result v3

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/ShoeColor;->getRightLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIconAnimated()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/nike/adapt/ui/view/DuoImageView;->a(II)V

    .line 9
    invoke-virtual {v1}, Lcom/nike/adapt/ui/view/DuoImageView;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf1/b;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    .line 10
    invoke-virtual {v1}, Lcom/nike/adapt/ui/view/DuoImageView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf1/b;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    const/4 v0, 0x3

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_2

    .line 12
    :cond_2
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 13
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/ShoeColor;->getLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/LightColor;->getLedLightIconAnimated()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "view.drawable"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 15
    invoke-static {v0, p1, v1}, Lf1/b;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    :cond_3
    :goto_2
    return-void
.end method
