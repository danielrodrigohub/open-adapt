.class public final Lcc/d;
.super Lrd/o;
.source "OIDCRepositoryImpl.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lob/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcc/e;


# direct methods
.method public constructor <init>(Lcc/e;)V
    .locals 0

    iput-object p1, p0, Lcc/d;->h:Lcc/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    new-instance v1, Lcc/c;

    iget-object v2, p0, Lcc/d;->h:Lcc/e;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcc/c;-><init>(Lcc/e;Ljd/d;)V

    const/4 v2, 0x1

    invoke-static {v3, v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Ljd/f;Lqd/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
