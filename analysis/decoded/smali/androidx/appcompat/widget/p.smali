.class public final Landroidx/appcompat/widget/p;
.super Ljava/lang/Object;
.source "AppCompatHintHelper.java"

# interfaces
.implements Lg7/q;
.implements Lv9/d;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 4

    const v0, 0x3d25aee6

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const v0, 0x3d6147ae

    add-float/2addr p0, v0

    const v0, 0x3f870a3d

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    :goto_0
    return p0
.end method

.method public static b(F)F
    .locals 4

    const v0, 0x3b4d2e1c

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852

    mul-float/2addr p0, v0

    goto :goto_0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147a0000000L    # 1.0549999475479126

    mul-double/2addr v0, v2

    const-wide v2, 0x3fac28f5c0000000L    # 0.054999999701976776

    sub-double/2addr v0, v2

    double-to-float p0, v0

    :goto_0
    return p0
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lyd/s;->G0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(FII)I
    .locals 7

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    shr-int/lit8 v4, p2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v1

    shr-int/lit8 v5, p2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v1

    shr-int/lit8 v6, p2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v1

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    div-float/2addr p2, v1

    .line 1
    invoke-static {v2}, Landroidx/appcompat/widget/p;->a(F)F

    move-result v2

    .line 2
    invoke-static {v3}, Landroidx/appcompat/widget/p;->a(F)F

    move-result v3

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/p;->a(F)F

    move-result p1

    .line 4
    invoke-static {v5}, Landroidx/appcompat/widget/p;->a(F)F

    move-result v5

    .line 5
    invoke-static {v6}, Landroidx/appcompat/widget/p;->a(F)F

    move-result v6

    .line 6
    invoke-static {p2}, Landroidx/appcompat/widget/p;->a(F)F

    move-result p2

    invoke-static {v4, v0, p0, v0}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v0

    invoke-static {v5, v2, p0, v2}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v2

    invoke-static {v6, v3, p0, v3}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result v3

    invoke-static {p2, p1, p0, p1}, Landroidx/appcompat/widget/o;->c(FFFF)F

    move-result p0

    mul-float/2addr v0, v1

    .line 7
    invoke-static {v2}, Landroidx/appcompat/widget/p;->b(F)F

    move-result p1

    mul-float/2addr p1, v1

    .line 8
    invoke-static {v3}, Landroidx/appcompat/widget/p;->b(F)F

    move-result p2

    mul-float/2addr p2, v1

    .line 9
    invoke-static {p0}, Landroidx/appcompat/widget/p;->b(F)F

    move-result p0

    mul-float/2addr p0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method public static final f(Landroid/animation/ArgbEvaluator;FII)Lba/b;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, p1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 5
    new-instance p3, Lba/b;

    new-instance v0, Lba/g0;

    invoke-direct {v0, p1}, Lba/g0;-><init>(I)V

    new-instance p1, Lba/x;

    invoke-direct {p1, p2}, Lba/x;-><init>(I)V

    new-instance p2, Lba/o;

    invoke-direct {p2, p0}, Lba/o;-><init>(I)V

    invoke-direct {p3, v0, p1, p2}, Lba/b;-><init>(Lba/g0;Lba/x;Lba/o;)V

    return-object p3
.end method

.method public static final varargs g(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-static {p0, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final h(Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;)Lea/u;
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lea/u;

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->getPercent()I

    move-result v1

    .line 3
    new-instance v2, Lea/v;

    .line 4
    new-instance v3, Lea/s;

    .line 5
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->getBigfootDeviceColor()Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;->getBigfootColorPreset()Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->getRed()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->getBigfootDeviceColor()Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;->getBigfootColorPreset()Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->getGreen()I

    move-result v5

    .line 7
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->getBigfootDeviceColor()Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;->getBigfootColorPreset()Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->getBlue()I

    move-result v6

    .line 8
    invoke-direct {v3, v4, v5, v6}, Lea/s;-><init>(III)V

    .line 9
    invoke-direct {v2, v3}, Lea/v;-><init>(Lea/s;)V

    .line 10
    invoke-direct {v0, v1, v2}, Lea/u;-><init>(ILea/v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 11
    :catch_0
    new-instance v0, Lea/u;

    .line 12
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->getPercent()I

    move-result p0

    .line 13
    new-instance v1, Lea/v;

    .line 14
    new-instance v2, Lea/s;

    .line 15
    sget-object v3, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->HERO_BLUE:Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;

    invoke-virtual {v3}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->getRed()I

    move-result v4

    .line 16
    invoke-virtual {v3}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->getGreen()I

    move-result v5

    .line 17
    invoke-virtual {v3}, Lcom/nike/adapt/migration/oldbigfoot/BigfootColorPreset;->getBlue()I

    move-result v3

    .line 18
    invoke-direct {v2, v4, v5, v3}, Lea/s;-><init>(III)V

    .line 19
    invoke-direct {v1, v2}, Lea/v;-><init>(Lea/s;)V

    .line 20
    invoke-direct {v0, p0, v1}, Lea/u;-><init>(ILea/v;)V

    return-object v0
.end method

.method public static final i(Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;)Lea/t;
    .locals 7

    .line 1
    new-instance v6, Lea/t;

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->getScanningKey()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->getStringIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->getConnectionAddress()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->getAuthenticationKey()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->getMaxTightness()I

    move-result v5

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Lea/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public static j(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 3
    :goto_0
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p2, Landroidx/appcompat/widget/p1;

    if-eqz v0, :cond_0

    .line 5
    check-cast p2, Landroidx/appcompat/widget/p1;

    invoke-interface {p2}, Landroidx/appcompat/widget/p1;->a()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static final k(Ljava/lang/Throwable;)Lob/e;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lob/e$d;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Error with App Auth response"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0}, Lob/e$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object p0

    .line 2
    :cond_0
    instance-of v2, p0, Lob/e;

    if-eqz v2, :cond_1

    check-cast p0, Lob/e;

    goto :goto_2

    .line 3
    :cond_1
    instance-of v2, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    if-eqz v2, :cond_5

    move-object v2, p0

    check-cast v2, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    iget v3, v2, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    if-nez v3, :cond_5

    .line 4
    iget v2, v2, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    if-eq v2, v0, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 5
    new-instance v2, Lob/e$d;

    invoke-direct {v2, v1, p0, v0}, Lob/e$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lob/e$a;

    invoke-direct {v0, p0}, Lob/e$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lob/e$f;

    invoke-direct {v0, p0}, Lob/e$f;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_4
    new-instance v0, Lob/e$c;

    invoke-direct {v0, p0}, Lob/e$c;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    move-object p0, v0

    goto :goto_2

    .line 9
    :cond_5
    new-instance v2, Lob/e$d;

    invoke-direct {v2, v1, p0, v0}, Lob/e$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_1
    move-object p0, v2

    :goto_2
    return-object p0
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public d(Ljava/util/List;)[B
    .locals 2

    .line 1
    invoke-static {p1}, Lm5/b;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "c"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
