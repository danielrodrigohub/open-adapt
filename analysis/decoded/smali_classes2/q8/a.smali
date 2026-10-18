.class public final synthetic Lq8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/graphics/Canvas;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:I

.field public final synthetic e:Landroid/graphics/Paint;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/widget/ImageView;ILandroid/graphics/Paint;IILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/a;->a:Landroid/graphics/Canvas;

    iput-object p2, p0, Lq8/a;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lq8/a;->c:Landroid/widget/ImageView;

    iput p4, p0, Lq8/a;->d:I

    iput-object p5, p0, Lq8/a;->e:Landroid/graphics/Paint;

    iput p6, p0, Lq8/a;->f:I

    iput p7, p0, Lq8/a;->g:I

    iput-object p8, p0, Lq8/a;->h:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-object v0, p0, Lq8/a;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lq8/a;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lq8/a;->c:Landroid/widget/ImageView;

    iget v4, p0, Lq8/a;->d:I

    iget-object v5, p0, Lq8/a;->e:Landroid/graphics/Paint;

    iget v6, p0, Lq8/a;->f:I

    iget v7, p0, Lq8/a;->g:I

    iget-object v8, p0, Lq8/a;->h:Landroid/graphics/Bitmap;

    const-string v2, "$canvas"

    .line 1
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$bitmap"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$batteryImageView"

    invoke-static {v3, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$paint"

    invoke-static {v5, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "it"

    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string p1, "batteryBitmap"

    invoke-static {v8, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v0 .. v8}, Landroidx/lifecycle/o;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FLandroid/widget/ImageView;ILandroid/graphics/Paint;IILandroid/graphics/Bitmap;)V

    return-void
.end method
