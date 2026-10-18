.class public final Ll1/l;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lx6/a;

.field public final synthetic i:Lv1/c;

.field public final synthetic j:Ll1/n;


# direct methods
.method public constructor <init>(Ll1/n;Lx6/a;Lv1/c;)V
    .locals 0

    iput-object p1, p0, Ll1/l;->j:Ll1/n;

    iput-object p2, p0, Ll1/l;->h:Lx6/a;

    iput-object p3, p0, Ll1/l;->i:Lv1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Ll1/l;->h:Lx6/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 2
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Ll1/n;->A:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ll1/l;->j:Ll1/n;

    iget-object v4, v4, Ll1/n;->l:Lt1/o;

    iget-object v4, v4, Lt1/o;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Ll1/l;->j:Ll1/n;

    iget-object v1, v0, Ll1/n;->m:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->f()Lx6/a;

    move-result-object v1

    iput-object v1, v0, Ll1/n;->y:Lx6/a;

    .line 6
    iget-object v0, p0, Ll1/l;->i:Lv1/c;

    iget-object v1, p0, Ll1/l;->j:Ll1/n;

    iget-object v1, v1, Ll1/n;->y:Lx6/a;

    invoke-virtual {v0, v1}, Lv1/c;->l(Lx6/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Ll1/l;->i:Lv1/c;

    invoke-virtual {v1, v0}, Lv1/c;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
