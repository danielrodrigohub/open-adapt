.class public final Ls0/a$b;
.super Ljava/io/InputStream;
.source "ExifInterface.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final l:Ljava/nio/ByteOrder;

.field public static final m:Ljava/nio/ByteOrder;


# instance fields
.field public h:Ljava/io/DataInputStream;

.field public i:Ljava/nio/ByteOrder;

.field public final j:I

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ls0/a$b;->l:Ljava/nio/ByteOrder;

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ls0/a$b;->m:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    iput-object v0, p0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    .line 4
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    .line 5
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Ls0/a$b;->j:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Ls0/a$b;->k:I

    .line 7
    iget-object v1, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->mark(I)V

    .line 8
    iput-object v0, p0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Ls0/a$b;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final Y(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls0/a$b;->k:I

    .line 3
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 4
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    iget v1, p0, Ls0/a$b;->j:I

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    sub-long/2addr p1, v0

    :goto_0
    long-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, Ls0/a$b;->skipBytes(I)I

    move-result p2

    if-ne p2, p1, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t seek up to the byteCount"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    .line 4
    iget p2, p0, Ls0/a$b;->k:I

    add-int/2addr p2, p1

    iput p2, p0, Ls0/a$b;->k:I

    return p1
.end method

.method public final readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget v1, p0, Ls0/a$b;->j:I

    if-gt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ls0/a$b;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ls0/a$b;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget v0, p0, Ls0/a$b;->k:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ls0/a$b;->k:I

    .line 7
    iget v1, p0, Ls0/a$b;->j:I

    if-gt v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/2addr v0, p3

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget v1, p0, Ls0/a$b;->j:I

    if-gt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget v1, p0, Ls0/a$b;->j:I

    if-gt v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 5
    iget-object v2, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 6
    iget-object v3, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_2

    .line 7
    iget-object v4, p0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    sget-object v5, Ls0/a$b;->l:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    .line 8
    :cond_0
    sget-object v5, Ls0/a$b;->m:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 9
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    .line 10
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget-object v2, p0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ExifInterface"

    const-string v1, "Currently unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final readLong()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Ls0/a$b;->k:I

    add-int/lit8 v1, v1, 0x8

    iput v1, v0, Ls0/a$b;->k:I

    .line 2
    iget v2, v0, Ls0/a$b;->j:I

    if-gt v1, v2, :cond_3

    .line 3
    iget-object v1, v0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 4
    iget-object v2, v0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 5
    iget-object v3, v0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 6
    iget-object v4, v0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 7
    iget-object v5, v0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 8
    iget-object v6, v0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 9
    iget-object v7, v0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 10
    iget-object v8, v0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    or-int v9, v1, v2

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v5

    or-int/2addr v9, v6

    or-int/2addr v9, v7

    or-int/2addr v9, v8

    if-ltz v9, :cond_2

    .line 11
    iget-object v9, v0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    sget-object v10, Ls0/a$b;->l:Ljava/nio/ByteOrder;

    const/16 v13, 0x20

    const/16 v14, 0x28

    const/16 v15, 0x30

    const/16 v16, 0x38

    if-ne v9, v10, :cond_0

    int-to-long v8, v8

    shl-long v8, v8, v16

    int-to-long v11, v7

    shl-long/2addr v11, v15

    add-long/2addr v8, v11

    int-to-long v6, v6

    shl-long/2addr v6, v14

    add-long/2addr v8, v6

    int-to-long v5, v5

    shl-long/2addr v5, v13

    add-long/2addr v8, v5

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v8, v4

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    add-long/2addr v8, v3

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v8, v2

    int-to-long v1, v1

    add-long/2addr v8, v1

    return-wide v8

    .line 12
    :cond_0
    sget-object v10, Ls0/a$b;->m:Ljava/nio/ByteOrder;

    if-ne v9, v10, :cond_1

    int-to-long v9, v1

    shl-long v9, v9, v16

    int-to-long v1, v2

    shl-long/2addr v1, v15

    add-long/2addr v9, v1

    int-to-long v1, v3

    shl-long/2addr v1, v14

    add-long/2addr v9, v1

    int-to-long v1, v4

    shl-long/2addr v1, v13

    add-long/2addr v9, v1

    int-to-long v1, v5

    const/16 v3, 0x18

    shl-long/2addr v1, v3

    add-long/2addr v9, v1

    int-to-long v1, v6

    const/16 v3, 0x10

    shl-long/2addr v1, v3

    add-long/2addr v9, v1

    int-to-long v1, v7

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v9, v1

    int-to-long v1, v8

    add-long/2addr v9, v1

    return-wide v9

    .line 13
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid byte order: "

    .line 14
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 15
    iget-object v3, v0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 17
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget v1, p0, Ls0/a$b;->j:I

    if-gt v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_2

    .line 5
    iget-object v2, p0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    sget-object v3, Ls0/a$b;->l:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    int-to-short v0, v1

    return v0

    .line 6
    :cond_0
    sget-object v3, Ls0/a$b;->m:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    .line 8
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object v2, p0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 11
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ls0/a$b;->k:I

    .line 2
    iget v1, p0, Ls0/a$b;->j:I

    if-gt v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_2

    .line 5
    iget-object v2, p0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    sget-object v3, Ls0/a$b;->l:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    return v1

    .line 6
    :cond_0
    sget-object v3, Ls0/a$b;->m:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    .line 8
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object v2, p0, Ls0/a$b;->i:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 11
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final skipBytes(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls0/a$b;->j:I

    iget v1, p0, Ls0/a$b;->k:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Ls0/a$b;->h:Ljava/io/DataInputStream;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Ls0/a$b;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Ls0/a$b;->k:I

    return v0
.end method

.method public final x()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ls0/a$b;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
