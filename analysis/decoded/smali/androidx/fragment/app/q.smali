.class public final Landroidx/fragment/app/q;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/q$b;,
        Landroidx/fragment/app/q$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroidx/fragment/app/m;ZZ)Landroidx/fragment/app/q$a;
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/m;->P:Landroidx/fragment/app/m$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/m$b;->g:I

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/m;->t()I

    move-result p3

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/m;->u()I

    move-result p3

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/m;->m()I

    move-result p3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/m;->n()I

    move-result p3

    .line 7
    :goto_1
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/m;->i0(IIII)V

    .line 8
    iget-object v2, p1, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 9
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p1, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    :cond_4
    iget-object p1, p1, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    if-nez p3, :cond_c

    if-eqz v0, :cond_c

    const/16 p1, 0x1001

    if-eq v0, p1, :cond_a

    const/16 p1, 0x1003

    if-eq v0, p1, :cond_8

    const/16 p1, 0x2002

    if-eq v0, p1, :cond_6

    const/4 p1, -0x1

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 12
    sget p1, Landroidx/fragment/R$animator;->fragment_close_enter:I

    goto :goto_2

    :cond_7
    sget p1, Landroidx/fragment/R$animator;->fragment_close_exit:I

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    .line 13
    sget p1, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    goto :goto_2

    :cond_9
    sget p1, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    goto :goto_2

    :cond_a
    if-eqz p2, :cond_b

    .line 14
    sget p1, Landroidx/fragment/R$animator;->fragment_open_enter:I

    goto :goto_2

    :cond_b
    sget p1, Landroidx/fragment/R$animator;->fragment_open_exit:I

    :goto_2
    move p3, p1

    :cond_c
    if-eqz p3, :cond_10

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 17
    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 18
    new-instance v0, Landroidx/fragment/app/q$a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/q$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_d
    const/4 v1, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    .line 19
    throw p0

    :catch_1
    :cond_e
    :goto_3
    if-nez v1, :cond_10

    .line 20
    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 21
    new-instance v0, Landroidx/fragment/app/q$a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/q$a;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p2

    if-nez p1, :cond_f

    .line 22
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 23
    new-instance p1, Landroidx/fragment/app/q$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/q$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 24
    :cond_f
    throw p2

    :cond_10
    return-object v3
.end method
