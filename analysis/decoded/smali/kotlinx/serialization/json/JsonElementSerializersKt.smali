.class public final Lkotlinx/serialization/json/JsonElementSerializersKt;
.super Ljava/lang/Object;
.source "JsonElementSerializers.kt"


# direct methods
.method public static final synthetic access$defer(Lqd/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->defer(Lqd/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$verify(Lkotlinx/serialization/encoding/Decoder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->verify(Lkotlinx/serialization/encoding/Decoder;)V

    return-void
.end method

.method public static final synthetic access$verify(Lkotlinx/serialization/encoding/Encoder;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->verify(Lkotlinx/serialization/encoding/Encoder;)V

    return-void
.end method

.method public static final asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlinx/serialization/json/JsonDecoder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object p0

    const-string v1, "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got "

    .line 4
    invoke-static {v1, p0}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final asJsonEncoder(Lkotlinx/serialization/encoding/Encoder;)Lkotlinx/serialization/json/JsonEncoder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/JsonEncoder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object p0

    const-string v1, "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got "

    .line 4
    invoke-static {v1, p0}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final defer(Lqd/a;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "+",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ">;)",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lqd/a;)V

    return-object v0
.end method

.method private static final verify(Lkotlinx/serialization/encoding/Decoder;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    return-void
.end method

.method private static final verify(Lkotlinx/serialization/encoding/Encoder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt;->asJsonEncoder(Lkotlinx/serialization/encoding/Encoder;)Lkotlinx/serialization/json/JsonEncoder;

    return-void
.end method
