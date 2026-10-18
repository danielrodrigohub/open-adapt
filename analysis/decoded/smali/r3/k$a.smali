.class public final Lr3/k$a;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/k$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lp4/x$b;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lr3/k$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lr3/k$a;->a:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lr3/k$a;->b:Lp4/x$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILp4/x$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lr3/k$a$a;",
            ">;I",
            "Lp4/x$b;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    iput p2, p0, Lr3/k$a;->a:I

    .line 9
    iput-object p3, p0, Lr3/k$a;->b:Lp4/x$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/k$a$a;

    .line 2
    iget-object v2, v1, Lr3/k$a$a;->b:Lr3/k;

    .line 3
    iget-object v1, v1, Lr3/k$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lz/e;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v4}, Lz/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/k$a$a;

    .line 2
    iget-object v2, v1, Lr3/k$a$a;->b:Lr3/k;

    .line 3
    iget-object v1, v1, Lr3/k$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lr3/f;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lr3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/k$a$a;

    .line 2
    iget-object v2, v1, Lr3/k$a$a;->b:Lr3/k;

    .line 3
    iget-object v1, v1, Lr3/k$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lr3/g;

    invoke-direct {v3, p0, v2}, Lr3/g;-><init>(Lr3/k$a;Lr3/k;)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/k$a$a;

    .line 2
    iget-object v2, v1, Lr3/k$a$a;->b:Lr3/k;

    .line 3
    iget-object v1, v1, Lr3/k$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lr3/i;

    invoke-direct {v3, p0, v2, p1}, Lr3/i;-><init>(Lr3/k$a;Lr3/k;I)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/k$a$a;

    .line 2
    iget-object v2, v1, Lr3/k$a$a;->b:Lr3/k;

    .line 3
    iget-object v1, v1, Lr3/k$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lr3/j;

    invoke-direct {v3, p0, v2, p1}, Lr3/j;-><init>(Lr3/k$a;Lr3/k;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/k$a$a;

    .line 2
    iget-object v2, v1, Lr3/k$a$a;->b:Lr3/k;

    .line 3
    iget-object v1, v1, Lr3/k$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lr3/h;

    invoke-direct {v3, p0, v2}, Lr3/h;-><init>(Lr3/k$a;Lr3/k;)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(ILp4/x$b;)Lr3/k$a;
    .locals 2

    new-instance v0, Lr3/k$a;

    iget-object v1, p0, Lr3/k$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Lr3/k$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILp4/x$b;)V

    return-object v0
.end method
