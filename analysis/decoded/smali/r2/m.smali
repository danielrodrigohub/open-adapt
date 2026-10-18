.class public final Lr2/m;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lr2/o;
.implements Lt2/h$a;
.implements Lr2/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr2/m$b;,
        Lr2/m$a;,
        Lr2/m$c;,
        Lr2/m$d;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lr2/t;

.field public final b:Lm6/e;

.field public final c:Lt2/h;

.field public final d:Lr2/m$b;

.field public final e:Lr2/z;

.field public final f:Lr2/m$a;

.field public final g:Lr2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lr2/m;->h:Z

    return-void
.end method

.method public constructor <init>(Lt2/h;Lt2/a$a;Lu2/a;Lu2/a;Lu2/a;Lu2/a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr2/m;->c:Lt2/h;

    .line 3
    new-instance v0, Lr2/m$c;

    invoke-direct {v0, p2}, Lr2/m$c;-><init>(Lt2/a$a;)V

    .line 4
    new-instance p2, Lr2/c;

    invoke-direct {p2}, Lr2/c;-><init>()V

    .line 5
    iput-object p2, p0, Lr2/m;->g:Lr2/c;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iput-object p0, p2, Lr2/c;->d:Lr2/q$a;

    .line 9
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    new-instance p2, Lm6/e;

    invoke-direct {p2}, Lm6/e;-><init>()V

    .line 12
    iput-object p2, p0, Lr2/m;->b:Lm6/e;

    .line 13
    new-instance p2, Lr2/t;

    invoke-direct {p2}, Lr2/t;-><init>()V

    .line 14
    iput-object p2, p0, Lr2/m;->a:Lr2/t;

    .line 15
    new-instance p2, Lr2/m$b;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lr2/m$b;-><init>(Lu2/a;Lu2/a;Lu2/a;Lu2/a;Lr2/o;Lr2/q$a;)V

    .line 16
    iput-object p2, p0, Lr2/m;->d:Lr2/m$b;

    .line 17
    new-instance p2, Lr2/m$a;

    invoke-direct {p2, v0}, Lr2/m$a;-><init>(Lr2/j$d;)V

    .line 18
    iput-object p2, p0, Lr2/m;->f:Lr2/m$a;

    .line 19
    new-instance p2, Lr2/z;

    invoke-direct {p2}, Lr2/z;-><init>()V

    .line 20
    iput-object p2, p0, Lr2/m;->e:Lr2/z;

    .line 21
    check-cast p1, Lt2/g;

    .line 22
    iput-object p0, p1, Lt2/g;->d:Lt2/h$a;

    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public static d(Ljava/lang/String;JLp2/f;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p0, v0}, Landroidx/fragment/app/r0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    invoke-static {p1, p2}, Ll3/h;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Lp2/f;Lr2/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/f;",
            "Lr2/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr2/m;->g:Lr2/c;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lr2/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/c$a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lr2/c$a;->c:Lr2/w;

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    .line 7
    iget-boolean v0, p2, Lr2/q;->h:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lr2/m;->c:Lt2/h;

    check-cast v0, Lt2/g;

    .line 9
    invoke-virtual {v0, p1, p2}, Ll3/i;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/w;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lr2/m;->e:Lr2/z;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lr2/z;->a(Lr2/w;Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public final b(Lcom/bumptech/glide/e;Ljava/lang/Object;Lp2/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lr2/l;Ljava/util/Map;ZZLp2/h;ZZZZLh3/h;Ljava/util/concurrent/Executor;)Lr2/m$d;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lp2/f;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/g;",
            "Lr2/l;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lp2/l<",
            "*>;>;ZZ",
            "Lp2/h;",
            "ZZZZ",
            "Lh3/h;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr2/m$d;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    sget-boolean v0, Lr2/m;->h:Z

    if-eqz v0, :cond_0

    sget v0, Ll3/h;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    .line 3
    iget-object v0, v15, Lr2/m;->b:Lm6/e;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lr2/p;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lr2/p;-><init>(Ljava/lang/Object;Lp2/f;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lp2/h;)V

    .line 6
    monitor-enter p0

    move/from16 v12, p14

    .line 7
    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Lr2/m;->c(Lr2/p;ZJ)Lr2/q;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    .line 8
    invoke-virtual/range {v1 .. v23}, Lr2/m;->g(Lcom/bumptech/glide/e;Ljava/lang/Object;Lp2/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lr2/l;Ljava/util/Map;ZZLp2/h;ZZZZLh3/h;Ljava/util/concurrent/Executor;Lr2/p;J)Lr2/m$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v0, Lp2/a;->l:Lp2/a;

    const/4 v2, 0x0

    move-object/from16 v3, p18

    check-cast v3, Lh3/i;

    invoke-virtual {v3, v1, v0, v2}, Lh3/i;->q(Lr2/w;Lp2/a;Z)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Lr2/p;ZJ)Lr2/q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/p;",
            "ZJ)",
            "Lr2/q<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p2, p0, Lr2/m;->g:Lr2/c;

    .line 2
    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v1, p2, Lr2/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 4
    monitor-exit p2

    move-object v2, v0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/q;

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p2, v1}, Lr2/c;->b(Lr2/c$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :cond_2
    monitor-exit p2

    :goto_0
    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Lr2/q;->d()V

    :cond_3
    if-eqz v2, :cond_5

    .line 9
    sget-boolean p2, Lr2/m;->h:Z

    if-eqz p2, :cond_4

    const-string p2, "Loaded resource from active resources"

    .line 10
    invoke-static {p2, p3, p4, p1}, Lr2/m;->d(Ljava/lang/String;JLp2/f;)V

    :cond_4
    return-object v2

    .line 11
    :cond_5
    iget-object p2, p0, Lr2/m;->c:Lt2/h;

    check-cast p2, Lt2/g;

    .line 12
    monitor-enter p2

    .line 13
    :try_start_2
    iget-object v1, p2, Ll3/i;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/i$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_6

    .line 14
    monitor-exit p2

    move-object v1, v0

    goto :goto_1

    .line 15
    :cond_6
    :try_start_3
    iget-wide v2, p2, Ll3/i;->c:J

    iget v4, v1, Ll3/i$a;->b:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p2, Ll3/i;->c:J

    .line 16
    iget-object v1, v1, Ll3/i$a;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p2

    .line 17
    :goto_1
    move-object v3, v1

    check-cast v3, Lr2/w;

    if-nez v3, :cond_7

    move-object v3, v0

    goto :goto_2

    .line 18
    :cond_7
    instance-of p2, v3, Lr2/q;

    if-eqz p2, :cond_8

    .line 19
    check-cast v3, Lr2/q;

    goto :goto_2

    .line 20
    :cond_8
    new-instance p2, Lr2/q;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p2

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lr2/q;-><init>(Lr2/w;ZZLp2/f;Lr2/q$a;)V

    move-object v3, p2

    :goto_2
    if-eqz v3, :cond_9

    .line 21
    invoke-virtual {v3}, Lr2/q;->d()V

    .line 22
    iget-object p2, p0, Lr2/m;->g:Lr2/c;

    invoke-virtual {p2, p1, v3}, Lr2/c;->a(Lp2/f;Lr2/q;)V

    :cond_9
    if-eqz v3, :cond_b

    .line 23
    sget-boolean p2, Lr2/m;->h:Z

    if-eqz p2, :cond_a

    const-string p2, "Loaded resource from cache"

    .line 24
    invoke-static {p2, p3, p4, p1}, Lr2/m;->d(Ljava/lang/String;JLp2/f;)V

    :cond_a
    return-object v3

    :cond_b
    return-object v0

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit p2

    throw p1
.end method

.method public final declared-synchronized e(Lr2/n;Lp2/f;Lr2/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/n<",
            "*>;",
            "Lp2/f;",
            "Lr2/q<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    iget-boolean v0, p3, Lr2/q;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lr2/m;->g:Lr2/c;

    invoke-virtual {v0, p2, p3}, Lr2/c;->a(Lp2/f;Lr2/q;)V

    .line 3
    :cond_0
    iget-object p3, p0, Lr2/m;->a:Lr2/t;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v0, p1, Lr2/n;->w:Z

    .line 5
    invoke-virtual {p3, v0}, Lr2/t;->a(Z)Ljava/util/Map;

    move-result-object p3

    .line 6
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Lr2/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/w<",
            "*>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lr2/q;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lr2/q;

    invoke-virtual {p1}, Lr2/q;->e()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lcom/bumptech/glide/e;Ljava/lang/Object;Lp2/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lr2/l;Ljava/util/Map;ZZLp2/h;ZZZZLh3/h;Ljava/util/concurrent/Executor;Lr2/p;J)Lr2/m$d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lp2/f;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/g;",
            "Lr2/l;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lp2/l<",
            "*>;>;ZZ",
            "Lp2/h;",
            "ZZZZ",
            "Lh3/h;",
            "Ljava/util/concurrent/Executor;",
            "Lr2/p;",
            "J)",
            "Lr2/m$d;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    .line 1
    iget-object v15, v1, Lr2/m;->a:Lr2/t;

    .line 2
    invoke-virtual {v15, v9}, Lr2/t;->a(Z)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr2/n;

    if-eqz v15, :cond_1

    .line 3
    invoke-virtual {v15, v10, v11}, Lr2/n;->a(Lh3/h;Ljava/util/concurrent/Executor;)V

    .line 4
    sget-boolean v0, Lr2/m;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "Added to existing load"

    .line 5
    invoke-static {v0, v13, v14, v12}, Lr2/m;->d(Ljava/lang/String;JLp2/f;)V

    .line 6
    :cond_0
    new-instance v0, Lr2/m$d;

    invoke-direct {v0, v1, v10, v15}, Lr2/m$d;-><init>(Lr2/m;Lh3/h;Lr2/n;)V

    return-object v0

    .line 7
    :cond_1
    iget-object v15, v1, Lr2/m;->d:Lr2/m$b;

    .line 8
    iget-object v15, v15, Lr2/m$b;->g:Lm3/a$c;

    invoke-virtual {v15}, Lm3/a$c;->b()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr2/n;

    const-string v13, "Argument must not be null"

    .line 9
    invoke-static {v15, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    monitor-enter v15

    .line 11
    :try_start_0
    iput-object v12, v15, Lr2/n;->s:Lp2/f;

    move/from16 v13, p14

    .line 12
    iput-boolean v13, v15, Lr2/n;->t:Z

    move/from16 v13, p15

    .line 13
    iput-boolean v13, v15, Lr2/n;->u:Z

    move/from16 v13, p16

    .line 14
    iput-boolean v13, v15, Lr2/n;->v:Z

    .line 15
    iput-boolean v9, v15, Lr2/n;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    monitor-exit v15

    .line 17
    iget-object v13, v1, Lr2/m;->f:Lr2/m$a;

    .line 18
    iget-object v14, v13, Lr2/m$a;->b:Lm3/a$c;

    invoke-virtual {v14}, Lm3/a$c;->b()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr2/j;

    const-string v10, "Argument must not be null"

    .line 19
    invoke-static {v14, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget v10, v13, Lr2/m$a;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, Lr2/m$a;->c:I

    .line 21
    iget-object v11, v14, Lr2/j;->h:Lr2/i;

    iget-object v13, v14, Lr2/j;->k:Lr2/j$d;

    .line 22
    iput-object v0, v11, Lr2/i;->c:Lcom/bumptech/glide/e;

    .line 23
    iput-object v2, v11, Lr2/i;->d:Ljava/lang/Object;

    .line 24
    iput-object v3, v11, Lr2/i;->n:Lp2/f;

    .line 25
    iput v4, v11, Lr2/i;->e:I

    .line 26
    iput v5, v11, Lr2/i;->f:I

    .line 27
    iput-object v7, v11, Lr2/i;->p:Lr2/l;

    move-object/from16 v1, p6

    .line 28
    iput-object v1, v11, Lr2/i;->g:Ljava/lang/Class;

    .line 29
    iput-object v13, v11, Lr2/i;->h:Lr2/j$d;

    move-object/from16 v1, p7

    .line 30
    iput-object v1, v11, Lr2/i;->k:Ljava/lang/Class;

    .line 31
    iput-object v6, v11, Lr2/i;->o:Lcom/bumptech/glide/g;

    .line 32
    iput-object v8, v11, Lr2/i;->i:Lp2/h;

    move-object/from16 v1, p10

    .line 33
    iput-object v1, v11, Lr2/i;->j:Ljava/util/Map;

    move/from16 v1, p11

    .line 34
    iput-boolean v1, v11, Lr2/i;->q:Z

    move/from16 v1, p12

    .line 35
    iput-boolean v1, v11, Lr2/i;->r:Z

    .line 36
    iput-object v0, v14, Lr2/j;->o:Lcom/bumptech/glide/e;

    .line 37
    iput-object v3, v14, Lr2/j;->p:Lp2/f;

    .line 38
    iput-object v6, v14, Lr2/j;->q:Lcom/bumptech/glide/g;

    .line 39
    iput-object v12, v14, Lr2/j;->r:Lr2/p;

    .line 40
    iput v4, v14, Lr2/j;->s:I

    .line 41
    iput v5, v14, Lr2/j;->t:I

    .line 42
    iput-object v7, v14, Lr2/j;->u:Lr2/l;

    .line 43
    iput-boolean v9, v14, Lr2/j;->B:Z

    .line 44
    iput-object v8, v14, Lr2/j;->v:Lp2/h;

    .line 45
    iput-object v15, v14, Lr2/j;->w:Lr2/j$a;

    .line 46
    iput v10, v14, Lr2/j;->x:I

    const/4 v0, 0x1

    .line 47
    iput v0, v14, Lr2/j;->z:I

    .line 48
    iput-object v2, v14, Lr2/j;->C:Ljava/lang/Object;

    move-object/from16 v1, p0

    .line 49
    iget-object v2, v1, Lr2/m;->a:Lr2/t;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-boolean v3, v15, Lr2/n;->w:Z

    .line 51
    invoke-virtual {v2, v3}, Lr2/t;->a(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    .line 52
    invoke-virtual {v15, v2, v3}, Lr2/n;->a(Lh3/h;Ljava/util/concurrent/Executor;)V

    .line 53
    monitor-enter v15

    .line 54
    :try_start_1
    iput-object v14, v15, Lr2/n;->D:Lr2/j;

    .line 55
    invoke-virtual {v14, v0}, Lr2/j;->o(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 56
    iget-object v0, v15, Lr2/n;->n:Lu2/a;

    goto :goto_1

    .line 57
    :cond_4
    iget-boolean v0, v15, Lr2/n;->u:Z

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, v15, Lr2/n;->p:Lu2/a;

    goto :goto_1

    .line 59
    :cond_5
    iget-boolean v0, v15, Lr2/n;->v:Z

    if-eqz v0, :cond_6

    iget-object v0, v15, Lr2/n;->q:Lu2/a;

    goto :goto_1

    :cond_6
    iget-object v0, v15, Lr2/n;->o:Lu2/a;

    .line 60
    :goto_1
    invoke-virtual {v0, v14}, Lu2/a;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit v15

    .line 62
    sget-boolean v0, Lr2/m;->h:Z

    if-eqz v0, :cond_7

    const-string v0, "Started new load"

    move-wide/from16 v3, p21

    .line 63
    invoke-static {v0, v3, v4, v12}, Lr2/m;->d(Ljava/lang/String;JLp2/f;)V

    .line 64
    :cond_7
    new-instance v0, Lr2/m$d;

    invoke-direct {v0, v1, v2, v15}, Lr2/m$d;-><init>(Lr2/m;Lh3/h;Lr2/n;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit v15

    throw v0

    :catchall_1
    move-exception v0

    .line 66
    monitor-exit v15

    throw v0
.end method
