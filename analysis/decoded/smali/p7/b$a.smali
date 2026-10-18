.class public final enum Lp7/b$a;
.super Ljava/lang/Enum;
.source "GradientLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp7/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum j:Lp7/b$a;

.field public static final enum k:Lp7/b$a;

.field public static final enum l:Lp7/b$a;

.field public static final enum m:Lp7/b$a;

.field public static final enum n:Lp7/b$a;

.field public static final enum o:Lp7/b$a;

.field public static final enum p:Lp7/b$a;

.field public static final enum q:Lp7/b$a;

.field public static final enum r:Lp7/b$a;

.field public static final enum s:Lp7/b$a;

.field public static final enum t:Lp7/b$a;

.field public static final enum u:Lp7/b$a;

.field public static final enum v:Lp7/b$a;

.field public static final enum w:Lp7/b$a;

.field public static final synthetic x:[Lp7/b$a;


# instance fields
.field public final h:[I

.field public final i:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lp7/b$a;

    const/4 v1, 0x3

    new-array v2, v1, [I

    const-string v3, "#BAFFE7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "#47A9CA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "#04578E"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v2, v6

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v7, "AURORA_GREEN"

    invoke-direct {v0, v7, v4, v2, v3}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v0, Lp7/b$a;->j:Lp7/b$a;

    .line 2
    new-instance v2, Lp7/b$a;

    new-array v3, v1, [I

    const-string v7, "#B1F5FF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v4

    const-string v7, "#3D76E5"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v5

    const-string v7, "#0015CD"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v6

    new-array v7, v1, [F

    fill-array-data v7, :array_1

    const-string v8, "HERO_BLUE"

    invoke-direct {v2, v8, v5, v3, v7}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v2, Lp7/b$a;->k:Lp7/b$a;

    .line 3
    new-instance v3, Lp7/b$a;

    new-array v7, v1, [I

    const-string v8, "#A8B5E4"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    const-string v8, "#3C59C0"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v5

    const-string v8, "#041BB4"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    const-string v9, "RACER_BLUE"

    invoke-direct {v3, v9, v6, v7, v8}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v3, Lp7/b$a;->l:Lp7/b$a;

    .line 4
    new-instance v7, Lp7/b$a;

    new-array v8, v1, [I

    const-string v9, "#FFD7DA"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v4

    const-string v9, "#95418C"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v5

    const-string v9, "#4F0558"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v6

    new-array v9, v1, [F

    fill-array-data v9, :array_3

    const-string v10, "VIVID_PURPLE"

    invoke-direct {v7, v10, v1, v8, v9}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v7, Lp7/b$a;->m:Lp7/b$a;

    .line 5
    new-instance v8, Lp7/b$a;

    new-array v9, v1, [I

    const-string v10, "#FFD6D7"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v4

    const-string v10, "#FF6AA4"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v5

    const-string v10, "#FF0B6A"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v6

    new-array v10, v1, [F

    fill-array-data v10, :array_4

    const-string v11, "PINK_BLAST"

    const/4 v12, 0x4

    invoke-direct {v8, v11, v12, v9, v10}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v8, Lp7/b$a;->n:Lp7/b$a;

    .line 6
    new-instance v9, Lp7/b$a;

    new-array v10, v1, [I

    const-string v11, "#F8CAE5"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v4

    const-string v11, "#E64363"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v5

    const-string v11, "#D8081C"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v6

    new-array v11, v1, [F

    fill-array-data v11, :array_5

    const-string v13, "RED_ORBIT"

    const/4 v14, 0x5

    invoke-direct {v9, v13, v14, v10, v11}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v9, Lp7/b$a;->o:Lp7/b$a;

    .line 7
    new-instance v10, Lp7/b$a;

    new-array v11, v1, [I

    const-string v13, "#FFCFCF"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    aput v13, v11, v4

    const-string v13, "#FF5652"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    aput v13, v11, v5

    const-string v13, "#FF0100"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    aput v13, v11, v6

    new-array v13, v1, [F

    fill-array-data v13, :array_6

    const-string v15, "BRIGHT_CRIMSON"

    const/4 v14, 0x6

    invoke-direct {v10, v15, v14, v11, v13}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v10, Lp7/b$a;->p:Lp7/b$a;

    .line 8
    new-instance v11, Lp7/b$a;

    new-array v13, v1, [I

    const-string v15, "#FFC5A1"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v13, v4

    const-string v15, "#FF7625"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v13, v5

    const-string v15, "#FF4801"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v13, v6

    new-array v15, v1, [F

    fill-array-data v15, :array_7

    const-string v12, "TOTAL_ORANGE"

    const/4 v14, 0x7

    invoke-direct {v11, v12, v14, v13, v15}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v11, Lp7/b$a;->q:Lp7/b$a;

    .line 9
    new-instance v12, Lp7/b$a;

    new-array v13, v1, [I

    const-string v15, "#FFF600"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v13, v4

    const-string v15, "#EBCB00"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v13, v5

    const-string v15, "#FF8300"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v13, v6

    new-array v15, v1, [F

    fill-array-data v15, :array_8

    const-string v14, "OPTIC_YELLOW"

    const/16 v6, 0x8

    invoke-direct {v12, v14, v6, v13, v15}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v12, Lp7/b$a;->r:Lp7/b$a;

    .line 10
    new-instance v13, Lp7/b$a;

    new-array v14, v1, [I

    const-string v15, "#D7FF2C"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v14, v4

    const-string v15, "#84D70E"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v14, v5

    const-string v15, "#43B100"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const/16 v18, 0x2

    aput v15, v14, v18

    new-array v15, v1, [F

    fill-array-data v15, :array_9

    const-string v6, "ELECTRIC_GREEN"

    const/16 v5, 0x9

    invoke-direct {v13, v6, v5, v14, v15}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v13, Lp7/b$a;->s:Lp7/b$a;

    .line 11
    new-instance v6, Lp7/b$a;

    new-array v14, v1, [I

    const-string v15, "#BEFFB4"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    aput v15, v14, v4

    const-string v15, "#1FAC2B"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const/16 v19, 0x1

    aput v15, v14, v19

    const-string v15, "#11801F"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const/16 v18, 0x2

    aput v15, v14, v18

    new-array v15, v1, [F

    fill-array-data v15, :array_a

    const-string v5, "GREEN_SPARK"

    const/16 v4, 0xa

    invoke-direct {v6, v5, v4, v14, v15}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v6, Lp7/b$a;->t:Lp7/b$a;

    .line 12
    new-instance v5, Lp7/b$a;

    new-array v14, v1, [I

    const-string v15, "#BBBBBB"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const/16 v20, 0x0

    aput v15, v14, v20

    const-string v15, "#999999"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const/16 v19, 0x1

    aput v15, v14, v19

    const-string v15, "#CC666666"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const/16 v18, 0x2

    aput v15, v14, v18

    new-array v15, v1, [F

    fill-array-data v15, :array_b

    const-string v4, "WHITE"

    const/16 v1, 0xb

    invoke-direct {v5, v4, v1, v14, v15}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v5, Lp7/b$a;->u:Lp7/b$a;

    .line 13
    new-instance v4, Lp7/b$a;

    const/4 v14, 0x3

    new-array v15, v14, [I

    const-string v21, "#1D1D1D"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const/16 v20, 0x0

    aput v21, v15, v20

    const-string v21, "#272727"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const/16 v19, 0x1

    aput v21, v15, v19

    const-string v21, "#000000"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const/16 v18, 0x2

    aput v21, v15, v18

    new-array v1, v14, [F

    fill-array-data v1, :array_c

    const-string v14, "LIGHTS_OFF"

    move-object/from16 v22, v5

    const/16 v5, 0xc

    invoke-direct {v4, v14, v5, v15, v1}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v4, Lp7/b$a;->v:Lp7/b$a;

    .line 14
    new-instance v1, Lp7/b$a;

    const/4 v14, 0x6

    new-array v15, v14, [I

    const-string v14, "#161616"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const/16 v20, 0x0

    aput v14, v15, v20

    const-string v14, "#2B2B2B"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const/16 v19, 0x1

    aput v14, v15, v19

    const-string v14, "#6A6A65"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const/16 v18, 0x2

    aput v14, v15, v18

    const-string v14, "#A6A197"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const/16 v21, 0x3

    aput v14, v15, v21

    const-string v14, "#C7C8C1"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const/16 v17, 0x4

    aput v14, v15, v17

    const-string v14, "#C7C9C1"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const/16 v16, 0x5

    aput v14, v15, v16

    const/4 v14, 0x6

    new-array v5, v14, [F

    fill-array-data v5, :array_d

    const-string v14, "GRAIN"

    move-object/from16 v23, v4

    const/16 v4, 0xd

    invoke-direct {v1, v14, v4, v15, v5}, Lp7/b$a;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lp7/b$a;->w:Lp7/b$a;

    const/16 v5, 0xe

    new-array v5, v5, [Lp7/b$a;

    const/4 v14, 0x0

    aput-object v0, v5, v14

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v9, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v11, v5, v0

    const/16 v0, 0x8

    aput-object v12, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v6, v5, v0

    const/16 v0, 0xb

    aput-object v22, v5, v0

    const/16 v0, 0xc

    aput-object v23, v5, v0

    aput-object v1, v5, v4

    sput-object v5, Lp7/b$a;->x:[Lp7/b$a;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3ef6872b
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3e51999a
        0x3edccccd
        0x3f280000    # 0.65625f
        0x3f56cccd
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[I[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lp7/b$a;->h:[I

    iput-object p4, p0, Lp7/b$a;->i:[F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp7/b$a;
    .locals 1

    const-class v0, Lp7/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp7/b$a;

    return-object p0
.end method

.method public static values()[Lp7/b$a;
    .locals 1

    sget-object v0, Lp7/b$a;->x:[Lp7/b$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp7/b$a;

    return-object v0
.end method
