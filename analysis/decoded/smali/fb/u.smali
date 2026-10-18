.class public final Lfb/u;
.super Lrd/o;
.source "SessionDownload.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lfb/s$a;",
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
            "Lfb/s;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfb/u;->h:Lfb/s;

    iput-object p2, p0, Lfb/u;->i:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lfb/s$a;

    const-string v0, "command"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lfb/u;->h:Lfb/s;

    .line 4
    iget-object v1, v0, Lfb/s;->d:Lhc/l0;

    .line 5
    new-instance v2, Lfb/t;

    iget-object v3, p0, Lfb/u;->i:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2, v0, p1, v3}, Lfb/t;-><init>(Lfb/s;Lfb/s$a;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v1, v2}, Lhc/l0;->F(Lnc/c;)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
