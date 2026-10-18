.class public final Lo7/r;
.super Lcom/bumptech/glide/j;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Le3/h;Le3/m;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/c;Le3/h;Le3/m;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/Class;)Lcom/bumptech/glide/i;
    .locals 3

    new-instance v0, Lo7/q;

    iget-object v1, p0, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/j;->i:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lo7/q;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/j;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public final m()Lcom/bumptech/glide/i;
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lo7/r;->l(Ljava/lang/Class;)Lcom/bumptech/glide/i;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/j;->r:Lh3/g;

    check-cast v0, Lo7/q;

    .line 2
    invoke-virtual {v0, v1}, Lo7/q;->O(Lh3/a;)Lo7/q;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/bumptech/glide/i;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/j;->n()Lcom/bumptech/glide/i;

    move-result-object v0

    check-cast v0, Lo7/q;

    return-object v0
.end method

.method public final p(Ljava/lang/Integer;)Lcom/bumptech/glide/i;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->p(Ljava/lang/Integer;)Lcom/bumptech/glide/i;

    move-result-object p1

    check-cast p1, Lo7/q;

    return-object p1
.end method

.method public final s(Lh3/g;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lo7/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->s(Lh3/g;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lo7/p;

    invoke-direct {v0}, Lo7/p;-><init>()V

    invoke-virtual {v0, p1}, Lo7/p;->D(Lh3/a;)Lo7/p;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->s(Lh3/g;)V

    :goto_0
    return-void
.end method

.method public final u(Ljava/lang/String;)Lo7/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo7/q<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo7/r;->n()Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->L(Ljava/lang/String;)Lcom/bumptech/glide/i;

    move-result-object p1

    .line 2
    check-cast p1, Lo7/q;

    return-object p1
.end method
