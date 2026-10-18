.class public abstract Lp8/c;
.super Lp8/s;
.source "AdaptPairPreferenceFragment.kt"


# instance fields
.field public final k0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/s;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp8/c;->k0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public S()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/i;->S()V

    .line 2
    invoke-virtual {p0}, Lp8/c;->t0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lm6/e;->d(Ljava/util/List;)V

    return-void
.end method

.method public final T()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp8/c;->t0()Ljava/util/List;

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
    invoke-super {p0}, Lp8/i;->T()V

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

    iget-object v0, p0, Lp8/c;->k0:Ljava/util/ArrayList;

    return-object v0
.end method
