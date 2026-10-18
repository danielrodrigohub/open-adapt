.class public final Lhc/m0;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhc/m0$a;
    }
.end annotation


# instance fields
.field public final a:B

.field public final b:Lhc/m0$a;

.field public final c:[B


# direct methods
.method public constructor <init>(BLhc/m0$a;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Lhc/m0;->a:B

    .line 3
    iput-object p2, p0, Lhc/m0;->b:Lhc/m0$a;

    .line 4
    iput-object p3, p0, Lhc/m0;->c:[B

    return-void
.end method

.method public static a([B)Lhc/m0;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    int-to-byte v3, v3

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v4, v4

    and-int/lit16 v5, v4, 0xc0

    ushr-int/lit8 v5, v5, 0x6

    .line 5
    sget-object v6, Lhc/m0$a;->m:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/m0$a;

    if-nez v5, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v4

    and-int/lit16 v4, v4, 0x3fff

    if-ltz v4, :cond_4

    const/16 v6, 0x201

    if-le v4, v6, :cond_2

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    .line 7
    array-length p0, p0

    sub-int/2addr p0, v2

    if-gt v4, p0, :cond_3

    .line 8
    new-array p0, v4, [B

    .line 9
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    new-instance v0, Lhc/m0;

    invoke-direct {v0, v3, v5, p0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    return-object v0

    .line 11
    :cond_3
    new-instance p0, Lhc/m0;

    invoke-direct {p0, v3, v5, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    return-object p0

    :catch_0
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static b(Lhc/m0;)[B
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lhc/m0;->c:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, 0x3

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    iget-byte v2, p0, Lhc/m0;->a:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lhc/m0;->b:Lhc/m0$a;

    .line 4
    iget v3, v3, Lhc/m0$a;->h:I

    shl-int/lit8 v3, v3, 0xe

    int-to-short v0, v0

    and-int/lit16 v0, v0, 0x3fff

    or-int/2addr v0, v3

    int-to-short v0, v0

    .line 5
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 6
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 7
    iget-object p0, p0, Lhc/m0;->c:[B

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lhc/m0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lhc/m0;

    invoke-static {p1}, Lhc/m0;->b(Lhc/m0;)[B

    move-result-object p1

    .line 3
    invoke-static {p0}, Lhc/m0;->b(Lhc/m0;)[B

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Lhc/m0;->a:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lhc/m0;->a:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lhc/m0;->b:Lhc/m0$a;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lhc/m0;->c:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "type: 0x%02X(%d); action: %s; payload size: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
