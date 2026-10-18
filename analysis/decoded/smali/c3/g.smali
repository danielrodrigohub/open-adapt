.class public final Lc3/g;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/g$a;,
        Lc3/g$c;,
        Lc3/g$b;
    }
.end annotation


# instance fields
.field public final a:Ln2/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc3/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/bumptech/glide/j;

.field public final e:Ls2/d;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lc3/g$a;

.field public j:Z

.field public k:Lc3/g$a;

.field public l:Landroid/graphics/Bitmap;

.field public m:Lp2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lc3/g$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Ln2/a;IILp2/l;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Ln2/a;",
            "II",
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/bumptech/glide/c;->h:Ls2/d;

    .line 2
    iget-object v1, p1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/e;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    .line 4
    iget-object p1, p1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/bumptech/glide/j;->m()Lcom/bumptech/glide/i;

    move-result-object p1

    sget-object v2, Lr2/l;->a:Lr2/l$a;

    .line 7
    new-instance v3, Lh3/g;

    invoke-direct {v3}, Lh3/g;-><init>()V

    invoke-virtual {v3, v2}, Lh3/a;->e(Lr2/l;)Lh3/a;

    move-result-object v2

    check-cast v2, Lh3/g;

    .line 8
    invoke-virtual {v2}, Lh3/a;->B()Lh3/a;

    move-result-object v2

    check-cast v2, Lh3/g;

    .line 9
    invoke-virtual {v2}, Lh3/a;->w()Lh3/a;

    move-result-object v2

    check-cast v2, Lh3/g;

    .line 10
    invoke-virtual {v2, p3, p4}, Lh3/a;->r(II)Lh3/a;

    move-result-object p3

    .line 11
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/i;->D(Lh3/a;)Lcom/bumptech/glide/i;

    move-result-object p1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lc3/g;->c:Ljava/util/ArrayList;

    .line 14
    iput-object v1, p0, Lc3/g;->d:Lcom/bumptech/glide/j;

    .line 15
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lc3/g$c;

    invoke-direct {v1, p0}, Lc3/g$c;-><init>(Lc3/g;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    iput-object v0, p0, Lc3/g;->e:Ls2/d;

    .line 17
    iput-object p3, p0, Lc3/g;->b:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lc3/g;->h:Lcom/bumptech/glide/i;

    .line 19
    iput-object p2, p0, Lc3/g;->a:Ln2/a;

    .line 20
    invoke-virtual {p0, p5, p6}, Lc3/g;->c(Lp2/l;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc3/g;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lc3/g;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lc3/g;->n:Lc3/g$a;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc3/g;->n:Lc3/g$a;

    .line 4
    invoke-virtual {p0, v1}, Lc3/g;->b(Lc3/g$a;)V

    return-void

    .line 5
    :cond_1
    iput-boolean v0, p0, Lc3/g;->g:Z

    .line 6
    iget-object v0, p0, Lc3/g;->a:Ln2/a;

    invoke-interface {v0}, Ln2/a;->e()I

    move-result v0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 8
    iget-object v0, p0, Lc3/g;->a:Ln2/a;

    invoke-interface {v0}, Ln2/a;->c()V

    .line 9
    new-instance v0, Lc3/g$a;

    iget-object v3, p0, Lc3/g;->b:Landroid/os/Handler;

    iget-object v4, p0, Lc3/g;->a:Ln2/a;

    invoke-interface {v4}, Ln2/a;->a()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lc3/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lc3/g;->k:Lc3/g$a;

    .line 10
    iget-object v0, p0, Lc3/g;->h:Lcom/bumptech/glide/i;

    .line 11
    new-instance v1, Lk3/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lk3/d;-><init>(Ljava/lang/Object;)V

    .line 12
    new-instance v2, Lh3/g;

    invoke-direct {v2}, Lh3/g;-><init>()V

    invoke-virtual {v2, v1}, Lh3/a;->v(Lp2/f;)Lh3/a;

    move-result-object v1

    check-cast v1, Lh3/g;

    .line 13
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->D(Lh3/a;)Lcom/bumptech/glide/i;

    move-result-object v0

    iget-object v1, p0, Lc3/g;->a:Ln2/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->K(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    move-result-object v0

    iget-object v1, p0, Lc3/g;->k:Lc3/g$a;

    .line 14
    invoke-virtual {v0, v1, v0}, Lcom/bumptech/glide/i;->H(Li3/i;Lh3/a;)Li3/i;

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lc3/g$a;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc3/g;->g:Z

    .line 2
    iget-boolean v0, p0, Lc3/g;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc3/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc3/g;->f:Z

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Lc3/g;->n:Lc3/g$a;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Lc3/g$a;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lc3/g;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Lc3/g;->e:Ls2/d;

    invoke-interface {v2, v0}, Ls2/d;->e(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lc3/g;->l:Landroid/graphics/Bitmap;

    .line 10
    :cond_2
    iget-object v0, p0, Lc3/g;->i:Lc3/g$a;

    .line 11
    iput-object p1, p0, Lc3/g;->i:Lc3/g$a;

    .line 12
    iget-object p1, p0, Lc3/g;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 13
    iget-object v2, p0, Lc3/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/g$b;

    .line 14
    invoke-interface {v2}, Lc3/g$b;->a()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    iget-object p1, p0, Lc3/g;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :cond_4
    invoke-virtual {p0}, Lc3/g;->a()V

    return-void
.end method

.method public final c(Lp2/l;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc3/g;->m:Lp2/l;

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lc3/g;->l:Landroid/graphics/Bitmap;

    .line 5
    iget-object v0, p0, Lc3/g;->h:Lcom/bumptech/glide/i;

    new-instance v1, Lh3/g;

    invoke-direct {v1}, Lh3/g;-><init>()V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, p1, v2}, Lh3/a;->z(Lp2/l;Z)Lh3/a;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->D(Lh3/a;)Lcom/bumptech/glide/i;

    move-result-object p1

    iput-object p1, p0, Lc3/g;->h:Lcom/bumptech/glide/i;

    .line 8
    invoke-static {p2}, Ll3/l;->c(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lc3/g;->o:I

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lc3/g;->p:I

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lc3/g;->q:I

    return-void
.end method
