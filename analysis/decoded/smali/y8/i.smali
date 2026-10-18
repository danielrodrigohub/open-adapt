.class public final Ly8/i;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "LightingEffectsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly8/i$c;,
        Ly8/i$a;,
        Ly8/i$b;,
        Ly8/i$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Ly8/i$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly8/i$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly8/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public final g:Lh8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ly8/i$a;

    .line 1
    new-instance v1, Ly8/i$a;

    sget-object v2, Lv7/c$e;->c:Lv7/c$e;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v1, v2, v3}, Ly8/i$a;-><init>(Lv7/c;Z)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 3
    new-instance v2, Ly8/i$a;

    sget-object v4, Lv7/c$f;->c:Lv7/c$f;

    .line 4
    invoke-direct {v2, v4, v3}, Ly8/i$a;-><init>(Lv7/c;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 5
    new-instance v2, Ly8/i$a;

    sget-object v4, Lv7/c$c;->c:Lv7/c$c;

    .line 6
    invoke-direct {v2, v4, v3}, Ly8/i$a;-><init>(Lv7/c;Z)V

    aput-object v2, v0, v1

    .line 7
    invoke-static {v0}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ly8/i;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ly8/i$b;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p2, p0, Ly8/i;->d:Landroid/content/Context;

    .line 2
    sget-object p2, Ls9/g;->a:Ls9/g;

    invoke-virtual {p2}, Ls9/g;->b()I

    move-result p2

    iput p2, p0, Ly8/i;->f:I

    .line 3
    sget-object p2, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object p2, p0, Ly8/i;->g:Lh8/c;

    .line 5
    sget-object p2, Ly8/i;->h:Ljava/util/List;

    iput-object p2, p0, Ly8/i;->e:Ljava/util/List;

    .line 6
    invoke-virtual {p0, p1}, Ly8/i;->m(Ly8/i$b;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ly8/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 13

    .line 1
    check-cast p1, Ly8/i$c;

    .line 2
    iget-object v0, p0, Ly8/i;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly8/i$a;

    .line 3
    iget-object v1, p1, Ly8/i$c;->x:Landroid/widget/TextView;

    .line 4
    sget-object v2, Ly8/b;->a:Ly8/b;

    .line 5
    iget-object v3, v0, Ly8/i$a;->a:Lv7/c;

    .line 6
    invoke-virtual {v2, v3}, Ly8/b;->c(Lv7/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p1, Ly8/i$c;->w:Landroid/widget/TextView;

    .line 8
    iget-object v3, v0, Ly8/i$a;->a:Lv7/c;

    .line 9
    invoke-virtual {v2, v3}, Ly8/b;->c(Lv7/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p1, Ly8/i$c;->v:Landroidx/cardview/widget/CardView;

    .line 11
    iget-boolean v3, v0, Ly8/i$a;->b:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 12
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v1, p1, Ly8/i$c;->u:Landroidx/cardview/widget/CardView;

    .line 14
    iget-boolean v3, v0, Ly8/i$a;->b:Z

    if-eqz v3, :cond_1

    move v4, v5

    .line 15
    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-boolean v1, v0, Ly8/i$a;->b:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p1, Ly8/i$c;->u:Landroidx/cardview/widget/CardView;

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v1, p1, Ly8/i$c;->u:Landroidx/cardview/widget/CardView;

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 21
    :goto_1
    sget-object v1, Ls9/g;->a:Ls9/g;

    invoke-virtual {v1}, Ls9/g;->b()I

    move-result v1

    .line 22
    :try_start_0
    iget-object v3, p1, Ly8/i$c;->y:Lcom/airbnb/lottie/LottieAnimationView;

    .line 23
    iget-object v4, v0, Ly8/i$a;->a:Lv7/c;

    .line 24
    invoke-virtual {v2, v4}, Ly8/b;->g(Lv7/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Lo7/x;->a:Lo7/x;

    const-string v4, "updateLightEffects : "

    .line 26
    invoke-static {v4, v2, v3}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    .line 27
    :cond_3
    iget-object v2, p1, Ly8/i$c;->y:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "gradient_icon_animations/gradient_single_hero_blue.json"

    .line 28
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 29
    :goto_2
    sget-object v2, Ly8/b;->a:Ly8/b;

    .line 30
    iget-object v3, p1, Ly8/i$c;->y:Lcom/airbnb/lottie/LottieAnimationView;

    .line 31
    iget-object v4, v0, Ly8/i$a;->a:Lv7/c;

    const-string v6, "view"

    .line 32
    invoke-static {v3, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "effectType"

    invoke-static {v4, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v7, Lv7/c$d;->c:Lv7/c$d;

    invoke-static {v4, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_7

    sget-object v8, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {v4, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_5

    .line 34
    :cond_4
    invoke-virtual {v2, v9}, Ly8/b;->f(Z)Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v4

    .line 35
    invoke-virtual {v2, v5}, Ly8/b;->f(Z)Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v2

    .line 36
    sget-object v5, Lcom/nike/adapt/adk/model/LightColor;->WHITE:Lcom/nike/adapt/adk/model/LightColor;

    const v8, 0x7f060293

    if-ne v4, v5, :cond_5

    invoke-static {v8}, Landroidx/lifecycle/o;->o(I)I

    move-result v4

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/LightColor;->getPaletteHex()I

    move-result v4

    invoke-static {v4}, Landroidx/lifecycle/o;->o(I)I

    move-result v4

    :goto_3
    if-ne v2, v5, :cond_6

    .line 37
    invoke-static {v8}, Landroidx/lifecycle/o;->o(I)I

    move-result v2

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/LightColor;->getPaletteHex()I

    move-result v2

    invoke-static {v2}, Landroidx/lifecycle/o;->o(I)I

    move-result v2

    .line 38
    :goto_4
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v5, v8, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 39
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v5, v8, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 40
    new-instance v5, Ld2/e;

    const-string v8, "**"

    const-string v10, "Oval_1"

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ld2/e;-><init>([Ljava/lang/String;)V

    sget-object v10, Ly1/i0;->K:Landroid/graphics/ColorFilter;

    new-instance v11, Ly0/b;

    invoke-direct {v11, v4}, Ly0/b;-><init>(I)V

    .line 41
    iget-object v4, v3, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    new-instance v12, Ly1/h;

    invoke-direct {v12, v11}, Ly1/h;-><init>(Ll2/e;)V

    invoke-virtual {v4, v5, v10, v12}, Ly1/e0;->a(Ld2/e;Ljava/lang/Object;Ll2/c;)V

    .line 42
    new-instance v4, Ld2/e;

    const-string v5, "Oval_2"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ld2/e;-><init>([Ljava/lang/String;)V

    new-instance v5, Ly8/a;

    invoke-direct {v5, v2}, Ly8/a;-><init>(I)V

    .line 43
    iget-object v2, v3, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    new-instance v3, Ly1/h;

    invoke-direct {v3, v5}, Ly1/h;-><init>(Ll2/e;)V

    invoke-virtual {v2, v4, v10, v3}, Ly1/e0;->a(Ld2/e;Ljava/lang/Object;Ll2/c;)V

    .line 44
    :cond_7
    :goto_5
    iget-object v2, p1, Ly8/i$c;->z:Landroid/widget/ImageView;

    .line 45
    iget-object v3, v0, Ly8/i$a;->a:Lv7/c;

    .line 46
    invoke-static {v3, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v4, Lv7/c$e;->c:Lv7/c$e;

    invoke-static {v3, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const v8, 0x7f080132

    const/4 v10, 0x2

    if-eqz v5, :cond_8

    .line 48
    invoke-static {v1}, La0/d;->a(I)I

    move-result v3

    if-lt v3, v9, :cond_d

    const v8, 0x7f080133

    goto :goto_6

    .line 49
    :cond_8
    sget-object v5, Lv7/c$f;->c:Lv7/c$f;

    invoke-static {v3, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 50
    invoke-static {v1}, La0/d;->a(I)I

    move-result v3

    if-lt v3, v10, :cond_9

    const v8, 0x7f080135

    goto :goto_6

    :cond_9
    const v8, 0x7f080134

    goto :goto_6

    .line 51
    :cond_a
    sget-object v5, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {v3, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 52
    invoke-static {v1}, La0/d;->a(I)I

    move-result v3

    if-lt v3, v10, :cond_b

    const v8, 0x7f080131

    goto :goto_6

    :cond_b
    const v8, 0x7f080130

    goto :goto_6

    .line 53
    :cond_c
    invoke-static {v3, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 54
    :cond_d
    :goto_6
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v2, p1, Ly8/i$c;->A:Landroid/widget/FrameLayout;

    .line 56
    iget-object v3, v0, Ly8/i$a;->a:Lv7/c;

    .line 57
    invoke-static {v3, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {v3, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const v8, 0x7f060039

    const v11, 0x7f060072

    if-eqz v5, :cond_e

    .line 59
    invoke-static {v1}, La0/d;->a(I)I

    move-result v3

    if-lt v3, v9, :cond_11

    goto :goto_7

    .line 60
    :cond_e
    sget-object v5, Lv7/c$f;->c:Lv7/c$f;

    invoke-static {v3, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 61
    invoke-static {v1}, La0/d;->a(I)I

    move-result v3

    if-lt v3, v10, :cond_11

    goto :goto_7

    .line 62
    :cond_f
    sget-object v5, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {v3, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 63
    invoke-static {v1}, La0/d;->a(I)I

    move-result v3

    if-lt v3, v10, :cond_11

    goto :goto_7

    .line 64
    :cond_10
    invoke-static {v3, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_11
    move v8, v11

    .line 65
    :goto_7
    invoke-static {v8}, Landroidx/lifecycle/o;->o(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    iget-object v2, p1, Ly8/i$c;->x:Landroid/widget/TextView;

    .line 67
    iget-object v0, v0, Ly8/i$a;->a:Lv7/c;

    .line 68
    invoke-static {v0, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {v0, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x3ee66666

    if-eqz v3, :cond_12

    .line 70
    invoke-static {v1}, La0/d;->a(I)I

    move-result v0

    if-lt v0, v9, :cond_15

    goto :goto_8

    .line 71
    :cond_12
    sget-object v3, Lv7/c$f;->c:Lv7/c$f;

    invoke-static {v0, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 72
    invoke-static {v1}, La0/d;->a(I)I

    move-result v0

    if-lt v0, v10, :cond_15

    goto :goto_8

    .line 73
    :cond_13
    sget-object v3, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {v0, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 74
    invoke-static {v1}, La0/d;->a(I)I

    move-result v0

    if-lt v0, v10, :cond_15

    :goto_8
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_9

    .line 75
    :cond_14
    invoke-static {v0, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 76
    :cond_15
    :goto_9
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 77
    iget-object v0, p1, Ly8/i$c;->v:Landroidx/cardview/widget/CardView;

    .line 78
    new-instance v1, Lr9/a;

    new-instance v2, Ly8/g;

    invoke-direct {v2, p0, p2, p1}, Ly8/g;-><init>(Ly8/i;ILy8/i$c;)V

    const/16 p2, 0xc8

    .line 79
    invoke-direct {v1, v2, p2}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p1, Ly8/i$c;->u:Landroidx/cardview/widget/CardView;

    .line 82
    new-instance v1, Lr9/a;

    new-instance v2, Ly8/h;

    invoke-direct {v2, p0, p1}, Ly8/h;-><init>(Ly8/i;Ly8/i$c;)V

    .line 83
    invoke-direct {v1, v2, p2}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 85
    :cond_16
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 86
    :cond_17
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 87
    :cond_18
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 10

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008b

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01ab

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/cardview/widget/CardView;

    if-eqz v3, :cond_0

    const p2, 0x7f0a01ad

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const p2, 0x7f0a01ae

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const p2, 0x7f0a01af

    .line 7
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    const p2, 0x7f0a01b0

    .line 8
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/cardview/widget/CardView;

    if-eqz v7, :cond_0

    const p2, 0x7f0a01b1

    .line 9
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v8, :cond_0

    const p2, 0x7f0a01b2

    .line 10
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const p2, 0x7f0a03b9

    .line 11
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    .line 12
    new-instance p2, Lq7/f1;

    move-object v2, p1

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lq7/f1;-><init>(Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;)V

    .line 13
    new-instance p1, Ly8/i$c;

    invoke-direct {p1, p2}, Ly8/i$c;-><init>(Lq7/f1;)V

    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final m(Ly8/i$b;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Ly8/i;->h:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Ly8/i$a;

    .line 4
    iget-object v5, p1, Ly8/i$b;->a:Ly8/i$a;

    .line 5
    iget-object v5, v5, Ly8/i$a;->a:Lv7/c;

    iget-object v6, v3, Ly8/i$a;->a:Lv7/c;

    .line 6
    invoke-static {v5, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    new-instance v5, Ly8/i$a;

    .line 8
    iget-object v3, v3, Ly8/i$a;->a:Lv7/c;

    .line 9
    iget-object v6, p1, Ly8/i$b;->a:Ly8/i$a;

    .line 10
    iget-boolean v6, v6, Ly8/i$a;->b:Z

    .line 11
    invoke-direct {v5, v3, v6}, Ly8/i$a;-><init>(Lv7/c;Z)V

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v2, v4

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 p1, 0x0

    throw p1

    .line 14
    :cond_2
    iput-object v0, p0, Ly8/i;->e:Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->d()V

    return-void
.end method
