.class public final Lc3/h;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lp2/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/j<",
        "Ln2/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls2/d;


# direct methods
.method public constructor <init>(Ls2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc3/h;->a:Ls2/d;

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

    check-cast p1, Ln2/a;

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILp2/h;)Lr2/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ln2/a;

    .line 2
    invoke-interface {p1}, Ln2/a;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lc3/h;->a:Ls2/d;

    invoke-static {p1, p2}, Ly2/e;->d(Landroid/graphics/Bitmap;Ls2/d;)Ly2/e;

    move-result-object p1

    return-object p1
.end method
