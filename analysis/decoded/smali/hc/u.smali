.class public final Lhc/u;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Llc/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llc/b<",
        "Ljava/util/List<",
        "+",
        "Lmc/a0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lhc/l;

.field public final synthetic i:Lnc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/a<",
            "Ljava/util/List<",
            "Lmc/b0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhc/l;Lnc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/l;",
            "Lnc/a<",
            "Ljava/util/List<",
            "Lmc/b0;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/u;->h:Lhc/l;

    iput-object p2, p0, Lhc/u;->i:Lnc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lhc/u;->h:Lhc/l;

    iget-object v1, p0, Lhc/u;->i:Lnc/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmc/a0;

    .line 7
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 8
    new-instance v5, Lhc/s;

    invoke-direct {v5, v3, v2, v4}, Lhc/s;-><init>(Lmc/a0;Ljava/util/ArrayList;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v5}, Lhc/l;->F(Lnc/c;)V

    .line 9
    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Llc/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lhc/u;->i:Lnc/a;

    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method
