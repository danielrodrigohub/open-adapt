.class public final Ly8/b;
.super Ljava/lang/Object;
.source "LightEffectsUtil.kt"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly8/b$a;
    }
.end annotation


# static fields
.field public static final a:Ly8/b;

.field public static final b:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly8/b;

    invoke-direct {v0}, Ly8/b;-><init>()V

    sput-object v0, Ly8/b;->a:Ly8/b;

    sget-object v0, Ly8/b$b;->h:Ly8/b$b;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Ly8/b;->b:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "context.assets.open(fileName)"

    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lyd/a;->b:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 p1, 0x2000

    instance-of p2, v1, Ljava/io/BufferedReader;

    if-eqz p2, :cond_0

    check-cast v1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    :goto_0
    :try_start_1
    invoke-static {v1}, Landroidx/lifecycle/o;->E(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2
    new-instance p2, Le7/h;

    invoke-direct {p2}, Le7/h;-><init>()V

    const-class v0, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    invoke-static {p2, p1, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {v1, p1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    sget-object p2, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LightEffectsUtil.getJsonDataFromAsset : "

    .line 6
    invoke-static {v1, p1, p2}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    return-object v0
.end method

.method public final b()Lh8/a;
    .locals 1

    sget-object v0, Ly8/b;->b:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final c(Lv7/c;)Ljava/lang/String;
    .locals 2

    const-string v0, "effectType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lv7/c$e;->c:Lv7/c$e;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f110104

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lv7/c$f;->c:Lv7/c$f;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f110105

    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f110103

    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lv7/c$d;->c:Lv7/c$d;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1
.end method

.method public final d(Ly8/i$a;Lcom/nike/adapt/adk/model/AdaptShoeColor;)Ljava/lang/String;
    .locals 3

    const-string v0, "shoeColor"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Ly8/i$a;->a:Lv7/c;

    .line 2
    sget-object v0, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "gradient"

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lv7/c$f;->c:Lv7/c$f;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "strobe"

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lv7/c$e;->c:Lv7/c$e;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "pulsing"

    goto :goto_0

    :cond_2
    const-string p1, "NA"

    .line 5
    :goto_0
    sget-object v0, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {v0, p2}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object p2

    sget-object v0, Ly8/b$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 6
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :pswitch_0
    const-string p2, "dual_HeroBlue_PinkBlast"

    goto :goto_1

    :pswitch_1
    const-string p2, "dual_GreenSpark_White"

    goto :goto_1

    :pswitch_2
    const-string p2, "dual_GreenSpark_OpticYellow"

    goto :goto_1

    :pswitch_3
    const-string p2, "dual_RedOrbit_White"

    goto :goto_1

    :pswitch_4
    const-string p2, "dual_RedOrbit_OpticYellow"

    goto :goto_1

    :pswitch_5
    const-string p2, "dual_RedOrbit_RacerBlue"

    goto :goto_1

    :pswitch_6
    const-string p2, "dual_VividPurple_AuroraGreen"

    goto :goto_1

    :pswitch_7
    const-string p2, "dual_VividPurple_White"

    goto :goto_1

    :pswitch_8
    const-string p2, "dual_VividPurple_OpticYellow"

    goto :goto_1

    :pswitch_9
    const-string p2, "dual_RacerBlue_AuroraGreen"

    goto :goto_1

    :pswitch_a
    const-string p2, "dual_RacerBlue_ElectricGreen"

    goto :goto_1

    :pswitch_b
    const-string p2, "dual_RacerBlue_OpticYellow"

    goto :goto_1

    :pswitch_c
    const-string p2, "single_White"

    goto :goto_1

    :pswitch_d
    const-string p2, "single_GreenSpark"

    goto :goto_1

    :pswitch_e
    const-string p2, "single_ElectricGreen"

    goto :goto_1

    :pswitch_f
    const-string p2, "single_OpticYellow"

    goto :goto_1

    :pswitch_10
    const-string p2, "single_TotalOrange"

    goto :goto_1

    :pswitch_11
    const-string p2, "single_BrightCrimson"

    goto :goto_1

    :pswitch_12
    const-string p2, "single_RedOrbit"

    goto :goto_1

    :pswitch_13
    const-string p2, "single_PinkBlast"

    goto :goto_1

    :pswitch_14
    const-string p2, "single_VividPurple"

    goto :goto_1

    :pswitch_15
    const-string p2, "single_RacerBlue"

    goto :goto_1

    :pswitch_16
    const-string p2, "single_HeroBlue"

    goto :goto_1

    :pswitch_17
    const-string p2, "single_AuroraGreen"

    :goto_1
    const-string v0, "animations/"

    const-string v1, "/"

    const-string v2, "_"

    .line 7
    invoke-static {v0, p1, v1, p1, v2}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".json"

    .line 8
    invoke-static {p1, p2, v0}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

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

.method public final e(Lcom/nike/adapt/adk/Shoe;)Lcom/nike/adapt/adk/model/LightColor;
    .locals 2

    const-string v0, "side"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/InMemoryCache;->getActiveLightPack()Lz8/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/LightColor;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/model/LightColor;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->OPTIC_YELLOW:Lcom/nike/adapt/adk/model/LightColor;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->HERO_BLUE:Lcom/nike/adapt/adk/model/LightColor;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->ELECTRIC_GREEN:Lcom/nike/adapt/adk/model/LightColor;

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->VIVID_PURPLE:Lcom/nike/adapt/adk/model/LightColor;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->OPTIC_YELLOW:Lcom/nike/adapt/adk/model/LightColor;

    goto :goto_0

    .line 6
    :cond_6
    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->AURORA_GREEN:Lcom/nike/adapt/adk/model/LightColor;

    :goto_0
    return-object p1
.end method

.method public final f(Z)Lcom/nike/adapt/adk/model/LightColor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly8/b;->b()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    .line 2
    :goto_0
    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->LIGHT_OFF:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Ly8/b;->b()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Ly8/b;->b()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    .line 5
    :goto_1
    sget-object p1, Lcom/nike/adapt/adk/model/LightColor;->Companion:Lcom/nike/adapt/adk/model/LightColor$Companion;

    invoke-virtual {p1, v0}, Lcom/nike/adapt/adk/model/LightColor$Companion;->valueOf(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)Lcom/nike/adapt/adk/model/LightColor;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lv7/c;)Ljava/lang/String;
    .locals 4

    const-string v0, "effectType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lv7/c$e;->c:Lv7/c$e;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pulsing_red_blue.json"

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget-object v0, Lv7/c$f;->c:Lv7/c$f;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "strobe_red_blue.json"

    goto/16 :goto_2

    .line 3
    :cond_1
    sget-object v0, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "gradient_icon_animations/gradient_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ly8/b;->b()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ly8/b;->b()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    if-eq v1, v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    const-string v3, "dual_"

    goto :goto_1

    :cond_4
    const-string v3, "single_"

    .line 9
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "this as java.lang.String).toLowerCase()"

    invoke-static {v1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, ".json"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "jsonName.append(\".json\").toString()"

    invoke-static {v1, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p1}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ly8/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, " color combination file does not exist"

    .line 15
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    sget-object v0, Lv7/c$d;->c:Lv7/c$d;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_2
    return-object v1

    :cond_8
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1
.end method
