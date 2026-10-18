.class public final Ly2/n;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/n$b;
    }
.end annotation


# static fields
.field public static final f:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Lp2/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Lp2/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ly2/n$a;

.field public static final k:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls2/d;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Ls2/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ly2/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lp2/b;->h:Lp2/b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Lp2/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lp2/g;

    move-result-object v0

    sput-object v0, Ly2/n;->f:Lp2/g;

    .line 3
    new-instance v0, Lp2/g;

    sget-object v1, Lp2/g;->e:Lp2/g$a;

    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lp2/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lp2/g$b;)V

    .line 4
    sput-object v0, Ly2/n;->g:Lp2/g;

    .line 5
    sget-object v0, Ly2/m;->f:Lp2/g;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v1, v0}, Lp2/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lp2/g;

    move-result-object v1

    sput-object v1, Ly2/n;->h:Lp2/g;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 7
    invoke-static {v1, v0}, Lp2/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lp2/g;

    move-result-object v0

    sput-object v0, Ly2/n;->i:Lp2/g;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    new-instance v0, Ly2/n$a;

    invoke-direct {v0}, Ly2/n$a;-><init>()V

    sput-object v0, Ly2/n;->j:Ly2/n$a;

    .line 11
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 12
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    const/4 v0, 0x0

    .line 14
    sget-object v1, Ll3/l;->a:[C

    .line 15
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 16
    sput-object v1, Ly2/n;->k:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Ls2/d;Ls2/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Ls2/d;",
            "Ls2/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ly2/s;->a()Ly2/s;

    move-result-object v0

    iput-object v0, p0, Ly2/n;->e:Ly2/s;

    .line 3
    iput-object p1, p0, Ly2/n;->d:Ljava/util/List;

    const-string p1, "Argument must not be null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ly2/n;->b:Landroid/util/DisplayMetrics;

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Ly2/n;->a:Ls2/d;

    .line 8
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Ly2/n;->c:Ls2/b;

    return-void
.end method

.method public static c(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/n$b;Ls2/d;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Downsampler"

    .line 1
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p2}, Ly2/n$b;->b()V

    .line 3
    invoke-interface {p0}, Ly2/t;->b()V

    .line 4
    :cond_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 7
    sget-object v4, Ly2/a0;->e:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_0
    invoke-interface {p0, p1}, Ly2/t;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 11
    :try_start_1
    invoke-static {v4, v1, v2, v3, p1}, Ly2/n;->h(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v1

    const/4 v2, 0x3

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 13
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 15
    :try_start_2
    invoke-interface {p3, v0}, Ls2/d;->e(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 17
    invoke-static {p0, p1, p2, p3}, Ly2/n;->c(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/n$b;Ls2/d;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    sget-object p1, Ly2/a0;->e:Ljava/util/concurrent/locks/Lock;

    .line 19
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    .line 20
    :catch_1
    :try_start_3
    throw v1

    .line 21
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :goto_0
    sget-object p1, Ly2/a0;->e:Ljava/util/concurrent/locks/Lock;

    .line 23
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " ("

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 3
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(D)I
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-double p0, v0, p0

    :goto_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static f(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/n$b;Ls2/d;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    invoke-static {p0, p1, p2, p3}, Ly2/n;->c(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/n$b;Ls2/d;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 4
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p3, p2, p0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, p2, v0

    return-object p2
.end method

.method public static g(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception decoding bitmap, outWidth: "

    const-string v2, ", outHeight: "

    const-string v3, ", outMimeType: "

    .line 2
    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", inBitmap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Ly2/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static i(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 8
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 10
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 11
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 15
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public final a(Ly2/t;IILp2/h;Ly2/n$b;)Lr2/w;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/t;",
            "II",
            "Lp2/h;",
            "Ly2/n$b;",
            ")",
            "Lr2/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p4

    .line 1
    iget-object v1, v12, Ly2/n;->c:Ls2/b;

    const-class v2, [B

    const/high16 v3, 0x10000

    invoke-interface {v1, v3, v2}, Ls2/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    .line 2
    const-class v1, Ly2/n;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v14, Ly2/n;->k:Ljava/util/ArrayDeque;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_0

    .line 6
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    invoke-static {v2}, Ly2/n;->i(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    move-object v15, v2

    .line 8
    monitor-exit v1

    .line 9
    iput-object v13, v15, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 10
    sget-object v1, Ly2/n;->f:Lp2/g;

    invoke-virtual {v0, v1}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lp2/b;

    .line 11
    sget-object v1, Ly2/n;->g:Lp2/g;

    invoke-virtual {v0, v1}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lp2/i;

    .line 12
    sget-object v1, Ly2/m;->f:Lp2/g;

    invoke-virtual {v0, v1}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ly2/m;

    .line 13
    sget-object v1, Ly2/n;->h:Lp2/g;

    invoke-virtual {v0, v1}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 14
    sget-object v1, Ly2/n;->i:Lp2/g;

    .line 15
    invoke-virtual {v0, v1}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    .line 16
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Ly2/n;->b(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/m;Lp2/b;Lp2/i;ZIIZLy2/n$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 17
    iget-object v1, v12, Ly2/n;->a:Ls2/d;

    invoke-static {v0, v1}, Ly2/e;->d(Landroid/graphics/Bitmap;Ls2/d;)Ly2/e;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    invoke-static {v15}, Ly2/n;->i(Landroid/graphics/BitmapFactory$Options;)V

    .line 19
    monitor-enter v14

    .line 20
    :try_start_4
    invoke-virtual {v14, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 21
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    iget-object v1, v12, Ly2/n;->c:Ls2/b;

    invoke-interface {v1, v13}, Ls2/b;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 24
    invoke-static {v15}, Ly2/n;->i(Landroid/graphics/BitmapFactory$Options;)V

    .line 25
    sget-object v2, Ly2/n;->k:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 26
    :try_start_6
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 27
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 28
    iget-object v1, v12, Ly2/n;->c:Ls2/b;

    invoke-interface {v1, v13}, Ls2/b;->c(Ljava/lang/Object;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 29
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 30
    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/m;Lp2/b;Lp2/i;ZIIZLy2/n$b;)Landroid/graphics/Bitmap;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p10

    .line 1
    sget v3, Ll3/h;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v15

    .line 3
    iget-object v3, v1, Ly2/n;->a:Ls2/d;

    invoke-static {v2, v9, v14, v3}, Ly2/n;->f(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/n$b;Ls2/d;)[I

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    aget v8, v3, v4

    const/4 v5, 0x1

    .line 5
    aget v7, v3, v5

    .line 6
    iget-object v6, v9, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v3, -0x1

    if-eq v8, v3, :cond_1

    if-ne v7, v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v17, p6

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v17, v4

    .line 7
    :goto_1
    invoke-interface/range {p1 .. p1}, Ly2/t;->c()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v4, 0x10e

    goto :goto_2

    :pswitch_1
    const/16 v4, 0x5a

    goto :goto_2

    :pswitch_2
    const/16 v4, 0xb4

    .line 8
    :goto_2
    invoke-static/range {v18 .. v18}, Ly2/a0;->e(I)Z

    move-result v19

    const/high16 v3, -0x80000000

    if-ne v12, v3, :cond_3

    .line 9
    invoke-static {v4}, Ly2/n;->g(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_3

    :cond_2
    move v5, v8

    goto :goto_3

    :cond_3
    move v5, v12

    :goto_3
    if-ne v13, v3, :cond_5

    .line 10
    invoke-static {v4}, Ly2/n;->g(I)Z

    move-result v3

    move-object/from16 v20, v6

    if-eqz v3, :cond_4

    move v3, v8

    goto :goto_4

    :cond_4
    move v3, v7

    goto :goto_4

    :cond_5
    move-object/from16 v20, v6

    move v3, v13

    .line 11
    :goto_4
    invoke-interface/range {p1 .. p1}, Ly2/t;->d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v6

    move-wide/from16 v21, v15

    .line 12
    iget-object v15, v1, Ly2/n;->a:Ls2/d;

    const-string v13, "]"

    const-string v12, ", target density: "

    const-string v11, ", density: "

    const-string v10, "x"

    const-string v1, "Downsampler"

    if-lez v8, :cond_16

    if-gtz v7, :cond_6

    goto/16 :goto_e

    .line 13
    :cond_6
    invoke-static {v4}, Ly2/n;->g(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v16, v11

    move-object/from16 v23, v12

    move-object/from16 p6, v13

    move v13, v7

    move v11, v8

    goto :goto_5

    :cond_7
    move-object/from16 v16, v11

    move-object/from16 v23, v12

    move-object/from16 p6, v13

    move v11, v7

    move v13, v8

    .line 14
    :goto_5
    invoke-virtual {v0, v13, v11, v5, v3}, Ly2/m;->b(IIII)F

    move-result v12

    const/16 v24, 0x0

    cmpg-float v24, v12, v24

    if-lez v24, :cond_15

    move/from16 v24, v4

    .line 15
    invoke-virtual {v0, v13, v11, v5, v3}, Ly2/m;->a(IIII)I

    move-result v4

    if-eqz v4, :cond_14

    move/from16 v25, v7

    int-to-float v7, v13

    move/from16 v26, v8

    mul-float v8, v12, v7

    move-object/from16 v27, v1

    float-to-double v0, v8

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v0, v0, v28

    double-to-int v0, v0

    int-to-float v1, v11

    mul-float v8, v12, v1

    move/from16 v30, v3

    float-to-double v2, v8

    add-double v2, v2, v28

    double-to-int v2, v2

    .line 16
    div-int v0, v13, v0

    .line 17
    div-int v2, v11, v2

    const/4 v3, 0x1

    if-ne v4, v3, :cond_8

    .line 18
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6

    .line 19
    :cond_8
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 20
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v4, v3, :cond_9

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    shl-int/lit8 v0, v0, 0x1

    .line 21
    :cond_9
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 22
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v6, v2, :cond_b

    const/16 v2, 0x8

    .line 23
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v7, v2

    float-to-double v3, v7

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 26
    div-int/lit8 v2, v0, 0x8

    if-lez v2, :cond_a

    .line 27
    div-int/2addr v3, v2

    .line 28
    div-int/2addr v1, v2

    :cond_a
    :goto_7
    move-object/from16 v2, p1

    :goto_8
    move-object/from16 v4, p3

    move/from16 v7, v30

    goto :goto_b

    .line 29
    :cond_b
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v6, v2, :cond_10

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v6, v2, :cond_c

    goto :goto_a

    .line 30
    :cond_c
    invoke-virtual {v6}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v2

    if-eqz v2, :cond_d

    int-to-float v2, v0

    div-float/2addr v7, v2

    .line 31
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-float/2addr v1, v2

    .line 32
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_7

    .line 33
    :cond_d
    rem-int v1, v13, v0

    if-nez v1, :cond_f

    rem-int v1, v11, v0

    if-eqz v1, :cond_e

    goto :goto_9

    .line 34
    :cond_e
    div-int v3, v13, v0

    .line 35
    div-int v1, v11, v0

    goto :goto_7

    :cond_f
    :goto_9
    move-object/from16 v2, p1

    .line 36
    invoke-static {v2, v9, v14, v15}, Ly2/n;->f(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/n$b;Ls2/d;)[I

    move-result-object v1

    const/4 v3, 0x0

    .line 37
    aget v3, v1, v3

    const/4 v4, 0x1

    .line 38
    aget v1, v1, v4

    goto :goto_8

    :cond_10
    :goto_a
    move-object/from16 v2, p1

    int-to-float v3, v0

    div-float/2addr v7, v3

    float-to-double v6, v7

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    div-float/2addr v1, v3

    float-to-double v6, v1

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    move v3, v4

    move/from16 v7, v30

    move-object/from16 v4, p3

    .line 41
    :goto_b
    invoke-virtual {v4, v3, v1, v5, v7}, Ly2/m;->b(IIII)F

    move-result v4

    float-to-double v13, v4

    .line 42
    invoke-static {v13, v14}, Ly2/n;->e(D)I

    move-result v4

    move v8, v12

    int-to-double v11, v4

    mul-double/2addr v11, v13

    add-double v11, v11, v28

    double-to-int v6, v11

    int-to-float v11, v6

    int-to-float v4, v4

    div-float/2addr v11, v4

    float-to-double v11, v11

    div-double v11, v13, v11

    move v15, v0

    move/from16 v30, v1

    int-to-double v0, v6

    mul-double/2addr v11, v0

    add-double v11, v11, v28

    double-to-int v0, v11

    .line 43
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 44
    invoke-static {v13, v14}, Ly2/n;->e(D)I

    move-result v0

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 45
    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v1, :cond_11

    if-lez v0, :cond_11

    if-eq v1, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_d

    :cond_12
    const/4 v0, 0x0

    .line 47
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_d
    const/4 v0, 0x2

    move-object/from16 v1, v27

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "Calculate scaling, source: ["

    const-string v4, "], degreesToRotate: "

    move/from16 v12, v25

    move/from16 v11, v26

    .line 49
    invoke-static {v0, v11, v10, v12, v4}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", target: ["

    move/from16 v6, v24

    .line 50
    invoke-static {v0, v6, v4, v5, v10}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v4, "], power of two scaled: ["

    invoke-static {v0, v7, v4, v3, v10}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v3, v30

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], exact scale factor: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", power of 2 sample size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v15

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", adjusted scale factor: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v13, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_13
    move-object/from16 v14, v16

    move-object/from16 v13, v23

    move/from16 v12, v25

    move/from16 v11, v26

    goto/16 :goto_f

    .line 52
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v4, v0

    move v11, v8

    move/from16 v32, v7

    move v7, v3

    move v3, v12

    move/from16 v12, v32

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot scale with factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", source: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], target: ["

    .line 54
    invoke-static {v1, v11, v10, v12, v2}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_e
    move-object v14, v11

    move v11, v8

    move/from16 v32, v7

    move v7, v3

    move-object v3, v13

    move-object v13, v12

    move/from16 v12, v32

    const/4 v0, 0x3

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to determine dimensions for: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with target ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_f
    move-object v15, v1

    move-object/from16 v1, p0

    .line 58
    iget-object v3, v1, Ly2/n;->e:Ly2/s;

    const/4 v8, 0x1

    const/16 v16, 0x0

    move/from16 v23, v7

    move v4, v5

    move/from16 v24, v5

    move/from16 v5, v23

    move-object/from16 v7, v20

    move-object/from16 v6, p2

    move-object/from16 p6, v10

    move-object v10, v7

    move/from16 v7, v17

    move/from16 v31, v11

    move v11, v8

    move/from16 v8, v19

    invoke-virtual/range {v3 .. v8}, Ly2/s;->c(IILandroid/graphics/BitmapFactory$Options;ZZ)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object/from16 v4, p6

    goto :goto_12

    .line 59
    :cond_18
    sget-object v0, Lp2/b;->h:Lp2/b;

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    if-eq v3, v0, :cond_1b

    .line 60
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ly2/t;->d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    const/4 v5, 0x3

    .line 61
    invoke-static {v15, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    move/from16 v0, v16

    :goto_10
    if-eqz v0, :cond_1a

    .line 63
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_11

    :cond_1a
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_11
    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_1c

    .line 65
    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_12

    .line 66
    :cond_1b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 67
    :cond_1c
    :goto_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v5, v31

    if-ltz v5, :cond_1d

    if-ltz v12, :cond_1d

    if-eqz p9, :cond_1d

    move-object/from16 v20, v10

    move/from16 v3, v23

    move/from16 v7, v24

    goto/16 :goto_15

    .line 69
    :cond_1d
    iget v6, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v6, :cond_1e

    iget v7, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v7, :cond_1e

    if-eq v6, v7, :cond_1e

    move v8, v11

    goto :goto_13

    :cond_1e
    move/from16 v8, v16

    :goto_13
    if-eqz v8, :cond_1f

    int-to-float v6, v6

    .line 70
    iget v7, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    goto :goto_14

    :cond_1f
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_14
    int-to-float v7, v5

    int-to-float v8, v3

    div-float/2addr v7, v8

    move-object/from16 v20, v10

    float-to-double v10, v7

    .line 71
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    int-to-float v10, v12

    div-float/2addr v10, v8

    float-to-double v10, v10

    .line 72
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    int-to-float v7, v7

    mul-float/2addr v7, v6

    .line 73
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v8, v8

    mul-float/2addr v8, v6

    .line 74
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v10, 0x2

    .line 75
    invoke-static {v15, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_20

    const-string v10, "Calculated target ["

    const-string v11, "] for source ["

    .line 76
    invoke-static {v10, v7, v4, v8, v11}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], sampleSize: "

    .line 77
    invoke-static {v10, v5, v4, v12, v11}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 78
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", targetDensity: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", density multiplier: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move v3, v8

    :goto_15
    const/16 v6, 0x1a

    if-lez v7, :cond_24

    if-lez v3, :cond_24

    .line 79
    iget-object v10, v1, Ly2/n;->a:Ls2/d;

    if-lt v0, v6, :cond_22

    .line 80
    iget-object v11, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v8, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v11, v8, :cond_21

    goto :goto_17

    .line 81
    :cond_21
    iget-object v8, v9, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_16

    :cond_22
    const/4 v8, 0x0

    :goto_16
    if-nez v8, :cond_23

    .line 82
    iget-object v8, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 83
    :cond_23
    invoke-interface {v10, v7, v3, v8}, Ls2/d;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v9, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_24
    :goto_17
    move-object/from16 v3, p5

    move-object v7, v14

    if-eqz v3, :cond_28

    const/16 v8, 0x1c

    if-lt v0, v8, :cond_27

    .line 84
    sget-object v0, Lp2/i;->h:Lp2/i;

    if-ne v3, v0, :cond_25

    iget-object v0, v9, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_25

    .line 85
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v16, 0x1

    :cond_25
    if-eqz v16, :cond_26

    .line 86
    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_18

    :cond_26
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_18
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_19

    :cond_27
    if-lt v0, v6, :cond_28

    .line 87
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 88
    :cond_28
    :goto_19
    iget-object v0, v1, Ly2/n;->a:Ls2/d;

    move-object/from16 v3, p10

    invoke-static {v2, v9, v3, v0}, Ly2/n;->c(Ly2/t;Landroid/graphics/BitmapFactory$Options;Ly2/n$b;Ls2/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    iget-object v2, v1, Ly2/n;->a:Ls2/d;

    invoke-interface {v3, v2, v0}, Ly2/n$b;->a(Ls2/d;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    .line 90
    invoke-static {v15, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "Decoded "

    .line 91
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-static {v0}, Ly2/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with inBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v3, v9, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Ly2/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p7

    move-object v5, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], sample size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static/range {v21 .. v22}, Ll3/h;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v15, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-eqz v0, :cond_2b

    .line 98
    iget-object v2, v1, Ly2/n;->b:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 99
    iget-object v2, v1, Ly2/n;->a:Ls2/d;

    .line 100
    invoke-static/range {v18 .. v18}, Ly2/a0;->e(I)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object v8, v0

    goto/16 :goto_1b

    .line 101
    :cond_2a
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, -0x40800000    # -1.0f

    packed-switch v18, :pswitch_data_1

    goto :goto_1a

    .line 102
    :pswitch_3
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1a

    .line 103
    :pswitch_4
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1a

    .line 105
    :pswitch_5
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1a

    :pswitch_6
    const/high16 v4, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 107
    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1a

    :pswitch_7
    const/high16 v4, 0x3f800000    # 1.0f

    .line 108
    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 109
    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1a

    .line 110
    :pswitch_8
    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1a

    :pswitch_9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 112
    :goto_1a
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 113
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 114
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 115
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 116
    invoke-static {v0}, Ly2/a0;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 117
    invoke-interface {v2, v5, v6, v7}, Ls2/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    iget v5, v4, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 120
    invoke-static {v0, v2, v3}, Ly2/a0;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object v8, v2

    .line 121
    :goto_1b
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 122
    iget-object v2, v1, Ly2/n;->a:Ls2/d;

    invoke-interface {v2, v0}, Ls2/d;->e(Landroid/graphics/Bitmap;)V

    goto :goto_1c

    :cond_2b
    const/4 v8, 0x0

    :cond_2c
    :goto_1c
    return-object v8

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
