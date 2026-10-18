.class public final Lu1/m$b;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lv1/c;

.field public final synthetic i:Lu1/m;


# direct methods
.method public constructor <init>(Lu1/m;Lv1/c;)V
    .locals 0

    iput-object p1, p0, Lu1/m$b;->i:Lu1/m;

    iput-object p2, p0, Lu1/m$b;->h:Lv1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lu1/m$b;->h:Lv1/c;

    invoke-virtual {v0}, Lv1/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lk1/f;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v5, :cond_0

    .line 2
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v2

    sget-object v3, Lu1/m;->n:Ljava/lang/String;

    const-string v4, "Updating notification for %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lu1/m$b;->i:Lu1/m;

    iget-object v7, v7, Lu1/m;->j:Lt1/o;

    iget-object v7, v7, Lt1/o;->c:Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v0}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lu1/m$b;->i:Lu1/m;

    iget-object v2, v0, Lu1/m;->k:Landroidx/work/ListenableWorker;

    .line 4
    iput-boolean v1, v2, Landroidx/work/ListenableWorker;->l:Z

    .line 5
    iget-object v7, v0, Lu1/m;->h:Lv1/c;

    iget-object v1, v0, Lu1/m;->l:Lk1/g;

    iget-object v6, v0, Lu1/m;->i:Landroid/content/Context;

    .line 6
    iget-object v0, v2, Landroidx/work/ListenableWorker;->i:Landroidx/work/WorkerParameters;

    .line 7
    iget-object v4, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 8
    move-object v2, v1

    check-cast v2, Lu1/o;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lv1/c;

    invoke-direct {v0}, Lv1/c;-><init>()V

    .line 10
    iget-object v8, v2, Lu1/o;->a:Lw1/a;

    new-instance v9, Lu1/n;

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lu1/n;-><init>(Lu1/o;Lv1/c;Ljava/util/UUID;Lk1/f;Landroid/content/Context;)V

    check-cast v8, Lw1/b;

    invoke-virtual {v8, v9}, Lw1/b;->a(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v7, v0}, Lv1/c;->l(Lx6/a;)Z

    goto :goto_0

    :cond_0
    const-string v2, "Worker was marked important (%s) but did not provide ForegroundInfo"

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    iget-object v3, p0, Lu1/m$b;->i:Lu1/m;

    iget-object v3, v3, Lu1/m;->j:Lt1/o;

    iget-object v3, v3, Lt1/o;->c:Ljava/lang/String;

    aput-object v3, v1, v0

    .line 13
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lu1/m$b;->i:Lu1/m;

    iget-object v1, v1, Lu1/m;->h:Lv1/c;

    invoke-virtual {v1, v0}, Lv1/c;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
