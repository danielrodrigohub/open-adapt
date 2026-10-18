.class public final Lhc/w;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lnc/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/a<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lhc/l;

.field public final synthetic i:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhc/l;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/l;",
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/w;->h:Lhc/l;

    iput-object p2, p0, Lhc/w;->i:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, [B

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lhc/w;->i:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/w;->h:Lhc/l;

    .line 2
    iget-object v0, v0, Lhc/l;->k:Lhc/e;

    const-string v1, "com.nike.corerf.ACTION_RIPLEY_FAILED_AUTHENTICATION"

    .line 3
    invoke-virtual {v0, v1}, Lhc/e;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lhc/w;->i:Ljava/util/concurrent/CompletableFuture;

    .line 5
    instance-of v1, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v1, :cond_0

    .line 6
    new-instance p1, Lhc/c;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lhc/c;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "TODO"

    const-string v4, "Authentication"

    invoke-interface {v1, v3, p1, v2, v4}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
