.class public final Lc3/e;
.super La3/c;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La3/c<",
        "Lc3/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc3/c;)V
    .locals 0

    invoke-direct {p0, p1}, La3/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, La3/c;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc3/c;

    .line 2
    iget-object v0, v0, Lc3/c;->h:Lc3/c$a;

    iget-object v0, v0, Lc3/c$a;->a:Lc3/g;

    .line 3
    iget-object v1, v0, Lc3/g;->a:Ln2/a;

    invoke-interface {v1}, Ln2/a;->f()I

    move-result v1

    iget v0, v0, Lc3/g;->o:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lc3/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lc3/c;

    return-object v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, La3/c;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc3/c;

    invoke-virtual {v0}, Lc3/c;->stop()V

    .line 2
    iget-object v0, p0, La3/c;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc3/c;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lc3/c;->k:Z

    .line 4
    iget-object v0, v0, Lc3/c;->h:Lc3/c$a;

    iget-object v0, v0, Lc3/c$a;->a:Lc3/g;

    .line 5
    iget-object v2, v0, Lc3/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v2, v0, Lc3/g;->l:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7
    iget-object v4, v0, Lc3/g;->e:Ls2/d;

    invoke-interface {v4, v2}, Ls2/d;->e(Landroid/graphics/Bitmap;)V

    .line 8
    iput-object v3, v0, Lc3/g;->l:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v0, Lc3/g;->f:Z

    .line 10
    iget-object v2, v0, Lc3/g;->i:Lc3/g$a;

    if-eqz v2, :cond_1

    .line 11
    iget-object v4, v0, Lc3/g;->d:Lcom/bumptech/glide/j;

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/j;->o(Li3/i;)V

    .line 12
    iput-object v3, v0, Lc3/g;->i:Lc3/g$a;

    .line 13
    :cond_1
    iget-object v2, v0, Lc3/g;->k:Lc3/g$a;

    if-eqz v2, :cond_2

    .line 14
    iget-object v4, v0, Lc3/g;->d:Lcom/bumptech/glide/j;

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/j;->o(Li3/i;)V

    .line 15
    iput-object v3, v0, Lc3/g;->k:Lc3/g$a;

    .line 16
    :cond_2
    iget-object v2, v0, Lc3/g;->n:Lc3/g$a;

    if-eqz v2, :cond_3

    .line 17
    iget-object v4, v0, Lc3/g;->d:Lcom/bumptech/glide/j;

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/j;->o(Li3/i;)V

    .line 18
    iput-object v3, v0, Lc3/g;->n:Lc3/g$a;

    .line 19
    :cond_3
    iget-object v2, v0, Lc3/g;->a:Ln2/a;

    invoke-interface {v2}, Ln2/a;->clear()V

    .line 20
    iput-boolean v1, v0, Lc3/g;->j:Z

    return-void
.end method

.method public final initialize()V
    .locals 1

    iget-object v0, p0, La3/c;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc3/c;

    invoke-virtual {v0}, Lc3/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
