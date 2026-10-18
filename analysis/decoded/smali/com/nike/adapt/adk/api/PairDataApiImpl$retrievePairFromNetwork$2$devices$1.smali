.class final Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;
.super Lrd/o;
.source "PairDataApi.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/api/PairDataApiImpl;->retrievePairFromNetwork(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/d0;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $it:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Ljava/util/List<",
            "Lea/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic $returnedDevices:Lrd/u;


# direct methods
.method public constructor <init>(Lrd/u;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/u;",
            "Ljd/d<",
            "-",
            "Ljava/util/List<",
            "Lea/m;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;->$returnedDevices:Lrd/u;

    iput-object p2, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;->$it:Ljd/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/d0;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;->invoke(Lv9/d0;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/d0;)V
    .locals 3

    const-string v0, "$this$pairedDevicesListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$1;

    iget-object v1, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;->$returnedDevices:Lrd/u;

    iget-object v2, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;->$it:Ljd/d;

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$1;-><init>(Lrd/u;Ljd/d;)V

    .line 3
    iput-object v0, p1, Lv9/d0;->b:Lqd/l;

    .line 4
    new-instance v0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2;

    iget-object v1, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;->$returnedDevices:Lrd/u;

    iget-object v2, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;->$it:Ljd/d;

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2;-><init>(Lrd/u;Ljd/d;)V

    .line 5
    iput-object v0, p1, Lv9/d0;->c:Lqd/l;

    return-void
.end method
