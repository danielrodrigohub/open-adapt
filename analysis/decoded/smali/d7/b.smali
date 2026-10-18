.class public final Ld7/b;
.super Ld7/f;
.source "AesGcmHkdfStreaming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld7/b$a;,
        Ld7/b$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ld7/f;-><init>()V

    .line 2
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    array-length v0, p1

    if-lt v0, p3, :cond_1

    .line 3
    invoke-static {p3}, Ld7/m;->a(I)V

    .line 4
    invoke-virtual {p0}, Ld7/b;->e()I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    if-le p4, v0, :cond_0

    .line 5
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Ld7/b;->f:[B

    .line 6
    iput-object p2, p0, Ld7/b;->e:Ljava/lang/String;

    .line 7
    iput p3, p0, Ld7/b;->a:I

    .line 8
    iput p4, p0, Ld7/b;->b:I

    .line 9
    iput v2, p0, Ld7/b;->d:I

    sub-int/2addr p4, v1

    .line 10
    iput p4, p0, Ld7/b;->c:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "ciphertextSegmentSize too small"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "ikm too short, must be >= "

    .line 13
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 14
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i([BJZ)Ljavax/crypto/spec/GCMParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {v0, p1, p2}, Ld7/l;->a(Ljava/nio/ByteBuffer;J)V

    int-to-byte p0, p3

    .line 5
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    new-instance p0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 p1, 0x80

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object p0
.end method


# virtual methods
.method public final c()I
    .locals 2

    invoke-virtual {p0}, Ld7/b;->e()I

    move-result v0

    iget v1, p0, Ld7/b;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Ld7/b;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Ld7/b;->a:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ld7/b;->c:I

    return v0
.end method

.method public final g()Ld7/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ld7/b$a;

    invoke-direct {v0, p0}, Ld7/b$a;-><init>(Ld7/b;)V

    return-object v0
.end method

.method public final h([B)Ld7/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ld7/b$b;

    invoke-direct {v0, p0, p1}, Ld7/b$b;-><init>(Ld7/b;[B)V

    return-object v0
.end method
