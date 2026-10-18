.class public abstract Lp8/b;
.super Lp8/r;
.source "AdaptPairFragment.kt"


# instance fields
.field public final e0:Lt9/a;

.field public final f0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public final g0:Lp8/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "[",
            "Ljava/lang/String;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/r;-><init>()V

    .line 2
    new-instance v0, Lt9/a;

    invoke-direct {v0}, Lt9/a;-><init>()V

    iput-object v0, p0, Lp8/b;->e0:Lt9/a;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp8/b;->f0:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lp8/b$a;

    invoke-direct {v0, p0}, Lp8/b$a;-><init>(Lp8/b;)V

    iput-object v0, p0, Lp8/b;->g0:Lp8/b$a;

    return-void
.end method


# virtual methods
.method public S()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/r;->S()V

    .line 2
    invoke-virtual {p0}, Lp8/b;->t0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lm6/e;->d(Ljava/util/List;)V

    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp8/b;->t0()Ljava/util/List;

    move-result-object v0

    const-string v1, "errorDisplays"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu8/g;

    .line 4
    invoke-virtual {v1}, Lu8/g;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Lp8/h;->T()V

    return-void
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lp8/b;->t0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lm6/e;->c(Ljava/util/List;Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    return-void
.end method

.method public t0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp8/b;->f0:Ljava/util/ArrayList;

    return-object v0
.end method
