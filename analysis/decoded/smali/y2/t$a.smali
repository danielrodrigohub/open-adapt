.class public final Ly2/t$a;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ly2/t;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls2/b;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/List;Ls2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ls2/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/t$a;->a:Ljava/nio/ByteBuffer;

    .line 3
    iput-object p2, p0, Ly2/t$a;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Ly2/t$a;->c:Ls2/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/t$a;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ll3/a;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    new-instance v1, Ll3/a$a;

    invoke-direct {v1, v0}, Ll3/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v1, v0, p1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/t$a;->b:Ljava/util/List;

    iget-object v1, p0, Ly2/t$a;->a:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {v1}, Ll3/a;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Ly2/t$a;->c:Ls2/b;

    const/4 v3, -0x1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 5
    invoke-interface {v6, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParser;->c(Ljava/nio/ByteBuffer;Ls2/b;)I

    move-result v6

    if-eq v6, v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v3
.end method

.method public final d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ly2/t$a;->b:Ljava/util/List;

    iget-object v1, p0, Ly2/t$a;->a:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ll3/a;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/c;->d(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method
