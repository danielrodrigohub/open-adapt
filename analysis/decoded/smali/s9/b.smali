.class public final Ls9/b;
.super Ljava/lang/Object;
.source "BadgeUtil.kt"


# static fields
.field public static final a:Ls9/b;

.field public static final b:Lh8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls9/b;

    invoke-direct {v0}, Ls9/b;-><init>()V

    sput-object v0, Ls9/b;->a:Ls9/b;

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 2
    sput-object v0, Ls9/b;->b:Lh8/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 8

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v3, Lh8/c;->b:Lh8/c;

    .line 3
    invoke-virtual {v3}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lv7/k;

    .line 5
    iget-object v7, v7, Lv7/k;->a:Ljava/lang/String;

    .line 6
    invoke-static {v7, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v1, v6

    :cond_2
    check-cast v1, Lv7/k;

    if-eqz v1, :cond_3

    .line 7
    iput-boolean v2, v1, Lv7/k;->g:Z

    .line 8
    :cond_3
    invoke-virtual {v3, v4}, Lh8/c;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(Ls9/b;)Z
    .locals 3

    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls9/b;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    sget-object v1, Ls9/b;->b:Lh8/c;

    invoke-virtual {v0, v1}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId(Lh8/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v1}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lv7/k;

    .line 4
    iget-object v3, v3, Lv7/k;->a:Ljava/lang/String;

    .line 5
    invoke-static {v3, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lv7/k;

    if-eqz v2, :cond_3

    .line 6
    iget-boolean p1, v2, Lv7/k;->c:Z

    xor-int/2addr v1, p1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget v0, Lo7/n;->a:I

    .line 2
    sget v0, Lh8/a;->a:I

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    sget-object v1, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return v4

    .line 5
    :cond_0
    sget-object v1, Ls9/g;->a:Ls9/g;

    invoke-virtual {v1}, Ls9/g;->f()Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    .line 6
    :cond_1
    invoke-virtual {v0}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lv7/k;

    .line 8
    iget-object v4, v4, Lv7/k;->a:Ljava/lang/String;

    .line 9
    invoke-static {v4, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v1

    :cond_3
    check-cast v2, Lv7/k;

    if-eqz v2, :cond_4

    .line 10
    iget-boolean p1, v2, Lv7/k;->g:Z

    xor-int/2addr p1, v3

    move v3, p1

    :cond_4
    return v3
.end method
