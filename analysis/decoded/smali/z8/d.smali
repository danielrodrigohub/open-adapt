.class public final Lz8/d;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "LightPackView.kt"


# instance fields
.field public A:Ljava/lang/Float;

.field public B:Lz8/a;

.field public final z:Lq7/z1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0116

    .line 3
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f0a029c

    .line 5
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a029e

    .line 6
    invoke-static {p1, v0}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 7
    new-instance v0, Lq7/z1;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, v1, v2}, Lq7/z1;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 8
    iput-object v0, p0, Lz8/d;->z:Lq7/z1;

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getLightPack()Lz8/a;
    .locals 1

    iget-object v0, p0, Lz8/d;->B:Lz8/a;

    return-object v0
.end method

.method public final getTitleHeight()I
    .locals 1

    iget-object v0, p0, Lz8/d;->z:Lq7/z1;

    iget-object v0, v0, Lq7/z1;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final setLightPack(Lz8/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lz8/d;->B:Lz8/a;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lz8/d;->z:Lq7/z1;

    iget-object v0, v0, Lq7/z1;->b:Landroid/widget/TextView;

    .line 3
    iget v1, p1, Lz8/a;->j:I

    .line 4
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget-object v0, Lz8/a;->m:Lz8/a;

    if-ne p1, v0, :cond_0

    sget-object p1, Lz8/a;->l:Lz8/a$a;

    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    sget v0, Lh8/a;->a:I

    .line 6
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 7
    invoke-virtual {v0}, Lh8/c;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object p1

    const-string v0, "shoeColor"

    .line 8
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lz8/a$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 10
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :pswitch_0
    const p1, 0x7f0800a4

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x7f0800a3

    goto/16 :goto_0

    :pswitch_2
    const p1, 0x7f0800a2

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0800aa

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0800a8

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0800a9

    goto :goto_0

    :pswitch_6
    const p1, 0x7f0800ab

    goto :goto_0

    :pswitch_7
    const p1, 0x7f0800ad

    goto :goto_0

    :pswitch_8
    const p1, 0x7f0800ac

    goto :goto_0

    :pswitch_9
    const p1, 0x7f0800a5

    goto :goto_0

    :pswitch_a
    const p1, 0x7f0800a6

    goto :goto_0

    :pswitch_b
    const p1, 0x7f0800a7

    goto :goto_0

    :pswitch_c
    const p1, 0x7f0801d7

    goto :goto_0

    :pswitch_d
    const p1, 0x7f0801cf

    goto :goto_0

    :pswitch_e
    const p1, 0x7f0801ce

    goto :goto_0

    :pswitch_f
    const p1, 0x7f0801d1

    goto :goto_0

    :pswitch_10
    const p1, 0x7f0801d5

    goto :goto_0

    :pswitch_11
    const p1, 0x7f0801cd

    goto :goto_0

    :pswitch_12
    const p1, 0x7f0801d4

    goto :goto_0

    :pswitch_13
    const p1, 0x7f0801d2

    goto :goto_0

    :pswitch_14
    const p1, 0x7f0801d6

    goto :goto_0

    :pswitch_15
    const p1, 0x7f0801d3

    goto :goto_0

    :pswitch_16
    const p1, 0x7f0801d0

    goto :goto_0

    :pswitch_17
    const p1, 0x7f0801cc

    .line 11
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p1, Lz8/a;->i:Ljava/lang/Integer;

    .line 13
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->p(Ljava/lang/Integer;)Lcom/bumptech/glide/i;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lh3/a;->k()Lh3/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/i;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lh3/a;->r(II)Lh3/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/i;

    .line 17
    iget-object v0, p0, Lz8/d;->z:Lq7/z1;

    iget-object v0, v0, Lq7/z1;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/i;->I(Landroid/widget/ImageView;)Li3/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 18
    :catchall_0
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Glide exception"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setTitleAlpha(F)V
    .locals 1

    iget-object v0, p0, Lz8/d;->z:Lq7/z1;

    iget-object v0, v0, Lq7/z1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setTitleXAdjust(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz8/d;->A:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lz8/d;->z:Lq7/z1;

    iget-object v0, v0, Lq7/z1;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lz8/d;->A:Ljava/lang/Float;

    .line 3
    :cond_0
    iget-object v0, p0, Lz8/d;->A:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lz8/d;->z:Lq7/z1;

    iget-object v1, v1, Lq7/z1;->b:Landroid/widget/TextView;

    add-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    :cond_1
    return-void
.end method
