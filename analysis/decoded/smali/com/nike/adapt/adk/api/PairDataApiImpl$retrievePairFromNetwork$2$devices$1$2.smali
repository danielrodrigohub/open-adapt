.class final Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2;
.super Lrd/o;
.source "PairDataApi.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;->invoke(Lv9/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lea/o;",
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

    iput-object p1, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2;->$returnedDevices:Lrd/u;

    iput-object p2, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2;->$it:Ljd/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lea/o;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2;->invoke(Lea/o;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lea/o;)V
    .locals 2

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2;->$returnedDevices:Lrd/u;

    iget-boolean v1, v0, Lrd/u;->h:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lrd/u;->h:Z

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1$2;->$it:Ljd/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    .line 5
    :cond_0
    sget-object v0, Lo7/x;->a:Lo7/x;

    .line 6
    iget-object p1, p1, Lea/o;->k:Ljava/lang/String;

    const-string v1, "Paired Device Error Network retrieval. Message: "

    .line 7
    invoke-static {v1, p1, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    return-void
.end method
