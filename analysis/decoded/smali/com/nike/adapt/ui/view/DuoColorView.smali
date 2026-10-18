.class public final Lcom/nike/adapt/ui/view/DuoColorView;
.super Landroid/widget/LinearLayout;
.source "DuoColorView.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget-object v1, Lcom/nike/adapt/R$styleable;->DuoColorView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v1, "context.obtainStyledAttr\u2026eable.DuoColorView, 0, 0)"

    invoke-static {p2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x521b067

    if-eq v1, v2, :cond_2

    const v2, 0x2df20741

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DUO_COLOR_TYPE_HOME_WITH_EFFECTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0d0113

    goto :goto_1

    :cond_2
    const-string v1, "DUO_COLOR_TYPE_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0d0112

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f0d0114

    .line 4
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public static synthetic c(Lcom/nike/adapt/ui/view/DuoColorView;Lcom/nike/adapt/adk/model/ShoeColor;ZI)V
    .locals 3

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move p2, v2

    :cond_1
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/nike/adapt/ui/view/DuoColorView;->b(Lcom/nike/adapt/adk/model/ShoeColor;ZZZ)V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/nike/adapt/adk/model/LightColor;ZZZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1
    sget-object p4, Lcom/nike/adapt/adk/model/LightColor;->WHITE:Lcom/nike/adapt/adk/model/LightColor;

    if-ne p2, p4, :cond_0

    const p2, 0x7f060293

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    const p2, 0x7f060028

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/LightColor;->getDynamicHex()I

    move-result p2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p2}, Lcom/nike/adapt/adk/model/LightColor;->getPaletteHex()I

    move-result p2

    :goto_0
    if-eqz p1, :cond_3

    const p1, 0x7f0a0191

    goto :goto_1

    :cond_3
    const p1, 0x7f0a0193

    .line 4
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById<ImageView>(duoColorViewId)"

    invoke-static {p1, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p2}, Landroidx/lifecycle/o;->o(I)I

    move-result p2

    invoke-static {p1, p2}, Lx8/i1;->c(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public final b(Lcom/nike/adapt/adk/model/ShoeColor;ZZZ)V
    .locals 10

    const-string v0, "shoeColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getLeftLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v3

    const/4 v2, 0x1

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/nike/adapt/ui/view/DuoColorView;->a(ZLcom/nike/adapt/adk/model/LightColor;ZZZ)V

    .line 2
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getRightLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v6

    const/4 v5, 0x0

    move-object v4, p0

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/nike/adapt/ui/view/DuoColorView;->a(ZLcom/nike/adapt/adk/model/LightColor;ZZZ)V

    return-void
.end method
