.class public final Ly8/k;
.super Ljava/lang/Object;
.source "LightingUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly8/k$a;
    }
.end annotation


# static fields
.field public static final a:Ly8/k;

.field public static final b:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly8/k;

    invoke-direct {v0}, Ly8/k;-><init>()V

    sput-object v0, Ly8/k;->a:Ly8/k;

    sget-object v0, Ly8/k$b;->h:Ly8/k$b;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Ly8/k;->b:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nike/adapt/adk/model/ShoeColor;)I
    .locals 1

    const-string v0, "shoeColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ly8/k$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :pswitch_0
    const p1, 0x7f0a019a

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x7f0a0199

    goto/16 :goto_0

    :pswitch_2
    const p1, 0x7f0a0198

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0a01a0

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0a019e

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0a019f

    goto :goto_0

    :pswitch_6
    const p1, 0x7f0a01a1

    goto :goto_0

    :pswitch_7
    const p1, 0x7f0a01a3

    goto :goto_0

    :pswitch_8
    const p1, 0x7f0a01a2

    goto :goto_0

    :pswitch_9
    const p1, 0x7f0a019b

    goto :goto_0

    :pswitch_a
    const p1, 0x7f0a019c

    goto :goto_0

    :pswitch_b
    const p1, 0x7f0a019d

    goto :goto_0

    :pswitch_c
    const p1, 0x7f0a03f1

    goto :goto_0

    :pswitch_d
    const p1, 0x7f0a03e9

    goto :goto_0

    :pswitch_e
    const p1, 0x7f0a03e8

    goto :goto_0

    :pswitch_f
    const p1, 0x7f0a03eb

    goto :goto_0

    :pswitch_10
    const p1, 0x7f0a03ef

    goto :goto_0

    :pswitch_11
    const p1, 0x7f0a03e7

    goto :goto_0

    :pswitch_12
    const p1, 0x7f0a03ee

    goto :goto_0

    :pswitch_13
    const p1, 0x7f0a03ec

    goto :goto_0

    :pswitch_14
    const p1, 0x7f0a03f0

    goto :goto_0

    :pswitch_15
    const p1, 0x7f0a03ed

    goto :goto_0

    :pswitch_16
    const p1, 0x7f0a03ea

    goto :goto_0

    :pswitch_17
    const p1, 0x7f0a03e6

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Lcom/nike/adapt/adk/model/ShoeColor;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->WHITE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->VIVID_PURPLE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->TOTAL_ORANGE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 5
    :pswitch_3
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->RED_ORBIT:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 6
    :pswitch_4
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->RACER_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 7
    :pswitch_5
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->PINK_BLAST:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 8
    :pswitch_6
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 9
    :pswitch_7
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 10
    :pswitch_8
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->GREEN_SPARK:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 11
    :pswitch_9
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 12
    :pswitch_a
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 13
    :pswitch_b
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->AURORA_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 14
    :pswitch_c
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->VIVID_PURPLE_WHITE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 15
    :pswitch_d
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->VIVID_PURPLE_OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 16
    :pswitch_e
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->VIVID_PURPLE_AURORA_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 17
    :pswitch_f
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->RED_ORBIT_WHITE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 18
    :pswitch_10
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->RED_ORBIT_RACER_BLUE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 19
    :pswitch_11
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->RED_ORBIT_OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 20
    :pswitch_12
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->RACER_BLUE_OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 21
    :pswitch_13
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->RACER_BLUE_ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 22
    :pswitch_14
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->RACER_BLUE_AURORA_GREEN:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 23
    :pswitch_15
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->HERO_BLUE_PINK_BLAST:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 24
    :pswitch_16
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->GREEN_SPARK_WHITE:Lcom/nike/adapt/adk/model/ShoeColor;

    goto :goto_0

    .line 25
    :pswitch_17
    sget-object p1, Lcom/nike/adapt/adk/model/ShoeColor;->GREEN_SPARK_OPTI_YELLOW:Lcom/nike/adapt/adk/model/ShoeColor;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0198
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a03e6
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
