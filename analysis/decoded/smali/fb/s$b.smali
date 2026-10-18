.class public final Lfb/s$b;
.super Lrd/o;
.source "SessionDownload.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfb/s;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lfb/s;


# direct methods
.method public constructor <init>(Lfb/s;)V
    .locals 0

    iput-object p1, p0, Lfb/s$b;->h:Lfb/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lfb/s$b;->h:Lfb/s;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lfb/s;->l:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lfb/s$b;->h:Lfb/s;

    .line 4
    iget-boolean v2, v1, Lfb/s;->k:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 5
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 6
    sget-object v3, Lz9/a;->j:Lz9/a;

    new-instance v4, Lfb/v;

    invoke-direct {v4, v1, v2}, Lfb/v;-><init>(Lfb/s;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v4}, Lz9/a;->b(Lqd/a;)V

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lfb/s$b;->h:Lfb/s;

    .line 9
    iget-object v1, v1, Lfb/s;->e:Lfb/r$b;

    .line 10
    iget-wide v1, v1, Lfb/r$b;->h:J

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "sessionTransferComplete(clearTransfer)"

    .line 12
    new-instance v2, Lfb/a0;

    invoke-direct {v2, v1}, Lfb/a0;-><init>(Lfb/s;)V

    invoke-virtual {v1, v0, v2}, Lfb/s;->e(Ljava/lang/String;Lqd/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Lfb/s$b;->h:Lfb/s;

    .line 15
    iget-object v1, v1, Lfb/s;->j:Lfb/y;

    .line 16
    invoke-virtual {v1, v0}, Lfb/y;->d(Ljava/lang/Throwable;)V

    .line 17
    :cond_1
    :goto_1
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
