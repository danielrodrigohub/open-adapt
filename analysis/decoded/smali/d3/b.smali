.class public final Ld3/b;
.super Ljava/lang/Object;
.source "DrawableBytesTranscoder.java"

# interfaces
.implements Ld3/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld3/c<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final h:Ls2/d;

.field public final i:Ld3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/c<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final j:Ld3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/c<",
            "Lc3/c;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls2/d;Ld3/c;Ld3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/d;",
            "Ld3/c<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Ld3/c<",
            "Lc3/c;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld3/b;->h:Ls2/d;

    .line 3
    iput-object p2, p0, Ld3/b;->i:Ld3/c;

    .line 4
    iput-object p3, p0, Ld3/b;->j:Ld3/c;

    return-void
.end method


# virtual methods
.method public final b(Lr2/w;Lp2/h;)Lr2/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/w<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lp2/h;",
            ")",
            "Lr2/w<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Ld3/b;->i:Ld3/c;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ld3/b;->h:Ls2/d;

    invoke-static {v0, v1}, Ly2/e;->d(Landroid/graphics/Bitmap;Ls2/d;)Ly2/e;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Ld3/c;->b(Lr2/w;Lp2/h;)Lr2/w;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    instance-of v0, v0, Lc3/c;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Ld3/b;->j:Ld3/c;

    invoke-interface {v0, p1, p2}, Ld3/c;->b(Lr2/w;Lp2/h;)Lr2/w;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
