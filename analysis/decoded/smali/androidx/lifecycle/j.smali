.class public final synthetic Landroidx/lifecycle/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/n;


# instance fields
.field public final synthetic h:Landroidx/lifecycle/k;

.field public final synthetic i:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/k;Lkotlinx/coroutines/Job;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/j;->h:Landroidx/lifecycle/k;

    iput-object p2, p0, Landroidx/lifecycle/j;->i:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V
    .locals 4

    iget-object p2, p0, Landroidx/lifecycle/j;->h:Landroidx/lifecycle/k;

    iget-object v0, p0, Landroidx/lifecycle/j;->i:Lkotlinx/coroutines/Job;

    const-string v1, "this$0"

    .line 1
    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$parentJob"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-static {v0, p1, v3, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Landroidx/lifecycle/k;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object p1

    iget-object v0, p2, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/i$c;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_1

    .line 6
    iget-object p1, p2, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/d;

    .line 7
    iput-boolean v3, p1, Landroidx/lifecycle/d;->a:Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p2, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/d;

    .line 9
    iget-boolean p2, p1, Landroidx/lifecycle/d;->a:Z

    if-nez p2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean p2, p1, Landroidx/lifecycle/d;->b:Z

    xor-int/2addr p2, v3

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p1, Landroidx/lifecycle/d;->a:Z

    .line 12
    invoke-virtual {p1}, Landroidx/lifecycle/d;->c()V

    :goto_0
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot resume a finished dispatcher"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
