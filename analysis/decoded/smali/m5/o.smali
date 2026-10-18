.class public final Lm5/o;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/o$c;,
        Lm5/o$b;,
        Lm5/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lm5/c;

.field public final b:Lm5/l;

.field public final c:Lm5/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/o$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lm5/o$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lm5/c;Lm5/o$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lm5/o$c<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lm5/c;",
            "Lm5/o$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lm5/o;->a:Lm5/c;

    .line 3
    iput-object p1, p0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    iput-object p4, p0, Lm5/o;->c:Lm5/o$b;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lm5/o;->e:Ljava/util/ArrayDeque;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lm5/o;->f:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Lm5/m;

    invoke-direct {p1, p0}, Lm5/m;-><init>(Lm5/o;)V

    invoke-interface {p3, p2, p1}, Lm5/c;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lm5/l;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lm5/o;->b:Lm5/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/o;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm5/o;->b:Lm5/l;

    const/4 v1, 0x0

    invoke-interface {v0}, Lm5/l;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lm5/o;->b:Lm5/l;

    invoke-interface {v0, v1}, Lm5/l;->j(I)Lm5/l$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lm5/l;->f(Lm5/l$a;)Z

    .line 4
    :cond_1
    iget-object v0, p0, Lm5/o;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v1, p0, Lm5/o;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lm5/o;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v1, p0, Lm5/o;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lm5/o;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lm5/o;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 9
    iget-object v0, p0, Lm5/o;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b(ILm5/o$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lm5/o$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lm5/o;->f:Ljava/util/ArrayDeque;

    new-instance v2, Lm5/n;

    invoke-direct {v2, v0, p1, p2}, Lm5/n;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILm5/o$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/o$c;

    .line 2
    iget-object v3, p0, Lm5/o;->c:Lm5/o$b;

    .line 3
    iput-boolean v2, v1, Lm5/o$c;->d:Z

    .line 4
    iget-boolean v2, v1, Lm5/o$c;->c:Z

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v1, Lm5/o$c;->a:Ljava/lang/Object;

    iget-object v1, v1, Lm5/o$c;->b:Lm5/j$a;

    invoke-virtual {v1}, Lm5/j$a;->b()Lm5/j;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lm5/o$b;->a(Ljava/lang/Object;Lm5/j;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 7
    iput-boolean v2, p0, Lm5/o;->g:Z

    return-void
.end method

.method public final d(ILm5/o$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lm5/o$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lm5/o;->b(ILm5/o$a;)V

    .line 2
    invoke-virtual {p0}, Lm5/o;->a()V

    return-void
.end method
