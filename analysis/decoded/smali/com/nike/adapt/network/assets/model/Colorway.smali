.class public final Lcom/nike/adapt/network/assets/model/Colorway;
.super Ljava/lang/Object;
.source "Manifest.kt"


# instance fields
.field private final assetsAngled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf7/b;
        value = "assets_angled"
    .end annotation
.end field

.field private final assetsProfile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf7/b;
        value = "assets_profile"
    .end annotation
.end field

.field private final colorName:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "color_name"
    .end annotation
.end field

.field private final colorwayVersion:I
    .annotation runtime Lf7/b;
        value = "colorway_version"
    .end annotation
.end field

.field private final identifier:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "identifier"
    .end annotation
.end field

.field private final shoeIdentifier:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "shoe_identifier"
    .end annotation
.end field

.field private final shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;
    .annotation runtime Lf7/b;
        value = "shoe_lighting_color"
    .end annotation
.end field

.field private final shoeName:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "shoe_name"
    .end annotation
.end field

.field private final styleCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf7/b;
        value = "style_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/nike/adapt/network/assets/model/ShoeLightingColor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/nike/adapt/network/assets/model/ShoeLightingColor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "assetsAngled"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsProfile"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorName"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoeIdentifier"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoeLightingColor"

    invoke-static {p6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoeName"

    invoke-static {p7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "styleCodes"

    invoke-static {p8, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsAngled:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsProfile:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorName:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorwayVersion:I

    .line 6
    iput-object p5, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeIdentifier:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    .line 8
    iput-object p7, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeName:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/nike/adapt/network/assets/model/Colorway;->styleCodes:Ljava/util/List;

    .line 10
    iput-object p9, p0, Lcom/nike/adapt/network/assets/model/Colorway;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/network/assets/model/Colorway;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/nike/adapt/network/assets/model/ShoeLightingColor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/nike/adapt/network/assets/model/Colorway;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsAngled:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsProfile:Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/nike/adapt/network/assets/model/Colorway;->colorName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/nike/adapt/network/assets/model/Colorway;->colorwayVersion:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeIdentifier:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeName:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/nike/adapt/network/assets/model/Colorway;->styleCodes:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/nike/adapt/network/assets/model/Colorway;->identifier:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/nike/adapt/network/assets/model/Colorway;->copy(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/nike/adapt/network/assets/model/ShoeLightingColor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsAngled:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsProfile:Ljava/util/Map;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorwayVersion:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/nike/adapt/network/assets/model/ShoeLightingColor;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeName:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->styleCodes:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/nike/adapt/network/assets/model/ShoeLightingColor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/nike/adapt/network/assets/model/Colorway;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/nike/adapt/network/assets/model/ShoeLightingColor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nike/adapt/network/assets/model/Colorway;"
        }
    .end annotation

    const-string v0, "assetsAngled"

    move-object v2, p1

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsProfile"

    move-object v3, p2

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorName"

    move-object v4, p3

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoeIdentifier"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoeLightingColor"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoeName"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "styleCodes"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/network/assets/model/Colorway;

    move-object v1, v0

    move v5, p4

    invoke-direct/range {v1 .. v10}, Lcom/nike/adapt/network/assets/model/Colorway;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/nike/adapt/network/assets/model/ShoeLightingColor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/network/assets/model/Colorway;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/network/assets/model/Colorway;

    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsAngled:Ljava/util/Map;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/Colorway;->assetsAngled:Ljava/util/Map;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsProfile:Ljava/util/Map;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/Colorway;->assetsProfile:Ljava/util/Map;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/Colorway;->colorName:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorwayVersion:I

    iget v3, p1, Lcom/nike/adapt/network/assets/model/Colorway;->colorwayVersion:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/Colorway;->shoeIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/Colorway;->shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeName:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/Colorway;->shoeName:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->styleCodes:Ljava/util/List;

    iget-object v3, p1, Lcom/nike/adapt/network/assets/model/Colorway;->styleCodes:Ljava/util/List;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/nike/adapt/network/assets/model/Colorway;->identifier:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAssetsAngled()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsAngled:Ljava/util/Map;

    return-object v0
.end method

.method public final getAssetsProfile()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsProfile:Ljava/util/Map;

    return-object v0
.end method

.method public final getColorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColorwayVersion()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorwayVersion:I

    return v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getShoeIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getShoeLightingColor()Lcom/nike/adapt/network/assets/model/ShoeLightingColor;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    return-object v0
.end method

.method public final getShoeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyleCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->styleCodes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsAngled:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsProfile:Ljava/util/Map;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Lfa/m;->d(Ljava/util/Map;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorName:Ljava/lang/String;

    .line 3
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorwayVersion:I

    .line 5
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeIdentifier:Ljava/lang/String;

    .line 7
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    invoke-virtual {v1}, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeName:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->styleCodes:Ljava/util/List;

    .line 11
    invoke-static {v1, v0, v2}, La4/g;->d(Ljava/util/List;II)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsAngled:Ljava/util/Map;

    iget-object v1, p0, Lcom/nike/adapt/network/assets/model/Colorway;->assetsProfile:Ljava/util/Map;

    iget-object v2, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorName:Ljava/lang/String;

    iget v3, p0, Lcom/nike/adapt/network/assets/model/Colorway;->colorwayVersion:I

    iget-object v4, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeIdentifier:Ljava/lang/String;

    iget-object v5, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeLightingColor:Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    iget-object v6, p0, Lcom/nike/adapt/network/assets/model/Colorway;->shoeName:Ljava/lang/String;

    iget-object v7, p0, Lcom/nike/adapt/network/assets/model/Colorway;->styleCodes:Ljava/util/List;

    iget-object v8, p0, Lcom/nike/adapt/network/assets/model/Colorway;->identifier:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Colorway(assetsAngled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", assetsProfile="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", colorName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", colorwayVersion="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", shoeIdentifier="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shoeLightingColor="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shoeName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", styleCodes="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", identifier="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 1
    invoke-static {v9, v8, v0}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
