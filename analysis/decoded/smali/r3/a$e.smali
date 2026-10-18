.class public final Lr3/a$e;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lr3/a;


# direct methods
.method public constructor <init>(Lr3/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/a$e;->a:Lr3/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object p1, p0, Lr3/a$e;->a:Lr3/a;

    .line 6
    iget-object v6, p1, Lr3/a;->w:Lr3/s$a;

    if-ne v1, v6, :cond_a

    invoke-virtual {p1}, Lr3/a;->j()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    iput-object v3, p1, Lr3/a;->w:Lr3/s$a;

    .line 8
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0, v2}, Lr3/a;->l(Ljava/lang/Exception;Z)V

    goto/16 :goto_1

    .line 10
    :cond_2
    :try_start_0
    check-cast v0, [B

    .line 11
    iget v1, p1, Lr3/a;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 12
    iget-object v1, p1, Lr3/a;->b:Lr3/s;

    iget-object v2, p1, Lr3/a;->v:[B

    sget v3, Lm5/g0;->a:I

    invoke-interface {v1, v2, v0}, Lr3/s;->f([B[B)[B

    .line 13
    sget-object v0, Ln3/t0;->e:Ln3/t0;

    invoke-virtual {p1, v0}, Lr3/a;->h(Lm5/f;)V

    goto/16 :goto_1

    .line 14
    :cond_3
    iget-object v1, p1, Lr3/a;->b:Lr3/s;

    iget-object v2, p1, Lr3/a;->u:[B

    invoke-interface {v1, v2, v0}, Lr3/s;->f([B[B)[B

    move-result-object v0

    .line 15
    iget v1, p1, Lr3/a;->e:I

    if-eq v1, v4, :cond_4

    if-nez v1, :cond_5

    iget-object v1, p1, Lr3/a;->v:[B

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    array-length v1, v0

    if-eqz v1, :cond_5

    .line 16
    iput-object v0, p1, Lr3/a;->v:[B

    :cond_5
    const/4 v0, 0x4

    .line 17
    iput v0, p1, Lr3/a;->o:I

    .line 18
    sget-object v0, Ly0/g;->e:Ly0/g;

    invoke-virtual {p1, v0}, Lr3/a;->h(Lm5/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {p1, v0, v5}, Lr3/a;->l(Ljava/lang/Exception;Z)V

    goto :goto_1

    .line 20
    :cond_6
    iget-object p1, p0, Lr3/a$e;->a:Lr3/a;

    .line 21
    iget-object v6, p1, Lr3/a;->x:Lr3/s$d;

    if-ne v1, v6, :cond_a

    iget v1, p1, Lr3/a;->o:I

    if-eq v1, v4, :cond_7

    invoke-virtual {p1}, Lr3/a;->j()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 22
    :cond_7
    iput-object v3, p1, Lr3/a;->x:Lr3/s$d;

    .line 23
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_8

    .line 24
    iget-object p1, p1, Lr3/a;->c:Lr3/a$a;

    check-cast v0, Ljava/lang/Exception;

    check-cast p1, Lr3/b$f;

    invoke-virtual {p1, v0, v2}, Lr3/b$f;->a(Ljava/lang/Exception;Z)V

    goto :goto_1

    .line 25
    :cond_8
    :try_start_1
    iget-object v1, p1, Lr3/a;->b:Lr3/s;

    check-cast v0, [B

    invoke-interface {v1, v0}, Lr3/s;->h([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    iget-object p1, p1, Lr3/a;->c:Lr3/a$a;

    check-cast p1, Lr3/b$f;

    .line 27
    iput-object v3, p1, Lr3/b$f;->b:Lr3/a;

    .line 28
    iget-object v0, p1, Lr3/b$f;->a:Ljava/util/HashSet;

    .line 29
    invoke-static {v0}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object v0

    .line 30
    iget-object p1, p1, Lr3/b$f;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 31
    invoke-virtual {v0, v2}, Lu6/v;->u(I)Lu6/a;

    move-result-object p1

    .line 32
    :cond_9
    :goto_0
    invoke-virtual {p1}, Lu6/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lu6/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/a;

    .line 33
    invoke-virtual {v0}, Lr3/a;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 34
    invoke-virtual {v0, v5}, Lr3/a;->i(Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 35
    iget-object p1, p1, Lr3/a;->c:Lr3/a$a;

    check-cast p1, Lr3/b$f;

    invoke-virtual {p1, v0, v5}, Lr3/b$f;->a(Ljava/lang/Exception;Z)V

    :cond_a
    :goto_1
    return-void
.end method
