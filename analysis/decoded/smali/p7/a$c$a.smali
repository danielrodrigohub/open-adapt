.class public final Lp7/a$c$a;
.super Lld/i;
.source "AssetsRequester.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lcom/nike/adapt/network/assets/model/Manifest;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.assetservice.AssetsRequester$fetchManifestJsonAndPreloadAsset$2$1"
    f = "AssetsRequester.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I


# direct methods
.method public constructor <init>(Ljd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lp7/a$c$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lp7/a$c$a;

    invoke-direct {p1, p2}, Lp7/a$c$a;-><init>(Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    .line 1
    new-instance p1, Lp7/a$c$a;

    invoke-direct {p1, p2}, Lp7/a$c$a;-><init>(Ljd/d;)V

    .line 2
    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lp7/a$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lp7/a$c$a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lm8/i;->a:Lm8/i;

    .line 5
    iput v2, p0, Lp7/a$c$a;->h:I

    .line 6
    sget-object p1, Lm8/i;->b:Lfd/h;

    invoke-virtual {p1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx7/a;

    const-string v1, "1.29.3"

    .line 7
    invoke-interface {p1, v1, p0}, Lx7/a;->a(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Lcom/nike/adapt/network/assets/model/Manifest;

    .line 9
    invoke-virtual {p1}, Lcom/nike/adapt/network/assets/model/Manifest;->getConfiguration()Lcom/nike/adapt/network/assets/model/Configuration;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/nike/adapt/network/assets/model/Manifest;->getAssetFiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 10
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/adk/InMemoryCache;->setManifest(Lcom/nike/adapt/network/assets/model/Manifest;)V

    .line 11
    sget-object v0, Lp7/a;->a:Lp7/a;

    invoke-static {}, Lp7/a;->a()Lh8/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lh8/a;->F(Lcom/nike/adapt/network/assets/model/Manifest;)V

    goto :goto_2

    .line 12
    :cond_5
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    sget-object v0, Lp7/a;->a:Lp7/a;

    invoke-static {}, Lp7/a;->a()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->K()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setManifest(Lcom/nike/adapt/network/assets/model/Manifest;)V

    .line 13
    :goto_2
    sget-object p1, Lp7/a;->a:Lp7/a;

    .line 14
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getManifest()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Manifest;->getConfiguration()Lcom/nike/adapt/network/assets/model/Configuration;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Configuration;->getSettings()Lcom/nike/adapt/network/assets/model/Settings;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/Settings;->getColorwayV1()Lcom/nike/adapt/network/assets/model/ColorwayV1;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getAssetBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getColorways()Ljava/util/List;

    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nike/adapt/network/assets/model/Colorway;

    .line 18
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/Colorway;->getAssetsAngled()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/Colorway;->getColorwayVersion()I

    move-result v5

    invoke-virtual {p1, v1, v4, v5}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 19
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/Colorway;->getAssetsProfile()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/Colorway;->getColorwayVersion()I

    move-result v3

    invoke-virtual {p1, v1, v4, v3}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_3

    .line 20
    :cond_6
    invoke-virtual {v0}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->getBackgroundImageModel()Ljava/util/List;

    move-result-object p1

    .line 21
    sget-object v0, Ls9/p;->a:Ls9/p;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    sget-object v2, Ls9/r;->h:Ls9/r;

    const-string v3, "001"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v2, Ls9/r;->j:Ls9/r;

    const-string v3, "002"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v2, Ls9/r;->i:Ls9/r;

    const-string v3, "005"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v2, Ls9/r;->k:Ls9/r;

    const-string v3, "004"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v2, Ls9/r;->l:Ls9/r;

    const-string v3, "006"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v2, Ls9/r;->m:Ls9/r;

    const-string v3, "007"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "ShoeSelectionUtil.getShoeIdToStyleCodeMap().keys"

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;

    .line 31
    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getShoe_identifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 32
    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getGradientImages()Lcom/nike/adapt/network/assets/model/GradientImages;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 33
    sget-object v4, Lp7/a;->a:Lp7/a;

    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getGreenspark_white()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 34
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRacerblue_electricgreen()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 35
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRedorbit_optiyellow()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 36
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getGreenspark()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 37
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRacerblue_optiyellow()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 38
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getTotalorange()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 39
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getAuroragreen()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 40
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getHeroblue()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 41
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getPinkblast()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 42
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getGreenspark_optiyellow()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 43
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getHeroblue_pinkblast()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 44
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getElectricgreen()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 45
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRacerblue()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 46
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getOptiyellow()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 47
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getVividpurple_optiyellow()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 48
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRedorbit_white()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 49
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getVividpurple_white()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 50
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getRedorbit_racerblue()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 51
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getWhite()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 52
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getVividpurple()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 53
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getLightsoff()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    .line 54
    invoke-virtual {v3}, Lcom/nike/adapt/network/assets/model/GradientImages;->getVividpurple_auroragreen()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nike/adapt/network/assets/model/BackgroundImageModel;->getModel_version()I

    move-result v2

    invoke-virtual {v4, v1, v3, v2}, Lp7/a;->d(Ljava/lang/String;Ljava/util/Map;I)V

    goto/16 :goto_4

    .line 55
    :cond_8
    sget-object p1, Lp7/a;->a:Lp7/a;

    invoke-static {}, Lp7/a;->a()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->K()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object p1

    return-object p1
.end method
