.class public final Lh3/i;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lh3/d;
.implements Li3/h;
.implements Lh3/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh3/d;",
        "Li3/h;",
        "Lh3/h;"
    }
.end annotation


# static fields
.field public static final D:Z


# instance fields
.field public A:I

.field public B:Z

.field public C:Ljava/lang/RuntimeException;

.field public final a:Ljava/lang/String;

.field public final b:Lm3/d$a;

.field public final c:Ljava/lang/Object;

.field public final d:Lh3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/f<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:Lh3/e;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/bumptech/glide/e;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final j:Lh3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:I

.field public final l:I

.field public final m:Lcom/bumptech/glide/g;

.field public final n:Li3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li3/i<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh3/f<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final p:Lj3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/b<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Lr2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/w<",
            "TR;>;"
        }
    .end annotation
.end field

.field public s:Lr2/m$d;

.field public t:J

.field public volatile u:Lr2/m;

.field public v:I

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "GlideRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lh3/i;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lh3/a;IILcom/bumptech/glide/g;Li3/i;Ljava/util/List;Lh3/e;Lr2/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lh3/a<",
            "*>;II",
            "Lcom/bumptech/glide/g;",
            "Li3/i<",
            "TR;>;",
            "Lh3/f<",
            "TR;>;",
            "Ljava/util/List<",
            "Lh3/f<",
            "TR;>;>;",
            "Lh3/e;",
            "Lr2/m;",
            "Lj3/b<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    sget-object v2, Lj3/a;->b:Lj3/a$a;

    sget-object v3, Ll3/e;->a:Ll3/e$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v4, Lh3/i;->D:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iput-object v4, v0, Lh3/i;->a:Ljava/lang/String;

    .line 3
    new-instance v4, Lm3/d$a;

    invoke-direct {v4}, Lm3/d$a;-><init>()V

    .line 4
    iput-object v4, v0, Lh3/i;->b:Lm3/d$a;

    move-object v4, p3

    .line 5
    iput-object v4, v0, Lh3/i;->c:Ljava/lang/Object;

    move-object v4, p1

    .line 6
    iput-object v4, v0, Lh3/i;->f:Landroid/content/Context;

    .line 7
    iput-object v1, v0, Lh3/i;->g:Lcom/bumptech/glide/e;

    move-object v4, p4

    .line 8
    iput-object v4, v0, Lh3/i;->h:Ljava/lang/Object;

    move-object v4, p5

    .line 9
    iput-object v4, v0, Lh3/i;->i:Ljava/lang/Class;

    move-object v4, p6

    .line 10
    iput-object v4, v0, Lh3/i;->j:Lh3/a;

    move v4, p7

    .line 11
    iput v4, v0, Lh3/i;->k:I

    move v4, p8

    .line 12
    iput v4, v0, Lh3/i;->l:I

    move-object v4, p9

    .line 13
    iput-object v4, v0, Lh3/i;->m:Lcom/bumptech/glide/g;

    move-object/from16 v4, p10

    .line 14
    iput-object v4, v0, Lh3/i;->n:Li3/i;

    .line 15
    iput-object v5, v0, Lh3/i;->d:Lh3/f;

    move-object/from16 v4, p11

    .line 16
    iput-object v4, v0, Lh3/i;->o:Ljava/util/List;

    move-object/from16 v4, p12

    .line 17
    iput-object v4, v0, Lh3/i;->e:Lh3/e;

    move-object/from16 v4, p13

    .line 18
    iput-object v4, v0, Lh3/i;->u:Lr2/m;

    .line 19
    iput-object v2, v0, Lh3/i;->p:Lj3/b;

    .line 20
    iput-object v3, v0, Lh3/i;->q:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    .line 21
    iput v2, v0, Lh3/i;->v:I

    .line 22
    iget-object v2, v0, Lh3/i;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 23
    iget-object v1, v1, Lcom/bumptech/glide/e;->h:Lcom/bumptech/glide/f;

    .line 24
    const-class v2, Lcom/bumptech/glide/d$d;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lh3/i;->C:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 23

    move-object/from16 v15, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1
    iget-object v2, v15, Lh3/i;->b:Lm3/d$a;

    invoke-virtual {v2}, Lm3/d$a;->a()V

    .line 2
    iget-object v14, v15, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v14

    .line 3
    :try_start_0
    sget-boolean v21, Lh3/i;->D:Z

    if-eqz v21, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v15, Lh3/i;->t:J

    invoke-static {v3, v4}, Ll3/h;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lh3/i;->n(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget v2, v15, Lh3/i;->v:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 6
    monitor-exit v14

    return-void

    :cond_1
    const/4 v13, 0x2

    .line 7
    iput v13, v15, Lh3/i;->v:I

    .line 8
    iget-object v2, v15, Lh3/i;->j:Lh3/a;

    .line 9
    iget v2, v2, Lh3/a;->i:F

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 11
    :goto_0
    iput v0, v15, Lh3/i;->z:I

    if-ne v1, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float/2addr v2, v0

    .line 12
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 13
    :goto_1
    iput v0, v15, Lh3/i;->A:I

    if-eqz v21, :cond_4

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lh3/i;->t:J

    invoke-static {v1, v2}, Ll3/h;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lh3/i;->n(Ljava/lang/String;)V

    .line 15
    :cond_4
    iget-object v1, v15, Lh3/i;->u:Lr2/m;

    iget-object v2, v15, Lh3/i;->g:Lcom/bumptech/glide/e;

    iget-object v3, v15, Lh3/i;->h:Ljava/lang/Object;

    iget-object v0, v15, Lh3/i;->j:Lh3/a;

    .line 16
    iget-object v4, v0, Lh3/a;->s:Lp2/f;

    .line 17
    iget v5, v15, Lh3/i;->z:I

    iget v6, v15, Lh3/i;->A:I

    .line 18
    iget-object v7, v0, Lh3/a;->z:Ljava/lang/Class;

    .line 19
    iget-object v8, v15, Lh3/i;->i:Ljava/lang/Class;

    iget-object v9, v15, Lh3/i;->m:Lcom/bumptech/glide/g;

    .line 20
    iget-object v10, v0, Lh3/a;->j:Lr2/l;

    .line 21
    iget-object v11, v0, Lh3/a;->y:Ll3/b;

    .line 22
    iget-boolean v12, v0, Lh3/a;->t:Z

    .line 23
    iget-boolean v13, v0, Lh3/a;->F:Z

    move/from16 v17, v13

    .line 24
    iget-object v13, v0, Lh3/a;->x:Lp2/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v18, v14

    .line 25
    :try_start_1
    iget-boolean v14, v0, Lh3/a;->p:Z

    move/from16 v19, v14

    .line 26
    iget-boolean v14, v0, Lh3/a;->D:Z

    move/from16 v20, v14

    .line 27
    iget-boolean v14, v0, Lh3/a;->G:Z

    .line 28
    iget-boolean v0, v0, Lh3/a;->E:Z

    move/from16 p1, v0

    .line 29
    iget-object v0, v15, Lh3/i;->q:Ljava/util/concurrent/Executor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v13

    move/from16 v13, v17

    move-object/from16 v22, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, p1

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    .line 30
    :try_start_2
    invoke-virtual/range {v1 .. v20}, Lr2/m;->b(Lcom/bumptech/glide/e;Ljava/lang/Object;Lp2/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lr2/l;Ljava/util/Map;ZZLp2/h;ZZZZLh3/h;Ljava/util/concurrent/Executor;)Lr2/m$d;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    iput-object v0, v1, Lh3/i;->s:Lr2/m$d;

    .line 31
    iget v0, v1, Lh3/i;->v:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    .line 32
    iput-object v0, v1, Lh3/i;->s:Lr2/m$d;

    :cond_5
    if-eqz v21, :cond_6

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lh3/i;->t:J

    invoke-static {v2, v3}, Ll3/h;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh3/i;->n(Ljava/lang/String;)V

    .line 34
    :cond_6
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v15

    move-object/from16 v22, v18

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v22, v14

    move-object v1, v15

    :goto_2
    move-object/from16 v14, v22

    :goto_3
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lh3/i;->B:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh3/i;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lh3/i;->clear()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh3/i;->b()V

    .line 3
    iget-object v1, p0, Lh3/i;->b:Lm3/d$a;

    invoke-virtual {v1}, Lm3/d$a;->a()V

    .line 4
    iget v1, p0, Lh3/i;->v:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lh3/i;->g()V

    .line 7
    iget-object v1, p0, Lh3/i;->r:Lr2/w;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 8
    iput-object v3, p0, Lh3/i;->r:Lr2/w;

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 9
    :goto_0
    iget-object v3, p0, Lh3/i;->e:Lh3/e;

    if-eqz v3, :cond_3

    invoke-interface {v3, p0}, Lh3/e;->k(Lh3/d;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    .line 10
    iget-object v3, p0, Lh3/i;->n:Li3/i;

    invoke-virtual {p0}, Lh3/i;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Li3/i;->f(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_4
    iput v2, p0, Lh3/i;->v:I

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 13
    iget-object v0, p0, Lh3/i;->u:Lr2/m;

    invoke-virtual {v0, v1}, Lr2/m;->f(Lr2/w;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lh3/i;->v:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lh3/i;->v:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh3/i;->b()V

    .line 3
    iget-object v1, p0, Lh3/i;->b:Lm3/d$a;

    invoke-virtual {v1}, Lm3/d$a;->a()V

    .line 4
    sget v1, Ll3/h;->b:I

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 6
    iput-wide v1, p0, Lh3/i;->t:J

    .line 7
    iget-object v1, p0, Lh3/i;->h:Ljava/lang/Object;

    const/4 v2, 0x3

    if-nez v1, :cond_2

    .line 8
    iget v1, p0, Lh3/i;->k:I

    iget v3, p0, Lh3/i;->l:I

    invoke-static {v1, v3}, Ll3/l;->j(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget v1, p0, Lh3/i;->k:I

    iput v1, p0, Lh3/i;->z:I

    .line 10
    iget v1, p0, Lh3/i;->l:I

    iput v1, p0, Lh3/i;->A:I

    .line 11
    :cond_0
    invoke-virtual {p0}, Lh3/i;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x5

    .line 12
    :cond_1
    new-instance v1, Lr2/r;

    const-string v3, "Received null model"

    invoke-direct {v1, v3}, Lr2/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lh3/i;->o(Lr2/r;I)V

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_2
    iget v1, p0, Lh3/i;->v:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_d

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v1, v4, :cond_3

    .line 15
    iget-object v1, p0, Lh3/i;->r:Lr2/w;

    sget-object v2, Lp2/a;->l:Lp2/a;

    invoke-virtual {p0, v1, v2, v5}, Lh3/i;->q(Lr2/w;Lp2/a;Z)V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_3
    iget-object v1, p0, Lh3/i;->o:Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh3/f;

    .line 19
    instance-of v6, v4, Lh3/c;

    if-eqz v6, :cond_5

    .line 20
    check-cast v4, Lh3/c;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_6
    :goto_1
    iput v2, p0, Lh3/i;->v:I

    .line 22
    iget v1, p0, Lh3/i;->k:I

    iget v4, p0, Lh3/i;->l:I

    invoke-static {v1, v4}, Ll3/l;->j(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    iget v1, p0, Lh3/i;->k:I

    iget v4, p0, Lh3/i;->l:I

    invoke-virtual {p0, v1, v4}, Lh3/i;->a(II)V

    goto :goto_2

    .line 24
    :cond_7
    iget-object v1, p0, Lh3/i;->n:Li3/i;

    invoke-interface {v1, p0}, Li3/i;->b(Li3/h;)V

    .line 25
    :goto_2
    iget v1, p0, Lh3/i;->v:I

    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_b

    .line 26
    :cond_8
    iget-object v1, p0, Lh3/i;->e:Lh3/e;

    if-eqz v1, :cond_9

    invoke-interface {v1, p0}, Lh3/e;->a(Lh3/d;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v5, 0x1

    :cond_a
    if-eqz v5, :cond_b

    .line 27
    iget-object v1, p0, Lh3/i;->n:Li3/i;

    invoke-virtual {p0}, Lh3/i;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Li3/i;->d(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_b
    sget-boolean v1, Lh3/i;->D:Z

    if-eqz v1, :cond_c

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lh3/i;->t:J

    invoke-static {v2, v3}, Ll3/h;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lh3/i;->n(Ljava/lang/String;)V

    .line 30
    :cond_c
    monitor-exit v0

    return-void

    .line 31
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh3/i;->b()V

    .line 2
    iget-object v0, p0, Lh3/i;->b:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    .line 3
    iget-object v0, p0, Lh3/i;->n:Li3/i;

    invoke-interface {v0, p0}, Li3/i;->c(Li3/h;)V

    .line 4
    iget-object v0, p0, Lh3/i;->s:Lr2/m$d;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lr2/m$d;->c:Lr2/m;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lr2/m$d;->a:Lr2/n;

    iget-object v0, v0, Lr2/m$d;->b:Lh3/h;

    invoke-virtual {v2, v0}, Lr2/n;->g(Lh3/h;)V

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lh3/i;->s:Lr2/m$d;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final h(Lh3/d;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lh3/i;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v1, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget v4, v1, Lh3/i;->k:I

    .line 4
    iget v5, v1, Lh3/i;->l:I

    .line 5
    iget-object v6, v1, Lh3/i;->h:Ljava/lang/Object;

    .line 6
    iget-object v7, v1, Lh3/i;->i:Ljava/lang/Class;

    .line 7
    iget-object v8, v1, Lh3/i;->j:Lh3/a;

    .line 8
    iget-object v9, v1, Lh3/i;->m:Lcom/bumptech/glide/g;

    .line 9
    iget-object v10, v1, Lh3/i;->o:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    move v10, v3

    .line 10
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    check-cast v0, Lh3/i;

    .line 12
    iget-object v11, v0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v11

    .line 13
    :try_start_1
    iget v2, v0, Lh3/i;->k:I

    .line 14
    iget v12, v0, Lh3/i;->l:I

    .line 15
    iget-object v13, v0, Lh3/i;->h:Ljava/lang/Object;

    .line 16
    iget-object v14, v0, Lh3/i;->i:Ljava/lang/Class;

    .line 17
    iget-object v15, v0, Lh3/i;->j:Lh3/a;

    .line 18
    iget-object v3, v0, Lh3/i;->m:Lcom/bumptech/glide/g;

    .line 19
    iget-object v0, v0, Lh3/i;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    if-ne v4, v2, :cond_6

    if-ne v5, v12, :cond_6

    .line 21
    sget-object v2, Ll3/l;->a:[C

    if-nez v6, :cond_4

    if-nez v13, :cond_3

    move v2, v11

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 22
    :cond_4
    instance-of v2, v6, Lv2/k;

    if-eqz v2, :cond_5

    .line 23
    check-cast v6, Lv2/k;

    invoke-interface {v6}, Lv2/k;->a()Z

    move-result v2

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {v8, v15}, Lh3/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v9, v3, :cond_6

    if-ne v10, v0, :cond_6

    move v3, v11

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    return v3

    :catchall_0
    move-exception v0

    .line 27
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 28
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lh3/i;->v:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lh3/i;->v:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/i;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lh3/i;->j:Lh3/a;

    .line 3
    iget-object v1, v0, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v1, p0, Lh3/i;->y:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 5
    iget v0, v0, Lh3/a;->w:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lh3/i;->m(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lh3/i;->y:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Lh3/i;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final k()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/i;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lh3/i;->j:Lh3/a;

    .line 3
    iget-object v1, v0, Lh3/a;->n:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v1, p0, Lh3/i;->x:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 5
    iget v0, v0, Lh3/a;->o:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lh3/i;->m(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lh3/i;->x:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Lh3/i;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lh3/i;->e:Lh3/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lh3/e;->b()Lh3/e;

    move-result-object v0

    invoke-interface {v0}, Lh3/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final m(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/i;->j:Lh3/a;

    .line 2
    iget-object v0, v0, Lh3/a;->B:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh3/i;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lh3/i;->g:Lcom/bumptech/glide/e;

    .line 5
    invoke-static {v1, v1, p1, v0}, La3/b;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    const-string v0, " this: "

    .line 1
    invoke-static {p1, v0}, Landroidx/fragment/app/r0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lh3/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlideRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final o(Lr2/r;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/i;->b:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    .line 2
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lh3/i;->g:Lcom/bumptech/glide/e;

    .line 5
    iget v1, v1, Lcom/bumptech/glide/e;->i:I

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lh3/i;->h:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lh3/i;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lh3/i;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    .line 7
    invoke-virtual {p1}, Lr2/r;->e()V

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lh3/i;->s:Lr2/m$d;

    const/4 p1, 0x5

    .line 9
    iput p1, p0, Lh3/i;->v:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lh3/i;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    .line 11
    :try_start_1
    iget-object v1, p0, Lh3/i;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh3/f;

    .line 13
    invoke-virtual {p0}, Lh3/i;->l()Z

    invoke-interface {v3}, Lh3/f;->b()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_1
    move v2, p2

    .line 14
    :cond_2
    iget-object v1, p0, Lh3/i;->d:Lh3/f;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p0}, Lh3/i;->l()Z

    invoke-interface {v1}, Lh3/f;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move p1, p2

    :goto_1
    or-int/2addr p1, v2

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {p0}, Lh3/i;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_4
    :try_start_2
    iput-boolean p2, p0, Lh3/i;->B:Z

    .line 18
    iget-object p1, p0, Lh3/i;->e:Lh3/e;

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1, p0}, Lh3/e;->l(Lh3/d;)V

    .line 20
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 21
    iput-boolean p2, p0, Lh3/i;->B:Z

    throw p1

    :catchall_1
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final p(Lr2/w;Ljava/lang/Object;Lp2/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/w<",
            "TR;>;TR;",
            "Lp2/a;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh3/i;->l()Z

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lh3/i;->v:I

    .line 3
    iput-object p1, p0, Lh3/i;->r:Lr2/w;

    .line 4
    iget-object p1, p0, Lh3/i;->g:Lcom/bumptech/glide/e;

    .line 5
    iget p1, p1, Lcom/bumptech/glide/e;->i:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const-string p1, "Finished loading "

    .line 6
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lh3/i;->h:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with size ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lh3/i;->z:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lh3/i;->A:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lh3/i;->t:J

    .line 8
    invoke-static {v0, v1}, Ll3/h;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " ms"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Glide"

    .line 9
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lh3/i;->B:Z

    const/4 p3, 0x0

    .line 11
    :try_start_0
    iget-object v0, p0, Lh3/i;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/f;

    .line 13
    invoke-interface {v2}, Lh3/f;->a()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, p3

    .line 14
    :cond_2
    iget-object v0, p0, Lh3/i;->d:Lh3/f;

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0}, Lh3/f;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, p3

    :goto_1
    or-int/2addr p1, v1

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lh3/i;->p:Lj3/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lh3/i;->n:Li3/i;

    invoke-interface {p1, p2}, Li3/i;->j(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_4
    iput-boolean p3, p0, Lh3/i;->B:Z

    .line 19
    iget-object p1, p0, Lh3/i;->e:Lh3/e;

    if-eqz p1, :cond_5

    .line 20
    invoke-interface {p1, p0}, Lh3/e;->g(Lh3/d;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 21
    iput-boolean p3, p0, Lh3/i;->B:Z

    throw p1
.end method

.method public final q(Lr2/w;Lp2/a;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/w<",
            "*>;",
            "Lp2/a;",
            "Z)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lh3/i;->b:Lm3/d$a;

    invoke-virtual {p3}, Lm3/d$a;->a()V

    const/4 p3, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3
    :try_start_1
    iput-object p3, p0, Lh3/i;->s:Lr2/m$d;

    const/4 v1, 0x5

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lr2/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh3/i;->i:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inside, but instead got null."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr2/r;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, v1}, Lh3/i;->o(Lr2/r;I)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 8
    iget-object v3, p0, Lh3/i;->i:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    iget-object v1, p0, Lh3/i;->e:Lh3/e;

    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Lh3/e;->j(Lh3/d;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    .line 10
    :try_start_2
    iput-object p3, p0, Lh3/i;->r:Lr2/w;

    const/4 p2, 0x4

    .line 11
    iput p2, p0, Lh3/i;->v:I

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :goto_2
    iget-object p2, p0, Lh3/i;->u:Lr2/m;

    invoke-virtual {p2, p1}, Lr2/m;->f(Lr2/w;)V

    return-void

    .line 14
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, v2, p2}, Lh3/i;->p(Lr2/w;Ljava/lang/Object;Lp2/a;)V

    .line 15
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 16
    :cond_5
    :goto_3
    :try_start_4
    iput-object p3, p0, Lh3/i;->r:Lr2/w;

    .line 17
    new-instance p2, Lr2/r;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lh3/i;->i:Ljava/lang/Class;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_4

    :cond_6
    const-string v3, ""

    :goto_4
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "} inside Resource{"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "}."

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7

    const-string v2, ""

    goto :goto_5

    :cond_7
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 19
    :goto_5
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lr2/r;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2, v1}, Lh3/i;->o(Lr2/r;I)V

    .line 21
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object p3, p1

    move-object p1, p0

    goto :goto_7

    :catchall_1
    move-exception p1

    move-object p2, p0

    :goto_6
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    .line 22
    :goto_7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_8

    :catchall_3
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_6

    :catchall_4
    move-exception p2

    move-object p1, p0

    :goto_8
    if-eqz p3, :cond_8

    .line 23
    iget-object p1, p1, Lh3/i;->u:Lr2/m;

    invoke-virtual {p1, p3}, Lr2/m;->f(Lr2/w;)V

    :cond_8
    throw p2
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/i;->e:Lh3/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lh3/e;->a(Lh3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lh3/i;->h:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lh3/i;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lh3/i;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lh3/i;->j:Lh3/a;

    .line 6
    iget-object v1, v0, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v1, p0, Lh3/i;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 8
    iget v0, v0, Lh3/a;->m:I

    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Lh3/i;->m(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lh3/i;->w:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_4
    iget-object v0, p0, Lh3/i;->w:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lh3/i;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12
    :cond_6
    iget-object v1, p0, Lh3/i;->n:Li3/i;

    invoke-interface {v1, v0}, Li3/i;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh3/i;->h:Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lh3/i;->i:Ljava/lang/Class;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
