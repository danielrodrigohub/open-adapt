.class public final Lya/a0;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;

.field public final synthetic i:Lya/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lya/h0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lya/d;Lya/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/d;",
            "Lya/h0<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/a0;->h:Lya/d;

    iput-object p2, p0, Lya/a0;->i:Lya/h0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lya/a0;->h:Lya/d;

    iget-object v1, p0, Lya/a0;->i:Lya/h0;

    .line 2
    iput-object v1, v0, Lya/d;->w:Lya/h0;

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lya/a0;->i:Lya/h0;

    invoke-virtual {v0}, Lya/h0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".start "

    .line 5
    invoke-static {v0, v3, v1}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "THREAD_WATCH_CMD"

    .line 6
    invoke-static/range {v2 .. v7}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lya/a0;->i:Lya/h0;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 9
    :try_start_0
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    const-string v4, "QUEUE_BIGFOOT"

    .line 10
    invoke-virtual {v0}, Lya/h0;->t()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pre-Command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 11
    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v0, Lya/h0;->k:Z

    .line 13
    invoke-virtual {v0}, Lya/h0;->o()Lqd/a;

    move-result-object v3

    invoke-interface {v3}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 14
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v4

    const-string v5, "QUEUE_BIGFOOT"

    .line 15
    invoke-virtual {v0}, Lya/h0;->t()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Post-Command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 16
    invoke-static/range {v4 .. v9}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 17
    invoke-virtual {v0, v3}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 18
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 19
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v5

    .line 20
    iget-object v0, p0, Lya/a0;->i:Lya/h0;

    invoke-virtual {v0}, Lya/h0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".end "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " duration: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "THREAD_WATCH_CMD"

    .line 21
    invoke-static/range {v5 .. v10}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
