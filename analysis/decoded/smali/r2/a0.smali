.class public final Lr2/a0;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv2/n$a;

.field public final synthetic i:Lr2/b0;


# direct methods
.method public constructor <init>(Lr2/b0;Lv2/n$a;)V
    .locals 0

    iput-object p1, p0, Lr2/a0;->i:Lr2/b0;

    iput-object p2, p0, Lr2/a0;->h:Lv2/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr2/a0;->i:Lr2/b0;

    iget-object v1, p0, Lr2/a0;->h:Lv2/n$a;

    .line 2
    iget-object v0, v0, Lr2/b0;->m:Lv2/n$a;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lr2/a0;->i:Lr2/b0;

    iget-object v1, p0, Lr2/a0;->h:Lv2/n$a;

    .line 4
    iget-object v2, v0, Lr2/b0;->i:Lr2/h$a;

    iget-object v0, v0, Lr2/b0;->n:Lr2/f;

    iget-object v1, v1, Lv2/n$a;->c:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->e()Lp2/a;

    move-result-object v3

    invoke-interface {v2, v0, p1, v1, v3}, Lr2/h$a;->g(Lp2/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lp2/a;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lr2/a0;->i:Lr2/b0;

    iget-object v1, p0, Lr2/a0;->h:Lv2/n$a;

    .line 2
    iget-object v0, v0, Lr2/b0;->m:Lv2/n$a;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lr2/a0;->i:Lr2/b0;

    iget-object v1, p0, Lr2/a0;->h:Lv2/n$a;

    .line 4
    iget-object v2, v0, Lr2/b0;->h:Lr2/i;

    .line 5
    iget-object v2, v2, Lr2/i;->p:Lr2/l;

    if-eqz p1, :cond_1

    .line 6
    iget-object v3, v1, Lv2/n$a;->c:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/d;->e()Lp2/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr2/l;->c(Lp2/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput-object p1, v0, Lr2/b0;->l:Ljava/lang/Object;

    .line 8
    iget-object p1, v0, Lr2/b0;->i:Lr2/h$a;

    invoke-interface {p1}, Lr2/h$a;->b()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, v0, Lr2/b0;->i:Lr2/h$a;

    iget-object v3, v1, Lv2/n$a;->a:Lp2/f;

    iget-object v4, v1, Lv2/n$a;->c:Lcom/bumptech/glide/load/data/d;

    .line 10
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/d;->e()Lp2/a;

    move-result-object v5

    iget-object v6, v0, Lr2/b0;->n:Lr2/f;

    move-object v0, v2

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 11
    invoke-interface/range {v0 .. v5}, Lr2/h$a;->i(Lp2/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lp2/a;Lp2/f;)V

    :cond_2
    :goto_1
    return-void
.end method
