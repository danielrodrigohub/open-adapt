.class final Lcom/nike/adapt/adk/api/PairDataApiImpl;
.super Ljava/lang/Object;
.source "PairDataApi.kt"

# interfaces
.implements Lcom/nike/adapt/adk/api/PairDataApi;


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/api/PairDataApiImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/api/PairDataApiImpl;

    invoke-direct {v0}, Lcom/nike/adapt/adk/api/PairDataApiImpl;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/api/PairDataApiImpl;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataApiImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrievePairFromNetwork(Ljd/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Ljava/util/List<",
            "Lea/m;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljd/i;

    invoke-static {p1}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object p1

    invoke-direct {v0, p1}, Ljd/i;-><init>(Ljd/d;)V

    .line 2
    new-instance p1, Lrd/u;

    invoke-direct {p1}, Lrd/u;-><init>()V

    .line 3
    sget-object v1, Lcom/nike/adapt/adk/DeviceListRepository;->INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;

    .line 4
    new-instance v2, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;

    invoke-direct {v2, p1, v0}, Lcom/nike/adapt/adk/api/PairDataApiImpl$retrievePairFromNetwork$2$devices$1;-><init>(Lrd/u;Ljd/d;)V

    .line 5
    new-instance v3, Lv9/d0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lv9/d0;-><init>(Z)V

    invoke-interface {v2, v3}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v5, 0x0

    .line 6
    invoke-static {v1, v3, v5, v2, v5}, Lcom/nike/adapt/adk/DeviceListRepository;->getDevices$default(Lcom/nike/adapt/adk/DeviceListRepository;Lv9/d0;Lv9/t;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lrd/u;->h:Z

    if-nez v2, :cond_0

    .line 8
    iput-boolean v4, p1, Lrd/u;->h:Z

    .line 9
    invoke-interface {v0, v1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljd/i;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
