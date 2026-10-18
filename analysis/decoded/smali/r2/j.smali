.class public final Lr2/j;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lr2/h$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lm3/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr2/j$d;,
        Lr2/j$a;,
        Lr2/j$c;,
        Lr2/j$e;,
        Lr2/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr2/h$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lr2/j<",
        "*>;>;",
        "Lm3/a$d;"
    }
.end annotation


# instance fields
.field public A:J

.field public B:Z

.field public C:Ljava/lang/Object;

.field public D:Ljava/lang/Thread;

.field public E:Lp2/f;

.field public F:Lp2/f;

.field public G:Ljava/lang/Object;

.field public H:Lp2/a;

.field public I:Lcom/bumptech/glide/load/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/d<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile J:Lr2/h;

.field public volatile K:Z

.field public volatile L:Z

.field public M:Z

.field public final h:Lr2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/i<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lm3/d$a;

.field public final k:Lr2/j$d;

.field public final l:Li0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/e<",
            "Lr2/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final m:Lr2/j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/j$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final n:Lr2/j$e;

.field public o:Lcom/bumptech/glide/e;

.field public p:Lp2/f;

.field public q:Lcom/bumptech/glide/g;

.field public r:Lr2/p;

.field public s:I

.field public t:I

.field public u:Lr2/l;

.field public v:Lp2/h;

