.class public final Ld3/a;
.super Ljava/lang/Object;
.source "BitmapBytesTranscoder.java"

# interfaces
.implements Ld3/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld3/c<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final h:Landroid/graphics/Bitmap$CompressFormat;

.field public final i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Ld3/a;->h:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Ld3/a;->i:I

    return-void
.end method


# virtual methods
.method public final b(Lr2/w;Lp2/h;)Lr2/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/w<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lp2/h;",
            ")",
            "Lr2/w<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-interface {p1}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Ld3/a;->h:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Ld3/a;->i:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-interface {p1}, Lr2/w;->c()V

    .line 4
    new-instance p1, Lz2/b;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lz2/b;-><init>([B)V

    return-object p1
.end method
