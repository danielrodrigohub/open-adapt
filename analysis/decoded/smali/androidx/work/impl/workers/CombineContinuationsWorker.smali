.class public Landroidx/work/impl/workers/CombineContinuationsWorker;
.super Landroidx/work/Worker;
.source "CombineContinuationsWorker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final h()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/ListenableWorker;->i:Landroidx/work/WorkerParameters;

    .line 2
    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Landroidx/work/b;

    .line 3
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1, v0}, Landroidx/work/ListenableWorker$a$c;-><init>(Landroidx/work/b;)V

    return-object v1
.end method
