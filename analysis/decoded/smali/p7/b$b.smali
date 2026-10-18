.class public final synthetic Lp7/b$b;
.super Ljava/lang/Object;
.source "GradientLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    invoke-static {}, Lcom/nike/adapt/adk/model/ShoeColor;->values()[Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->AURORA_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->RACER_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->VIVID_PURPLE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->PINK_BLAST:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->RED_ORBIT:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v8, 0x7

    aput v8, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->TOTAL_ORANGE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v9, 0x8

    aput v9, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v10, 0x9

    aput v10, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v11, 0xa

    aput v11, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->GREEN_SPARK:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v12, 0xb

    aput v12, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->WHITE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v13, 0xc

    aput v13, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->RACER_BLUE_OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0xd

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->RACER_BLUE_ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0xe

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->RACER_BLUE_AURORA_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0xf

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->VIVID_PURPLE_OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x10

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->VIVID_PURPLE_WHITE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x11

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->VIVID_PURPLE_AURORA_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x12

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->RED_ORBIT_RACER_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x13

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->RED_ORBIT_OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x14

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->RED_ORBIT_WHITE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x15

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->GREEN_SPARK_OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x16

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->GREEN_SPARK_WHITE:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x17

    aput v14, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->HERO_BLUE_PINK_BLAST:Lcom/nike/adapt/adk/model/ShoeColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v14, 0x18

    aput v14, v0, v1

    sput-object v0, Lp7/b$b;->a:[I

    invoke-static {}, Lz8/a;->values()[Lz8/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lz8/a;->m:Lz8/a;

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Lz8/a;->n:Lz8/a;

    aput v3, v0, v2

    sget-object v1, Lz8/a;->o:Lz8/a;

    aput v4, v0, v3

    sget-object v1, Lz8/a;->p:Lz8/a;

    aput v5, v0, v4

    sget-object v1, Lz8/a;->q:Lz8/a;

    aput v6, v0, v5

    invoke-static {}, Lcom/nike/adapt/adk/model/LightColor;->values()[Lcom/nike/adapt/adk/model/LightColor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->AURORA_GREEN:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->RACER_BLUE:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->VIVID_PURPLE:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->PINK_BLAST:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->RED_ORBIT:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->TOTAL_ORANGE:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->OPTIC_YELLOW:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->GREEN_SPARK:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1

    sget-object v1, Lcom/nike/adapt/adk/model/LightColor;->WHITE:Lcom/nike/adapt/adk/model/LightColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1

    sput-object v0, Lp7/b$b;->b:[I

    invoke-static {}, Lp7/b$a;->values()[Lp7/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lp7/b$a;->u:Lp7/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lp7/b$a;->v:Lp7/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
