.class public abstract Lld/c;
.super Lld/a;
.source "ContinuationImpl.kt"


# instance fields
.field private final _context:Ljd/f;

.field private transient intercepted:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljd/d;->getContext()Ljd/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lld/c;-><init>(Ljd/d;Ljd/f;)V

    return-void
.end method

.method public constructor <init>(Ljd/d;Ljd/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljd/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lld/a;-><init>(Ljd/d;)V

    .line 2
    iput-object p2, p0, Lld/c;->_context:Ljd/f;

    return-void
.end method


# virtual methods
.method public getContext()Ljd/f;
    .locals 1

    iget-object v0, p0, Lld/c;->_context:Ljd/f;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Ljd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljd/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lld/c;->intercepted:Ljd/d;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lld/c;->getContext()Ljd/f;

    move-result-object v0

    sget v1, Ljd/e;->d:I

    sget-object v1, Ljd/e$a;->h:Ljd/e$a;

    invoke-interface {v0, v1}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object v0

    check-cast v0, Ljd/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljd/e;->interceptContinuation(Ljd/d;)Ljd/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 3
    :cond_1
    iput-object v0, p0, Lld/c;->intercepted:Ljd/d;

    :cond_2
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lld/c;->intercepted:Ljd/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lld/c;->getContext()Ljd/f;

    move-result-object v1

    sget v2, Ljd/e;->d:I

    sget-object v2, Ljd/e$a;->h:Ljd/e$a;

    invoke-interface {v1, v2}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object v1

    invoke-static {v1}, Lp4/h;->g(Ljava/lang/Object;)V

    check-cast v1, Ljd/e;

    invoke-interface {v1, v0}, Ljd/e;->releaseInterceptedContinuation(Ljd/d;)V

    .line 3
    :cond_0
    sget-object v0, Lld/b;->h:Lld/b;

    iput-object v0, p0, Lld/c;->intercepted:Ljd/d;

    return-void
.end method
