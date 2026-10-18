.class public final enum Lba/f;
.super Ljava/lang/Enum;
.source "AdaptKitColorPreset.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lba/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Lba/f$a;

.field public static final enum m:Lba/f;

.field public static final enum n:Lba/f;

.field public static final enum o:Lba/f;

.field public static final synthetic p:[Lba/f;


# instance fields
.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v7, Lba/f;

    const-string v1, "AURORA_GREEN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/16 v5, 0xff

    const-string v6, "Aurora Green"

    move-object v0, v7

    .line 2
    invoke-direct/range {v0 .. v6}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 3
    new-instance v0, Lba/f;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/16 v13, 0xff

    const-string v9, "HERO_BLUE"

    const-string v14, "Hero Blue"

    move-object v8, v0

    .line 4
    invoke-direct/range {v8 .. v14}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 5
    sput-object v0, Lba/f;->m:Lba/f;

    .line 6
    new-instance v1, Lba/f;

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xff

    const-string v16, "RACER_BLUE"

    const-string v21, "Racer Blue"

    move-object v15, v1

    .line 7
    invoke-direct/range {v15 .. v21}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 8
    new-instance v2, Lba/f;

    const/4 v10, 0x3

    const/16 v11, 0x64

    const/16 v16, 0x0

    const/16 v13, 0xc8

    const/4 v12, 0x0

    const-string v9, "VIVID_PURPLE"

    const-string v14, "Vivid Purple"

    move-object v8, v2

    .line 9
    invoke-direct/range {v8 .. v14}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 10
    new-instance v3, Lba/f;

    const/16 v19, 0x4

    const/16 v11, 0xff

    const/16 v21, 0xa

    const/16 v22, 0x50

    const/16 v20, 0xff

    const-string v18, "PINK_BLAST"

    const-string v23, "Pink Blast"

    move-object/from16 v17, v3

    .line 11
    invoke-direct/range {v17 .. v23}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 12
    new-instance v4, Lba/f;

    const/4 v14, 0x5

    const/16 v15, 0xf0

    const/16 v17, 0x8

    const-string v13, "RED_ORBIT"

    const-string v18, "Red Orbit"

    move-object v12, v4

    .line 13
    invoke-direct/range {v12 .. v18}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 14
    new-instance v5, Lba/f;

    const/16 v21, 0x6

    const/16 v23, 0x8

    const/4 v13, 0x0

    const/16 v22, 0xff

    const/16 v24, 0x0

    const-string v20, "BRIGHT_CRIMSON_V1"

    const-string v25, "Bright Crimson"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v25}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v5, Lba/f;->n:Lba/f;

    .line 15
    new-instance v6, Lba/f;

    const/16 v28, 0x7

    const/16 v17, 0xff

    const/16 v30, 0x10

    const/16 v31, 0x3

    const/16 v29, 0xff

    const-string v27, "BRIGHT_CRIMSON"

    const-string v32, "Bright Crimson"

    move-object/from16 v26, v6

    .line 16
    invoke-direct/range {v26 .. v32}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 17
    new-instance v21, Lba/f;

    const/16 v10, 0x8

    const/16 v12, 0x28

    const-string v9, "TOTAL_ORANGE"

    const-string v14, "Total Orange"

    move-object/from16 v8, v21

    .line 18
    invoke-direct/range {v8 .. v14}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 19
    new-instance v8, Lba/f;

    const/16 v16, 0x9

    const/16 v18, 0x78

    const/16 v19, 0x0

    const-string v15, "LASER_ORANGE"

    const-string v20, "Laser Orange"

    move-object v14, v8

    invoke-direct/range {v14 .. v20}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v8, Lba/f;->o:Lba/f;

    .line 20
    new-instance v9, Lba/f;

    const/16 v24, 0xa

    const/16 v25, 0xff

    const/16 v26, 0xff

    const/16 v27, 0x0

    const-string v23, "OPTI_YELLOW"

    const-string v28, "Opti Yellow"

    move-object/from16 v22, v9

    .line 21
    invoke-direct/range {v22 .. v28}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 22
    new-instance v17, Lba/f;

    const/16 v12, 0xb

    const/16 v13, 0x78

    const/16 v14, 0xf0

    const/4 v15, 0x0

    const/16 v25, 0x0

    const-string v11, "ELECTRIC_GREEN"

    const-string v16, "Electric Green"

    move-object/from16 v10, v17

    .line 23
    invoke-direct/range {v10 .. v16}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 24
    new-instance v10, Lba/f;

    const/16 v28, 0xc

    const/16 v29, 0x14

    const/16 v30, 0xf0

    const/16 v31, 0x0

    const-string v27, "GREEN_SPARK"

    const-string v32, "Green Spark"

    move-object/from16 v26, v10

    .line 25
    invoke-direct/range {v26 .. v32}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 26
    new-instance v11, Lba/f;

    const/16 v35, 0xd

    const/16 v36, 0xff

    const/16 v37, 0xff

    const/16 v38, 0xff

    const-string v34, "WHITE"

    const-string v39, "White"

    move-object/from16 v33, v11

    .line 27
    invoke-direct/range {v33 .. v39}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 28
    new-instance v12, Lba/f;

    const/16 v24, 0xe

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v23, "LIGHT_OFF"

    const-string v28, "lightOffColorName"

    move-object/from16 v22, v12

    .line 29
    invoke-direct/range {v22 .. v28}, Lba/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    const/16 v13, 0xf

    new-array v13, v13, [Lba/f;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v7, 0x1

    aput-object v0, v13, v7

    const/4 v0, 0x2

    aput-object v1, v13, v0

    const/4 v0, 0x3

    aput-object v2, v13, v0

    const/4 v0, 0x4

    aput-object v3, v13, v0

    const/4 v0, 0x5

    aput-object v4, v13, v0

    const/4 v0, 0x6

    aput-object v5, v13, v0

    const/4 v0, 0x7

    aput-object v6, v13, v0

    const/16 v0, 0x8

    aput-object v21, v13, v0

    const/16 v0, 0x9

    aput-object v8, v13, v0

    const/16 v0, 0xa

    aput-object v9, v13, v0

    const/16 v0, 0xb

    aput-object v17, v13, v0

    const/16 v0, 0xc

    aput-object v10, v13, v0

    const/16 v0, 0xd

    aput-object v11, v13, v0

    const/16 v0, 0xe

    aput-object v12, v13, v0

    .line 30
    sput-object v13, Lba/f;->p:[Lba/f;

    new-instance v0, Lba/f$a;

    invoke-direct {v0}, Lba/f$a;-><init>()V

    sput-object v0, Lba/f;->l:Lba/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lba/f;->h:I

    iput p4, p0, Lba/f;->i:I

    iput p5, p0, Lba/f;->j:I

    iput-object p6, p0, Lba/f;->k:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lba/f;
    .locals 1

    const-class v0, Lba/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lba/f;

    return-object p0
.end method

.method public static values()[Lba/f;
    .locals 1

    sget-object v0, Lba/f;->p:[Lba/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lba/f;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lba/f;->h:I

    iget v2, p0, Lba/f;->i:I

    iget v3, p0, Lba/f;->j:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": RGB("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
