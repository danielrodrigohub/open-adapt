.class public final Lfb/s;
.super Ljava/lang/Object;
.source "SessionDownload.kt"

# interfaces
.implements Lfb/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfb/s$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lla/b;

.field public final d:Lhc/l0;

.field public e:Lfb/r$b;

.field public final f:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lya/h0<",
            "*>;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/io/File;

.field public final i:Ljava/lang/Object;

.field public final j:Lfb/y;

.field public k:Z

.field public l:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lla/b;Lhc/l0;Lqd/l;Lqd/l;Lfb/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lla/b;",
            "Lhc/l0;",
            "Lfb/r$b;",
            "Lqd/l<",
            "-",
            "Lya/h0<",
            "*>;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lfb/c0<",
            "Lla/a;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lfb/r$b;->j:Lfb/r$b;

    const-string v1, "sessionId"

    invoke-static {p3, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfb/s;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lfb/s;->c:Lla/b;

    .line 4
    iput-object p4, p0, Lfb/s;->d:Lhc/l0;

    .line 5
    iput-object v0, p0, Lfb/s;->e:Lfb/r$b;

    .line 6
    iput-object p5, p0, Lfb/s;->f:Lqd/l;

    .line 7
    iput-object p6, p0, Lfb/s;->g:Lqd/l;

    .line 8
    sget-object p4, Lfb/r$a;->a:Lfb/r$a;

    .line 9
    new-instance p5, Ljava/io/File;

    .line 10
    invoke-virtual {p4, p1}, Lfb/r$a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 11
    iget p4, p3, Lla/b;->h:I

    .line 12
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p5, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 17
    invoke-virtual {p5}, Ljava/io/File;->createNewFile()Z

    .line 18
    :cond_0
    iput-object p5, p0, Lfb/s;->h:Ljava/io/File;

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb/s;->i:Ljava/lang/Object;

    .line 20
    new-instance p1, Lfb/y;

    invoke-direct {p1, p7, p0}, Lfb/y;-><init>(Lfb/c0;Lfb/s;)V

    .line 21
    check-cast p7, Lya/d$m0;

    .line 22
    iput-object p3, p7, Lya/d$m0;->a:Lla/b;

    .line 23
    iput-object p1, p0, Lfb/s;->j:Lfb/y;

    return-void
.end method

.method public static final a(Lfb/s;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfb/s;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfb/s;->h:Ljava/io/File;

    const-string v1, "<this>"

    .line 2
    invoke-static {p0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    :try_start_2
    invoke-static {v1, p0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v1, p0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 6
    monitor-exit v0

    throw p0
.end method

.method public static final b(Lfb/s;Lmc/b0;Ljava/util/concurrent/CompletableFuture;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lfb/s;->g()[B

    move-result-object v0

    .line 2
    array-length v1, v0

    int-to-float v4, v1

    .line 3
    iget v1, p1, Lmc/b0;->c:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    .line 4
    iget-object v2, p0, Lfb/s;->e:Lfb/r$b;

    .line 5
    iget v2, v2, Lfb/r$b;->i:I

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    float-to-int v1, v1

    move v5, v1

    .line 6
    :goto_0
    sget-object v1, Lla/c;->n:Lla/c$a;

    invoke-virtual {p0}, Lfb/s;->g()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, p1, v2}, Lla/c$a;->a(Lmc/b0;I)Lla/c;

    move-result-object v6

    const/4 v1, 0x1

    if-ge v5, v1, :cond_3

    .line 7
    iget v2, p1, Lmc/b0;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 8
    iput-boolean v4, p0, Lfb/s;->k:Z

    .line 9
    iget-object v1, p0, Lfb/s;->j:Lfb/y;

    invoke-virtual {v1, v6}, Lfb/y;->c(Lla/c;)V

    .line 10
    iget-object p0, p0, Lfb/s;->j:Lfb/y;

    new-instance v1, Lfd/e;

    invoke-direct {v1, p1, v0}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lfb/y;->a(Lfd/e;)V

    .line 11
    sget-object p0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_2
    sget-object p0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_3
    new-instance v0, Lfb/x;

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lfb/x;-><init>(Lfb/s;FILla/c;Lmc/b0;Ljava/util/concurrent/CompletableFuture;)V

    const-string p1, "sessionTransferData"

    invoke-virtual {p0, p1, v0}, Lfb/s;->e(Ljava/lang/String;Lqd/l;)V

    :goto_2
    return-void
.end method

.method public static final c(Lfb/s;Lmc/b0;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p0, p1, Lmc/b0;->e:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final d()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lfb/s;->j(Z)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lfb/s;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lfb/s;->h:Ljava/io/File;

    new-array v3, v0, [B

    invoke-static {v2, v3}, Lc3/d;->s(Ljava/io/File;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return v0
.end method

.method public final e(Ljava/lang/String;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lqd/l<",
            "-",
            "Lfb/s$a;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lfb/s;->f:Lqd/l;

    new-instance v1, Lfb/s$a;

    invoke-direct {v1, p0, p1, p2}, Lfb/s$a;-><init>(Lfb/s;Ljava/lang/String;Lqd/l;)V

    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f()Lfb/r$b;
    .locals 1

    iget-object v0, p0, Lfb/s;->e:Lfb/r$b;

    return-object v0
.end method

.method public final g()[B
    .locals 2

    iget-object v0, p0, Lfb/s;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfb/s;->h:Ljava/io/File;

    invoke-static {v1}, Lc3/d;->n(Ljava/io/File;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final h()V
    .locals 1

    sget-object v0, Lfb/r$b;->k:Lfb/r$b;

    iput-object v0, p0, Lfb/s;->e:Lfb/r$b;

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfb/s;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lfb/s;->k:Z

    .line 3
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lfb/s$b;

    invoke-direct {v1, p0}, Lfb/s$b;-><init>(Lfb/s;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_0
    return-void
.end method

.method public final j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfb/s;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lfb/s$c;

    invoke-direct {p1, p0}, Lfb/s$c;-><init>(Lfb/s;)V

    const-string v0, "sessionCancelFirmware"

    invoke-virtual {p0, v0, p1}, Lfb/s;->e(Ljava/lang/String;Lqd/l;)V

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lfb/s;->k:Z

    return-void
.end method
