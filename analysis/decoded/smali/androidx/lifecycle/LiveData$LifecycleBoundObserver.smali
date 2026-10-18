.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$c;
.source "LiveData.java"

# interfaces
.implements Landroidx/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.c;",
        "Landroidx/lifecycle/n;"
    }
.end annotation


# instance fields
.field public final l:Landroidx/lifecycle/q;

.field public final synthetic m:Landroidx/lifecycle/LiveData;


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->l:Landroidx/lifecycle/q;

    invoke-interface {p1}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object p1

    .line 2
    sget-object p2, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->m:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$c;->h:Landroidx/lifecycle/w;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->g(Landroidx/lifecycle/w;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    .line 4
    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->l:Landroidx/lifecycle/q;

    invoke-interface {p2}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object p2

    sget-object v0, Landroidx/lifecycle/i$c;->k:Landroidx/lifecycle/i$c;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/i$c;->b(Landroidx/lifecycle/i$c;)Z

    move-result p2

    .line 5
    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$c;->b(Z)V

    .line 6
    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->l:Landroidx/lifecycle/q;

    invoke-interface {p2}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object p2

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->l:Landroidx/lifecycle/q;

    invoke-interface {v0}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->l:Landroidx/lifecycle/q;

    invoke-interface {v0}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/i$c;->k:Landroidx/lifecycle/i$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i$c;->b(Landroidx/lifecycle/i$c;)Z

    move-result v0

    return v0
.end method
