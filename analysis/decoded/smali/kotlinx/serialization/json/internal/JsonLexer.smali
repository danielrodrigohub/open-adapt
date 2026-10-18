.class public final Lkotlinx/serialization/json/internal/JsonLexer;
.super Ljava/lang/Object;
.source "JsonLexer.kt"


# instance fields
.field public currentPosition:I

.field private escapedString:Ljava/lang/StringBuilder;

.field private peekedString:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-void
.end method

.method private final appendEsc(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->appendHex(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonLexerKt;->escapeToChar(I)C

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escaped char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, p1, v0, v1, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object p1

    .line 7
    throw p1
.end method

.method private final appendEscape(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    .line 2
    invoke-direct {p0, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->appendEsc(I)I

    move-result p1

    return p1
.end method

.method private final appendHex(Ljava/lang/String;I)I
    .locals 4

    add-int/lit8 v0, p2, 0x4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->fromHexChar(Ljava/lang/String;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, p2, 0x1

    .line 4
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/JsonLexer;->fromHexChar(Ljava/lang/String;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    .line 5
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/JsonLexer;->fromHexChar(Ljava/lang/String;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x3

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->fromHexChar(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr v2, p1

    int-to-char p1, v2

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "Unexpected EOF during unicode escape"

    const/4 v1, 0x2

    .line 8
    invoke-static {p0, v0, p1, v1, p2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object p1

    .line 9
    throw p1
.end method

.method private final appendRange(II)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final consumeBoolean(I)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    .line 3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    or-int/lit8 p1, p1, 0x20

    const/16 v0, 0x74

    if-ne p1, v0, :cond_0

    const-string p1, "rue"

    .line 4
    invoke-direct {p0, p1, v4}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeBooleanLiteral(Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    const-string p1, "alse"

    .line 5
    invoke-direct {p0, p1, v4}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeBooleanLiteral(Ljava/lang/String;I)V

    :goto_0
    return v3

    :cond_1
    const-string p1, "Expected valid boolean literal prefix, but had \'"

    .line 6
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p0, p1, v3, v2, v1}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object p1

    .line 9
    throw p1

    :cond_2
    const-string p1, "EOF"

    .line 10
    invoke-static {p0, p1, v3, v2, v1}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object p1

    .line 11
    throw p1
.end method

.method private final consumeBooleanLiteral(Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v0, v1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    move v1, v4

    :goto_0
    add-int/lit8 v5, v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 4
    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/2addr v1, p2

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/lit8 v1, v1, 0x20

    if-ne v6, v1, :cond_1

    if-le v5, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    const-string p1, "Expected valid boolean literal prefix, but had \'"

    .line 5
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p0, p1, v4, v3, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object p1

    .line 8
    throw p1

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return-void

    :cond_3
    const-string p1, "Unexpected end of boolean literal"

    .line 10
    invoke-static {p0, p1, v4, v3, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object p1

    .line 11
    throw p1
.end method

.method private final consumeString(II)Ljava/lang/String;
    .locals 4

    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, p1

    :goto_0
    const/16 v3, 0x22

    if-eq v1, v3, :cond_2

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_0

    .line 6
    invoke-direct {p0, v2, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->appendEscape(II)I

    move-result v2

    move p2, v2

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 8
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_1
    const-string p1, "EOF"

    .line 9
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lfd/b;

    invoke-direct {p1}, Lfd/b;-><init>()V

    throw p1

    :cond_2
    if-ne v2, p1, :cond_3

    .line 10
    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-direct {p0, v2, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object p1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 12
    iput p2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return-object p1
.end method

.method private final decodedString(II)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->appendRange(II)V

    .line 2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "escapedString.toString()"

    invoke-static {p1, p2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->escapedString:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1
.end method

.method private final fail(B)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "quotation mark \'\"\'"

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string p1, "comma \',\'"

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const-string p1, "semicolon \':\'"

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    const-string p1, "start of the object \'{\'"

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    const-string p1, "end of the object \'}\'"

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    const-string p1, "start of the array \'[\'"

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    const-string p1, "end of the array \']\'"

    goto :goto_0

    :cond_6
    const-string p1, "valid token"

    .line 1
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_8

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    if-gtz v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    :goto_1
    const-string v1, "EOF"

    :goto_2
    const-string v2, "Expected "

    const-string v3, ", but had \'"

    const-string v4, "\' instead"

    .line 2
    invoke-static {v2, p1, v3, v1, v4}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lfd/b;

    invoke-direct {p1}, Lfd/b;-><init>()V

    throw p1
.end method

.method public static synthetic fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget p2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private final fromHexChar(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, p1, :cond_0

    const/16 v2, 0x39

    if-gt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    sub-int/2addr p1, p2

    goto :goto_4

    :cond_1
    const/16 p2, 0x61

    if-gt p2, p1, :cond_2

    const/16 v2, 0x66

    if-gt p1, v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 p2, 0x41

    if-gt p2, p1, :cond_4

    const/16 v2, 0x46

    if-gt p1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    :goto_3
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0xa

    :goto_4
    return p1

    .line 2
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid toHexChar char \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in unicode escape"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v1, p2, v0}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object p1

    .line 4
    throw p1
.end method

.method private final isValidValueStart(C)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7d

    if-ne p1, v2, :cond_0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_2
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_4
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_5

    goto :goto_4

    :cond_5
    :goto_5
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method private final skipWhitespaces()I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 2
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return v0
.end method

.method private final takePeeked()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    return-object v0
.end method

.method private final unexpectedToken(C)V
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 p1, p1, -0x4

    const-string v0, "Expected string literal but \'null\' literal was found.\nUse \'coerceInputValues = true\' in \'Json {}` builder to coerce nulls to default values."

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lfd/b;

    invoke-direct {p1}, Lfd/b;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonLexerKt;->charToTokenClass(C)B

    move-result p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(B)V

    return-void
.end method


# virtual methods
.method public final canConsumeValue()Z
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 2
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 5
    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/JsonLexer;->isValidValueStart(C)Z

    move-result v0

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/4 v0, 0x0

    return v0
.end method

.method public final consumeBoolean()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final consumeBooleanLenient()Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "EOF"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v1, :cond_4

    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x22

    const/4 v7, 0x1

    if-ne v1, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v5

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeBoolean(I)Z

    move-result v0

    if-eqz v1, :cond_3

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    iget-object v8, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v1, v8, :cond_2

    .line 6
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    .line 7
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/2addr v1, v7

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    goto :goto_1

    :cond_1
    const-string v0, "Expected closing quotation mark"

    .line 8
    invoke-static {p0, v0, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 9
    throw v0

    .line 10
    :cond_2
    invoke-static {p0, v2, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 11
    throw v0

    :cond_3
    :goto_1
    return v0

    .line 12
    :cond_4
    invoke-static {p0, v2, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 13
    throw v0
.end method

.method public final consumeKeyString()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x22

    .line 1
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken(C)V

    .line 2
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 3
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v0, v1, v3, v4}, Lyd/s;->o0(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, v2}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(B)V

    :cond_0
    if-ge v1, v0, :cond_3

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 5
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    .line 6
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 7
    iput v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 8
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final consumeNextToken()B
    .locals 3

    .line 8
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 9
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 10
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 11
    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonLexerKt;->charToTokenClass(C)B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0xa

    return v0
.end method

.method public final consumeNextToken(B)B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(B)V

    :cond_0
    return v0
.end method

.method public final consumeNextToken(C)V
    .locals 3

    .line 3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 4
    :cond_0
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->unexpectedToken(C)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonLexer;->unexpectedToken(C)V

    return-void
.end method

.method public final consumeNumericLiteral()J
    .locals 14

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "EOF"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v1, :cond_11

    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x22

    if-ne v1, v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, v2, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 6
    throw v0

    :cond_1
    move v1, v5

    :goto_0
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move v9, v0

    move v10, v5

    :goto_1
    const-string v11, "Numeric value overflow"

    if-eqz v6, :cond_9

    .line 7
    iget-object v12, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_3

    if-ne v9, v0, :cond_2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "Unexpected symbol \'-\' in numeric literal"

    .line 8
    invoke-static {p0, v0, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 9
    throw v0

    .line 10
    :cond_3
    invoke-static {v12}, Lkotlinx/serialization/json/internal/JsonLexerKt;->charToTokenClass(C)B

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 11
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v9, v3, :cond_5

    const/4 v3, 0x1

    move v6, v3

    goto :goto_2

    :cond_5
    move v6, v5

    :goto_2
    add-int/lit8 v3, v12, -0x30

    if-ltz v3, :cond_6

    const/16 v4, 0x9

    if-gt v3, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    if-eqz v4, :cond_8

    const/16 v4, 0xa

    int-to-long v12, v4

    mul-long/2addr v7, v12

    int-to-long v3, v3

    sub-long/2addr v7, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v7, v3

    if-gtz v3, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x2

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 12
    invoke-static {p0, v11, v5, v1, v0}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 13
    throw v0

    .line 14
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected symbol \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' in numeric literal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 15
    invoke-static {p0, v0, v5, v2, v1}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 16
    throw v0

    :cond_9
    :goto_4
    if-eq v0, v9, :cond_10

    if-eqz v10, :cond_a

    add-int/lit8 v3, v9, -0x1

    if-eq v0, v3, :cond_10

    :cond_a
    if-eqz v1, :cond_d

    if-eqz v6, :cond_c

    .line 17
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_b

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    const-string v0, "Expected closing quotation mark"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 18
    invoke-static {p0, v0, v5, v2, v1}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 19
    throw v0

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 20
    invoke-static {p0, v2, v5, v1, v0}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 21
    throw v0

    .line 22
    :cond_d
    :goto_5
    iput v9, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    if-eqz v10, :cond_e

    goto :goto_6

    :cond_e
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v7, v0

    if-eqz v0, :cond_f

    neg-long v7, v7

    :goto_6
    return-wide v7

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 23
    invoke-static {p0, v11, v5, v1, v0}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 24
    throw v0

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Expected numeric literal"

    .line 25
    invoke-static {p0, v2, v5, v1, v0}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 26
    throw v0

    .line 27
    :cond_11
    invoke-static {p0, v2, v5, v4, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 28
    throw v0
.end method

.method public final consumeString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->takePeeked()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeKeyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final consumeStringLenient()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->takePeeked()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v0

    .line 4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 5
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonLexerKt;->charToTokenClass(C)B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v1, :cond_3

    .line 7
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonLexerKt;->charToTokenClass(C)B

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return-object v1

    .line 10
    :cond_3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const-string v1, "Expected beginning of the string, but got "

    invoke-static {v1, v0}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 11
    invoke-static {p0, v0, v1, v2, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 12
    throw v0

    :cond_4
    const-string v1, "EOF"

    .line 13
    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lfd/b;

    invoke-direct {v0}, Lfd/b;-><init>()V

    throw v0
.end method

.method public final consumeStringLenientNotNull()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Unexpected \'null\' value instead of string literal"

    .line 3
    invoke-static {p0, v3, v0, v1, v2}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 4
    throw v0
.end method

.method public final expectEof()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Expected EOF, but had "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2, v3}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object v0

    .line 5
    throw v0
.end method

.method public final fail(Ljava/lang/String;I)Ljava/lang/Void;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1
.end method

.method public final failOnUnknownKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 2
    invoke-static {v0, p1, v1}, Lyd/s;->s0(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered an unknown key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'.\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/JsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lfd/b;

    invoke-direct {p1}, Lfd/b;-><init>()V

    throw p1
.end method

.method public final peekNextToken()B
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    .line 2
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v1, v2, :cond_2

    .line 3
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonLexerKt;->charToTokenClass(C)B

    move-result v0

    return v0

    .line 5
    :cond_1
    :goto_1
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final peekString(Z)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    return-object v1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->peekedString:Ljava/lang/String;

    return-object p1
.end method

.method public final skipElement(Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->peekNextToken()B

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeKeyString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    if-eqz v4, :cond_5

    .line 6
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/16 v4, 0x9

    if-ne v1, v4, :cond_7

    .line 7
    invoke-static {v0}, Lgd/n;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_6

    .line 8
    invoke-static {v0}, Lgd/l;->Y(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_6
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 10
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    const-string v1, "found ] instead of }"

    .line 11
    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_7
    const/4 v4, 0x7

    if-ne v1, v4, :cond_9

    .line 12
    invoke-static {v0}, Lgd/n;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    if-ne v1, v2, :cond_8

    .line 13
    invoke-static {v0}, Lgd/l;->Y(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_8
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    .line 15
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    const-string v1, "found } instead of ]"

    .line 16
    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_9
    const/16 v4, 0xa

    if-eq v1, v4, :cond_a

    .line 17
    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->consumeNextToken()B

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_a
    const/4 p1, 0x2

    const/4 v0, 0x0

    const-string v1, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    .line 19
    invoke-static {p0, v1, v5, p1, v0}, La1/d;->c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;

    move-result-object p1

    .line 20
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "JsonReader(source=\'"

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, La0/b;->b(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryConsumeComma()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return v1

    :cond_1
    return v2
.end method

.method public final tryConsumeNotNull()Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonLexer;->skipWhitespaces()I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    add-int/lit8 v6, v5, 0x1

    const-string v7, "null"

    .line 3
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-object v8, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/2addr v5, v0

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v7, v5, :cond_1

    return v2

    :cond_1
    const/4 v5, 0x3

    if-le v6, v5, :cond_3

    if-le v1, v3, :cond_2

    .line 4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonLexer;->source:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonLexerKt;->charToTokenClass(C)B

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/2addr v0, v3

    .line 5
    iput v0, p0, Lkotlinx/serialization/json/internal/JsonLexer;->currentPosition:I

    return v4

    :cond_3
    move v5, v6

    goto :goto_0
.end method
