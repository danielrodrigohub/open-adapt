.class public final Ls9/p;
.super Ljava/lang/Object;
.source "ShoeSelectionUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls9/p$a;,
        Ls9/p$b;
    }
.end annotation


# static fields
.field public static final a:Ls9/p;

.field public static final b:Lh8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls9/p;

    invoke-direct {v0}, Ls9/p;-><init>()V

    sput-object v0, Ls9/p;->a:Ls9/p;

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 2
    sput-object v0, Ls9/p;->b:Lh8/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;III)Lea/e;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v0, "randomUUID()"

    invoke-static {v1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lea/d;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x3c

    const/16 v5, 0xff

    .line 3
    invoke-direct {v0, v3, v4, v5, v2}, Lea/d;-><init>(IIII)V

    .line 4
    new-instance v7, Lea/e;

    const/4 v3, 0x1

    .line 5
    new-instance v4, Lea/c;

    new-instance v2, Lea/i;

    new-instance v5, Lea/h$c;

    invoke-direct {v5, p1}, Lea/h$c;-><init>(I)V

    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v6

    invoke-interface {v6}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result v6

    invoke-direct {v2, v5, v6}, Lea/i;-><init>(Lea/h$c;I)V

    invoke-direct {v4, v2, v0}, Lea/c;-><init>(Lea/i;Lea/d;)V

    .line 6
    new-instance v5, Lea/c;

    new-instance v2, Lea/i;

    new-instance v6, Lea/h$c;

    invoke-direct {v6, p2}, Lea/h$c;-><init>(I)V

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getMaxTightness()I

    move-result p1

    invoke-direct {v2, v6, p1}, Lea/i;-><init>(Lea/h$c;I)V

    invoke-direct {v5, v2, v0}, Lea/c;-><init>(Lea/i;Lea/d;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v7

    move-object v2, p0

    .line 7
    invoke-direct/range {v0 .. v6}, Lea/e;-><init>(Ljava/util/UUID;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V

    return-object v7
.end method

.method public static p(IILs9/r;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    const v3, 0x7f11015d

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f1100e2

    .line 3
    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const p2, 0x7f11015e

    .line 5
    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const p2, 0x7f110069

    .line 7
    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p2, 0x7f11006a

    .line 8
    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    sget-object p2, Ls9/p;->b:Lh8/c;

    invoke-virtual {p2}, Lh8/c;->z()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p2, p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->multipairFindYourFitFlowFinished(II)V

    .line 11
    :cond_3
    sget-object p2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, p0, p1, v2}, Lcom/nike/adapt/analytics/TrackManager;->fineTuneCompleted(IILjava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_4

    .line 13
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p0, p1, v3}, Lcom/nike/adapt/analytics/TrackManager;->recommendedPresetCreated(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final b(Ls9/r;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ls9/p;->i(Ls9/r;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getManifest()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Manifest;->getConfiguration()Lcom/nike/adapt/network/assets/model/Configuration;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Configuration;->getSettings()Lcom/nike/adapt/network/assets/model/Settings;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Settings;->getColorwayV1()Lcom/nike/adapt/network/assets/model/ColorwayV1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getColorways()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/nike/adapt/network/assets/model/Colorway;

    .line 6
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/Colorway;->getShoeIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ls9/p$c;

    invoke-direct {v0}, Ls9/p$c;-><init>()V

    invoke-static {v1, v0}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/network/assets/model/Colorway;

    const-string v1, "colorway"

    .line 9
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Colorway;->getStyleCodes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    .line 11
    invoke-static {p1, v1, v0}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ls9/p;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getManifest()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/Manifest;->getConfiguration()Lcom/nike/adapt/network/assets/model/Configuration;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/Configuration;->getSettings()Lcom/nike/adapt/network/assets/model/Settings;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/Settings;->getColorwayV1()Lcom/nike/adapt/network/assets/model/ColorwayV1;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getColorways()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/nike/adapt/network/assets/model/Colorway;

    .line 5
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/Colorway;->getStyleCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 6
    :cond_1
    check-cast v0, Lcom/nike/adapt/network/assets/model/Colorway;

    :cond_2
    return-object v0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{\n            BigfootApp\u2026ame(resourceId)\n        }"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final e(Ls9/r;Z)I
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const p1, 0x7f110022

    goto :goto_2

    :cond_2
    const p1, 0x7f11001e

    goto :goto_2

    :cond_3
    const p1, 0x7f110025

    goto :goto_2

    :cond_4
    const p1, 0x7f110020

    goto :goto_2

    :cond_5
    const p1, 0x7f110024

    goto :goto_2

    .line 3
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_8

    if-ne p1, v0, :cond_7

    goto :goto_1

    .line 4
    :cond_7
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_8
    :goto_1
    const p1, 0x7f110023

    goto :goto_2

    :cond_9
    const p1, 0x7f11001f

    goto :goto_2

    :cond_a
    const p1, 0x7f110026

    goto :goto_2

    :cond_b
    const p1, 0x7f110021

    goto :goto_2

    :cond_c
    const p1, 0x7f110027

    :goto_2
    return p1
.end method

.method public final f(Ls9/r;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const p1, 0x7f1100e2

    goto :goto_1

    :cond_2
    const p1, 0x7f11015e

    goto :goto_1

    :cond_3
    const p1, 0x7f110069

    .line 3
    :goto_1
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ls9/p$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ls9/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const p1, 0x7f11002d

    .line 3
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ls9/p$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const v0, 0x7f110131

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_0
    const p1, 0x7f11003e

    .line 3
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    const p1, 0x7f11013e

    .line 4
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    const p1, 0x7f110140

    .line 5
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    const p1, 0x7f110141

    .line 6
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :pswitch_4
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ls9/r;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ls9/p$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    const-string p1, "007"

    goto :goto_1

    :pswitch_1
    const-string p1, "006"

    goto :goto_1

    :pswitch_2
    const-string p1, "004"

    goto :goto_1

    :pswitch_3
    const-string p1, "005"

    goto :goto_1

    :pswitch_4
    const-string p1, "002"

    goto :goto_1

    :pswitch_5
    const-string p1, "001"

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ls9/r;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Ls9/p$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ls9/p;->l(Ls9/r;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const p1, 0x7f11002d

    .line 3
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final k(Ljava/lang/String;)Ls9/r;
    .locals 9

    .line 1
    sget-object v0, Ls9/r;->m:Ls9/r;

    sget-object v1, Ls9/r;->l:Ls9/r;

    sget-object v2, Ls9/r;->i:Ls9/r;

    sget-object v3, Ls9/r;->k:Ls9/r;

    sget-object v4, Ls9/r;->j:Ls9/r;

    sget-object v5, Ls9/r;->h:Ls9/r;

    const-string v6, "Nike EARL BB"

    invoke-static {p1, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    if-nez p1, :cond_1

    return-object v5

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Ls9/p;->c(Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    .line 3
    invoke-virtual {v6}, Lcom/nike/adapt/network/assets/model/Colorway;->getShoeIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v8, "007"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, v0

    goto :goto_1

    :pswitch_2
    const-string v8, "006"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v1

    goto :goto_1

    :pswitch_3
    const-string v8, "005"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v6, v2

    goto :goto_1

    :pswitch_4
    const-string v8, "004"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    move-object v6, v3

    goto :goto_1

    :pswitch_5
    const-string v8, "002"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    move-object v6, v4

    goto :goto_1

    :pswitch_6
    const-string v8, "001"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move-object v6, v5

    goto :goto_1

    :goto_0
    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_8

    return-object v6

    :cond_8
    const-string v6, ".{3}-.{6}-.{3}"

    .line 4
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v8, "compile(pattern)"

    invoke-static {v6, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "001-.{6}-.{3}"

    .line 6
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-static {v6, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v0, v5

    goto/16 :goto_2

    :cond_9
    const-string v5, "002-.{6}-.{3}"

    .line 8
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {v5, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v0, v4

    goto :goto_2

    :cond_a
    const-string v4, "005-.{6}-.{3}"

    .line 10
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-static {v4, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v0, v2

    goto :goto_2

    :cond_b
    const-string v2, "004-.{6}-.{3}"

    .line 12
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v2, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v3

    goto :goto_2

    :cond_c
    const-string v2, "006-.{6}-.{3}"

    .line 14
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v2, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v0, v1

    goto :goto_2

    :cond_d
    const-string v1, "007-.{6}-.{3}"

    .line 16
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_2

    :cond_e
    move-object v0, v7

    :goto_2
    return-object v0

    .line 18
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v0, "AO2582-900"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_3

    :sswitch_1
    const-string v0, "AO2582-004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_3

    :sswitch_2
    const-string v0, "AO2582-002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_3

    :sswitch_3
    const-string v0, "AO2582-001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_3

    :cond_10
    move-object v2, v5

    goto :goto_4

    :sswitch_4
    const-string v0, "BQ5397-900"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3

    :sswitch_5
    const-string v0, "BQ5397-100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3

    :sswitch_6
    const-string v0, "BQ5397-001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3

    :sswitch_7
    const-string v0, "CI5018-002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_3

    :sswitch_8
    const-string v0, "BV6397-710"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_3

    :sswitch_9
    const-string v0, "BV6397-300"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_3

    :sswitch_a
    const-string v0, "BV6397-110"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_3

    :sswitch_b
    const-string v0, "BV6397-002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_3

    :cond_11
    move-object v2, v4

    goto :goto_4

    :sswitch_c
    const-string v0, "CW7304-001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_3

    :cond_12
    move-object v2, v3

    goto :goto_4

    :goto_3
    move-object v2, v7

    :cond_13
    :goto_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0xba31
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7d6ca6c8 -> :sswitch_c
        -0x5e55cfac -> :sswitch_b
        -0x5e55cbce -> :sswitch_a
        -0x5e55c46b -> :sswitch_9
        -0x5e55b548 -> :sswitch_8
        -0x5b28db3 -> :sswitch_7
        0x5472d86f -> :sswitch_6
        0x5472dc2f -> :sswitch_5
        0x5472fa37 -> :sswitch_4
        0x67ce2b0f -> :sswitch_3
        0x67ce2b10 -> :sswitch_2
        0x67ce2b12 -> :sswitch_1
        0x67ce4cd7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l(Ls9/r;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Ls9/p$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const v0, 0x7f11013f

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_0
    const p1, 0x7f11003e

    .line 3
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    const p1, 0x7f11013e

    .line 4
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    const p1, 0x7f110140

    .line 5
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    const p1, 0x7f110141

    .line 6
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :pswitch_4
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Ljava/lang/String;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ls9/p;->c(Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nike/adapt/network/assets/model/Colorway;->getShoeLightingColor()Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lcom/nike/adapt/network/assets/model/ShoeLightingColor;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    :cond_0
    sget-object p1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->HERO_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    :cond_1
    return-object p1
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "AO2582-001"

    return-object p1

    :cond_0
    const-string v0, ".{3}-.{6}-.{3}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(pattern)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0xe

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ".{6}-.{3}"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final o(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetType"

    invoke-static {p3, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 1
    sget-object v0, Lp7/a;->a:Lp7/a;

    invoke-virtual {p0, p2}, Ls9/p;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getManifest()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/Manifest;->getConfiguration()Lcom/nike/adapt/network/assets/model/Configuration;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/Configuration;->getSettings()Lcom/nike/adapt/network/assets/model/Settings;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/Settings;->getColorwayV1()Lcom/nike/adapt/network/assets/model/ColorwayV1;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3
    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getAssetBaseUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getColorways()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nike/adapt/network/assets/model/Colorway;

    .line 5
    invoke-virtual {v5}, Lcom/nike/adapt/network/assets/model/Colorway;->getStyleCodes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6
    invoke-static {v7, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-ne p3, v1, :cond_3

    .line 7
    sget-object v4, Lp7/a;->a:Lp7/a;

    invoke-virtual {v5}, Lcom/nike/adapt/network/assets/model/Colorway;->getAssetsAngled()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lp7/a;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_3
    sget-object v4, Lp7/a;->a:Lp7/a;

    invoke-virtual {v5}, Lcom/nike/adapt/network/assets/model/Colorway;->getAssetsProfile()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lp7/a;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    :goto_1
    const-string v0, "com.nike.adapt.dummyurl"

    .line 10
    :goto_2
    invoke-virtual {p0, p2}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, -0x1

    goto :goto_3

    :cond_6
    sget-object v3, Ls9/p$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_3
    const v3, 0x7f080087

    const v4, 0x7f080088

    packed-switch v2, :pswitch_data_0

    if-ne p3, v1, :cond_b

    goto :goto_4

    :pswitch_0
    if-ne p3, v1, :cond_7

    const v3, 0x7f080089

    goto :goto_4

    :cond_7
    const v3, 0x7f08008a

    goto :goto_4

    :pswitch_1
    if-ne p3, v1, :cond_8

    const v3, 0x7f080083

    goto :goto_4

    :cond_8
    const v3, 0x7f080084

    goto :goto_4

    :pswitch_2
    if-ne p3, v1, :cond_9

    const v3, 0x7f080085

    goto :goto_4

    :cond_9
    const v3, 0x7f080086

    goto :goto_4

    :pswitch_3
    if-ne p3, v1, :cond_a

    const v3, 0x7f08008b

    goto :goto_4

    :cond_a
    const v3, 0x7f08008c

    goto :goto_4

    :pswitch_4
    if-ne p3, v1, :cond_b

    goto :goto_4

    :cond_b
    move v3, v4

    .line 11
    :goto_4
    invoke-virtual {p0, p2}, Ls9/p;->c(Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/nike/adapt/network/assets/model/Colorway;->getColorwayVersion()I

    move-result p2

    goto :goto_5

    :cond_c
    const/4 p2, 0x1

    .line 12
    :goto_5
    sget-object p3, Lt7/b;->a:Lt7/b$a;

    invoke-virtual {p3}, Lt7/b$a;->a()Lt7/b;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, v0, p1, v3}, Lt7/b;->c(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
