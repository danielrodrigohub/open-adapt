.class public final Lya/h;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
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

    iput-object p1, p0, Lya/h;->h:Lya/d;

    iput-object p2, p0, Lya/h;->i:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lya/h;->h:Lya/d;

    new-instance v1, Lya/f;

    iget-object v2, p0, Lya/h;->i:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1, v0, v2}, Lya/f;-><init>(Lya/d;Ljava/util/concurrent/CompletableFuture;)V

    new-instance v2, Lya/g;

    iget-object v3, p0, Lya/h;->i:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2, v3}, Lya/g;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Lya/m;

    invoke-direct {v3, v0, v1, v2}, Lya/m;-><init>(Lya/d;Lqd/l;Lqd/a;)V

    .line 3
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lv9/s0;

    invoke-direct {v2, v3, v0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lz9/a;->b(Lqd/a;)V

    .line 4
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
