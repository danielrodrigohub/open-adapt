.class public final Lt7/a;
.super Ljava/lang/Object;
.source "GlideImageLoader.kt"

# interfaces
.implements Lt7/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cacheSignature"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh3/g;

    invoke-direct {v0}, Lh3/g;-><init>()V

    .line 2
    sget-object v1, Lr2/l;->c:Lr2/l$c;

    invoke-virtual {v0, v1}, Lh3/a;->e(Lr2/l;)Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 3
    new-instance v1, Lk3/d;

    invoke-direct {v1, p1}, Lk3/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lh3/a;->v(Lp2/f;)Lh3/a;

    move-result-object p1

    const-string v0, "RequestOptions()\n       \u2026bjectKey(cacheSignature))"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lh3/g;

    .line 4
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    invoke-static {v0}, Lg7/b;->k(Landroid/content/Context;)Lo7/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo7/r;->u(Ljava/lang/String;)Lo7/q;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lo7/q;->O(Lh3/a;)Lo7/q;

    move-result-object p1

    .line 6
    iget-object v0, p1, Lcom/bumptech/glide/i;->I:Lcom/bumptech/glide/j;

    .line 7
    new-instance v1, Li3/g;

    invoke-direct {v1, v0}, Li3/g;-><init>(Lcom/bumptech/glide/j;)V

    .line 8
    invoke-virtual {p1, v1, p1}, Lcom/bumptech/glide/i;->H(Li3/i;Lh3/a;)Li3/i;

    .line 9
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Glide has image cached with this url : "

    .line 10
    invoke-static {v0, p2, p1}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lqd/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheSignature"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadImage"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p5, Lh3/g;

    invoke-direct {p5}, Lh3/g;-><init>()V

    .line 2
    sget-object v0, Lr2/l;->c:Lr2/l$c;

    invoke-virtual {p5, v0}, Lh3/a;->e(Lr2/l;)Lh3/a;

    move-result-object p5

    check-cast p5, Lh3/g;

    .line 3
    new-instance v0, Lk3/d;

    invoke-direct {v0, p2}, Lk3/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Lh3/a;->v(Lp2/f;)Lh3/a;

    move-result-object p2

    const-string p5, "RequestOptions()\n       \u2026bjectKey(cacheSignature))"

    invoke-static {p2, p5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lh3/g;

    .line 4
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lg7/b;->k(Landroid/content/Context;)Lo7/r;

    move-result-object p5

    invoke-virtual {p5, p1}, Lo7/r;->u(Ljava/lang/String;)Lo7/q;

    move-result-object p5

    .line 5
    invoke-virtual {p5, p2}, Lo7/q;->O(Lh3/a;)Lo7/q;

    .line 6
    invoke-virtual {p5, p4}, Lo7/q;->T(Landroid/graphics/drawable/Drawable;)Lo7/q;

    .line 7
    invoke-virtual {p5, p4}, Lo7/q;->R(Landroid/graphics/drawable/Drawable;)Lo7/q;

    .line 8
    new-instance p2, Lt7/a$a;

    invoke-direct {p2, p1, p3, p4}, Lt7/a$a;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {p5, p2, p5}, Lcom/bumptech/glide/i;->H(Li3/i;Lh3/a;)Li3/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    sget-object p2, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "no error message"

    :cond_0
    invoke-virtual {p2, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2

    const-string v0, "cacheSignature"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh3/g;

    invoke-direct {v0}, Lh3/g;-><init>()V

    .line 2
    sget-object v1, Lr2/l;->c:Lr2/l$c;

    invoke-virtual {v0, v1}, Lh3/a;->e(Lr2/l;)Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 3
    new-instance v1, Lk3/d;

    invoke-direct {v1, p1}, Lk3/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lh3/a;->v(Lp2/f;)Lh3/a;

    move-result-object p1

    const-string v0, "RequestOptions()\n       \u2026bjectKey(cacheSignature))"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lh3/g;

    .line 4
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg7/b;->k(Landroid/content/Context;)Lo7/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo7/r;->u(Ljava/lang/String;)Lo7/q;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lo7/q;->O(Lh3/a;)Lo7/q;

    .line 6
    invoke-virtual {p2, p4}, Lo7/q;->S(I)Lo7/q;

    .line 7
    invoke-virtual {p2, p4}, Lo7/q;->Q(I)Lo7/q;

    .line 8
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/i;->I(Landroid/widget/ImageView;)Li3/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    sget-object p2, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Glide exception : "

    .line 10
    invoke-static {p3, p1, p2}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Lh3/g;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lg7/b;->k(Landroid/content/Context;)Lo7/r;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Lo7/r;->u(Ljava/lang/String;)Lo7/q;

    move-result-object p1

    const p2, 0x7f080074

    invoke-virtual {p1, p2}, Lo7/q;->Q(I)Lo7/q;

    move-result-object p1

    .line 3
    invoke-static {}, Lh3/g;->C()Lh3/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo7/q;->O(Lh3/a;)Lo7/q;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/i;->I(Landroid/widget/ImageView;)Li3/j;

    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg7/b;->k(Landroid/content/Context;)Lo7/r;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/bumptech/glide/j$b;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/j$b;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->o(Li3/i;)V

    return-void
.end method
