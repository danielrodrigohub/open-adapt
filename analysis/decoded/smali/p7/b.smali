.class public final Lp7/b;
.super Ljava/lang/Object;
.source "GradientLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/b$a;,
        Lp7/b$b;
    }
.end annotation


# static fields
.field public static final a:Lp7/b;

.field public static b:Landroid/graphics/drawable/Drawable;

.field public static c:Lz8/a;

.field public static d:Lcom/nike/adapt/adk/model/AdaptShoeColor;

.field public static final e:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp7/b;

    invoke-direct {v0}, Lp7/b;-><init>()V

    sput-object v0, Lp7/b;->a:Lp7/b;

    sget-object v0, Lp7/b$c;->h:Lp7/b$c;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lp7/b;->e:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lp7/b;->a:Lp7/b;

    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightPack()Lz8/a;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lp7/b;->e(Landroid/view/View;Lz8/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public final b()Lh8/a;
    .locals 1

    sget-object v0, Lp7/b;->e:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final c(Lcom/nike/adapt/adk/model/ShoeColor;ZLandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-eqz p2, :cond_0

    .line 1
    sget-object v2, Lp7/b$a;->v:Lp7/b$a;

    goto :goto_0

    :cond_0
    const-string v2, "color"

    move-object/from16 v3, p1

    .line 2
    invoke-static {v3, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/model/ShoeColor;->getLeftLightColor()Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v2

    sget-object v3, Lp7/b$b;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 4
    new-instance v1, Lj2/a;

    invoke-direct {v1}, Lj2/a;-><init>()V

    throw v1

    :pswitch_0
    sget-object v2, Lp7/b$a;->u:Lp7/b$a;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v2, Lp7/b$a;->t:Lp7/b$a;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v2, Lp7/b$a;->s:Lp7/b$a;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v2, Lp7/b$a;->r:Lp7/b$a;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v2, Lp7/b$a;->q:Lp7/b$a;

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object v2, Lp7/b$a;->p:Lp7/b$a;

    goto :goto_0

    .line 10
    :pswitch_6
    sget-object v2, Lp7/b$a;->o:Lp7/b$a;

    goto :goto_0

    .line 11
    :pswitch_7
    sget-object v2, Lp7/b$a;->n:Lp7/b$a;

    goto :goto_0

    .line 12
    :pswitch_8
    sget-object v2, Lp7/b$a;->m:Lp7/b$a;

    goto :goto_0

    .line 13
    :pswitch_9
    sget-object v2, Lp7/b$a;->l:Lp7/b$a;

    goto :goto_0

    .line 14
    :pswitch_a
    sget-object v2, Lp7/b$a;->k:Lp7/b$a;

    goto :goto_0

    .line 15
    :pswitch_b
    sget-object v2, Lp7/b$a;->j:Lp7/b$a;

    .line 16
    :goto_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 17
    move-object v4, v1

    check-cast v4, Lf/e;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/high16 v5, 0x41000000    # 8.0f

    .line 18
    invoke-virtual {v0, v1, v5}, Lp7/b;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v7, v5

    const v5, -0x3e44cccd

    .line 19
    invoke-virtual {v0, v1, v5}, Lp7/b;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v8, v5

    const v5, -0x3cbc7168

    .line 20
    invoke-virtual {v0, v1, v5}, Lp7/b;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v9, v5

    const v5, -0x3ba3e0d5

    .line 21
    invoke-virtual {v0, v1, v5}, Lp7/b;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v10, v1

    const/4 v1, -0x1

    int-to-float v1, v1

    mul-float v5, v9, v1

    add-float/2addr v5, v7

    float-to-double v5, v5

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 22
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-float/2addr v1, v10

    add-float/2addr v1, v8

    float-to-double v13, v1

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 23
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 24
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v11, 0xb

    const/4 v15, 0x0

    if-eq v6, v11, :cond_2

    const/16 v11, 0xc

    if-eq v6, v11, :cond_1

    .line 26
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 27
    new-instance v12, Landroid/graphics/RadialGradient;

    .line 28
    iget-object v10, v2, Lp7/b$a;->h:[I

    .line 29
    iget-object v11, v2, Lp7/b$a;->i:[F

    .line 30
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v12

    move v9, v1

    move-object v1, v12

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v15, v15, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    invoke-virtual {v14, v1, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 33
    iget v1, v3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 34
    invoke-virtual {v0, v3, v15}, Lp7/b;->d(Landroid/graphics/Point;Z)Landroid/graphics/Paint;

    move-result-object v16

    move-object v11, v14

    move v14, v1

    move v15, v2

    .line 35
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 36
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 37
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    new-instance v13, Landroid/graphics/LinearGradient;

    .line 39
    iget-object v11, v2, Lp7/b$a;->h:[I

    .line 40
    iget-object v12, v2, Lp7/b$a;->i:[F

    .line 41
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v13

    move-object v15, v13

    move-object v13, v2

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 42
    new-instance v2, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    invoke-virtual {v14, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 44
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 45
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 46
    new-instance v15, Landroid/graphics/LinearGradient;

    .line 47
    iget-object v11, v2, Lp7/b$a;->h:[I

    .line 48
    iget-object v12, v2, Lp7/b$a;->i:[F

    .line 49
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v15

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 50
    new-instance v2, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    invoke-virtual {v14, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 52
    iget v1, v3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/Point;->y:I

    int-to-float v15, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Lp7/b;->d(Landroid/graphics/Point;Z)Landroid/graphics/Paint;

    move-result-object v16

    move-object v11, v14

    move v14, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 53
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Lf/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final d(Landroid/graphics/Point;Z)Landroid/graphics/Paint;
    .locals 10

    .line 1
    sget-object v0, Lp7/b$a;->w:Lp7/b$a;

    if-eqz p2, :cond_3

    .line 2
    iget-object p2, v0, Lp7/b$a;->h:[I

    const-string v1, "<this>"

    .line 3
    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    array-length v1, p2

    new-array v1, v1, [I

    .line 6
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .line 7
    new-instance v4, Lvd/e;

    invoke-direct {v4, v2, v3}, Lvd/e;-><init>(II)V

    invoke-virtual {v4}, Lvd/c;->n()Lgd/w;

    move-result-object v2

    :goto_1
    move-object v4, v2

    check-cast v4, Lvd/d;

    .line 8
    iget-boolean v4, v4, Lvd/d;->j:Z

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v2}, Lgd/w;->a()I

    move-result v4

    sub-int v5, v3, v4

    .line 10
    aget v4, p2, v4

    aput v4, v1, v5

    goto :goto_1

    :cond_2
    move-object v6, v1

    goto :goto_3

    .line 11
    :cond_3
    iget-object p2, v0, Lp7/b$a;->h:[I

    :goto_2
    move-object v6, p2

    .line 12
    :goto_3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 13
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 14
    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float v5, p1

    .line 15
    iget-object v7, v0, Lp7/b$a;->i:[F

    .line 16
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-object p2
.end method

.method public final e(Landroid/view/View;Lz8/a;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v0, "lightPack"

    invoke-static {v7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v8, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v8}, Lcom/nike/adapt/adk/InMemoryCache;->getManifest()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Manifest;->getConfiguration()Lcom/nike/adapt/network/assets/model/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Configuration;->getSettings()Lcom/nike/adapt/network/assets/model/Settings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Settings;->getColorwayV1()Lcom/nike/adapt/network/assets/model/ColorwayV1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    if-eqz v9, :cond_1

    .line 2
    invoke-virtual {v9}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getBackgroundImageModel()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v10, v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lp7/b;->b()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->getShoeType()Ls9/r;

    move-result-object v11

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    invoke-virtual/range {p0 .. p0}, Lp7/b;->b()Lh8/a;

    move-result-object v1

    invoke-interface {v1}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v1

    .line 8
    sget-object v12, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {v12, v3}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v2

    .line 9
    sget-object v13, Lp7/b;->b:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x1

    if-eqz v13, :cond_2

    .line 10
    sget-object v15, Lp7/b;->c:Lz8/a;

    if-ne v15, v7, :cond_2

    sget-object v15, Lp7/b;->d:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-static {v15, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    :goto_2
    move-object v4, v13

    goto/16 :goto_5

    .line 11
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-eqz v13, :cond_7

    if-eq v13, v14, :cond_6

    const/4 v1, 0x2

    if-eq v13, v1, :cond_5

    const/4 v1, 0x3

    if-eq v13, v1, :cond_4

    const/4 v1, 0x4

    if-ne v13, v1, :cond_3

    const v1, 0x7f080068

    .line 12
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    .line 14
    :cond_3
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :cond_4
    const v1, 0x7f08006a

    .line 15
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 16
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_5
    const v1, 0x7f08006c

    .line 17
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 18
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_6
    const v1, 0x7f08006f

    .line 19
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 20
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {v6, v2, v1, v0}, Lp7/b;->c(Lcom/nike/adapt/adk/model/ShoeColor;ZLandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :goto_3
    move-object v13, v1

    goto/16 :goto_4

    .line 22
    :cond_8
    sget-object v13, Lp7/b$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v13, v13, v15

    packed-switch v13, :pswitch_data_0

    .line 23
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :pswitch_0
    const v1, 0x7f08005e

    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 24
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    const v1, 0x7f08005d

    .line 25
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 26
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_2
    const v1, 0x7f08005c

    .line 27
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 28
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    const v1, 0x7f080064

    .line 29
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 30
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_4
    const v1, 0x7f080062

    .line 31
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 32
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_5
    const v1, 0x7f080063

    .line 33
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 34
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_6
    const v1, 0x7f080065

    .line 35
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 36
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_7
    const v1, 0x7f080067

    .line 37
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 38
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_8
    const v1, 0x7f080066

    .line 39
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 40
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_9
    const v1, 0x7f08005f

    .line 41
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 42
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :pswitch_a
    const v1, 0x7f080060

    .line 43
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 44
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_b
    const v1, 0x7f080061

    .line 45
    sget-object v2, Ly/a;->a:Ljava/lang/Object;

    .line 46
    invoke-static {v0, v1}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_3

    .line 47
    :pswitch_c
    invoke-virtual {v6, v2, v1, v0}, Lp7/b;->c(Lcom/nike/adapt/adk/model/ShoeColor;ZLandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto/16 :goto_3

    :goto_4
    if-eqz v13, :cond_9

    .line 48
    sget-object v0, Lp7/b;->a:Lp7/b;

    move-object v1, v13

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lp7/b;->g(Landroid/graphics/drawable/Drawable;Lz8/a;Lcom/nike/adapt/adk/model/AdaptShoeColor;J)V

    goto/16 :goto_2

    .line 49
    :cond_9
    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2, v0}, Lp7/b;->c(Lcom/nike/adapt/adk/model/ShoeColor;ZLandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    .line 50
    invoke-virtual/range {v0 .. v5}, Lp7/b;->g(Landroid/graphics/drawable/Drawable;Lz8/a;Lcom/nike/adapt/adk/model/AdaptShoeColor;J)V

    goto/16 :goto_2

    .line 51
    :goto_5
    sget-object v0, Ls9/r;->h:Ls9/r;

    if-eq v11, v0, :cond_19

    sget-object v0, Ls9/r;->j:Ls9/r;

    if-eq v11, v0, :cond_19

    sget-object v0, Lz8/a;->m:Lz8/a;

    if-eq v7, v0, :cond_a

    goto/16 :goto_f

    .line 52
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lp7/b;->b()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v12, v0}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    :goto_6
    const-string v1, "shoeType"

    .line 54
    invoke-static {v11, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v8}, Lcom/nike/adapt/adk/InMemoryCache;->getManifest()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/Manifest;->getConfiguration()Lcom/nike/adapt/network/assets/model/Configuration;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/Configuration;->getSettings()Lcom/nike/adapt/network/assets/model/Settings;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/Settings;->getColorwayV1()Lcom/nike/adapt/network/assets/model/ColorwayV1;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getBackgroundImageModel()Ljava/util/List;

    move-result-object v1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 56
    :goto_7
    sget-object v2, Ls9/p;->a:Ls9/p;

    invoke-virtual {v2, v11}, Ls9/p;->i(Ls9/r;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_f

    .line 57
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;

    .line 58
    invoke-virtual {v5}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getShoe_identifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 59
    :goto_8
    check-cast v3, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_11

    .line 60
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getGradientImages()Lcom/nike/adapt/network/assets/model/GradientImages;

    move-result-object v1

    if-eqz v1, :cond_11

    if-nez v0, :cond_10

    const/4 v0, -0x1

    goto :goto_a

    .line 61
    :cond_10
    sget-object v2, Lp7/b$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_a
    packed-switch v0, :pswitch_data_1

    .line 62
    :pswitch_d
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    .line 63
    :pswitch_e
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getHeroblue_pinkblast()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_b

    .line 64
    :pswitch_f
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getGreenspark_white()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_b

    .line 65
    :pswitch_10
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getGreenspark_optiyellow()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_b

    .line 66
    :pswitch_11
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRedorbit_white()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_b

    .line 67
    :pswitch_12
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRedorbit_optiyellow()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_b

    .line 68
    :pswitch_13
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRedorbit_racerblue()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_b

    .line 69
    :pswitch_14
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getVividpurple_auroragreen()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_b

    .line 70
    :pswitch_15
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getVividpurple_white()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 71
    :pswitch_16
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getVividpurple_optiyellow()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 72
    :pswitch_17
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRacerblue_auroragreen()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 73
    :pswitch_18
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRacerblue_electricgreen()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 74
    :pswitch_19
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRacerblue_optiyellow()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 75
    :pswitch_1a
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getWhite()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 76
    :pswitch_1b
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getGreenspark()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 77
    :pswitch_1c
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getElectricgreen()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 78
    :pswitch_1d
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getOptiyellow()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 79
    :pswitch_1e
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getTotalorange()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 80
    :pswitch_1f
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getBrightcrimson()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 81
    :pswitch_20
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRedorbit()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 82
    :pswitch_21
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getPinkblast()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 83
    :pswitch_22
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getVividpurple()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 84
    :pswitch_23
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRacerblue()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 85
    :pswitch_24
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getHeroblue()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 86
    :pswitch_25
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getAuroragreen()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 87
    :pswitch_26
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/GradientImages;->getLightsoff()Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    :goto_b
    if-eqz v9, :cond_12

    .line 88
    invoke-virtual {v9}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getAssetBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    :cond_12
    const-string v1, "com.nike.adapt.dummyurl"

    :cond_13
    if-eqz v0, :cond_14

    .line 89
    sget-object v2, Lp7/a;->a:Lp7/a;

    invoke-virtual {v2, v0}, Lp7/a;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_14
    const/4 v0, 0x0

    .line 90
    :goto_c
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    sget-object v0, Ls9/p;->a:Ls9/p;

    invoke-virtual {v0, v11}, Ls9/p;->i(Ls9/r;)Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_17

    .line 92
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;

    .line 93
    invoke-virtual {v5}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getShoe_identifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    .line 94
    :goto_d
    check-cast v3, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_18

    .line 95
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v14

    .line 96
    :cond_18
    sget-object v0, Lt7/b;->a:Lt7/b$a;

    invoke-virtual {v0}, Lt7/b$a;->a()Lt7/b;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lp7/b$d;->h:Lp7/b$d;

    move-object/from16 v3, p1

    invoke-interface/range {v0 .. v5}, Lt7/b;->b(Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lqd/a;)V

    return-void

    :cond_19
    :goto_f
    move-object/from16 v0, p1

    .line 97
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
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

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_26
        :pswitch_d
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
    .end packed-switch
.end method

.method public final g(Landroid/graphics/drawable/Drawable;Lz8/a;Lcom/nike/adapt/adk/model/AdaptShoeColor;J)V
    .locals 10

    .line 1
    sput-object p1, Lp7/b;->b:Landroid/graphics/drawable/Drawable;

    .line 2
    sput-object p2, Lp7/b;->c:Lz8/a;

    .line 3
    sput-object p3, Lp7/b;->d:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    .line 4
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p4

    const-string p3, "total time to update = "

    .line 5
    invoke-static {p3, p1, p2}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const-string v1, "GradientUtil"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    .line 6
    invoke-static/range {v0 .. v9}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    return-void
.end method
