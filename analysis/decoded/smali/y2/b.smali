.class public final Ly2/b;
.super Ljava/lang/Object;
.source "BitmapDrawableEncoder.java"

# interfaces
.implements Lp2/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/k<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Ls2/d;

.field public final i:Lp2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls2/d;Lp2/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/d;",
            "Lp2/k<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/b;->h:Ls2/d;

    .line 3
    iput-object p2, p0, Ly2/b;->i:Lp2/k;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/io/File;Lp2/h;)Z
    .locals 3

    .line 1
    check-cast p1, Lr2/w;

    .line 2
    iget-object v0, p0, Ly2/b;->i:Lp2/k;

    new-instance v1, Ly2/e;

    invoke-interface {p1}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Ly2/b;->h:Ls2/d;

    invoke-direct {v1, p1, v2}, Ly2/e;-><init>(Landroid/graphics/Bitmap;Ls2/d;)V

    invoke-interface {v0, v1, p2, p3}, Lp2/d;->c(Ljava/lang/Object;Ljava/io/File;Lp2/h;)Z

    move-result p1

    return p1
.end method

.method public final d(Lp2/h;)Lp2/c;
    .locals 1

    iget-object v0, p0, Ly2/b;->i:Lp2/k;

    invoke-interface {v0, p1}, Lp2/k;->d(Lp2/h;)Lp2/c;

    move-result-object p1

    return-object p1
.end method
