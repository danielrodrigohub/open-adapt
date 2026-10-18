.class public final Lya/f;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lla/c;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;

.field public final synthetic i:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lya/d;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/d;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/f;->h:Lya/d;

    iput-object p2, p0, Lya/f;->i:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lla/c;

    .line 2
    iget-object v0, p0, Lya/f;->h:Lya/d;

    .line 3
    iput-object p1, v0, Lya/d;->l:Lla/c;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lla/c;->h:Lla/b;

    .line 5
    invoke-virtual {v0, p1}, Lya/d;->f0(Lla/b;)Lfb/r;

    move-result-object p1

    .line 6
    check-cast p1, Lfb/s;

    invoke-virtual {p1}, Lfb/s;->i()V

    .line 7
    :cond_0
    iget-object p1, p0, Lya/f;->i:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-object v0
.end method
