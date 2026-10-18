.class public final synthetic Lq8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lq8/e;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/graphics/Paint;

.field public final synthetic d:Landroid/graphics/Canvas;

.field public final synthetic e:Landroid/graphics/Bitmap;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Landroid/graphics/Bitmap;

.field public final synthetic i:Lfd/d;


# direct methods
.method public synthetic constructor <init>(Lq8/e;Landroid/widget/ImageView;Landroid/graphics/Paint;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;Lfd/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/b;->a:Lq8/e;

    iput-object p2, p0, Lq8/b;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lq8/b;->c:Landroid/graphics/Paint;

    iput-object p4, p0, Lq8/b;->d:Landroid/graphics/Canvas;

    iput-object p5, p0, Lq8/b;->e:Landroid/graphics/Bitmap;

    iput p6, p0, Lq8/b;->f:I

    iput p7, p0, Lq8/b;->g:I

    iput-object p8, p0, Lq8/b;->h:Landroid/graphics/Bitmap;

    iput-object p9, p0, Lq8/b;->i:Lfd/d;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lq8/b;->a:Lq8/e;

    iget-object v2, v0, Lq8/b;->b:Landroid/widget/ImageView;

    iget-object v8, v0, Lq8/b;->c:Landroid/graphics/Paint;

    iget-object v3, v0, Lq8/b;->d:Landroid/graphics/Canvas;

    iget-object v4, v0, Lq8/b;->e:Landroid/graphics/Bitmap;

    iget v5, v0, Lq8/b;->f:I

    iget v6, v0, Lq8/b;->g:I

    iget-object v9, v0, Lq8/b;->h:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lq8/b;->i:Lfd/d;

    const-string v10, "$currentBatteryInfoState"

    .line 1
    invoke-static {v1, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$battery"

    invoke-static {v2, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$paint"

    invoke-static {v8, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$canvas"

    invoke-static {v3, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$bitmap"

    invoke-static {v4, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$backgroundColor$delegate"

    invoke-static {v7, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "it"

    move-object/from16 v11, p1

    invoke-static {v11, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    new-array v15, v10, [F

    const/4 v12, 0x0

    const/4 v14, 0x0

    aput v14, v15, v12

    .line 2
    invoke-virtual {v1}, Lq8/e;->a()F

    move-result v13

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v13, v16, v13

    const/16 v17, 0x1

    aput v13, v15, v17

    invoke-virtual {v1}, Lq8/e;->a()F

    move-result v1

    sub-float v1, v16, v1

    const/4 v13, 0x2

    aput v1, v15, v13

    const/4 v1, 0x3

    aput v16, v15, v1

    .line 3
    new-instance v14, Landroid/graphics/LinearGradient;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    new-array v10, v10, [I

    .line 4
    invoke-interface {v7}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v19

    aput v19, v10, v12

    invoke-interface {v7}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    aput v7, v10, v17

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    const-string v12, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v7, v12}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v10, v13

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v12}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x3

    aput v7, v10, v11

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    move-object v11, v14

    move-object/from16 v20, v14

    move v14, v7

    move-object v7, v15

    move v15, v1

    move-object/from16 v16, v10

    move-object/from16 v17, v7

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v1, v20

    .line 6
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v3, v4, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v4, 0x0

    const/4 v1, 0x0

    int-to-float v7, v5

    int-to-float v10, v6

    move v5, v1

    move v6, v7

    move v7, v10

    .line 8
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
