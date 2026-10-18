.class public abstract Lya/h0;
.super Ljava/lang/Object;
.source "BigfootCommand.kt"

# interfaces
.implements Lnc/a;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnc/a<",
        "TResponse;>;",
        "Ljava/lang/Comparable<",
        "Lya/h0<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final i:J

.field public final j:J

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lya/h0;->h:Ljava/util/concurrent/CompletableFuture;

    const-wide/16 v0, 0x14

    .line 3
    iput-wide v0, p0, Lya/h0;->i:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lya/h0;->j:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lya/h0;

    invoke-virtual {p0, p1}, Lya/h0;->l(Lya/h0;)I

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lya/h0;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lya/h0;->k:Z

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    invoke-virtual {p0}, Lya/h0;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " response: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "BigfootCommand"

    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Lya/h0;->w(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lya/h0;->h:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lya/h0;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lya/h0;->k:Z

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lya/h0;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, " error: "

    const-string v5, " message: "

    .line 5
    invoke-static {v0, v4, v2, v5, v3}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "BigfootCommand"

    .line 6
    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p1}, Lya/h0;->m(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lya/h0;->s(Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lya/h0;->h:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final l(Lya/h0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/h0<",
            "*>;)I"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lya/h0;->u()I

    move-result v0

    .line 2
    invoke-static {v0}, Landroidx/appcompat/widget/e0;->a(I)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lya/h0;->u()I

    move-result p1

    .line 4
    invoke-static {p1}, Landroidx/appcompat/widget/e0;->a(I)I

    move-result p1

    .line 5
    invoke-static {v0, p1}, Lp4/h;->l(II)I

    move-result p1

    return p1
.end method

.method public abstract m(Ljava/lang/Throwable;)Z
.end method

.method public abstract n()Lv9/a;
.end method

.method public abstract o()Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lya/h0;->i:J

    return-wide v0
.end method

.method public abstract s(Ljava/lang/Throwable;)V
.end method

.method public final t()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lya/h0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lya/h0;->n()Lv9/a;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " identityHash: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public abstract w(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)V"
        }
    .end annotation
.end method
