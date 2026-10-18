.class public final Ly2/u;
.super Ljava/lang/Object;
.source "InputStreamBitmapImageDecoderResourceDecoder.java"

# interfaces
.implements Lp2/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/j<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly2/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ly2/d;

    invoke-direct {v0}, Ly2/d;-><init>()V

    iput-object v0, p0, Ly2/u;->a:Ly2/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lp2/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILp2/h;)Lr2/w;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    invoke-static {p1}, Ll3/a;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ly2/u;->a:Ly2/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Ly2/d;->c(Landroid/graphics/ImageDecoder$Source;IILp2/h;)Lr2/w;

    move-result-object p1

    return-object p1
.end method
