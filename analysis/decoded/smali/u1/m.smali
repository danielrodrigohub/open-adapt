.class public final Lu1/m;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final n:Ljava/lang/String;


# instance fields
.field public final h:Lv1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/content/Context;

.field public final j:Lt1/o;

.field public final k:Landroidx/work/ListenableWorker;

.field public final l:Lk1/g;

.field public final m:Lw1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu1/m;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lt1/o;Landroidx/work/ListenableWorker;Lk1/g;Lw1/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv1/c;

    invoke-direct {v0}, Lv1/c;-><init>()V

    .line 3
    iput-object v0, p0, Lu1/m;->h:Lv1/c;

    .line 4
    iput-object p1, p0, Lu1/m;->i:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lu1/m;->j:Lt1/o;

    .line 6
    iput-object p3, p0, Lu1/m;->k:Landroidx/work/ListenableWorker;

    .line 7
    iput-object p4, p0, Lu1/m;->l:Lk1/g;

    .line 8
    iput-object p5, p0, Lu1/m;->m:Lw1/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu1/m;->j:Lt1/o;

    iget-boolean v0, v0, Lt1/o;->q:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lf0/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lv1/c;

    invoke-direct {v0}, Lv1/c;-><init>()V

    .line 3
    iget-object v1, p0, Lu1/m;->m:Lw1/a;

    check-cast v1, Lw1/b;

    .line 4
    iget-object v1, v1, Lw1/b;->c:Lw1/b$a;

    .line 5
    new-instance v2, Lu1/m$a;

    invoke-direct {v2, p0, v0}, Lu1/m$a;-><init>(Lu1/m;Lv1/c;)V

    invoke-virtual {v1, v2}, Lw1/b$a;->execute(Ljava/lang/Runnable;)V

    .line 6
    new-instance v1, Lu1/m$b;

    invoke-direct {v1, p0, v0}, Lu1/m$b;-><init>(Lu1/m;Lv1/c;)V

    iget-object v2, p0, Lu1/m;->m:Lw1/a;

    .line 7
    check-cast v2, Lw1/b;

    .line 8
    iget-object v2, v2, Lw1/b;->c:Lw1/b$a;

    .line 9
    invoke-virtual {v0, v1, v2}, Lv1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lu1/m;->h:Lv1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv1/c;->j(Ljava/lang/Object;)Z

    return-void
.end method
