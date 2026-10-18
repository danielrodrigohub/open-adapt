.class public final Lw1/b;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Lw1/a;


# instance fields
.field public final a:Lu1/i;

.field public final b:Landroid/os/Handler;

.field public final c:Lw1/b$a;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lw1/b;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Lw1/b$a;

    invoke-direct {v0, p0}, Lw1/b$a;-><init>(Lw1/b;)V

    iput-object v0, p0, Lw1/b;->c:Lw1/b$a;

    .line 4
    new-instance v0, Lu1/i;

    invoke-direct {v0, p1}, Lu1/i;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lw1/b;->a:Lu1/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lw1/b;->a:Lu1/i;

    invoke-virtual {v0, p1}, Lu1/i;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
