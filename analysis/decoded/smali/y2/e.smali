.class public final Ly2/e;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lr2/w;
.implements Lr2/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr2/w<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lr2/s;"
    }
.end annotation


# instance fields
.field public final h:Landroid/graphics/Bitmap;

.field public final i:Ls2/d;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ls2/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ly2/e;->h:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ly2/e;->i:Ls2/d;

    return-void
.end method

.method public static d(Landroid/graphics/Bitmap;Ls2/d;)Ly2/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ly2/e;

    invoke-direct {v0, p0, p1}, Ly2/e;-><init>(Landroid/graphics/Bitmap;Ls2/d;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ly2/e;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ll3/l;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Ly2/e;->i:Ls2/d;

    iget-object v1, p0, Ly2/e;->h:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Ls2/d;->e(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly2/e;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final initialize()V
    .locals 1

    iget-object v0, p0, Ly2/e;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
