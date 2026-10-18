.class public final Lfb/v;
.super Lrd/o;
.source "SessionDownload.kt"

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
.field public final synthetic h:Lfb/s;

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
.method public constructor <init>(Lfb/s;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmc/b0;",
            "Lfb/s;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfb/v;->h:Lfb/s;

    iput-object p2, p0, Lfb/v;->i:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lfb/v;->h:Lfb/s;

    new-instance v1, Lfb/u;

    iget-object v2, p0, Lfb/v;->i:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1, v0, v2}, Lfb/u;-><init>(Lfb/s;Ljava/util/concurrent/CompletableFuture;)V

    const-string v2, "sessionDetermineSessionInfo"

    invoke-virtual {v0, v2, v1}, Lfb/s;->e(Ljava/lang/String;Lqd/l;)V

    .line 2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
