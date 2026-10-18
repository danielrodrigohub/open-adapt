.class public final Lg2/d;
.super Lg2/b;
.source "ImageLayer.java"


# instance fields
.field public final D:Lz1/a;

.field public final E:Landroid/graphics/Rect;

.field public final F:Landroid/graphics/Rect;

.field public final G:Ly1/f0;

.field public H:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lb2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly1/e0;Lg2/f;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lg2/b;-><init>(Ly1/e0;Lg2/f;)V

    .line 2
    new-instance v0, Lz1/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lz1/a;-><init>(I)V

    iput-object v0, p0, Lg2/d;->D:Lz1/a;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg2/d;->E:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg2/d;->F:Landroid/graphics/Rect;

    .line 5
    iget-object p2, p2, Lg2/f;->g:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Ly1/e0;->h:Ly1/i;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Ly1/i;->d:Ljava/util/Map;

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/f0;

    .line 9
    :goto_0
    iput-object p1, p0, Lg2/d;->G:Ly1/f0;

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lg2/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lg2/d;->G:Ly1/f0;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lk2/g;->c()F

    move-result p2

    .line 4
    iget-object p3, p0, Lg2/d;->G:Ly1/f0;

    .line 5
    iget v0, p3, Ly1/f0;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 6
    iget p3, p3, Ly1/f0;->b:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object p2, p0, Lg2/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;Ll2/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ll2/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lg2/b;->g(Ljava/lang/Object;Ll2/c;)V

    .line 2
    sget-object v0, Ly1/i0;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 3
    iput-object v1, p0, Lg2/d;->H:Lb2/r;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lb2/r;

    .line 5
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lg2/d;->H:Lb2/r;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Ly1/i0;->N:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 8
    iput-object v1, p0, Lg2/d;->I:Lb2/r;

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Lb2/r;

    .line 10
    invoke-direct {p1, p2, v1}, Lb2/r;-><init>(Ll2/c;Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lg2/d;->I:Lb2/r;

    :cond_3
    :goto_0
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lg2/d;->I:Lb2/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Lg2/b;->q:Lg2/f;

    .line 4
    iget-object v0, v0, Lg2/f;->g:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lg2/b;->p:Ly1/e0;

    .line 6
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move-object v2, v5

    goto :goto_3

    .line 7
    :cond_1
    iget-object v3, v2, Ly1/e0;->p:Lc2/b;

    if-eqz v3, :cond_7

    .line 8
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_3

    .line 10
    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_3
    :goto_0
    move-object v6, v5

    :goto_1
    if-nez v6, :cond_4

    .line 11
    iget-object v7, v3, Lc2/b;->a:Landroid/content/Context;

    if-eqz v7, :cond_5

    :cond_4
    iget-object v3, v3, Lc2/b;->a:Landroid/content/Context;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    if-nez v3, :cond_7

    .line 12
    iput-object v5, v2, Ly1/e0;->p:Lc2/b;

    .line 13
    :cond_7
    iget-object v3, v2, Ly1/e0;->p:Lc2/b;

    if-nez v3, :cond_8

    .line 14
    new-instance v3, Lc2/b;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    iget-object v7, v2, Ly1/e0;->q:Ljava/lang/String;

    iget-object v8, v2, Ly1/e0;->r:Ly1/b;

    iget-object v9, v2, Ly1/e0;->h:Ly1/i;

    .line 15
    iget-object v9, v9, Ly1/i;->d:Ljava/util/Map;

    .line 16
    invoke-direct {v3, v6, v7, v8, v9}, Lc2/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Ly1/b;Ljava/util/Map;)V

    iput-object v3, v2, Ly1/e0;->p:Lc2/b;

    .line 17
    :cond_8
    iget-object v2, v2, Ly1/e0;->p:Lc2/b;

    :goto_3
    if-eqz v2, :cond_f

    .line 18
    iget-object v3, v2, Lc2/b;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/f0;

    if-nez v3, :cond_9

    goto/16 :goto_5

    .line 19
    :cond_9
    iget-object v6, v3, Ly1/f0;->d:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_a

    move-object v0, v6

    goto/16 :goto_6

    .line 20
    :cond_a
    iget-object v6, v2, Lc2/b;->c:Ly1/b;

    if-eqz v6, :cond_b

    .line 21
    invoke-interface {v6}, Ly1/b;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 22
    invoke-virtual {v2, v0, v3}, Lc2/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_4

    .line 23
    :cond_b
    iget-object v6, v3, Ly1/f0;->c:Ljava/lang/String;

    .line 24
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 25
    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v8, 0xa0

    .line 26
    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v8, "data:"

    .line 27
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "base64,"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_c

    const/16 v3, 0x2c

    .line 28
    :try_start_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    array-length v4, v3

    invoke-static {v3, v1, v4, v7}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 30
    invoke-virtual {v2, v0, v3}, Lc2/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "data URL did not have correct base64 format."

    .line 31
    invoke-static {v2, v0}, Lk2/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 32
    :cond_c
    :try_start_1
    iget-object v4, v2, Lc2/b;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 33
    iget-object v4, v2, Lc2/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lc2/b;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 34
    :try_start_2
    invoke-static {v4, v5, v7}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    iget v6, v3, Ly1/f0;->a:I

    .line 36
    iget v3, v3, Ly1/f0;->b:I

    .line 37
    invoke-static {v4, v6, v3}, Lk2/g;->e(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 38
    invoke-virtual {v2, v0, v3}, Lc2/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_d
    :goto_4
    move-object v0, v3

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v2, "Unable to decode image."

    .line 39
    invoke-static {v2, v0}, Lk2/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 40
    :cond_e
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    const-string v2, "Unable to open asset."

    .line 41
    invoke-static {v2, v0}, Lk2/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_5
    move-object v0, v5

    :goto_6
    if-eqz v0, :cond_10

    goto :goto_7

    .line 42
    :cond_10
    iget-object v0, p0, Lg2/d;->G:Ly1/f0;

    if-eqz v0, :cond_11

    .line 43
    iget-object v0, v0, Ly1/f0;->d:Landroid/graphics/Bitmap;

    goto :goto_7

    :cond_11
    move-object v0, v5

    :goto_7
    if-eqz v0, :cond_15

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lg2/d;->G:Ly1/f0;

    if-nez v2, :cond_12

    goto :goto_9

    .line 45
    :cond_12
    invoke-static {}, Lk2/g;->c()F

    move-result v2

    .line 46
    iget-object v3, p0, Lg2/d;->D:Lz1/a;

    invoke-virtual {v3, p3}, Lz1/a;->setAlpha(I)V

    .line 47
    iget-object p3, p0, Lg2/d;->H:Lb2/r;

    if-eqz p3, :cond_13

    .line 48
    iget-object v3, p0, Lg2/d;->D:Lz1/a;

    invoke-virtual {p3}, Lb2/r;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 49
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 50
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 51
    iget-object p2, p0, Lg2/d;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p2, v1, v1, p3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    iget-object p2, p0, Lg2/b;->p:Ly1/e0;

    .line 53
    iget-boolean p2, p2, Ly1/e0;->u:Z

    if-eqz p2, :cond_14

    .line 54
    iget-object p2, p0, Lg2/d;->F:Landroid/graphics/Rect;

    iget-object p3, p0, Lg2/d;->G:Ly1/f0;

    .line 55
    iget v3, p3, Ly1/f0;->a:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 56
    iget p3, p3, Ly1/f0;->b:I

    int-to-float p3, p3

    mul-float/2addr p3, v2

    float-to-int p3, p3

    .line 57
    invoke-virtual {p2, v1, v1, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    .line 58
    :cond_14
    iget-object p2, p0, Lg2/d;->F:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v2

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p2, v1, v1, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    :goto_8
    iget-object p2, p0, Lg2/d;->E:Landroid/graphics/Rect;

    iget-object p3, p0, Lg2/d;->F:Landroid/graphics/Rect;

    iget-object v1, p0, Lg2/d;->D:Lz1/a;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    :goto_9
    return-void
.end method
