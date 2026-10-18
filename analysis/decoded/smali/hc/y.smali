.class public final Lhc/y;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lnc/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/y;->h:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lhc/y;->h:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/y;->h:Ljava/util/concurrent/CompletableFuture;

    .line 2
    instance-of v1, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lhc/c;

    invoke-direct {p1, v2}, Lhc/c;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v3, "TODO"

    const-string v4, "Authentication"

    invoke-interface {v1, v3, p1, v2, v4}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
