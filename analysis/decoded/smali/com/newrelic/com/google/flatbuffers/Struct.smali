.class public Lcom/newrelic/com/google/flatbuffers/Struct;
.super Ljava/lang/Object;
.source "Struct.java"


# instance fields
.field public bb:Ljava/nio/ByteBuffer;

.field public bb_pos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Struct;->bb:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/newrelic/com/google/flatbuffers/Struct;->bb_pos:I

    return-void
.end method
