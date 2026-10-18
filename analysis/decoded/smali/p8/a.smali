.class public abstract Lp8/a;
.super Lp8/q;
.source "AdaptPairActivity.kt"


# instance fields
.field public final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Lt9/a;

.field public final G:Lt9/b;

.field public final H:Lp8/a$a;
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
    invoke-direct {p0}, Lp8/q;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp8/a;->E:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lt9/a;

    invoke-direct {v0}, Lt9/a;-><init>()V

    iput-object v0, p0, Lp8/a;->F:Lt9/a;

    .line 4
    new-instance v0, Lt9/b;

    invoke-direct {v0}, Lt9/b;-><init>()V

    iput-object v0, p0, Lp8/a;->G:Lt9/b;

    .line 5
    new-instance v0, Lp8/a$a;

    invoke-direct {v0, p0}, Lp8/a$a;-><init>(Lp8/a;)V

    iput-object v0, p0, Lp8/a;->H:Lp8/a$a;

    return-void
.end method


# virtual methods
.method public o0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp8/a;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lp8/a;->o0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lm6/e;->c(Ljava/util/List;Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/q;->onStart()V

    .line 2
    invoke-virtual {p0}, Lp8/a;->o0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lm6/e;->d(Ljava/util/List;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp8/a;->o0()Ljava/util/List;

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
    invoke-super {p0}, Lp8/q;->onStop()V

    return-void
.end method
