.class public final Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "StreamingJsonDecoder.kt"


# instance fields
.field private final lexer:Lkotlinx/serialization/json/internal/JsonLexer;

.field private final serializersModule:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonLexer;Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "lexer"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 3
    invoke-virtual {p2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method


# virtual methods
.method public decodeByte()B
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 2
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "<this>"

    .line 3
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lp4/h;->F(Ljava/lang/String;)Lfd/k;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    iget v3, v3, Lfd/k;->h:I

    const/16 v4, 0xff

    .line 6
    invoke-static {v3, v4}, Lg7/c;->g(II)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-byte v3, v3

    .line 7
    new-instance v4, Lfd/j;

    invoke-direct {v4, v3}, Lfd/j;-><init>(B)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    .line 8
    iget-byte v0, v4, Lfd/j;->h:B

    return v0

    .line 9
    :cond_2
    invoke-static {v1}, Lyd/n;->V(Ljava/lang/String;)Ljava/lang/Void;

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UByte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for input \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 11
    invoke-static {v0, v1, v3, v4, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 12
    throw v0
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeInt()I
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 2
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "<this>"

    .line 3
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lp4/h;->F(Ljava/lang/String;)Lfd/k;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget v0, v3, Lfd/k;->h:I

    return v0

    .line 6
    :cond_0
    invoke-static {v1}, Lyd/n;->V(Ljava/lang/String;)Ljava/lang/Void;

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UInt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for input \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 8
    invoke-static {v0, v1, v3, v4, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 9
    throw v0
.end method

.method public decodeLong()J
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 2
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "<this>"

    .line 3
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lp4/h;->G(Ljava/lang/String;)Lfd/l;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget-wide v0, v3, Lfd/l;->h:J

    return-wide v0

    .line 6
    :cond_0
    invoke-static {v1}, Lyd/n;->V(Ljava/lang/String;)Ljava/lang/Void;

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ULong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for input \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 8
    invoke-static {v0, v1, v3, v4, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 9
    throw v0
.end method

.method public decodeShort()S
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 2
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "<this>"

    .line 3
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lp4/h;->F(Ljava/lang/String;)Lfd/k;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    iget v3, v3, Lfd/k;->h:I

    const v4, 0xffff

    .line 6
    invoke-static {v3, v4}, Lg7/c;->g(II)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-short v3, v3

    .line 7
    new-instance v4, Lfd/m;

    invoke-direct {v4, v3}, Lfd/m;-><init>(S)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    .line 8
    iget-short v0, v4, Lfd/m;->h:S

    return v0

    .line 9
    :cond_2
    invoke-static {v1}, Lyd/n;->V(Ljava/lang/String;)Ljava/lang/Void;

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UShort"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for input \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 11
    invoke-static {v0, v1, v3, v4, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 12
    throw v0
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method
