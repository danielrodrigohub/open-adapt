.class public final Lcom/newrelic/mobile/fbs/HexAgentData;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "HexAgentData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addBoolAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDoubleAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addHandledExceptions(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addJsErrors(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addLongAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRequestInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addStringAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createBoolAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createDoubleAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createHandledExceptionsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createHexAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;IIIIIIII)I
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 2
    invoke-static {p0, p8}, Lcom/newrelic/mobile/fbs/HexAgentData;->addJsErrors(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3
    invoke-static {p0, p7}, Lcom/newrelic/mobile/fbs/HexAgentData;->addRequestInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 4
    invoke-static {p0, p6}, Lcom/newrelic/mobile/fbs/HexAgentData;->addApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 5
    invoke-static {p0, p5}, Lcom/newrelic/mobile/fbs/HexAgentData;->addHandledExceptions(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 6
    invoke-static {p0, p4}, Lcom/newrelic/mobile/fbs/HexAgentData;->addBoolAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 7
    invoke-static {p0, p3}, Lcom/newrelic/mobile/fbs/HexAgentData;->addDoubleAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 8
    invoke-static {p0, p2}, Lcom/newrelic/mobile/fbs/HexAgentData;->addLongAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 9
    invoke-static {p0, p1}, Lcom/newrelic/mobile/fbs/HexAgentData;->addStringAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 10
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/HexAgentData;->endHexAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static createJsErrorsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createLongAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createStringAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static endHexAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static finishHexAgentDataBuffer(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    return-void
.end method

.method public static finishSizePrefixedHexAgentDataBuffer(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->finishSizePrefixed(I)V

    return-void
.end method

.method public static getRootAsHexAgentData(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/HexAgentData;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/HexAgentData;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/HexAgentData;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/HexAgentData;->getRootAsHexAgentData(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/HexAgentData;)Lcom/newrelic/mobile/fbs/HexAgentData;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsHexAgentData(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/HexAgentData;)Lcom/newrelic/mobile/fbs/HexAgentData;
    .locals 2

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1, p0}, Lcom/newrelic/mobile/fbs/HexAgentData;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/HexAgentData;

    move-result-object p0

    return-object p0
.end method

.method public static startBoolAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startDoubleAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startHandledExceptionsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startHexAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method

.method public static startJsErrorsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startLongAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startStringAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/HexAgentData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/HexAgentData;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    iput p1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->vtable_start:I

    iget-object p2, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput p1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->vtable_size:I

    return-void
.end method

.method public applicationInfo()Lcom/newrelic/mobile/fbs/ApplicationInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/ApplicationInfo;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/ApplicationInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/HexAgentData;->applicationInfo(Lcom/newrelic/mobile/fbs/ApplicationInfo;)Lcom/newrelic/mobile/fbs/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public applicationInfo(Lcom/newrelic/mobile/fbs/ApplicationInfo;)Lcom/newrelic/mobile/fbs/ApplicationInfo;
    .locals 2

    const/16 v0, 0xe

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public boolAttributes(I)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/HexAgentData;->boolAttributes(Lcom/newrelic/mobile/fbs/BoolSessionAttribute;I)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    move-result-object p1

    return-object p1
.end method

.method public boolAttributes(Lcom/newrelic/mobile/fbs/BoolSessionAttribute;I)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    .locals 1

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/newrelic/com/google/flatbuffers/Table;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public boolAttributesByKey(Lcom/newrelic/mobile/fbs/BoolSessionAttribute;Ljava/lang/String;)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    .locals 2

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p2, v1}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;->__lookup_by_key(Lcom/newrelic/mobile/fbs/BoolSessionAttribute;ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public boolAttributesByKey(Ljava/lang/String;)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    .locals 3

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    iget-object v2, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, p1, v2}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;->__lookup_by_key(Lcom/newrelic/mobile/fbs/BoolSessionAttribute;ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public boolAttributesLength()I
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector_len(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public doubleAttributes(I)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/HexAgentData;->doubleAttributes(Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;I)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    move-result-object p1

    return-object p1
.end method

.method public doubleAttributes(Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;I)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    .locals 1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/newrelic/com/google/flatbuffers/Table;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public doubleAttributesByKey(Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;Ljava/lang/String;)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    .locals 2

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p2, v1}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;->__lookup_by_key(Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public doubleAttributesByKey(Ljava/lang/String;)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    .locals 3

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    iget-object v2, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, p1, v2}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;->__lookup_by_key(Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public doubleAttributesLength()I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector_len(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handledExceptions(I)Lcom/newrelic/mobile/fbs/hex/HandledException;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/hex/HandledException;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/HexAgentData;->handledExceptions(Lcom/newrelic/mobile/fbs/hex/HandledException;I)Lcom/newrelic/mobile/fbs/hex/HandledException;

    move-result-object p1

    return-object p1
.end method

.method public handledExceptions(Lcom/newrelic/mobile/fbs/hex/HandledException;I)Lcom/newrelic/mobile/fbs/hex/HandledException;
    .locals 1

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/newrelic/com/google/flatbuffers/Table;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/HandledException;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public handledExceptionsLength()I
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector_len(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jsErrors(I)Lcom/newrelic/mobile/fbs/jserror/JsError;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/jserror/JsError;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/jserror/JsError;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/HexAgentData;->jsErrors(Lcom/newrelic/mobile/fbs/jserror/JsError;I)Lcom/newrelic/mobile/fbs/jserror/JsError;

    move-result-object p1

    return-object p1
.end method

.method public jsErrors(Lcom/newrelic/mobile/fbs/jserror/JsError;I)Lcom/newrelic/mobile/fbs/jserror/JsError;
    .locals 1

    const/16 v0, 0x12

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/newrelic/com/google/flatbuffers/Table;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lcom/newrelic/mobile/fbs/jserror/JsError;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/jserror/JsError;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public jsErrorsLength()I
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector_len(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longAttributes(I)Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/HexAgentData;->longAttributes(Lcom/newrelic/mobile/fbs/LongSessionAttribute;I)Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    move-result-object p1

    return-object p1
.end method

.method public longAttributes(Lcom/newrelic/mobile/fbs/LongSessionAttribute;I)Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/newrelic/com/google/flatbuffers/Table;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public longAttributesByKey(Lcom/newrelic/mobile/fbs/LongSessionAttribute;Ljava/lang/String;)Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    .locals 2

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p2, v1}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;->__lookup_by_key(Lcom/newrelic/mobile/fbs/LongSessionAttribute;ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public longAttributesByKey(Ljava/lang/String;)Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    .locals 3

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    iget-object v2, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, p1, v2}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;->__lookup_by_key(Lcom/newrelic/mobile/fbs/LongSessionAttribute;ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public longAttributesLength()I
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector_len(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestInfo()Lcom/newrelic/mobile/fbs/RequestInformation;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/RequestInformation;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/RequestInformation;-><init>()V

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/HexAgentData;->requestInfo(Lcom/newrelic/mobile/fbs/RequestInformation;)Lcom/newrelic/mobile/fbs/RequestInformation;

    move-result-object v0

    return-object v0
.end method

.method public requestInfo(Lcom/newrelic/mobile/fbs/RequestInformation;)Lcom/newrelic/mobile/fbs/RequestInformation;
    .locals 2

    const/16 v0, 0x10

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/newrelic/mobile/fbs/RequestInformation;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/RequestInformation;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public stringAttributes(I)Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/HexAgentData;->stringAttributes(Lcom/newrelic/mobile/fbs/StringSessionAttribute;I)Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    move-result-object p1

    return-object p1
.end method

.method public stringAttributes(Lcom/newrelic/mobile/fbs/StringSessionAttribute;I)Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    .locals 2

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v1

    mul-int/2addr p2, v0

    add-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/newrelic/com/google/flatbuffers/Table;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public stringAttributesByKey(Lcom/newrelic/mobile/fbs/StringSessionAttribute;Ljava/lang/String;)Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    .locals 2

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p2, v1}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;->__lookup_by_key(Lcom/newrelic/mobile/fbs/StringSessionAttribute;ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public stringAttributesByKey(Ljava/lang/String;)Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v0

    iget-object v2, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, p1, v2}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;->__lookup_by_key(Lcom/newrelic/mobile/fbs/StringSessionAttribute;ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public stringAttributesLength()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector_len(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
