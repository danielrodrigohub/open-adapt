.class public final Lkotlinx/serialization/json/internal/JsonTreeReader;
.super Ljava/lang/Object;
.source "JsonTreeReader.kt"


# instance fields
.field private final isLenient:Z

.field private final lexer:Lkotlinx/serialization/json/internal/JsonLexer;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/JsonLexer;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    .line 3
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    return-void
.end method

.method private final readArray()Lkotlinx/serialization/json/JsonElement;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v1, v5, :cond_6

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    :goto_0
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/JsonLexer;->canConsumeValue()Z

    move-result v6

    const/16 v7, 0x9

    if-eqz v6, :cond_3

    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    if-eq v0, v5, :cond_0

    .line 8
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    if-ne v0, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v4

    .line 9
    :goto_1
    iget v8, v6, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "Expected end of the array or comma"

    .line 10
    invoke-virtual {v6, v0, v8}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lfd/b;

    invoke-direct {v0}, Lfd/b;-><init>()V

    throw v0

    :cond_3
    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    .line 11
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0, v7}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(B)B

    goto :goto_2

    :cond_4
    if-eq v0, v5, :cond_5

    .line 12
    :goto_2
    new-instance v0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    return-object v0

    .line 13
    :cond_5
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v1, "Unexpected trailing comma"

    .line 14
    invoke-static {v0, v1, v4, v3, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 15
    throw v0

    .line 16
    :cond_6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v1, "Unexpected leading comma"

    .line 17
    invoke-static {v0, v1, v4, v3, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 18
    throw v0
.end method

.method private final readObject()Lkotlinx/serialization/json/JsonElement;
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(B)B

    move-result v0

    .line 2
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eq v2, v6, :cond_6

    .line 3
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    :cond_0
    :goto_0
    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v7}, Lkotlinx/serialization/json/internal/JsonLexer;->canConsumeValue()Z

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_3

    .line 5
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_1
    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(B)B

    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v7

    .line 8
    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    if-eq v0, v6, :cond_0

    if-ne v0, v8, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v1, "Expected end of the object or comma"

    .line 11
    invoke-static {v0, v1, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 12
    throw v0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0, v8}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(B)B

    goto :goto_2

    :cond_4
    if-eq v0, v6, :cond_5

    .line 14
    :goto_2
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 15
    :cond_5
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v1, "Unexpected trailing comma"

    .line 16
    invoke-static {v0, v1, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 17
    throw v0

    .line 18
    :cond_6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const-string v1, "Unexpected leading comma"

    .line 19
    invoke-static {v0, v1, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 20
    throw v0
.end method

.method private final readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez p1, :cond_2

    const-string v1, "null"

    .line 4
    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p1

    .line 5
    :cond_2
    new-instance v1, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v1, v0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;Z)V

    return-object v1
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 4
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 5
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6
    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/JsonLexer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "Can\'t begin reading element, unexpected token"

    .line 7
    invoke-static {v0, v4, v1, v2, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 8
    throw v0
.end method
