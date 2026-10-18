.class public final Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;
.super Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;
.source "FlatBufferBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeapByteBufferFactory"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;

    invoke-direct {v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;-><init>()V

    sput-object v0, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;->INSTANCE:Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder$HeapByteBufferFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder$ByteBufferFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
