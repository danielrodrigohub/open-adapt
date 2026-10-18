.class public final Lc3/g$a;
.super Li3/c;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li3/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Landroid/os/Handler;

.field public final l:I

.field public final m:J

.field public n:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0, v0}, Li3/c;-><init>(II)V

    .line 2
    iput-object p1, p0, Lc3/g$a;->k:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lc3/g$a;->l:I

    .line 4
    iput-wide p3, p0, Lc3/g$a;->m:J

    return-void
.end method


# virtual methods
.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lc3/g$a;->n:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iput-object p1, p0, Lc3/g$a;->n:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lc3/g$a;->k:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lc3/g$a;->k:Landroid/os/Handler;

    iget-wide v1, p0, Lc3/g$a;->m:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
