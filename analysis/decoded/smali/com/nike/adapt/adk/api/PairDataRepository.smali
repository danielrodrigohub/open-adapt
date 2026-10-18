.class public final Lcom/nike/adapt/adk/api/PairDataRepository;
.super Ljava/lang/Object;
.source "PairDataRepository.kt"


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-direct {v0}, Lcom/nike/adapt/adk/api/PairDataRepository;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget p1, Lh8/a;->a:I

    .line 2
    sget-object p1, Lh8/c;->b:Lh8/c;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId(Lh8/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setIsDefaultAndConnected$default(Lcom/nike/adapt/adk/api/PairDataRepository;Ljava/lang/String;Lh8/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget p2, Lh8/a;->a:I

    .line 2
    sget-object p2, Lh8/c;->b:Lh8/c;

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/api/PairDataRepository;->setIsDefaultAndConnected(Ljava/lang/String;Lh8/a;)V

    return-void
.end method

.method private static final syncPairData$lambda-5(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    new-instance v5, Lv7/b;

    const/16 v0, 0x32

    invoke-direct {v5, v0, v0}, Lv7/b;-><init>(II)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v0, "staticPairId"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v9, Lv7/k;

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lv7/k;-><init>(Ljava/lang/String;ZZZLv7/b;ZZZ)V

    .line 4
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getDefaultAndConnectedId(Lh8/a;)Ljava/lang/String;
    .locals 3

    const-string v0, "preferenceHelper"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lh8/a;->O()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lv7/k;

    .line 3
    iget-boolean v2, v2, Lv7/k;->b:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 4
    :goto_0
    check-cast v1, Lv7/k;

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, v1, Lv7/k;->a:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public final setIsDefaultAndConnected(Ljava/lang/String;Lh8/a;)V
    .locals 4

    const-string v0, "staticPairId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lh8/a;->O()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv7/k;

    .line 3
    iget-object v3, v2, Lv7/k;->a:Ljava/lang/String;

    .line 4
    invoke-static {v3, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 5
    iput-boolean v3, v2, Lv7/k;->b:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p2, v0}, Lh8/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final syncPairData(Ljd/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;

    iget v1, v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;

    invoke-direct {v0, p0, p1}, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;-><init>(Lcom/nike/adapt/adk/api/PairDataRepository;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->result:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/nike/adapt/adk/api/PairDataApi;->Companion:Lcom/nike/adapt/adk/api/PairDataApi$Companion;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/api/PairDataApi$Companion;->get()Lcom/nike/adapt/adk/api/PairDataApi;

    move-result-object p1

    iput-object p0, v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$1;->label:I

    invoke-interface {p1, v0}, Lcom/nike/adapt/adk/api/PairDataApi;->retrievePairFromNetwork(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Lea/m;

    .line 9
    iget-object v3, v3, Lea/m;->u:Ljava/lang/String;

    .line 10
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lea/m;

    .line 12
    iget-boolean v4, v4, Lea/m;->j:Z

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_6
    move-object v2, v3

    .line 13
    :goto_3
    check-cast v2, Lea/m;

    if-eqz v2, :cond_7

    .line 14
    iget-object v3, v2, Lea/m;->u:Ljava/lang/String;

    .line 15
    :cond_7
    invoke-virtual {v0, v1, v3}, Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData(Ljava/util/List;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final syncPairData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "devices"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    check-cast v2, Lea/m;

    .line 45
    iget-object v2, v2, Lea/m;->u:Ljava/lang/String;

    .line 46
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lea/m;

    .line 48
    iget-boolean v3, v3, Lea/m;->j:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 49
    :goto_1
    check-cast v1, Lea/m;

    if-eqz v1, :cond_3

    .line 50
    iget-object v2, v1, Lea/m;->u:Ljava/lang/String;

    .line 51
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final syncPairData(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "staticPairIdList"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget v0, Lh8/a;->a:I

    .line 18
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 19
    invoke-virtual {v0}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :cond_0
    new-instance v2, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$6;

    invoke-direct {v2, p1}, Lcom/nike/adapt/adk/api/PairDataRepository$syncPairData$6;-><init>(Ljava/util/List;)V

    .line 21
    new-instance v3, Lvd/e;

    invoke-static {v1}, Landroidx/lifecycle/o;->p(Ljava/util/List;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lvd/e;-><init>(II)V

    invoke-virtual {v3}, Lvd/c;->n()Lgd/w;

    move-result-object v3

    move v4, v5

    :goto_0
    move-object v6, v3

    check-cast v6, Lvd/d;

    .line 22
    iget-boolean v6, v6, Lvd/d;->j:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 23
    invoke-virtual {v3}, Lgd/w;->a()I

    move-result v6

    .line 24
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 25
    invoke-interface {v2, v8}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v7, :cond_1

    goto :goto_0

    :cond_1
    if-eq v4, v6, :cond_2

    .line 26
    invoke-interface {v1, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 28
    invoke-static {v1}, Landroidx/lifecycle/o;->p(Ljava/util/List;)I

    move-result v2

    if-gt v4, v2, :cond_4

    .line 29
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eq v2, v4, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 30
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lv7/k;

    .line 32
    iget-object v6, v6, Lv7/k;->a:Ljava/lang/String;

    .line 33
    invoke-static {v6, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    check-cast v4, Lv7/k;

    if-nez v4, :cond_5

    .line 34
    invoke-static {v1, v2}, Lcom/nike/adapt/adk/api/PairDataRepository;->syncPairData$lambda-5(Ljava/util/ArrayList;Ljava/lang/String;)Z

    goto :goto_2

    .line 35
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v7, :cond_9

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv7/k;

    .line 36
    iput-boolean v7, p1, Lv7/k;->b:Z

    goto :goto_5

    .line 37
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv7/k;

    .line 38
    iget-object v3, v2, Lv7/k;->a:Ljava/lang/String;

    .line 39
    invoke-static {v3, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 40
    iput-boolean v3, v2, Lv7/k;->b:Z

    goto :goto_4

    .line 41
    :cond_a
    :goto_5
    invoke-virtual {v0, v1}, Lh8/c;->a(Ljava/util/ArrayList;)V

    return-void
.end method
