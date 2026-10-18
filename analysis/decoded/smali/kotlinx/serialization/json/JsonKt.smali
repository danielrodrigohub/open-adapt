.class public final Lkotlinx/serialization/json/JsonKt;
.super Ljava/lang/Object;
.source "Json.kt"


# direct methods
.method public static final Json(Lkotlinx/serialization/json/Json;Lqd/l;)Lkotlinx/serialization/json/Json;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lqd/l<",
            "-",
            "Lkotlinx/serialization/json/JsonBuilder;",
            "Lfd/o;",
            ">;)",
            "Lkotlinx/serialization/json/Json;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonBuilder;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonBuilder;-><init>(Lkotlinx/serialization/json/Json;)V

    .line 2
    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonBuilder;->build$kotlinx_serialization_json()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p0

    .line 4
    new-instance p1, Lkotlinx/serialization/json/JsonImpl;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonBuilder;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lkotlinx/serialization/json/JsonImpl;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V

    return-object p1
.end method

.method public static synthetic Json$default(Lkotlinx/serialization/json/Json;Lqd/l;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/JsonKt;->Json(Lkotlinx/serialization/json/Json;Lqd/l;)Lkotlinx/serialization/json/Json;

    move-result-object p0

    return-object p0
.end method