.field public w:Lr2/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/j$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lr2/j$d;Li0/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/j$d;",
            "Li0/e<",
            "Lr2/j<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr2/i;

    invoke-direct {v0}, Lr2/i;-><init>()V

    iput-object v0, p0, Lr2/j;->h:Lr2/i;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr2/j;->i:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lm3/d$a;

    invoke-direct {v0}, Lm3/d$a;-><init>()V

    .line 5
    iput-object v0, p0, Lr2/j;->j:Lm3/d$a;

    .line 6
    new-instance v0, Lr2/j$c;

    invoke-direct {v0}, Lr2/j$c;-><init>()V

    iput-object v0, p0, Lr2/j;->m:Lr2/j$c;

    .line 7
    new-instance v0, Lr2/j$e;

    invoke-direct {v0}, Lr2/j$e;-><init>()V

    iput-object v0, p0, Lr2/j;->n:Lr2/j$e;

    .line 8
    iput-object p1, p0, Lr2/j;->k:Lr2/j$d;

    .line 9
    iput-object p2, p0, Lr2/j;->l:Li0/e;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lr2/j;->z:I

    .line 2
    iget-object v0, p0, Lr2/j;->w:Lr2/j$a;

    check-cast v0, Lr2/n;

    invoke-virtual {v0, p0}, Lr2/n;->h(Lr2/j;)V

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lr2/j;

    .line 2
    iget-object v0, p0, Lr2/j;->q:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lr2/j;->q:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lr2/j;->x:I

    iget p1, p1, Lr2/j;->x:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final g(Lp2/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lp2/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/f;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lp2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 2
    new-instance v0, Lr2/r;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lr2/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 4
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/d;->a()Ljava/lang/Class;

    move-result-object p2

    .line 5
    iput-object p1, v0, Lr2/r;->i:Lp2/f;

    .line 6
    iput-object p4, v0, Lr2/r;->j:Lp2/a;

    .line 7
    iput-object p2, v0, Lr2/r;->k:Ljava/lang/Class;

    .line 8
    iget-object p1, p0, Lr2/j;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lr2/j;->D:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lr2/j;->z:I

    .line 11
    iget-object p1, p0, Lr2/j;->w:Lr2/j$a;

    check-cast p1, Lr2/n;

    invoke-virtual {p1, p0}, Lr2/n;->h(Lr2/j;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lr2/j;->u()V

    :goto_0
    return-void
.end method

.method public final i(Lp2/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lp2/a;Lp2/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/f;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lp2/a;",
            "Lp2/f;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lr2/j;->E:Lp2/f;

    .line 2
    iput-object p2, p0, Lr2/j;->G:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lr2/j;->I:Lcom/bumptech/glide/load/data/d;

    .line 4
    iput-object p4, p0, Lr2/j;->H:Lp2/a;

    .line 5
    iput-object p5, p0, Lr2/j;->F:Lp2/f;

    .line 6
    iget-object p2, p0, Lr2/j;->h:Lr2/i;

    invoke-virtual {p2}, Lr2/i;->a()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lr2/j;->M:Z

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lr2/j;->D:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x3

    .line 8
    iput p1, p0, Lr2/j;->z:I

    .line 9
    iget-object p1, p0, Lr2/j;->w:Lr2/j$a;

    check-cast p1, Lr2/n;

    invoke-virtual {p1, p0}, Lr2/n;->h(Lr2/j;)V

    goto :goto_0

    .line 10
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lr2/j;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    throw p1
.end method

.method public final j()Lm3/d;
    .locals 1

    iget-object v0, p0, Lr2/j;->j:Lm3/d$a;

    return-object v0
.end method

.method public final k(Lcom/bumptech/glide/load/data/d;Ljava/lang/Object;Lp2/a;)Lr2/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;TData;",
            "Lp2/a;",
            ")",
            "Lr2/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr2/r;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->b()V

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    sget v1, Ll3/h;->b:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 4
    invoke-virtual {p0, p2, p3}, Lr2/j;->l(Ljava/lang/Object;Lp2/a;)Lr2/w;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    .line 5
    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded result "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-virtual {p0, p3, v1, v2, v0}, Lr2/j;->p(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->b()V

    throw p2
.end method

.method public final l(Ljava/lang/Object;Lp2/a;)Lr2/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lp2/a;",
            ")",
            "Lr2/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr2/r;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr2/j;->h:Lr2/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr2/i;->d(Ljava/lang/Class;)Lr2/u;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lr2/j;->v:Lp2/h;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    sget-object v1, Lp2/a;->k:Lp2/a;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lr2/j;->h:Lr2/i;

    .line 5
    iget-boolean v1, v1, Lr2/i;->r:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    sget-object v3, Ly2/n;->i:Lp2/g;

    invoke-virtual {v0, v3}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 8
    :cond_4
    new-instance v0, Lp2/h;

    invoke-direct {v0}, Lp2/h;-><init>()V

    .line 9
    iget-object v4, p0, Lr2/j;->v:Lp2/h;

    invoke-virtual {v0, v4}, Lp2/h;->d(Lp2/h;)V

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 11
    iget-object v4, v0, Lp2/h;->b:Ll3/b;

    invoke-virtual {v4, v3, v1}, Ll3/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :goto_3
    iget-object v0, p0, Lr2/j;->o:Lcom/bumptech/glide/e;

    .line 13
    iget-object v0, v0, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/h;

    .line 14
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/e;

    move-result-object p1

    .line 15
    :try_start_0
    iget v5, p0, Lr2/j;->s:I

    iget v6, p0, Lr2/j;->t:I

    new-instance v7, Lr2/j$b;

    invoke-direct {v7, p0, p2}, Lr2/j$b;-><init>(Lr2/j;Lp2/a;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lr2/u;->a(Lcom/bumptech/glide/load/data/e;Lp2/h;IILr2/k$a;)Lr2/w;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    throw p2
.end method

.method public final m()V
    .locals 9

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    .line 2
    iget-wide v1, p0, Lr2/j;->A:J

    const-string v3, "data: "

    .line 3
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lr2/j;->G:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lr2/j;->E:Lp2/f;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lr2/j;->I:Lcom/bumptech/glide/load/data/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lr2/j;->p(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lr2/j;->I:Lcom/bumptech/glide/load/data/d;

    iget-object v2, p0, Lr2/j;->G:Ljava/lang/Object;

    iget-object v3, p0, Lr2/j;->H:Lp2/a;

    invoke-virtual {p0, v1, v2, v3}, Lr2/j;->k(Lcom/bumptech/glide/load/data/d;Ljava/lang/Object;Lp2/a;)Lr2/w;

    move-result-object v1
    :try_end_0
    .catch Lr2/r; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    iget-object v2, p0, Lr2/j;->F:Lp2/f;

    iget-object v3, p0, Lr2/j;->H:Lp2/a;

    .line 7
    iput-object v2, v1, Lr2/r;->i:Lp2/f;

    .line 8
    iput-object v3, v1, Lr2/r;->j:Lp2/a;

    .line 9
    iput-object v0, v1, Lr2/r;->k:Ljava/lang/Class;

    .line 10
    iget-object v2, p0, Lr2/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_8

    .line 11
    iget-object v2, p0, Lr2/j;->H:Lp2/a;

    iget-boolean v3, p0, Lr2/j;->M:Z

    .line 12
    :try_start_1
    instance-of v4, v1, Lr2/s;

    if-eqz v4, :cond_1

    .line 13
    move-object v4, v1

    check-cast v4, Lr2/s;

    invoke-interface {v4}, Lr2/s;->initialize()V

    .line 14
    :cond_1
    iget-object v4, p0, Lr2/j;->m:Lr2/j$c;

    .line 15
    iget-object v4, v4, Lr2/j$c;->c:Lr2/v;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    if-eqz v4, :cond_3

    .line 16
    invoke-static {v1}, Lr2/v;->d(Lr2/w;)Lr2/v;

    move-result-object v0

    move-object v1, v0

    .line 17
    :cond_3
    invoke-virtual {p0, v1, v2, v3}, Lr2/j;->q(Lr2/w;Lp2/a;Z)V

    const/4 v1, 0x5

    .line 18
    iput v1, p0, Lr2/j;->y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 19
    :try_start_2
    iget-object v1, p0, Lr2/j;->m:Lr2/j$c;

    .line 20
    iget-object v2, v1, Lr2/j$c;->c:Lr2/v;

    if-eqz v2, :cond_4

    move v6, v5

    :cond_4
    if-eqz v6, :cond_5

    .line 21
    iget-object v2, p0, Lr2/j;->k:Lr2/j$d;

    iget-object v3, p0, Lr2/j;->v:Lp2/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    :try_start_3
    check-cast v2, Lr2/m$c;

    invoke-virtual {v2}, Lr2/m$c;->a()Lt2/a;

    move-result-object v2

    iget-object v4, v1, Lr2/j$c;->a:Lp2/f;

    new-instance v6, Lr2/g;

    iget-object v7, v1, Lr2/j$c;->b:Lp2/k;

    iget-object v8, v1, Lr2/j$c;->c:Lr2/v;

    invoke-direct {v6, v7, v8, v3}, Lr2/g;-><init>(Lp2/d;Ljava/lang/Object;Lp2/h;)V

    .line 23
    invoke-interface {v2, v4, v6}, Lt2/a;->b(Lp2/f;Lt2/a$b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :try_start_4
    iget-object v1, v1, Lr2/j$c;->c:Lr2/v;

    invoke-virtual {v1}, Lr2/v;->e()V

    goto :goto_2

    :catchall_0
    move-exception v2

    iget-object v1, v1, Lr2/j$c;->c:Lr2/v;

    invoke-virtual {v1}, Lr2/v;->e()V

    .line 25
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 26
    :try_start_5
    invoke-virtual {v0}, Lr2/v;->e()V

    .line 27
    :cond_6
    iget-object v0, p0, Lr2/j;->n:Lr2/j$e;

    .line 28
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 29
    :try_start_6
    iput-boolean v5, v0, Lr2/j$e;->b:Z

    .line 30
    invoke-virtual {v0}, Lr2/j$e;->a()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v0

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {p0}, Lr2/j;->t()V

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 32
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {v0}, Lr2/v;->e()V

    :cond_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 34
    throw v0

    .line 35
    :cond_8
    invoke-virtual {p0}, Lr2/j;->u()V

    :cond_9
    :goto_3
    return-void
.end method

.method public final n()Lr2/h;
    .locals 3

    .line 1
    iget v0, p0, Lr2/j;->y:I

    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized stage: "

    .line 3
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget v2, p0, Lr2/j;->y:I

    invoke-static {v2}, Led/c;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Lr2/b0;

    iget-object v1, p0, Lr2/j;->h:Lr2/i;

    invoke-direct {v0, v1, p0}, Lr2/b0;-><init>(Lr2/i;Lr2/h$a;)V

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Lr2/e;

    iget-object v1, p0, Lr2/j;->h:Lr2/i;

    invoke-direct {v0, v1, p0}, Lr2/e;-><init>(Lr2/i;Lr2/h$a;)V

    return-object v0

    .line 7
    :cond_3
    new-instance v0, Lr2/x;

    iget-object v1, p0, Lr2/j;->h:Lr2/i;

    invoke-direct {v0, v1, p0}, Lr2/x;-><init>(Lr2/i;Lr2/h$a;)V

    return-object v0
.end method

.method public final o(I)I
    .locals 4

    if-eqz p1, :cond_8

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized stage: "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {p1}, Led/c;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v2

    .line 4
    :cond_2
    iget-boolean p1, p0, Lr2/j;->B:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    return v2

    .line 5
    :cond_4
    iget-object p1, p0, Lr2/j;->u:Lr2/l;

    invoke-virtual {p1}, Lr2/l;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    invoke-virtual {p0, v3}, Lr2/j;->o(I)I

    move-result v3

    :goto_2
    return v3

    .line 7
    :cond_6
    iget-object p1, p0, Lr2/j;->u:Lr2/l;

    invoke-virtual {p1}, Lr2/l;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 8
    :cond_7
    invoke-virtual {p0, v1}, Lr2/j;->o(I)I

    move-result v1

    :goto_3
    return v1

    :cond_8
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public final p(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p1, v0}, Landroidx/fragment/app/r0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-static {p2, p3}, Ll3/h;->a(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lr2/j;->r:Lr2/p;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p2, ", "

    .line 3
    invoke-static {p2, p4}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    .line 6
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final q(Lr2/w;Lp2/a;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/w<",
            "TR;>;",
            "Lp2/a;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr2/j;->x()V

    .line 2
    iget-object v0, p0, Lr2/j;->w:Lr2/j$a;

    check-cast v0, Lr2/n;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, v0, Lr2/n;->x:Lr2/w;

    .line 5
    iput-object p2, v0, Lr2/n;->y:Lp2/a;

    .line 6
    iput-boolean p3, v0, Lr2/n;->F:Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    iget-object p1, v0, Lr2/n;->i:Lm3/d$a;

    invoke-virtual {p1}, Lm3/d$a;->a()V

    .line 10
    iget-boolean p1, v0, Lr2/n;->E:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, v0, Lr2/n;->x:Lr2/w;

    invoke-interface {p1}, Lr2/w;->c()V

    .line 12
    invoke-virtual {v0}, Lr2/n;->f()V

    .line 13
    monitor-exit v0

    goto :goto_1

    .line 14
    :cond_0
    iget-object p1, v0, Lr2/n;->h:Lr2/n$e;

    invoke-virtual {p1}, Lr2/n$e;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    iget-boolean p1, v0, Lr2/n;->z:Z

    if-nez p1, :cond_2

    .line 16
    iget-object p1, v0, Lr2/n;->l:Lr2/n$c;

    iget-object v2, v0, Lr2/n;->x:Lr2/w;

    iget-boolean v3, v0, Lr2/n;->t:Z

    iget-object v5, v0, Lr2/n;->s:Lp2/f;

    iget-object v6, v0, Lr2/n;->j:Lr2/q$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p1, Lr2/q;

    const/4 v4, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lr2/q;-><init>(Lr2/w;ZZLp2/f;Lr2/q$a;)V

    .line 18
    iput-object p1, v0, Lr2/n;->C:Lr2/q;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, v0, Lr2/n;->z:Z

    .line 20
    iget-object p2, v0, Lr2/n;->h:Lr2/n$e;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance p3, Ljava/util/ArrayList;

    iget-object p2, p2, Lr2/n$e;->h:Ljava/util/List;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, p1

    .line 23
    invoke-virtual {v0, p2}, Lr2/n;->d(I)V

    .line 24
    iget-object p1, v0, Lr2/n;->s:Lp2/f;

    .line 25
    iget-object p2, v0, Lr2/n;->C:Lr2/q;

    .line 26
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    iget-object v1, v0, Lr2/n;->m:Lr2/o;

    check-cast v1, Lr2/m;

    invoke-virtual {v1, v0, p1, p2}, Lr2/m;->e(Lr2/n;Lp2/f;Lr2/q;)V

    .line 28
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr2/n$d;

    .line 30
    iget-object p3, p2, Lr2/n$d;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lr2/n$b;

    iget-object p2, p2, Lr2/n$d;->a:Lh3/h;

    invoke-direct {v1, v0, p2}, Lr2/n$b;-><init>(Lr2/n;Lh3/h;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Lr2/n;->c()V

    :goto_1
    return-void

    .line 32
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already have resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received a resource without any callbacks to notify"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 35
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final run()V
    .locals 5

    const-string v0, "DecodeJob"

    .line 1
    iget-object v1, p0, Lr2/j;->I:Lcom/bumptech/glide/load/data/d;

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lr2/j;->L:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lr2/j;->s()V
    :try_end_0
    .catch Lr2/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->b()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lr2/j;->w()V
    :try_end_1
    .catch Lr2/d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->b()V

    :cond_2
    return-void

    :goto_0
    const/4 v3, 0x3

    .line 7
    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lr2/j;->L:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lr2/j;->y:I

    invoke-static {v4}, Led/c;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 9
    :cond_3
    :goto_1
    iget v0, p0, Lr2/j;->y:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 10
    iget-object v0, p0, Lr2/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lr2/j;->s()V

    .line 12
    :cond_4
    iget-boolean v0, p0, Lr2/j;->L:Z

    if-nez v0, :cond_5

    .line 13
    throw v2

    .line 14
    :cond_5
    throw v2

    .line 15
    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v1, :cond_6

    .line 16
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 17
    :cond_6
    throw v0
.end method

.method public final s()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lr2/j;->x()V

    .line 2
    new-instance v0, Lr2/r;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lr2/j;->i:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lr2/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lr2/j;->w:Lr2/j$a;

    check-cast v1, Lr2/n;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iput-object v0, v1, Lr2/n;->A:Lr2/r;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    monitor-enter v1

    .line 8
    :try_start_1
    iget-object v0, v1, Lr2/n;->i:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    .line 9
    iget-boolean v0, v1, Lr2/n;->E:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v1}, Lr2/n;->f()V

    .line 11
    monitor-exit v1

    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, v1, Lr2/n;->h:Lr2/n$e;

    invoke-virtual {v0}, Lr2/n$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-boolean v0, v1, Lr2/n;->B:Z

    if-nez v0, :cond_3

    .line 14
    iput-boolean v2, v1, Lr2/n;->B:Z

    .line 15
    iget-object v0, v1, Lr2/n;->s:Lp2/f;

    .line 16
    iget-object v3, v1, Lr2/n;->h:Lr2/n$e;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Lr2/n$e;->h:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    .line 19
    invoke-virtual {v1, v3}, Lr2/n;->d(I)V

    .line 20
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    iget-object v3, v1, Lr2/n;->m:Lr2/o;

    const/4 v5, 0x0

    check-cast v3, Lr2/m;

    invoke-virtual {v3, v1, v0, v5}, Lr2/m;->e(Lr2/n;Lp2/f;Lr2/q;)V

    .line 22
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/n$d;

    .line 24
    iget-object v4, v3, Lr2/n$d;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Lr2/n$a;

    iget-object v3, v3, Lr2/n$d;->a:Lh3/h;

    invoke-direct {v5, v1, v3}, Lr2/n$a;-><init>(Lr2/n;Lh3/h;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1}, Lr2/n;->c()V

    .line 26
    :goto_1
    iget-object v0, p0, Lr2/j;->n:Lr2/j$e;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_2
    iput-boolean v2, v0, Lr2/j$e;->c:Z

    .line 29
    invoke-virtual {v0}, Lr2/j$e;->a()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {p0}, Lr2/j;->t()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    throw v1

    .line 32
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 34
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 35
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr2/j;->n:Lr2/j$e;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, v0, Lr2/j$e;->b:Z

    .line 4
    iput-boolean v1, v0, Lr2/j$e;->a:Z

    .line 5
    iput-boolean v1, v0, Lr2/j$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    iget-object v0, p0, Lr2/j;->m:Lr2/j$c;

    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lr2/j$c;->a:Lp2/f;

    .line 9
    iput-object v2, v0, Lr2/j$c;->b:Lp2/k;

    .line 10
    iput-object v2, v0, Lr2/j$c;->c:Lr2/v;

    .line 11
    iget-object v0, p0, Lr2/j;->h:Lr2/i;

    .line 12
    iput-object v2, v0, Lr2/i;->c:Lcom/bumptech/glide/e;

    .line 13
    iput-object v2, v0, Lr2/i;->d:Ljava/lang/Object;

    .line 14
    iput-object v2, v0, Lr2/i;->n:Lp2/f;

    .line 15
    iput-object v2, v0, Lr2/i;->g:Ljava/lang/Class;

    .line 16
    iput-object v2, v0, Lr2/i;->k:Ljava/lang/Class;

    .line 17
    iput-object v2, v0, Lr2/i;->i:Lp2/h;

    .line 18
    iput-object v2, v0, Lr2/i;->o:Lcom/bumptech/glide/g;

    .line 19
    iput-object v2, v0, Lr2/i;->j:Ljava/util/Map;

    .line 20
    iput-object v2, v0, Lr2/i;->p:Lr2/l;

    .line 21
    iget-object v3, v0, Lr2/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 22
    iput-boolean v1, v0, Lr2/i;->l:Z

    .line 23
    iget-object v3, v0, Lr2/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 24
    iput-boolean v1, v0, Lr2/i;->m:Z

    .line 25
    iput-boolean v1, p0, Lr2/j;->K:Z

    .line 26
    iput-object v2, p0, Lr2/j;->o:Lcom/bumptech/glide/e;

    .line 27
    iput-object v2, p0, Lr2/j;->p:Lp2/f;

    .line 28
    iput-object v2, p0, Lr2/j;->v:Lp2/h;

    .line 29
    iput-object v2, p0, Lr2/j;->q:Lcom/bumptech/glide/g;

    .line 30
    iput-object v2, p0, Lr2/j;->r:Lr2/p;

    .line 31
    iput-object v2, p0, Lr2/j;->w:Lr2/j$a;

    .line 32
    iput v1, p0, Lr2/j;->y:I

    .line 33
    iput-object v2, p0, Lr2/j;->J:Lr2/h;

    .line 34
    iput-object v2, p0, Lr2/j;->D:Ljava/lang/Thread;

    .line 35
    iput-object v2, p0, Lr2/j;->E:Lp2/f;

    .line 36
    iput-object v2, p0, Lr2/j;->G:Ljava/lang/Object;

    .line 37
    iput-object v2, p0, Lr2/j;->H:Lp2/a;

    .line 38
    iput-object v2, p0, Lr2/j;->I:Lcom/bumptech/glide/load/data/d;

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lr2/j;->A:J

    .line 40
    iput-boolean v1, p0, Lr2/j;->L:Z

    .line 41
    iput-object v2, p0, Lr2/j;->C:Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lr2/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lr2/j;->l:Li0/e;

    invoke-interface {v0, p0}, Li0/e;->a(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0

    throw v1
.end method

.method public final u()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lr2/j;->D:Ljava/lang/Thread;

    .line 2
    sget v0, Ll3/h;->b:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lr2/j;->A:J

    const/4 v0, 0x0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lr2/j;->L:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lr2/j;->J:Lr2/h;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lr2/j;->J:Lr2/h;

    .line 6
    invoke-interface {v0}, Lr2/h;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget v1, p0, Lr2/j;->y:I

    invoke-virtual {p0, v1}, Lr2/j;->o(I)I

    move-result v1

    iput v1, p0, Lr2/j;->y:I

    .line 8
    invoke-virtual {p0}, Lr2/j;->n()Lr2/h;

    move-result-object v1

    iput-object v1, p0, Lr2/j;->J:Lr2/h;

    .line 9
    iget v1, p0, Lr2/j;->y:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lr2/j;->z:I

    .line 11
    iget-object v0, p0, Lr2/j;->w:Lr2/j$a;

    check-cast v0, Lr2/n;

    invoke-virtual {v0, p0}, Lr2/n;->h(Lr2/j;)V

    return-void

    .line 12
    :cond_1
    iget v1, p0, Lr2/j;->y:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lr2/j;->L:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lr2/j;->s()V

    :cond_3
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    iget v0, p0, Lr2/j;->z:I

    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lr2/j;->m()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized run reason: "

    .line 4
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget v2, p0, Lr2/j;->z:I

    invoke-static {v2}, Ld1/c;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lr2/j;->u()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Lr2/j;->o(I)I

    move-result v0

    iput v0, p0, Lr2/j;->y:I

    .line 8
    invoke-virtual {p0}, Lr2/j;->n()Lr2/h;

    move-result-object v0

    iput-object v0, p0, Lr2/j;->J:Lr2/h;

    .line 9
    invoke-virtual {p0}, Lr2/j;->u()V

    :goto_0
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/j;->j:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    .line 2
    iget-boolean v0, p0, Lr2/j;->K:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lr2/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr2/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_1
    iput-boolean v1, p0, Lr2/j;->K:Z

    return-void
.end method
