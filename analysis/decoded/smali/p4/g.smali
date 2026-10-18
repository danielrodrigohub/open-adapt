.class public abstract Lp4/g;
.super Lp4/a;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/g$a;,
        Lp4/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp4/a;"
    }
.end annotation


# instance fields
.field public final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lp4/g$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public p:Landroid/os/Handler;

.field public q:Ll5/j0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp4/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp4/g;->o:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Lp4/x;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp4/x;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/g;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 2
    new-instance v0, Lp4/f;

    invoke-direct {v0, p0, p1}, Lp4/f;-><init>(Lp4/g;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lp4/g$a;

    invoke-direct {v1, p0, p1}, Lp4/g$a;-><init>(Lp4/g;Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lp4/g;->o:Ljava/util/HashMap;

    new-instance v3, Lp4/g$b;

    invoke-direct {v3, p2, v0, v1}, Lp4/g$b;-><init>(Lp4/x;Lp4/x$c;Lp4/g$a;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lp4/g;->p:Landroid/os/Handler;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p2, p1, v1}, Lp4/x;->f(Landroid/os/Handler;Lp4/e0;)V

    .line 8
    iget-object p1, p0, Lp4/g;->p:Landroid/os/Handler;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p2, p1, v1}, Lp4/x;->p(Landroid/os/Handler;Lr3/k;)V

    .line 11
    iget-object p1, p0, Lp4/g;->q:Ll5/j0;

    .line 12
    iget-object v1, p0, Lp4/a;->n:Lo3/v0;

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p2, v0, p1, v1}, Lp4/x;->c(Lp4/x$c;Ll5/j0;Lo3/v0;)V

    .line 14
    iget-object p1, p0, Lp4/a;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 15
    invoke-interface {p2, v0}, Lp4/x;->l(Lp4/x$c;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/g;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/g$b;

    .line 2
    iget-object v1, v1, Lp4/g$b;->a:Lp4/x;

    invoke-interface {v1}, Lp4/x;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/g;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/g$b;

    .line 2
    iget-object v2, v1, Lp4/g$b;->a:Lp4/x;

    iget-object v1, v1, Lp4/g$b;->b:Lp4/x$c;

    invoke-interface {v2, v1}, Lp4/x;->l(Lp4/x$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/g;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/g$b;

    .line 2
    iget-object v2, v1, Lp4/g$b;->a:Lp4/x;

    iget-object v1, v1, Lp4/g$b;->b:Lp4/x$c;

    invoke-interface {v2, v1}, Lp4/x;->o(Lp4/x$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Ll5/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/g;->q:Ll5/j0;

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lp4/g;->p:Landroid/os/Handler;

    return-void
.end method

.method public x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/g;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/g$b;

    .line 2
    iget-object v2, v1, Lp4/g$b;->a:Lp4/x;

    iget-object v3, v1, Lp4/g$b;->b:Lp4/x$c;

    invoke-interface {v2, v3}, Lp4/x;->g(Lp4/x$c;)V

    .line 3
    iget-object v2, v1, Lp4/g$b;->a:Lp4/x;

    iget-object v3, v1, Lp4/g$b;->c:Lp4/g$a;

    invoke-interface {v2, v3}, Lp4/x;->j(Lp4/e0;)V

    .line 4
    iget-object v2, v1, Lp4/g$b;->a:Lp4/x;

    iget-object v1, v1, Lp4/g$b;->c:Lp4/g$a;

    invoke-interface {v2, v1}, Lp4/x;->n(Lr3/k;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lp4/g;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public y(Ljava/lang/Object;Lp4/x$b;)Lp4/x$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp4/x$b;",
            ")",
            "Lp4/x$b;"
        }
    .end annotation

    return-object p2
.end method

.method public abstract z(Ljava/lang/Object;Lp4/x;Ln3/b2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp4/x;",
            "Ln3/b2;",
            ")V"
        }
    .end annotation
.end method
