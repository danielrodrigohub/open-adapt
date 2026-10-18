.class public final Lr2/n$a;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final h:Lh3/h;

.field public final synthetic i:Lr2/n;


# direct methods
.method public constructor <init>(Lr2/n;Lh3/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr2/n$a;->i:Lr2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr2/n$a;->h:Lh3/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lr2/n$a;->h:Lh3/h;

    check-cast v0, Lh3/i;

    .line 2
    iget-object v1, v0, Lh3/i;->b:Lm3/d$a;

    invoke-virtual {v1}, Lm3/d$a;->a()V

    .line 3
    iget-object v0, v0, Lh3/i;->c:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lr2/n$a;->i:Lr2/n;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v2, p0, Lr2/n$a;->i:Lr2/n;

    iget-object v2, v2, Lr2/n;->h:Lr2/n$e;

    iget-object v3, p0, Lr2/n$a;->h:Lh3/h;

    .line 7
    iget-object v2, v2, Lr2/n$e;->h:Ljava/util/List;

    .line 8
    new-instance v4, Lr2/n$d;

    sget-object v5, Ll3/e;->b:Ll3/e$b;

    invoke-direct {v4, v3, v5}, Lr2/n$d;-><init>(Lh3/h;Ljava/util/concurrent/Executor;)V

    .line 9
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lr2/n$a;->i:Lr2/n;

    iget-object v3, p0, Lr2/n$a;->h:Lh3/h;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v2, v2, Lr2/n;->A:Lr2/r;

    check-cast v3, Lh3/i;

    const/4 v4, 0x5

    .line 12
    invoke-virtual {v3, v2, v4}, Lh3/i;->o(Lr2/r;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 13
    :try_start_3
    new-instance v3, Lr2/d;

    invoke-direct {v3, v2}, Lr2/d;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 14
    :cond_0
    :goto_0
    iget-object v2, p0, Lr2/n$a;->i:Lr2/n;

    invoke-virtual {v2}, Lr2/n;->c()V

    .line 15
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    .line 17
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :catchall_2
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
