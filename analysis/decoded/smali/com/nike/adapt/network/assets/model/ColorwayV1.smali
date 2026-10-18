.class public final Lcom/nike/adapt/network/assets/model/ColorwayV1;
.super Ljava/lang/Object;
.source "Manifest.kt"


# instance fields
.field private final assetBaseUrl:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "asset_base_url"
    .end annotation
.end field

.field private final backgroundImageModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/BackgroundImageModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf7/b;
        value = "models"
    .end annotation
.end field

.field private final colorways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/Colorway;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf7/b;
        value = "colorways"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/Colorway;",
            ">;",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/BackgroundImageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "assetBaseUrl"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorways"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundImageModel"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->assetBaseUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->colorways:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->backgroundImageModel:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/network/assets/model/ColorwayV1;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/nike/adapt/network/assets/model/ColorwayV1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->assetBaseUrl:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->colorways:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->backgroundImageModel:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nike/adapt/network/assets/model/ColorwayV1;->copy(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/nike/adapt/network/assets/model/ColorwayV1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->assetBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/Colorway;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->colorways:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/BackgroundImageModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->backgroundImageModel:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/nike/adapt/network/assets/model/ColorwayV1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/Colorway;",
            ">;",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/BackgroundImageModel;",
            ">;)",
            "Lcom/nike/adapt/network/assets/model/ColorwayV1;"
        }
    .end annotation

    const-string v0, "assetBaseUrl"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorways"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundImageModel"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/network/assets/model/ColorwayV1;

    invoke-direct {v0, p1, p2, p3}, Lcom/nike/adapt/network/assets/model/ColorwayV1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/network/assets/model/ColorwayV1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/network/assets/model/ColorwayV1;

    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->assetBaseUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/ColorwayV1;->assetBaseUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->colorways:Ljava/util/List;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/ColorwayV1;->colorways:Ljava/util/List;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->backgroundImageModel:Ljava/util/List;

    iget-object p1, p1, Lcom/nike/adapt/network/assets/model/ColorwayV1;->backgroundImageModel:Ljava/util/List;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAssetBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->assetBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackgroundImageModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/BackgroundImageModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->backgroundImageModel:Ljava/util/List;

    return-object v0
.end method

.method public final getColorways()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/assets/model/Colorway;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->colorways:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->assetBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->colorways:Ljava/util/List;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La4/g;->d(Ljava/util/List;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->backgroundImageModel:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->assetBaseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->colorways:Ljava/util/List;

    iget-object v2, p0, Lcom/nike/adapt/network/assets/model/ColorwayV1;->backgroundImageModel:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorwayV1(assetBaseUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", colorways="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", backgroundImageModel="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
