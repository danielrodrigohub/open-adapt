.class public final Lu1/n;
.super Ljava/lang/Object;
.source "WorkForegroundUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lv1/c;

.field public final synthetic i:Ljava/util/UUID;

.field public final synthetic j:Lk1/f;

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Lu1/o;


# direct methods
.method public constructor <init>(Lu1/o;Lv1/c;Ljava/util/UUID;Lk1/f;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lu1/n;->l:Lu1/o;

    iput-object p2, p0, Lu1/n;->h:Lv1/c;

    iput-object p3, p0, Lu1/n;->i:Ljava/util/UUID;

    iput-object p4, p0, Lu1/n;->j:Lk1/f;

    iput-object p5, p0, Lu1/n;->k:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lu1/n;->h:Lv1/c;

    .line 2
    iget-object v0, v0, Lv1/a;->h:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Lv1/a$b;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lu1/n;->i:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lu1/n;->l:Lu1/o;

    iget-object v1, v1, Lu1/o;->c:Lt1/p;

    check-cast v1, Lt1/q;

    invoke-virtual {v1, v0}, Lt1/q;->f(Ljava/lang/String;)Lk1/p;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lk1/p;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lu1/n;->l:Lu1/o;

    iget-object v1, v1, Lu1/o;->b:Ls1/a;

    iget-object v2, p0, Lu1/n;->j:Lk1/f;

    check-cast v1, Ll1/d;

    invoke-virtual {v1, v0, v2}, Ll1/d;->f(Ljava/lang/String;Lk1/f;)V

    .line 8
    iget-object v1, p0, Lu1/n;->k:Landroid/content/Context;

    iget-object v2, p0, Lu1/n;->j:Lk1/f;

    invoke-static {v1, v0, v2}, Landroidx/work/impl/foreground/a;->b(Landroid/content/Context;Ljava/lang/String;Lk1/f;)Landroid/content/Intent;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lu1/n;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lu1/n;->h:Lv1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv1/c;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lu1/n;->h:Lv1/c;

    invoke-virtual {v1, v0}, Lv1/c;->k(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
