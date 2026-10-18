.class public final Lr2/e;
.super Ljava/lang/Object;
.source "DataCacheGenerator.java"

# interfaces
.implements Lr2/h;
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr2/h;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp2/f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/i<",
            "*>;"
        }
    .end annotation
.end field

.field public final j:Lr2/h$a;

.field public k:I

.field public l:Lp2/f;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv2/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public n:I

.field public volatile o:Lv2/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public p:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;Lr2/i;Lr2/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp2/f;",
            ">;",
            "Lr2/i<",
            "*>;",
            "Lr2/h$a;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lr2/e;->k:I

    .line 9
    iput-object p1, p0, Lr2/e;->h:Ljava/util/List;

    .line 10
    iput-object p2, p0, Lr2/e;->i:Lr2/i;

    .line 11
    iput-object p3, p0, Lr2/e;->j:Lr2/h$a;

    return-void
.end method

.method public constructor <init>(Lr2/i;Lr2/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/i<",
            "*>;",
            "Lr2/h$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lr2/i;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lr2/e;->k:I

    .line 4
    iput-object v0, p0, Lr2/e;->h:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lr2/e;->i:Lr2/i;

    .line 6
    iput-object p2, p0, Lr2/e;->j:Lr2/h$a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lr2/e;->m:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget v3, p0, Lr2/e;->n:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lr2/e;->o:Lv2/n$a;

    move v0, v2

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 4
    iget v3, p0, Lr2/e;->n:I

    iget-object v4, p0, Lr2/e;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    .line 5
    iget-object v3, p0, Lr2/e;->m:Ljava/util/List;

    iget v4, p0, Lr2/e;->n:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lr2/e;->n:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/n;

    .line 6
    iget-object v4, p0, Lr2/e;->p:Ljava/io/File;

    iget-object v5, p0, Lr2/e;->i:Lr2/i;

    .line 7
    iget v6, v5, Lr2/i;->e:I

    .line 8
    iget v7, v5, Lr2/i;->f:I

    .line 9
    iget-object v5, v5, Lr2/i;->i:Lp2/h;

    .line 10
    invoke-interface {v3, v4, v6, v7, v5}, Lv2/n;->a(Ljava/lang/Object;IILp2/h;)Lv2/n$a;

    move-result-object v3

    iput-object v3, p0, Lr2/e;->o:Lv2/n$a;

    .line 11
    iget-object v3, p0, Lr2/e;->o:Lv2/n$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lr2/e;->i:Lr2/i;

    iget-object v4, p0, Lr2/e;->o:Lv2/n$a;

    iget-object v4, v4, Lv2/n$a;->c:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v4}, Lcom/bumptech/glide/load/data/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lr2/i;->h(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v0, p0, Lr2/e;->o:Lv2/n$a;

    iget-object v0, v0, Lv2/n$a;->c:Lcom/bumptech/glide/load/data/d;

    iget-object v3, p0, Lr2/e;->i:Lr2/i;

    .line 13
    iget-object v3, v3, Lr2/i;->o:Lcom/bumptech/glide/g;

    .line 14
    invoke-interface {v0, v3, p0}, Lcom/bumptech/glide/load/data/d;->f(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d$a;)V

    move v0, v1

    goto :goto_2

    :cond_5
    return v0

    .line 15
    :cond_6
    :goto_4
    iget v0, p0, Lr2/e;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lr2/e;->k:I

    .line 16
    iget-object v1, p0, Lr2/e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_7

    return v2

    .line 17
    :cond_7
    iget-object v0, p0, Lr2/e;->h:Ljava/util/List;

    iget v1, p0, Lr2/e;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/f;

    .line 18
    new-instance v1, Lr2/f;

    iget-object v3, p0, Lr2/e;->i:Lr2/i;

    .line 19
    iget-object v4, v3, Lr2/i;->n:Lp2/f;

    .line 20
    invoke-direct {v1, v0, v4}, Lr2/f;-><init>(Lp2/f;Lp2/f;)V

    .line 21
    invoke-virtual {v3}, Lr2/i;->b()Lt2/a;

    move-result-object v3

    invoke-interface {v3, v1}, Lt2/a;->a(Lp2/f;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lr2/e;->p:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 22
    iput-object v0, p0, Lr2/e;->l:Lp2/f;

    .line 23
    iget-object v0, p0, Lr2/e;->i:Lr2/i;

    .line 24
    iget-object v0, v0, Lr2/i;->c:Lcom/bumptech/glide/e;

    .line 25
    iget-object v0, v0, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/h;

    .line 26
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lr2/e;->m:Ljava/util/List;

    .line 28
    iput v2, p0, Lr2/e;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 29
    throw v0
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lr2/e;->j:Lr2/h$a;

    iget-object v1, p0, Lr2/e;->l:Lp2/f;

    iget-object v2, p0, Lr2/e;->o:Lv2/n$a;

    iget-object v2, v2, Lv2/n$a;->c:Lcom/bumptech/glide/load/data/d;

    sget-object v3, Lp2/a;->j:Lp2/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lr2/h$a;->g(Lp2/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lp2/a;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/e;->o:Lv2/n$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lv2/n$a;->c:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lr2/e;->j:Lr2/h$a;

    iget-object v1, p0, Lr2/e;->l:Lp2/f;

    iget-object v2, p0, Lr2/e;->o:Lv2/n$a;

    iget-object v3, v2, Lv2/n$a;->c:Lcom/bumptech/glide/load/data/d;

    sget-object v4, Lp2/a;->j:Lp2/a;

    iget-object v5, p0, Lr2/e;->l:Lp2/f;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lr2/h$a;->i(Lp2/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lp2/a;Lp2/f;)V

    return-void
.end method
