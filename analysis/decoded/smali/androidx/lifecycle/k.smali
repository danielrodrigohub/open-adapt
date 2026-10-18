.class public final Landroidx/lifecycle/k;
.super Ljava/lang/Object;
.source "LifecycleController.kt"


# instance fields
.field public final a:Landroidx/lifecycle/i;

.field public final b:Landroidx/lifecycle/i$c;

.field public final c:Landroidx/lifecycle/d;

.field public final d:Landroidx/lifecycle/j;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i;Landroidx/lifecycle/i$c;Landroidx/lifecycle/d;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchQueue"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/i;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/i$c;

    .line 4
    iput-object p3, p0, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/d;

    .line 5
    new-instance p2, Landroidx/lifecycle/j;

    invoke-direct {p2, p0, p4}, Landroidx/lifecycle/j;-><init>(Landroidx/lifecycle/k;Lkotlinx/coroutines/Job;)V

    iput-object p2, p0, Landroidx/lifecycle/k;->d:Landroidx/lifecycle/j;

    .line 6
    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object p3

    sget-object v0, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    if-ne p3, v0, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 7
    invoke-static {p4, p2, p1, p2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroidx/lifecycle/k;->a()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/p;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/i;

    iget-object v1, p0, Landroidx/lifecycle/k;->d:Landroidx/lifecycle/j;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/p;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/d;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroidx/lifecycle/d;->b:Z

    .line 4
    invoke-virtual {v0}, Landroidx/lifecycle/d;->c()V

    return-void
.end method
