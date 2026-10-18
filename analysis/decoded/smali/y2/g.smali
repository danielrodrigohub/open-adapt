.class public final Ly2/g;
.super Ljava/lang/Object;
.source "ByteBufferBitmapDecoder.java"

# interfaces
.implements Lp2/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/j<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly2/n;


# direct methods
.method public constructor <init>(Ly2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/g;->a:Ly2/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp2/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Ly2/g;->a:Ly2/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILp2/h;)Lr2/w;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object v0, p0, Ly2/g;->a:Ly2/n;

    .line 3
    new-instance v1, Ly2/t$a;

    iget-object v2, v0, Ly2/n;->d:Ljava/util/List;

    iget-object v3, v0, Ly2/n;->c:Ls2/b;

    invoke-direct {v1, p1, v2, v3}, Ly2/t$a;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;Ls2/b;)V

    sget-object v5, Ly2/n;->j:Ly2/n$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ly2/n;->a(Ly2/t;IILp2/h;Ly2/n$b;)Lr2/w;

    move-result-object p1

    return-object p1
.end method
