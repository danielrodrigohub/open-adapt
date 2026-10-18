.class public final Ls9/g;
.super Ljava/lang/Object;
.source "FirmwareUpdateUtil.kt"


# static fields
.field public static final a:Ls9/g;

.field public static b:I = 0x14

.field public static final c:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls9/g;

    invoke-direct {v0}, Ls9/g;-><init>()V

    sput-object v0, Ls9/g;->a:Ls9/g;

    sget-object v0, Ls9/g$a;->h:Ls9/g$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Ls9/g;->c:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "\\."

    const-string v1, "version1"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    new-instance v1, Lyd/g;

    invoke-direct {v1, v0}, Lyd/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lyd/g;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v1, Lyd/g;

    invoke-direct {v1, v0}, Lyd/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lyd/g;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->max(II)I

    move-result v0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_7

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-lt v1, v4, :cond_1

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    move v3, v2

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v4, v6, :cond_5

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v3, v4, :cond_4

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    return v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v3

    :catch_0
    const/4 p1, -0x2

    return p1
.end method

.method public final b()I
    .locals 6

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.2.0"

    .line 2
    invoke-virtual {p0, v1, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-le v1, v5, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-le v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    return v3

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.5.0"

    .line 6
    invoke-virtual {p0, v1, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-le v1, v5, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-le v0, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x3

    return v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, Ls9/g;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    move-object p1, v1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final d()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.2.0"

    .line 2
    invoke-virtual {p0, v1, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 4

    .line 1
    sget-object v0, Ls9/h;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MODEL"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public final f()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.4.0"

    invoke-virtual {p0, v1, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    const-string v1, "[.]"

    const/4 v2, 0x0

    if-eqz p1, :cond_f

    if-nez p2, :cond_0

    goto/16 :goto_8

    .line 1
    :cond_0
    :try_start_0
    new-instance v3, Lyd/g;

    invoke-direct {v3, v1}, Lyd/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lyd/g;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 4
    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    if-nez v5, :cond_1

    .line 7
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Lgd/n;->j0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_3
    sget-object p1, Lgd/p;->h:Lgd/p;

    :goto_1
    new-array v3, v2, [Ljava/lang/String;

    .line 9
    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    .line 10
    array-length v3, p1

    new-array v3, v3, [I

    .line 11
    array-length v5, p1

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_4

    .line 12
    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 13
    :cond_4
    new-instance p1, Lyd/g;

    invoke-direct {p1, v1}, Lyd/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lyd/g;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    .line 16
    :cond_5
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v4

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    if-nez v1, :cond_5

    .line 19
    invoke-interface {p2}, Ljava/util/ListIterator;->nextIndex()I

    move-result p2

    add-int/2addr p2, v4

    invoke-static {p1, p2}, Lgd/n;->j0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 20
    :cond_7
    sget-object p1, Lgd/p;->h:Lgd/p;

    :goto_4
    new-array p2, v2, [Ljava/lang/String;

    .line 21
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    .line 22
    array-length p2, p1

    new-array p2, p2, [I

    .line 23
    array-length v0, p1

    move v1, v2

    :goto_5
    if-ge v1, v0, :cond_8

    .line 24
    aget-object v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 25
    :cond_8
    aget p1, v3, v2

    aget v0, p2, v2

    if-ge v0, p1, :cond_9

    move p1, v4

    goto :goto_6

    :cond_9
    move p1, v2

    :goto_6
    if-nez p1, :cond_e

    .line 26
    aget p1, p2, v2

    aget v0, v3, v2

    if-le p1, v0, :cond_a

    return v2

    .line 27
    :cond_a
    aget p1, v3, v4

    aget v0, p2, v4

    if-ge v0, p1, :cond_b

    move p1, v4

    goto :goto_7

    :cond_b
    move p1, v2

    :goto_7
    if-nez p1, :cond_e

    .line 28
    aget p1, p2, v2

    aget v0, v3, v2

    if-lt p1, v0, :cond_c

    aget p1, p2, v4

    aget v0, v3, v4

    if-le p1, v0, :cond_c

    return v2

    :cond_c
    const/4 p1, 0x2

    .line 29
    aget v0, v3, p1

    aget p1, p2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p1, v0, :cond_d

    move v2, v4

    :cond_d
    return v2

    :cond_e
    return v4

    :catch_0
    :cond_f
    :goto_8
    return v2
.end method

.method public final h()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.2.2"

    .line 2
    invoke-virtual {p0, v1, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    invoke-interface {v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0, v2}, Ls9/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i(FJ)Ljava/lang/String;
    .locals 7

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p1, v0

    const-string v1, "time"

    const/4 v2, 0x0

    const v3, 0x7f1101bc

    const/4 v4, 0x1

    if-gez v0, :cond_0

    .line 1
    sget-object p1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p1}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object p1

    new-array p2, v4, [Landroid/util/Pair;

    new-instance p3, Landroid/util/Pair;

    const-string v0, "20"

    invoke-direct {p3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p2, v2

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(application, R.st\u2026r(\"time\", 20.toString()))"

    .line 3
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p2

    const/16 p2, 0x3e8

    int-to-long p2, p2

    div-long/2addr v5, p2

    long-to-float p2, v5

    div-float/2addr p2, p1

    const/16 p3, 0x64

    int-to-float p3, p3

    sub-float/2addr p3, p1

    mul-float/2addr p3, p2

    const/16 p1, 0x3c

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-double p1, p3

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-int p1, p1

    .line 6
    sget p2, Ls9/g;->b:I

    if-le p1, p2, :cond_1

    add-int/lit8 p3, p1, -0x1

    if-ne p3, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    if-ge p1, p2, :cond_2

    .line 7
    sput p1, Ls9/g;->b:I

    :cond_2
    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_3

    const p1, 0x7f1101bd

    .line 8
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_3
    sget-object p2, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p2}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object p2

    new-array p3, v4, [Landroid/util/Pair;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p3, v2

    .line 10
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(application, R.st\u2026tesRemaining.toString()))"

    .line 11
    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method
