.class public final Lg9/k;
.super Ljava/lang/Object;
.source "AutoLaceUtil.kt"


# static fields
.field public static final a:Lg9/k;

.field public static final b:Lh8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg9/k;

    invoke-direct {v0}, Lg9/k;-><init>()V

    sput-object v0, Lg9/k;->a:Lg9/k;

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 2
    sput-object v0, Lg9/k;->b:Lh8/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lv7/b;
    .locals 5

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v2, Lg9/k;->b:Lh8/c;

    invoke-virtual {v2}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lv7/k;

    .line 4
    iget-object v4, v4, Lv7/k;->a:Ljava/lang/String;

    .line 5
    invoke-static {v4, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_2
    check-cast v1, Lv7/k;

    if-eqz v1, :cond_3

    .line 6
    iget-object v0, v1, Lv7/k;->e:Lv7/b;

    if-nez v0, :cond_4

    .line 7
    :cond_3
    new-instance v0, Lv7/b;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v1}, Lv7/b;-><init>(II)V

    :cond_4
    return-object v0
.end method

.method public static d()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v2, Lg9/k;->b:Lh8/c;

    invoke-virtual {v2}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lv7/k;

    .line 4
    iget-object v4, v4, Lv7/k;->a:Ljava/lang/String;

    .line 5
    invoke-static {v4, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_2
    check-cast v1, Lv7/k;

    if-eqz v1, :cond_3

    .line 6
    iget-boolean v0, v1, Lv7/k;->d:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(II)V
    .locals 6

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lg9/k;->b:Lh8/c;

    invoke-virtual {v1}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lv7/k;

    .line 4
    iget-object v5, v5, Lv7/k;->a:Ljava/lang/String;

    .line 5
    invoke-static {v5, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    :cond_2
    check-cast v2, Lv7/k;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lv7/b;

    invoke-direct {v0, p0, p1}, Lv7/b;-><init>(II)V

    .line 6
    iput-object v0, v2, Lv7/k;->e:Lv7/b;

    .line 7
    :goto_0
    sget-object p0, Lg9/k;->b:Lh8/c;

    invoke-virtual {p0, v1}, Lh8/c;->a(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 1

    const-string v0, "errorType"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    if-eqz p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f110288

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_1
    const p1, 0x7f110284

    goto :goto_0

    :cond_2
    const p1, 0x7f110286

    :goto_0
    return p1

    :cond_3
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final c(I)I
    .locals 1

    const-string v0, "errorType"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    if-eqz p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f110289

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_1
    const p1, 0x7f110285

    goto :goto_0

    :cond_2
    const p1, 0x7f110287

    :goto_0
    return p1

    :cond_3
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final f(I)I
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method
