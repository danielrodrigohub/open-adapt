.class public final Lc3/f;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lp2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/l<",
        "Lc3/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lp2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp2/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc3/f;->b:Lp2/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lc3/f;->b:Lp2/l;

    invoke-interface {v0, p1}, Lp2/f;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lr2/w;II)Lr2/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr2/w<",
            "Lc3/c;",
            ">;II)",
            "Lr2/w<",
            "Lc3/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/c;

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/bumptech/glide/c;->h:Ls2/d;

    .line 4
    invoke-virtual {v0}, Lc3/c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5
    new-instance v3, Ly2/e;

    invoke-direct {v3, v2, v1}, Ly2/e;-><init>(Landroid/graphics/Bitmap;Ls2/d;)V

    .line 6
    iget-object v1, p0, Lc3/f;->b:Lp2/l;

    invoke-interface {v1, p1, v3, p3, p4}, Lp2/l;->b(Landroid/content/Context;Lr2/w;II)Lr2/w;

    move-result-object p1

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    invoke-virtual {v3}, Ly2/e;->c()V

    .line 9
    :cond_0
    invoke-interface {p1}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 10
    iget-object p3, p0, Lc3/f;->b:Lp2/l;

    .line 11
    iget-object p4, v0, Lc3/c;->h:Lc3/c$a;

    iget-object p4, p4, Lc3/c$a;->a:Lc3/g;

    invoke-virtual {p4, p3, p1}, Lc3/g;->c(Lp2/l;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lc3/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc3/f;

    .line 3
    iget-object v0, p0, Lc3/f;->b:Lp2/l;

    iget-object p1, p1, Lc3/f;->b:Lp2/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc3/f;->b:Lp2/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
