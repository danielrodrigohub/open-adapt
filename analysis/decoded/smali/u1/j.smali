.class public final Lu1/j;
.super Ljava/lang/Object;
.source "StartWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public h:Ll1/k;

.field public i:Ljava/lang/String;

.field public j:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Ll1/k;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu1/j;->h:Ll1/k;

    .line 3
    iput-object p2, p0, Lu1/j;->i:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lu1/j;->j:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu1/j;->h:Ll1/k;

    .line 2
    iget-object v0, v0, Ll1/k;->f:Ll1/d;

    .line 3
    iget-object v1, p0, Lu1/j;->i:Ljava/lang/String;

    iget-object v2, p0, Lu1/j;->j:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Ll1/d;->g(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
